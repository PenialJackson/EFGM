local math = math
local table = table
local net = net
local timer = timer
local util = util

function ReinstantiateInventory(ply)
	ply.inventory = {}
	ply.invStr = ""

	local equMelee = table.Copy(ply.weaponSlots[WEAPONSLOTS.MELEE.ID])

	ply.weaponSlots = {}
	ply.equStr = ""
	for k, v in pairs(WEAPONSLOTS) do
		ply.weaponSlots[v.ID] = {}
		for i = 1, v.COUNT, 1 do ply.weaponSlots[v.ID][i] = {} end
	end

	if equMelee != nil then ply.weaponSlots[WEAPONSLOTS.MELEE.ID] = equMelee end

	CalculateInventoryWeight(ply)
end

function ReloadInventory(ply)
	net.Start("PlayerInventoryReload", false)
	net.Send(ply)
end

function ReloadSlots(ply)
	net.Start("PlayerSlotsReload", false)
	net.Send(ply)
end

function AddItemToInventory(ply, name, data)
	if !ply:Alive() then return end
	if (ply:CompareFaction(false) and ply:IsInHideout()) then return end

	local def = EFGM.ITEMS[name]
	if def == nil then return end

	data.count = math.Clamp(tonumber(data.count) or 1, 1, def.stackSize)

	if (def.equipType == EQUIPTYPE.Weapon and def.equipSlot != WEAPONSLOTS.GRENADE.ID) and (!data.owner or !data.timestamp) then
		data.owner = ply:SteamID64()
		data.timestamp = os.time()
	end

	local item = ITEM.Instantiate(name, data)
	local index = table.insert(ply.inventory, item)

	net.Start("PlayerInventoryAddItem", false)
		net.WriteString(name)
		net.WriteTable(data)
		net.WriteUInt(index, 16)
	net.Send(ply)

	AddWeightToPlayer(ply, name, data.count)

	if data.att then
		local atts = GetPrefixedAttachmentListFromCode(data.att)
		if !atts then return end

		for _, a in ipairs(atts) do
			local att = EFGM.ITEMS[a]
			if att == nil then continue end

			AddWeightToPlayer(ply, a, 1)
		end
	end
end

function UpdateItemFromInventory(ply, index, data)
	local item = ply.inventory[index]
	if item == nil then return end

	local def = EFGM.ITEMS[item.name]
	if def == nil then return end

	if (def.equipType == EQUIPTYPE.Weapon and def.equipSlot != WEAPONSLOTS.GRENADE.ID) and (!data.owner or !data.timestamp) then
		data.owner = ply:SteamID64()
		data.timestamp = os.time()
	end

	if item.data.count < data.count then
		AddWeightToPlayer(ply, item.name, data.count - item.data.count)
	elseif item.data.count > data.count then
		RemoveWeightFromPlayer(ply, item.name, item.data.count - data.count)
	end

	ply.inventory[index].data = data

	net.Start("PlayerInventoryUpdateItem", false)
		net.WriteTable(ply.inventory[index].data)
		net.WriteUInt(index, 16)
	net.Send(ply)

	return item
end

function DeleteItemFromInventory(ply, index, isEquipped)
	local item = ply.inventory[index]

	if !isEquipped then
		RemoveWeightFromPlayer(ply, item.name, item.data.count)

		if item.data.att then
			local atts = GetPrefixedAttachmentListFromCode(item.data.att)
			if !atts then return end

			for _, a in ipairs(atts) do
				local att = EFGM.ITEMS[a]
				if att == nil then continue end

				RemoveWeightFromPlayer(ply, a, 1)
			end
		end
	end

	table.remove(ply.inventory, index)

	net.Start("PlayerInventoryDeleteItem", false)
		net.WriteUInt(index, 16)
	net.Send(ply)

	return item
end

function FlowItemToInventory(ply, name, data)
	if !ply:Alive() then return end
	if (ply:CompareFaction(false) and ply:IsInHideout()) then return end

	local def = EFGM.ITEMS[name]
	if def == nil then return end

	local stackSize = def.stackSize
	local amount = tonumber(data.count) or 1
	local durability = data.durability

	if stackSize == 1 then -- items that can't stack do not need to flow (but they do need to be created multiple times lol!)
		for i = 1, amount do
			AddItemToInventory(ply, name, data)
		end

		return
	end

	local indices = {}
	for k, v in ipairs(ply.inventory) do
		if v.name == name and v.data.durability == durability then
			table.insert(indices, k)
		end
	end

	table.sort(indices, function(a, b) return ply.inventory[a].data.count > ply.inventory[b].data.count end)

	-- fill existing stacks
	for _, idx in ipairs(indices) do
		if amount <= 0 then break end

		local v = ply.inventory[idx]
		if v.data.count < stackSize then
			local countToMax = stackSize - v.data.count
			local addAmount = math.min(amount, countToMax)

			local newData = table.Copy(data)
			newData.count = v.data.count + addAmount

			UpdateItemFromInventory(ply, idx, newData)
			amount = amount - addAmount
		end
	end

	-- create new stacks
	while amount > 0 do
		local stackAmount = math.min(amount, stackSize)

		local newData = table.Copy(data)
		newData.count = stackAmount

		AddItemToInventory(ply, name, newData)
		amount = amount - stackAmount
	end
