EFGM.CLIENT.INVENTORY = EFGM.CLIENT.INVENTORY or {}
EFGM.CLIENT.EQUIPPED = EFGM.CLIENT.EQUIPPED or {}

local chunkedInv = {}
local chunkedEqu = {}

local table = table
local net = net
local util = util

hook.Add("OnInventoryChunked", "NetworkInventory", function(str, uID)
	local inventoryStr = str
	inventoryStr = util.Base64Decode(inventoryStr)
	inventoryStr = util.Decompress(inventoryStr)

	if !inventoryStr then return end

	local inventoryTbl = util.JSONToTable(inventoryStr)

	EFGM.CLIENT.INVENTORY = inventoryTbl
	if EFGM.CLIENT.INVENTORY == nil then EFGM.CLIENT.INVENTORY = {} end
end)

hook.Add("OnEquippedChunked", "NetworkEquipped", function(str, uID)
	local equippedStr = str

	equippedStr = util.Base64Decode(equippedStr)
	equippedStr = util.Decompress(equippedStr)

	if !equippedStr then return end

	local equippedTbl = util.JSONToTable(equippedStr)
	EFGM.CLIENT.EQUIPPED = equippedTbl

	if EFGM.CLIENT.EQUIPPED == nil then
		EFGM.CLIENT.EQUIPPED = {}
		for k, v in pairs(WEAPONSLOTS) do
			EFGM.CLIENT.EQUIPPED[v.ID] = {}

			for i = 1, v.COUNT, 1 do
				EFGM.CLIENT.EQUIPPED[v.ID][i] = {}
			end
		end
	end
end)

net.Receive("PlayerNetworkInventory", function(len)
	local uID = net.ReadFloat()
	local index = net.ReadUInt(16)
	local chunkCount = net.ReadUInt(16)
	local chunk = net.ReadString()

	if !chunkedInv[uID] then
		chunkedInv[uID] = {
			Chunks = {},
			ReceivedCount = 0,
			TotalCount = chunkCount
		}
	end

	chunkedInv[uID].Chunks[index] = chunk
	chunkedInv[uID].ReceivedCount = chunkedInv[uID].ReceivedCount + 1

	if chunkedInv[uID].ReceivedCount == chunkedInv[uID].TotalCount then
		local str = ""

		for i = 1, chunkCount do
			str = str .. chunkedInv[uID].Chunks[i]
		end

		hook.Run("OnInventoryChunked", str, uID)
		chunkedInv[uID] = nil
	end
end)

net.Receive("PlayerNetworkEquipped", function(len)
	local uID = net.ReadFloat()
	local index = net.ReadUInt(16)
	local chunkCount = net.ReadUInt(16)
	local chunk = net.ReadString()

	if !chunkedEqu[uID] then
		chunkedEqu[uID] = {
			Chunks = {},
			ReceivedCount = 0,
			TotalCount = chunkCount
		}
	end

	chunkedEqu[uID].Chunks[index] = chunk
	chunkedEqu[uID].ReceivedCount = chunkedEqu[uID].ReceivedCount + 1

	if chunkedEqu[uID].ReceivedCount == chunkedEqu[uID].TotalCount then
		local str = ""

		for i = 1, chunkCount do
			str = str .. chunkedEqu[uID].Chunks[i]
		end

		hook.Run("OnEquippedChunked", str, uID)
		chunkedEqu[uID] = nil
	end
end)

function ReinstantiateInventory()
	EFGM.CLIENT.INVENTORY = {}

	local equMelee = table.Copy(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.MELEE.ID])
	EFGM.CLIENT.EQUIPPED = {}

	for k, v in pairs(WEAPONSLOTS) do
		EFGM.CLIENT.EQUIPPED[v.ID] = {}

		for i = 1, v.COUNT, 1 do
			EFGM.CLIENT.EQUIPPED[v.ID][i] = {}
		end
	end

	if equMelee != nil then EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.MELEE.ID] = equMelee end
end

net.Receive("PlayerReinstantiateInventory", function(len)
	ReinstantiateInventory()
end)

net.Receive("PlayerInventoryReload", function(len)
	if EFGM.MENU.ActiveTab != "inventory" then return end
	EFGM.MENU:ReloadInventory()
end)

