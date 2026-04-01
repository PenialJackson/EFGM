EFGM.CLIENT.STASH = EFGM.CLIENT.STASH or {}

local chunkedStash = {}

local table = table
local net = net
local util = util

hook.Add("OnStashChunked", "NetworkStash", function(str, uID)
	local stashStr = str

	stashStr = util.Base64Decode(stashStr)
	stashStr = util.Decompress(stashStr)

	if !stashStr then return end

	local stashTbl = util.JSONToTable(stashStr)

	EFGM.CLIENT.STASH = stashTbl
	if EFGM.CLIENT.STASH == nil then EFGM.CLIENT.STASH = {} end
end)

net.Receive("PlayerNetworkStash", function(len)
	local uID = net.ReadFloat()
	local index = net.ReadUInt(16)
	local chunkCount = net.ReadUInt(16)
	local chunk = net.ReadString()

	if !chunkedStash[uID] then
		chunkedStash[uID] = {
			Chunks = {},
			ReceivedCount = 0,
			TotalCount = chunkCount
		}
	end

	chunkedStash[uID].Chunks[index] = chunk
	chunkedStash[uID].ReceivedCount = chunkedStash[uID].ReceivedCount + 1

	if chunkedStash[uID].ReceivedCount == chunkedStash[uID].TotalCount then
		local str = ""

		for i = 1, chunkCount do
			str = str .. chunkedStash[uID].Chunks[i]
		end

		hook.Run("OnStashChunked", str, uID)
		chunkedStash[uID] = nil
	end
end)

net.Receive("PlayerStashReload", function(len)
	if EFGM.MENU.ActiveTab == "inventory" then EFGM.MENU:ReloadStash() else EFGM.MENU:ReloadMarketStash() end
end)

net.Receive("PlayerStashAddItem", function(len)
	local name, data, index

	name = net.ReadString()
	data = net.ReadTable()
	index = net.ReadUInt(16)

	table.insert(EFGM.CLIENT.STASH, index, ITEM.Instantiate(name, data))
end)

net.Receive("PlayerStashUpdateItem", function(len)
	local newData, index

	newData = net.ReadTable()
	index = net.ReadUInt(16)

	EFGM.CLIENT.STASH[index].data = newData
end)

net.Receive("PlayerStashDeleteItem", function(len)
	local index

	index = net.ReadUInt(16)

	table.remove(EFGM.CLIENT.STASH, index)
end)

function StashItemFromInventory(itemIndex)
	if !LocalPlayer():IsInHideout() then return end

	local item = EFGM.CLIENT.INVENTORY[itemIndex]
	if item == nil then return end

	net.Start("PlayerStashAddItemFromInventory", false)
		net.WriteUInt(itemIndex, 16)
	net.SendToServer()
end

function StashItemFromEquipped(equipID, equipSlot)
	if !LocalPlayer():IsInHideout() then return end
	if equipID != WEAPONSLOTS.MELEE.ID and LocalPlayer():CompareFaction(false) then return end

	local item = EFGM.CLIENT.EQUIPPED[equipID][equipSlot]
	if table.IsEmpty(item) then return end

	EFGM.CLIENT.EQUIPPED[equipID][equipSlot] = {}

	net.Start("PlayerStashAddItemFromEquipped", false)
		net.WriteUInt(equipID, 4)
		net.WriteUInt(equipSlot, 4)
	net.SendToServer()
end

function UnloadInventoryToStash()
	net.Start("PlayerStashAddAllFromInventory", false)
	net.SendToServer()
end

function TakeFromStashToInventory(itemIndex)
	if !LocalPlayer():IsInHideout() then return end
	if LocalPlayer():CompareFaction(false) then return end

	local item = EFGM.CLIENT.STASH[itemIndex]
	if item == nil then return end

	net.Start("PlayerStashTakeItemToInventory", false)
		net.WriteUInt(itemIndex, 16)
	net.SendToServer()
end

function EquipItemFromStash(itemIndex, equipSlot, primaryPref)
	if !LocalPlayer():IsInHideout() then return end
	if equipSlot != WEAPONSLOTS.MELEE.ID and LocalPlayer():CompareFaction(false) then return end

	local item = EFGM.CLIENT.STASH[itemIndex]
	if item == nil then return end

	if HasInInventory(EFGM.CLIENT.EQUIPPED[equipSlot], item.name) then return end

	-- checking item equip slots
	if equipSlot == 1 and primaryPref != nil then
		if primaryPref == 1 then
			EFGM.CLIENT.EQUIPPED[equipSlot][1] = table.Copy(item)
			EFGM.CLIENT.EQUIPPED[equipSlot][1].data.count = 1

			net.Start("PlayerStashEquipItem", false)
				net.WriteUInt(itemIndex, 16)
				net.WriteUInt(equipSlot, 4)
				net.WriteUInt(1, 16)
			net.SendToServer()

			return true
		else
			EFGM.CLIENT.EQUIPPED[equipSlot][2] = table.Copy(item)
			EFGM.CLIENT.EQUIPPED[equipSlot][2].data.count = 1

			net.Start("PlayerStashEquipItem", false)
				net.WriteUInt(itemIndex, 16)
				net.WriteUInt(equipSlot, 4)
				net.WriteUInt(2, 16)
			net.SendToServer()

			return true
		end
	else
		for k, v in ipairs(EFGM.CLIENT.EQUIPPED[equipSlot]) do
			if table.IsEmpty(v) then
				EFGM.CLIENT.EQUIPPED[equipSlot][k] = table.Copy(item)
				EFGM.CLIENT.EQUIPPED[equipSlot][k].data.count = 1

				net.Start("PlayerStashEquipItem", false)
					net.WriteUInt(itemIndex, 16)
					net.WriteUInt(equipSlot, 4)
					net.WriteUInt(k, 16)
				net.SendToServer()

				return true
			end
		end
	end

	return false
end

function PinItemFromStash(itemIndex)
	if !LocalPlayer():IsInHideout() then return end

	local item = EFGM.CLIENT.STASH[itemIndex]
	if item == nil then return end

	net.Start("PlayerStashPinItem", false)
		net.WriteUInt(itemIndex, 16)
	net.SendToServer()
end