end

function DeflowItemsFromInventory(ply, name, count)
	local amount = count

	local indices = {}
	for k, v in ipairs(ply.inventory) do
		if v.name == name then
			table.insert(indices, k)
		end
	end

	table.sort(indices, function(a, b) return ply.inventory[a].data.count < ply.inventory[b].data.count end)

	for i = 1, #indices do
		if amount <= 0 then break end

		local idx = indices[i]
		local v = ply.inventory[idx]

		if v and v.data.count > 0 then
			if amount >= v.data.count then
				amount = amount - v.data.count
				DeleteItemFromInventory(ply, idx, false)
			else
				local newData = table.Copy(v.data)
				newData.count = v.data.count - amount

				UpdateItemFromInventory(ply, idx, newData)
				amount = 0

				break
			end
		end
	end

	return amount
end

net.Receive("PlayerInventoryDropItem", function(len, ply)
	local itemIndex = net.ReadUInt(16)

	if ply:IsInDuel() then return end

	local item = ply.inventory[itemIndex]
	if item == nil then return end

	local entity = ents.Create("efgm_dropped_item")
	entity:SetItem(item.name, item.data)

	local pos, ang = ply:GetShootPos(), ply:EyeAngles()
	local dir = (ang:Forward() * 32) + (ang:Right() * 6) + (ang:Up() * -5)

	entity:SetPos(pos + dir)
	entity:Spawn()
	entity:SetOwner(ply)
	entity:PhysWake()

	local phys = entity:GetPhysicsObject()
	if IsValid(phys) then
		phys:ApplyForceCenter(ang:Forward() * 10)
		phys:ApplyForceOffset(VectorRand(), vector_origin)
	end

	table.remove(ply.inventory, itemIndex)
	RemoveWeightFromPlayer(ply, item.name, item.data.count)

	if item.data.att then
		local atts = GetPrefixedAttachmentListFromCode(item.data.att)
		if !atts then return end

		for _, a in ipairs(atts) do
			local att = EFGM.ITEMS[a]
			if att == nil then continue end

			RemoveWeightFromPlayer(ply, a, 1)
		end
	end
end)

net.Receive("PlayerInventoryEquipItem", function(len, ply)
	local itemIndex, equipSlot, equipSubSlot

	itemIndex = net.ReadUInt(16)
	equipSlot = net.ReadUInt(4)
	equipSubSlot = net.ReadUInt(4)

	local item = table.Copy(ply.inventory[itemIndex])
	if item == nil then return end

	if HasInInventory(ply.weaponSlots[equipSlot], item.name) then return end

	if table.IsEmpty(ply.weaponSlots[equipSlot][equipSubSlot]) then
		if item.data.count > 1 then
			DeflowItemsFromInventory(ply, item.name, 1)
		else
			DeleteItemFromInventory(ply, itemIndex, true)
		end

		ply.weaponSlots[equipSlot][equipSubSlot] = item
		ply.weaponSlots[equipSlot][equipSubSlot].data.count = 1

		GiveWepWithPresetFromCode(ply, ply.weaponSlots[equipSlot][equipSubSlot].name, ply.weaponSlots[equipSlot][equipSubSlot].data)

		ReloadSlots(ply)
		ReloadInventory(ply)
	end
end)

net.Receive("PlayerInventoryEquipItemFromEquipped", function(len, ply)
	local equipSlot, equipSubSlot, toEquipSlot, toEquipSubSlot, toSwitch

	equipSlot = net.ReadUInt(4)
	equipSubSlot = net.ReadUInt(4)
	toEquipSlot = net.ReadUInt(4)
	toEquipSubSlot = net.ReadUInt(4)
	toSwitch = net.ReadBool()

	local item = ply.weaponSlots[equipSlot][equipSubSlot]
	if table.IsEmpty(item) then return end

	if !toSwitch then
		ply.weaponSlots[toEquipSlot][toEquipSubSlot] = item
		ply.weaponSlots[equipSlot][equipSubSlot] = {}
	else
		local itemToSwitch = table.Copy(ply.weaponSlots[toEquipSlot][toEquipSubSlot])
		ply.weaponSlots[toEquipSlot][toEquipSubSlot] = item
		ply.weaponSlots[equipSlot][equipSubSlot] = itemToSwitch
	end

	ReloadSlots(ply)
end)