net.Receive("PlayerSlotsReload", function(len)
	if EFGM.MENU.ActiveTab != "inventory" then return end
	EFGM.MENU:ReloadSlots()
end)

net.Receive("PlayerInventoryAddItem", function(len)
	local name, data, index

	name = net.ReadString()
	data = net.ReadTable()
	index = net.ReadUInt(16)

	table.insert(EFGM.CLIENT.INVENTORY, index, ITEM.Instantiate(name, data))
end)

net.Receive("PlayerInventoryUpdateItem", function(len)
	local newData, index

	newData = net.ReadTable()
	index = net.ReadUInt(16)

	EFGM.CLIENT.INVENTORY[index].data = newData
end)

net.Receive("PlayerInventoryDeleteItem", function(len)
	local index
	index = net.ReadUInt(16)

	table.remove(EFGM.CLIENT.INVENTORY, index)
end)

net.Receive("PlayerInventoryUnEquipAll", function(len)
	local equMelee = table.Copy(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.MELEE.ID])
	EFGM.CLIENT.EQUIPPED = {}

	for k, v in pairs(WEAPONSLOTS) do
		if v.ID == WEAPONSLOTS.MELEE.ID then continue end

		EFGM.CLIENT.EQUIPPED[v.ID] = {}

		for i = 1, v.COUNT, 1 do
			EFGM.CLIENT.EQUIPPED[v.ID][i] = {}
		end
	end

	if equMelee != nil then EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.MELEE.ID] = equMelee end

	EFGM.MENU:ReloadSlots()
end)

function UnequipAll()
	net.Start("PlayerInventoryUnEquipAllCL", false)
	net.SendToServer()
end

net.Receive("PlayerInventoryUpdateEquipped", function(len)
	local newData, index, key

	newData = net.ReadTable()
	index = net.ReadUInt(4)
	key = net.ReadUInt(4)

	EFGM.CLIENT.EQUIPPED[index][key].data = newData
	EFGM.MENU:ReloadSlots()
end )

net.Receive("PlayerInventoryDeleteEquippedItem", function(len)
	local equipID, equipSlot

	equipID = net.ReadUInt(4)
	equipSlot = net.ReadUInt(4)

	EFGM.CLIENT.EQUIPPED[equipID][equipSlot] = {}

	EFGM.MENU:ReloadSlots()
end )

function DropItemFromInventory(itemIndex)
	if LocalPlayer():IsInDuel() then return end

	net.Start("PlayerInventoryDropItem", false)
		net.WriteUInt(itemIndex, 16)
	net.SendToServer()

	table.remove(EFGM.CLIENT.INVENTORY, itemIndex)
	EFGM.MENU:ReloadInventory()
end

-- returns bool whether or not it could equip an item clientside (desync may be an issue since server could disagree and neither side would know)
function EquipItemFromInventory(itemIndex, equipSlot, primaryPref)
	local item = EFGM.CLIENT.INVENTORY[itemIndex]
	if item == nil then return end

	if AmountInInventory(EFGM.CLIENT.EQUIPPED[equipSlot], item.name) != 0 then return end -- can't have multiple of the same item

	-- checking item equip slots
	if equipSlot == 1 and primaryPref != nil then
		if primaryPref == 1 then
			EFGM.CLIENT.EQUIPPED[equipSlot][1] = item

			net.Start("PlayerInventoryEquipItem", false)
				net.WriteUInt(itemIndex, 16)
				net.WriteUInt(equipSlot, 4)
				net.WriteUInt(1, 4)
			net.SendToServer()

			return true
		else
			EFGM.CLIENT.EQUIPPED[equipSlot][2] = item

			net.Start("PlayerInventoryEquipItem", false)
				net.WriteUInt(itemIndex, 16)
				net.WriteUInt(equipSlot, 4)
				net.WriteUInt(2, 4)
			net.SendToServer()

			return true
		end
	else
		for k, v in ipairs(EFGM.CLIENT.EQUIPPED[equipSlot]) do
			if table.IsEmpty(v) then
				EFGM.CLIENT.EQUIPPED[equipSlot][k] = item

				net.Start("PlayerInventoryEquipItem", false)
					net.WriteUInt(itemIndex, 16)
					net.WriteUInt(equipSlot, 4)
					net.WriteUInt(k, 4)
				net.SendToServer()

				return true
			end
		end
	end

	return false