net.Receive("PlayerInventoryUnEquipItem", function(len, ply)
	local equipID = net.ReadUInt(4)
	local equipSlot = net.ReadUInt(4)
	local reloadInv = net.ReadBool()
	local reloadSlots = net.ReadBool()

	if (ply:CompareFaction(false) and ply:IsInHideout()) then return end

	local item = table.Copy(ply.weaponSlots[equipID][equipSlot])
	if table.IsEmpty(item) then return end

	ply.weaponSlots[equipID][equipSlot] = {}

	local wep = ply:GetWeapon(item.name)
	local def = EFGM.ITEMS[item.name]
	if def == nil then return end

	if wep != NULL and def.displayType != "Grenade" then
		local clip1 = wep:Clip1()
		local ammoDef = EFGM.ITEMS[wep.Ammo]

		if clip1 > 0 and ply:GetNWBool("InRange", false) == false and ammoDef then
			local data = {}
			data.count = math.Clamp(wep:Clip1(), 1, ammoDef.stackSize)
			FlowItemToInventory(ply, wep.Ammo, data)
		end

		local clip2 = wep:Clip2()
		local ammoDef2 = EFGM.ITEMS[wep.UBGLAmmo]

		if clip2 > 0 and ply:GetNWBool("InRange", false) == false and ammoDef2 then
			local data = {}
			data.count = math.Clamp(wep:Clip2(), 1, ammoDef2.stackSize)
			FlowItemToInventory(ply, wep.UBGLAmmo, data)
		end
	end

	ply:StripWeapon(item.name)

	local newItem = ITEM.Instantiate(item.name, item.data)
	local index = table.insert(ply.inventory, newItem)

	net.Start("PlayerInventoryAddItem", false)
		net.WriteString(item.name)
		net.WriteTable(item.data)
		net.WriteUInt(index, 16)
	net.Send(ply)

	if reloadInv then ReloadInventory(ply) end
	if reloadSlots then ReloadSlots(ply) end
end)

function UnequipAll(ply)
	if (ply:CompareFaction(false) and ply:IsInHideout()) then return end

	for i = 1, #table.GetKeys(WEAPONSLOTS) do
		if i == WEAPONSLOTS.MELEE.ID then continue end

		for k, v in ipairs(ply.weaponSlots[i]) do
			if !table.IsEmpty(v) then
				local item = table.Copy(v)
				if table.IsEmpty(item) then return end

				ply.weaponSlots[i][k] = {}

				local wep = ply:GetWeapon(item.name)
				local def = EFGM.ITEMS[item.name]
				if def == nil then return end

				if wep != NULL and def.displayType != "Grenade" then
					local clip1 = wep:Clip1()
					local ammoDef = EFGM.ITEMS[wep.Ammo]

					if clip1 > 0 and ply:GetNWBool("InRange", false) == false and ammoDef then
						local data = {}
						data.count = math.Clamp(wep:Clip1(), 1, ammoDef.stackSize)
						FlowItemToInventory(ply, wep.Ammo, data)
					end

					local clip2 = wep:Clip2()
					local ammoDef2 = EFGM.ITEMS[wep.UBGLAmmo]

					if clip2 > 0 and ply:GetNWBool("InRange", false) == false and ammoDef2 then
						local data = {}
						data.count = math.Clamp(wep:Clip2(), 1, ammoDef2.stackSize)
						FlowItemToInventory(ply, wep.UBGLAmmo, data)
					end
				end

				local newItem = ITEM.Instantiate(item.name, item.data)
				local index = table.insert(ply.inventory, newItem)

				net.Start("PlayerInventoryAddItem", false)
					net.WriteString(item.name)
					net.WriteTable(item.data)
					net.WriteUInt(index, 16)
				net.Send(ply)

				ply:StripWeapon(item.name)

				net.Start("PlayerInventoryUnEquipAll")
				net.Send(ply)
			end
		end
	end

	ReloadInventory(ply)
end

net.Receive("PlayerInventoryUnEquipAllCL", function(len, ply)
	UnequipAll(ply)
end)

function UnequipAllFirearms(ply)
	if (ply:CompareFaction(false) and ply:IsInHideout()) then return end

	for i = 1, #table.GetKeys(WEAPONSLOTS) do
		if i == WEAPONSLOTS.MELEE.ID then continue end

		for k, v in ipairs(ply.weaponSlots[i]) do
			if !table.IsEmpty(v) then
				local item = table.Copy(v)
				if table.IsEmpty(item) then return end

				ply.weaponSlots[i][k] = {}

				local wep = ply:GetWeapon(item.name)
				local def = EFGM.ITEMS[item.name]
				if def == nil then return end

				if wep != NULL and def.displayType != "Grenade" then
					local clip1 = wep:Clip1()
					local ammoDef = EFGM.ITEMS[wep.Ammo]

					if clip1 > 0 and ply:GetNWBool("InRange", false) == false and ammoDef then
						local data = {}
						data.count = math.Clamp(wep:Clip1(), 1, ammoDef.stackSize)
						FlowItemToInventory(ply, wep.Ammo, data)
					end

					local clip2 = wep:Clip2()
					local ammoDef2 = EFGM.ITEMS[wep.UBGLAmmo]

					if clip2 > 0 and ply:GetNWBool("InRange", false) == false and ammoDef2 then
						local data = {}
						data.count = math.Clamp(wep:Clip2(), 1, ammoDef2.stackSize)
						FlowItemToInventory(ply, wep.UBGLAmmo, data)
					end
				end

				local newItem = ITEM.Instantiate(item.name, item.data)
				local index = table.insert(ply.inventory, newItem)

				net.Start("PlayerInventoryAddItem", false)
					net.WriteString(item.name)
					net.WriteTable(item.data)
					net.WriteUInt(index, 16)
				net.Send(ply)

				net.Start("PlayerInventoryUnEquipAll")
				net.Send(ply)
			end
		end
	end

	ReloadInventory(ply)
end

function MatchWithEquippedAndUpdate(ply, itemName, attsTbl)
	local def = EFGM.ITEMS[itemName]
	if def == nil then return end
	if def.defAtts == nil then return end

	for i = 1, #table.GetKeys(WEAPONSLOTS) do
		for k, v in ipairs(ply.weaponSlots[i]) do
			if !v.name then continue end

			if v.name == itemName then
				local oldAtts = v.data.att

				local atts = table.Copy(attsTbl)
				local str = GenerateAttachString(atts)
				v.data.att = str

				if oldAtts != str then
					local oldAttsTbl = GetPrefixedAttachmentListFromCode(oldAtts)
					if !oldAttsTbl then return end

					for _, a in ipairs(oldAttsTbl) do
						local att = EFGM.ITEMS[a]
						if att == nil then continue end

						RemoveWeightFromPlayer(ply, a, 1)
					end

					local newAttsTbl = GetPrefixedAttachmentListFromCode(str)
					if !newAttsTbl then return end

					for _, a in ipairs(newAttsTbl) do
						local att = EFGM.ITEMS[a]
						if att == nil then continue end

						AddWeightToPlayer(ply, a, 1)
					end
				end

				net.Start("PlayerInventoryUpdateEquipped", false)
					net.WriteTable(v.data)
					net.WriteUInt(i, 4)
					net.WriteUInt(k, 4)
				net.Send(ply)

				return
			end
		end
	end
end

function MatchClassWithEquipped(ply, itemName)
	if itemName == nil then return end

	for i = 1, #table.GetKeys(WEAPONSLOTS) do
		for k, v in ipairs(ply.weaponSlots[i]) do
			if table.IsEmpty(v) then continue end

			if v.name == itemName then
				return v
			end
		end
	end

	return nil
end

net.Receive("PlayerInventoryDropEquippedItem", function(len, ply)
	local equipID = net.ReadUInt(4)
	local equipSlot = net.ReadUInt(4)

	if ply:IsInDuel() then return end

	local item = table.Copy(ply.weaponSlots[equipID][equipSlot])
	if table.IsEmpty(item) then return end

	ply.weaponSlots[equipID][equipSlot] = {}

	local wep = ply:GetWeapon(item.name)
	local def = EFGM.ITEMS[item.name]
	if def == nil then return end

	if wep != NULL and def.equipType == EQUIPTYPE.Weapon and def.displayType != "Grenade" then
		wep:Unload()
	end

	ply:StripWeapon(item.name)

	local entity = ents.Create("efgm_dropped_item")
	entity:SetItem(item.name, item.data)

	local pos, ang = ply:GetShootPos(), ply:EyeAngles()
	local dir = (ang:Forward() * 32) + (ang:Right() * 6) + (ang:Up() * -5)

	entity:SetPos(pos + dir)
	entity:Spawn()
	entity:SetOwner(ply)
	entity:PhysWake()

	local phys = entity:GetPhysicsObject()
	if IsValid(phys) then
		phys:ApplyForceCenter(ang:Forward() * 10)
		phys:ApplyForceOffset(VectorRand(), vector_origin)
	end

	RemoveWeightFromPlayer(ply, item.name, item.data.count)

	if item.data.att then
		local atts = GetPrefixedAttachmentListFromCode(item.data.att)
		if !atts then return end

		for _, a in ipairs(atts) do
			local att = EFGM.ITEMS[a]
			if att == nil then continue end

			RemoveWeightFromPlayer(ply, a, 1)
		end
	end
end)