end

function EquipItemFromEquipped(equipID, equipSlot, toEquipID, toEquipSlot)
	if (LocalPlayer():CompareFaction(false) and LocalPlayer():IsInHideout()) then return end

	local item = EFGM.CLIENT.EQUIPPED[equipID][equipSlot]
	if table.IsEmpty(item) then return end

	local isSwitch = false

	if table.IsEmpty(EFGM.CLIENT.EQUIPPED[toEquipID][toEquipSlot]) then
		EFGM.CLIENT.EQUIPPED[toEquipID][toEquipSlot] = item
		EFGM.CLIENT.EQUIPPED[equipID][equipSlot] = {}
	else
		isSwitch = true

		local itemToSwitch = table.Copy(EFGM.CLIENT.EQUIPPED[toEquipID][toEquipSlot])
		EFGM.CLIENT.EQUIPPED[toEquipID][toEquipSlot] = item
		EFGM.CLIENT.EQUIPPED[equipID][equipSlot] = itemToSwitch
	end

	net.Start("PlayerInventoryEquipItemFromEquipped", false)
		net.WriteUInt(equipID, 4)
		net.WriteUInt(equipSlot, 4)
		net.WriteUInt(toEquipID, 4)
		net.WriteUInt(toEquipSlot, 4)
		net.WriteBool(isSwitch)
	net.SendToServer()

	return false
end

function UnEquipItemFromInventory(equipID, equipSlot, reloadInv, reloadSlots)
	if (LocalPlayer():CompareFaction(false) and LocalPlayer():IsInHideout()) then return end

	if reloadInv == nil then reloadInv = true end
	if reloadSlots == nil then reloadSlots = true end

	local item = table.Copy(EFGM.CLIENT.EQUIPPED[equipID][equipSlot])
	if table.IsEmpty(item) then return end

	EFGM.CLIENT.EQUIPPED[equipID][equipSlot] = {}

	net.Start("PlayerInventoryUnEquipItem", false)
		net.WriteUInt(equipID, 4)
		net.WriteUInt(equipSlot, 4)
		net.WriteBool(reloadInv)
		net.WriteBool(reloadSlots)
	net.SendToServer()
end

function DropEquippedItem(equipID, equipSlot)
	if LocalPlayer():IsInDuel() then return end

	local item = EFGM.CLIENT.EQUIPPED[equipID][equipSlot]
	if table.IsEmpty(item) then return end

	EFGM.CLIENT.EQUIPPED[equipID][equipSlot] = {}

	net.Start("PlayerInventoryDropEquippedItem", false)
		net.WriteUInt(equipID, 4)
		net.WriteUInt(equipSlot, 4)
	net.SendToServer()

	EFGM.MENU:ReloadSlots()
end

net.Receive("PlayerInventoryConsumeGrenade", function(len)
	EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.GRENADE.ID][1] = {}
	EFGM.MENU:ReloadSlots()

	local weapon = NULL
	local primary = EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.PRIMARY.ID][1].name
	local secondary = EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.PRIMARY.ID][2].name
	local holster = EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.HOLSTER.ID][1].name

	if primary then
		weapon = LocalPlayer():GetWeapon(primary)
		if weapon != NULL then input.SelectWeapon(weapon) end
	elseif secondary then
		weapon = LocalPlayer():GetWeapon(secondary)
		if weapon != NULL then input.SelectWeapon(weapon) end
	elseif holster then
		weapon = LocalPlayer():GetWeapon(holster)
		if weapon != NULL then input.SelectWeapon(weapon) end
	end
end)