net.Receive("PlayerInventoryLootItemFromContainer", function(len, ply)
	local container = net.ReadEntity()
	local index = net.ReadUInt(16)

	if !ply:Alive() then return end
	if container == nil then return end

	local item = container.Inventory[index]
	if item == nil then return end

	FlowItemToInventory(ply, item.name, item.data)

	ReloadInventory(ply)

	if ply:IsInRaid() then
		ply:AddToStat("ItemsLooted", 1)
		ply:SetNWInt("RaidItemsLooted", ply:GetNWInt("RaidItemsLooted") + 1)
	end

	table.remove(container.Inventory, index)

	if table.IsEmpty(container.Inventory) then container:Remove() end
end)

net.Receive("PlayerInventoryEquipItemFromContainer", function(len, ply)
	local container = net.ReadEntity()
	local index = net.ReadUInt(16)
	local equipSlot = net.ReadUInt(4)
	local equipSubSlot = net.ReadUInt(4)

	if !ply:Alive() then return end
	if container == nil then return end

	local item = container.Inventory[index]
	if item == nil then return end

	local def = EFGM.ITEMS[item.name]
	if def == nil then return end

	if HasInInventory(ply.weaponSlots[equipSlot], item.name) then return end

	if table.IsEmpty(ply.weaponSlots[equipSlot][equipSubSlot]) then
		if (def.equipType == EQUIPTYPE.Weapon and def.equipSlot != WEAPONSLOTS.GRENADE.ID) and (!item.data.owner or !item.data.timestamp) then
			item.data.owner = ply:SteamID64()
			item.data.timestamp = os.time()
		end

		ply.weaponSlots[equipSlot][equipSubSlot] = item
		table.remove(container.Inventory, index)

		GiveWepWithPresetFromCode(ply, ply.weaponSlots[equipSlot][equipSubSlot].name, ply.weaponSlots[equipSlot][equipSubSlot].data)

		ReloadSlots(ply)
	end

	if table.IsEmpty(container.Inventory) then container:Remove() end
end)

net.Receive("PlayerInventorySplit", function(len, ply)
	local invType = net.ReadString()
	local item = net.ReadString()
	local count = net.ReadUInt(16)
	local key = net.ReadUInt(16)

	if !ply:IsInHideout() and invType == "stash" then return end

	local def = EFGM.ITEMS[item]
	if def == nil then return end

	if invType == "inv" then
		local data = ply.inventory[key].data

		if AmountInInventory(ply.inventory, item) < count then return end

		local newData = table.Copy(data)
		newData.count = data.count - count
		UpdateItemFromInventory(ply, key, newData)

		local newNewData = table.Copy(data) -- fuck
		newNewData.count = count
		AddItemToInventory(ply, item, newNewData)

		ReloadInventory(ply)

		return
	elseif invType == "stash" then
		local data = ply.stash[key].data

		if AmountInInventory(ply.stash, item) < count then return end

		local newData = table.Copy(data)
		newData.count = data.count - count
		UpdateItemFromStash(ply, key, newData)

		local newNewData = table.Copy(data) -- fuckkkk
		newNewData.count = count
		AddItemToStash(ply, item, newNewData)

		ReloadStash(ply)

		return
	end
end)

net.Receive("PlayerInventoryDelete", function(len, ply)
	local invType = net.ReadString()
	local key = net.ReadUInt(16)
	local equipID = net.ReadUInt(4)
	local equipSlot = net.ReadUInt(4)

	if !ply:IsInHideout() and invType == "stash" then return end

	if invType == "inv" then
		local item = ply.inventory[key]
		if item == nil then return end

		RemoveWeightFromPlayer(ply, item.name, item.data.count)

		if item.data.att then
			local atts = GetPrefixedAttachmentListFromCode(item.data.att)
			if !atts then return end

			for _, a in ipairs(atts) do
				local att = EFGM.ITEMS[a]
				if att == nil then continue end

				RemoveWeightFromPlayer(ply, a, 1)
			end
		end

		table.remove(ply.inventory, key)

		net.Start("PlayerInventoryDeleteItem", false)
			net.WriteUInt(key, 16)
		net.Send(ply)

		ReloadInventory(ply)

		return
	elseif invType == "stash" then
		table.remove(ply.stash, key)

		net.Start("PlayerStashDeleteItem", false)
			net.WriteUInt(key, 16)
		net.Send(ply)

		ReloadStash(ply)
		ply:SetNWInt("StashCount", #ply.stash)

		return
	elseif invType == "equipped" then
		if ply:IsInDuel() then return end

		local item = table.Copy(ply.weaponSlots[equipID][equipSlot])
		if table.IsEmpty(item) then return end

		ply.weaponSlots[equipID][equipSlot] = {}

		local wep = ply:GetWeapon(item.name)
		local def = EFGM.ITEMS[item.name]
		if def == nil then return end

		if wep != NULL and def.equipType == EQUIPTYPE.Weapon and def.displayType != "Grenade" then
			wep:Unload()
		end

		ply:StripWeapon(item.name)

		net.Start("PlayerInventoryDeleteEquippedItem", false)
			net.WriteUInt(equipID, 4)
			net.WriteUInt(equipSlot, 4)
		net.Send(ply)

		RemoveWeightFromPlayer(ply, item.name, item.data.count)

		if item.data.att then
			local atts = GetPrefixedAttachmentListFromCode(item.data.att)
			if !atts then return end

			for _, a in ipairs(atts) do
				local att = EFGM.ITEMS[a]
				if att == nil then continue end

				RemoveWeightFromPlayer(ply, a, 1)
			end
		end

		return
	end
end)

net.Receive("PlayerInventoryTag", function(len, ply)
	local tag = net.ReadString()
	local invType = net.ReadString()
	local key = net.ReadUInt(16)
	local equipID = net.ReadUInt(4)
	local equipSlot = net.ReadUInt(4)

	if !ply:IsInHideout() then return end

	if invType == "inv" then
		if ply.inventory[key].data.tag != nil then return end
		ply.inventory[key].data.tag = tag
		ply.inventory[key].data.taggedBy = ply:SteamID64()

		net.Start("PlayerInventoryUpdateItem", false)
			net.WriteTable(ply.inventory[key].data)
			net.WriteUInt(key, 16)
		net.Send(ply)

		ReloadInventory(ply)

		return
	elseif invType == "stash" then
		if ply.stash[key].data.tag != nil then return end
		ply.stash[key].data.tag = tag
		ply.stash[key].data.taggedBy = ply:SteamID64()

		net.Start("PlayerStashUpdateItem", false)
			net.WriteTable(ply.stash[key].data)
			net.WriteUInt(key, 16)
		net.Send(ply)

		ReloadStash(ply)
		ply:SetNWInt("StashCount", #ply.stash)

		return
	elseif invType == "equipped" then
		if ply.weaponSlots[equipID][equipSlot].data.tag != nil then return end
		ply.weaponSlots[equipID][equipSlot].data.tag = tag
		ply.weaponSlots[equipID][equipSlot].data.taggedBy = ply:SteamID64()

		net.Start("PlayerInventoryUpdateEquipped", false)
			net.WriteTable(ply.weaponSlots[equipID][equipSlot].data)
			net.WriteUInt(equipID, 4)
			net.WriteUInt(equipSlot, 4)
		net.Send(ply)

		return
	end
end)

function ConsumeGrenade(ply)
	local item = ply.weaponSlots[WEAPONSLOTS.GRENADE.ID][1].name
	if item == nil then return end

	ply.weaponSlots[WEAPONSLOTS.GRENADE.ID][1] = {}

	RemoveWeightFromPlayer(ply, item, 1)
	ply:StripWeapon(item)

	net.Start("PlayerInventoryConsumeGrenade", false)
	net.Send(ply)
end

function RemoveConsumable(ply)
	local item = ply.weaponSlots[WEAPONSLOTS.CONSUMABLE.ID][1].name
	if item == nil then return end

	ply.weaponSlots[WEAPONSLOTS.CONSUMABLE.ID][1] = {}

	RemoveWeightFromPlayer(ply, item, 1)
	ply:StripWeapon(item)

	net.Start("PlayerInventoryRemoveConsumable", false)
	net.Send(ply)
end

function UpdateInventoryString(ply)
	local inventoryStr = util.TableToJSON(ply.inventory)
	inventoryStr = util.Compress(inventoryStr)
	inventoryStr = util.Base64Encode(inventoryStr, true)
	ply.invStr = inventoryStr

	return inventoryStr
end

function UpdateEquippedString(ply)
	local equippedStr = util.TableToJSON(ply.weaponSlots)
	equippedStr = util.Compress(equippedStr)
	equippedStr = util.Base64Encode(equippedStr, true)
	ply.equStr = equippedStr

	return equippedStr
end

function AddWeightToPlayer(ply, item, count)
	local def = EFGM.ITEMS[item]
	if def == nil then return end

	if count == 0 then count = 1 end
	if def.weight == nil then return false end

	local itemWeight = math.Round(def.weight, 3)

	local curWeight = ply:GetNWFloat("InventoryWeight", 0.000)
	local newWeight = curWeight + math.Round(itemWeight * count, 3)

	ply:SetNWFloat("InventoryWeight", newWeight)
	return newWeight
end

function RemoveWeightFromPlayer(ply, item, count)
	local def = EFGM.ITEMS[item]
	if def == nil then return end

	if count == 0 then count = 1 end
	if def.weight == nil then return false end

	local itemWeight = math.Round(def.weight, 3)

	local curWeight = ply:GetNWFloat("InventoryWeight", 0.000)
	local newWeight = curWeight - math.Round(itemWeight * count, 3)

	ply:SetNWFloat("InventoryWeight", math.max(0.000, newWeight))
	return newWeight
end

function CalculateInventoryWeight(ply)
	local newWeight = 0

	for k, v in ipairs(ply.inventory) do
		local def = EFGM.ITEMS[v.name]
		if def == nil then continue end

		local count = v.data.count or 1
		if def.weight == nil then continue end

		local itemWeight = math.Round(def.weight, 3)
		newWeight = newWeight + math.Round(itemWeight * count, 3)

		if v.data.att then
			local atts = GetPrefixedAttachmentListFromCode(v.data.att)
			if !atts then return end

			for _, a in ipairs(atts) do
				local att = EFGM.ITEMS[a]
				if att == nil then continue end

				newWeight = newWeight + math.Round(att.weight, 3)
			end
		end
	end

	for i = 1, #table.GetKeys(WEAPONSLOTS) do
		for k, v in ipairs(ply.weaponSlots[i]) do
			if table.IsEmpty(v) then continue end

			local def = EFGM.ITEMS[v.name]
			if def == nil then continue end

			local count = v.data.count or 1
			if def.weight == nil then continue end

			local itemWeight = math.Round(def.weight, 3)
			newWeight = newWeight + math.Round(itemWeight * count, 3)

			if v.data.att then
				local atts = GetPrefixedAttachmentListFromCode(v.data.att)
				if !atts then return end

				for _, a in ipairs(atts) do
					local att = EFGM.ITEMS[a]
					if att == nil then continue end

					newWeight = newWeight + math.Round(att.weight, 3)
				end
			end
		end
	end

	ply:SetNWFloat("InventoryWeight", math.max(0.000, newWeight))
	return newWeight
end

local function DecompressTableRecursive(tbl)
	local result = {}

	for _, v in ipairs(tbl) do
		if v.i then table.insert(result, v.i) end
		if v.s then
			local afiousdhaf = DecompressTableRecursive(v.s)

			for _, r in ipairs(afiousdhaf) do
				table.insert(result, r)
			end
		end
	end

	return result
end

local function GetAttsFromPreset(str)
	if !str then return end
	str = util.Base64Decode(str)
	str = util.Decompress(str)
	if !str then return end

	local tbl = util.JSONToTable(str)
	if !tbl then return end

	return DecompressTableRecursive(tbl)
end

function GiveWepWithPresetFromCode(ply, classname, data)
	if !ply:IsPlayer() then return end

	local swep = list.Get("Weapon")[classname]
	if swep == nil then return end

	local dataType = "none"
	if data.att then dataType = "att" elseif data.durability then dataType = "consumable" end

	if dataType == "none" then
		ply:Give(classname)
		return
	elseif dataType == "consumable" then
		local item = ply:Give(classname)
		local def = EFGM.ITEMS[classname]
		if def == nil then return end

		if def.equipType == EQUIPTYPE.Consumable then
			item:SetDurability(data.durability)
		end

		return
	else
		if !GetConVar("arc9_free_atts"):GetBool() then

			local atts = GetAttsFromPreset(data.att)

			if !atts then
				ply:Give(classname)
				return
			end
		end

		if ply:HasWeapon(classname) then
			local wpn = ply:GetWeapon(classname)

			if IsValid(wpn) then
				ply.givingPreset = true
				wpn:SetNoPresets(true)

				net.Start("PlayerInventorySendWeaponPreset")
					net.WriteEntity(wpn)
					net.WriteString(data.att)
				net.Send(ply)

				wpn:PostModify()
			end
		else
			local wpn = ply:Give(classname)

			wpn:SetNoPresets(true)

			timer.Simple(0.1, function()
				if IsValid(wpn) then
					ply.givingPreset = true

					net.Start("PlayerInventorySendWeaponPreset")
						net.WriteEntity(wpn)
						net.WriteString(data.att)
					net.Send(ply)
				end
			end)
		end
	end
end

hook.Add("PlayerSpawn", "GiveEquippedItemsOnSpawn", function(ply)
	ply.SpawnTimerVManip = CurTime() + 1 -- fuck off

	for i = 1, #table.GetKeys(WEAPONSLOTS) do
		for k, v in ipairs(ply.weaponSlots[i]) do
			if !table.IsEmpty(v) then
				local item = table.Copy(v)
				if table.IsEmpty(item) then return end

				GiveWepWithPresetFromCode(ply, item.name, item.data)
			end
		end
	end
end)

net.Receive("PlayerInventoryFixDesyncCL", function(len, ply)
	UpdateStashString(ply)
	UpdateInventoryString(ply)
	UpdateEquippedString(ply)

	SendChunkedNet(ply, ply.stashStr, "PlayerNetworkStash")
	SendChunkedNet(ply, ply.invStr, "PlayerNetworkInventory")
	SendChunkedNet(ply, ply.equStr, "PlayerNetworkEquipped")
end)

if GetConVar("efgm_derivesbox"):GetInt() == 1 then
	function GiveItem(ply, name, count)
		local data = {}
		local def = EFGM.ITEMS[name]
		if def == nil then return end

		if (def.consumableType == "heal" or def.consumableType == "key") and def.consumableValue then
			data.durability = def.consumableValue
		end

		data.count = count or 1

		FlowItemToInventory(ply, name, data)
		ReloadInventory(ply)
	end
	concommand.Add("efgm_debug_giveitem", function(ply, cmd, args) GiveItem(ply, args[1], args[2]) end)

	function WipeInventory(ply)
		ply.inventory = {}
		UpdateInventoryString(ply)

		SendChunkedNet(ply, ply.invStr, "PlayerNetworkInventory")

		CalculateInventoryWeight(ply)
	end
	concommand.Add("efgm_debug_wipeinventory", function(ply, cmd, args) WipeInventory(ply) end)

	function WipeEquipped(ply)
		ply.weaponSlots = {}
		for k, v in pairs(WEAPONSLOTS) do
			ply.weaponSlots[v.ID] = {}
			for i = 1, v.COUNT, 1 do ply.weaponSlots[v.ID][i] = {} end
		end
		UpdateEquippedString(ply)

		SendChunkedNet(ply, ply.equStr, "PlayerNetworkEquipped")

		CalculateInventoryWeight(ply)
	end
	concommand.Add("efgm_debug_wipeequipped", function(ply, cmd, args) WipeEquipped(ply) end)

	function PrintInventory(ply)
		UpdateInventoryString(ply)
		PrintTable(ply.inventory)
	end
	concommand.Add("efgm_debug_printinventory", function(ply, cmd, args) PrintInventory(ply) end)

	function PrintInventoryString(ply)
		UpdateInventoryString(ply)
		print(ply.invStr)
	end
	concommand.Add("efgm_debug_printinventorystring", function(ply, cmd, args) PrintInventoryString(ply) end)

	function PrintEquipped(ply)
		UpdateEquippedString(ply)
		PrintTable(ply.weaponSlots)
	end
	concommand.Add("efgm_debug_printequipped", function(ply, cmd, args) PrintEquipped(ply) end)

	function PrintEquippedString(ply)
		UpdateEquippedString(ply)
		print(ply.equStr)
	end
	concommand.Add("efgm_debug_printequippedstring", function(ply, cmd, args) PrintEquippedString(ply) end)

	-- for save editing and whatnot
	function PrintCleanInventoryString(ply)
		local cleanTbl = {}
		cleanTbl = table.Copy(ply.inventory)

		for k, v in ipairs(cleanTbl) do
			v.data.owner = nil
			v.data.timestamp = nil
		end

		local inventoryStr = util.TableToJSON(cleanTbl)
		inventoryStr = util.Compress(inventoryStr)
		inventoryStr = util.Base64Encode(inventoryStr, true)
		print(inventoryStr)
	end
	concommand.Add("efgm_debug_printinventorystring_clean", function(ply, cmd, args) PrintCleanInventoryString(ply) end)

	function PrintCleanEquippedString(ply)
		local cleanTbl = {}
		cleanTbl = table.Copy(ply.weaponSlots)

		for i = 1, #table.GetKeys(WEAPONSLOTS) do
			for k, v in ipairs(cleanTbl[i]) do
				if table.IsEmpty(v) then continue end

				v.data.owner = nil
				v.data.timestamp = nil
			end
		end

		local equippedStr = util.TableToJSON(cleanTbl)
		equippedStr = util.Compress(equippedStr)
		equippedStr = util.Base64Encode(equippedStr, true)
		print(equippedStr)
	end
	concommand.Add("efgm_debug_printequippedstring_clean", function(ply, cmd, args) PrintCleanEquippedString(ply) end)
end