net.Receive("PlayerInventoryRemoveConsumable", function(len)
	EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.CONSUMABLE.ID][1] = {}
	EFGM.MENU:ReloadSlots()

	if !table.IsEmpty(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.PRIMARY.ID][1]) then
		local weapon = LocalPlayer():GetWeapon(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.PRIMARY.ID][1].name)
		if weapon != nil then input.SelectWeapon(weapon) end
	elseif !table.IsEmpty(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.PRIMARY.ID][2]) then
		local weapon = LocalPlayer():GetWeapon(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.PRIMARY.ID][2].name)
		if weapon != nil then input.SelectWeapon(weapon) end
	elseif !table.IsEmpty(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.HOLSTER.ID][1]) then
		local weapon = LocalPlayer():GetWeapon(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.HOLSTER.ID][1].name)
		if weapon != nil then input.SelectWeapon(weapon) end
	end
end)

net.Receive("PlayerInventorySendWeaponPreset", function(len)
	local wpn = net.ReadEntity()
	local preset = net.ReadString()

	if IsValid(wpn) and wpn.ARC9 then
		wpn:LoadPresetFromTable(wpn:ImportPresetCode(preset))
	end
end)

concommand.Add("efgm_inventory_equip", function(ply, cmd, args)
	-- if subslot is specified it tries to equip that specific slot, and if not it cycles through all subslots for that slot type (eg, for grenades or utility)
	local equipSlot = tonumber(args[1])
	if equipSlot == nil then return end

	local equipSubSlot = tonumber(args[2])
	local weapon = nil

	if equipSubSlot == nil then
		local subSlotCount = #EFGM.CLIENT.EQUIPPED[equipSlot]

		if subSlotCount == 1 then -- selecting first subslot
			local item = EFGM.CLIENT.EQUIPPED[equipSlot][1]
			if !istable(item) or item.name == nil then return end

			weapon = LocalPlayer():GetWeapon(item.name)
			if weapon != NULL then input.SelectWeapon(weapon) end
		else -- cycling to next subslot
			for i = 1, subSlotCount do
				local item = EFGM.CLIENT.EQUIPPED[equipSlot][i]
				if !istable(item) or item.name == nil then return end

				weapon = LocalPlayer():GetWeapon(item.name)
				if weapon != NULL then input.SelectWeapon(weapon) end
			end
		end
	else -- selecting from subslot
		local item = EFGM.CLIENT.EQUIPPED[equipSlot][equipSubSlot]
		if !istable(item) or item.name == nil then return end

		weapon = LocalPlayer():GetWeapon(item.name)
		if weapon != NULL then input.SelectWeapon(weapon) end
	end
end)

function SplitFromInventory(inv, item, count, key)
	net.Start("PlayerInventorySplit", false)
		net.WriteString(inv)
		net.WriteString(item)
		net.WriteUInt(count, 16)
		net.WriteUInt(key, 16)
	net.SendToServer()
end

function DeleteFromInventory(inv, item, key, eID, eSlot)
	net.Start("PlayerInventoryDelete", false)
		net.WriteString(inv)
		net.WriteUInt(key, 16)
		net.WriteUInt(eID, 4)
		net.WriteUInt(eSlot, 4)
	net.SendToServer()
end

function TagFromInventory(tag, inv, item, key, eID, eSlot)
	net.Start("PlayerInventoryTag", false)
		net.WriteString(tag)
		net.WriteString(inv)
		net.WriteUInt(key, 16)
		net.WriteUInt(eID, 4)
		net.WriteUInt(eSlot, 4)
	net.SendToServer()
end

function PurchaseItem(item, count)
	net.Start("PlayerMarketPurchaseItem", false)
		net.WriteString(item)
		net.WriteUInt(count, 16)
	net.SendToServer()
end

function PurchaseItemToInv(item, count)
	net.Start("PlayerMarketPurchaseItemToInventory", false)
		net.WriteString(item)
		net.WriteUInt(count, 16)
	net.SendToServer()
end

function PurchasePresetToInventory(atts)
	net.Start("PlayerMarketPurchasePresetToInventory", false)
		net.WriteTable(atts)
	net.SendToServer()
end

function SellItem(item, count, key)
	net.Start("PlayerMarketSellItem", false)
		net.WriteString(item)
		net.WriteUInt(count, 16)
		net.WriteUInt(key, 16)
	net.SendToServer()
end

function SellBulk(ids)
	net.Start("PlayerMarketSellBulk", false)
		net.WriteTable(ids)
	net.SendToServer()
end
