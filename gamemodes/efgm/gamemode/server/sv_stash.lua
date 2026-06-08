local math = math
local table = table
local net = net
local util = util

function ReloadStash(ply)
	net.Start("PlayerStashReload", false)
	net.Send(ply)
end

function AddItemToStash(ply, name, data)
	local def = EFGM.ITEMS[name]
	if def == nil then return end

	local stackSize = def.stashStackSize or def.stackSize

	data.count = math.Clamp(tonumber(data.count) or 1, 1, stackSize)
	data.pin = nil

	if (def.equipType == EQUIPTYPE.Weapon and def.equipSlot != WEAPONSLOTS.GRENADE.ID) and (!data.owner or !data.timestamp) then
		data.owner = ply:SteamID64()
		data.timestamp = os.time()
	end

	local item = ITEM.Instantiate(name, data)
	local index = table.insert(ply.stash, item)

	net.Start("PlayerStashAddItem", false)
		net.WriteString(name)
		net.WriteTable(data)
		net.WriteUInt(index, 16)
	net.Send(ply)

	ply:SetNWInt("StashCount", #ply.stash)
end

function UpdateItemFromStash(ply, index, data)
	local item = ply.stash[index]
	if item == nil then return end

	local def = EFGM.ITEMS[item.name]
	if def == nil then return end

	if (def.equipType == EQUIPTYPE.Weapon and def.equipSlot != WEAPONSLOTS.GRENADE.ID) and (!data.owner or !data.timestamp) then
		data.owner = ply:SteamID64()
		data.timestamp = os.time()
	end

	ply.stash[index].data = data

	net.Start("PlayerStashUpdateItem", false)
		net.WriteTable(ply.stash[index].data)
		net.WriteUInt(index, 16)
	net.Send(ply)

	ply:SetNWInt("StashCount", #ply.stash)

	return item
end

function DeleteItemFromStash(ply, index)
	local item = ply.stash[index]
	if item == nil then return end

	table.remove(ply.stash, index)

	net.Start("PlayerStashDeleteItem", false)
		net.WriteUInt(index, 16)
	net.Send(ply)

	ply:SetNWInt("StashCount", #ply.stash)

	return item
end

function FlowItemToStash(ply, name, data)
	local def = EFGM.ITEMS[name]
	if def == nil then return end

	local stackSize = def.stashStackSize or def.stackSize
	local amount = tonumber(data.count) or 1
	local durability = data.durability

	if stackSize == 1 then -- items that can't stack do not need to flow
		for i = 1, amount do
			AddItemToStash(ply, name, data)
		end

		return
	end

	local indices = {}
	for k, v in ipairs(ply.stash) do
		if v.name == name and v.data.durability == durability then
			table.insert(indices, k)
		end
	end

	table.sort(indices, function(a, b) return ply.stash[a].data.count > ply.stash[b].data.count end)

	-- fill existing stacks
	for _, idx in ipairs(indices) do
		if amount <= 0 then break end

		local v = ply.stash[idx]
		if v.data.count < stackSize then
			local countToMax = stackSize - v.data.count
			local addAmount = math.min(amount, countToMax)

			local newData = table.Copy(data)
			newData.count = v.data.count + addAmount

			UpdateItemFromStash(ply, idx, newData)
			amount = amount - addAmount
		end
	end

	-- create new stacks
	while amount > 0 do
		local stackAmount = math.min(amount, stackSize)

		local newData = table.Copy(data)
		newData.count = stackAmount

		AddItemToStash(ply, name, newData)
		amount = amount - stackAmount
	end
end

function DeflowItemsFromStash(ply, name, amount)
	local indices = {}
	for k, v in ipairs(ply.stash) do
		if v.name == name then
			table.insert(indices, k)
		end
	end

	table.sort(indices, function(a, b) return ply.stash[a].data.count < ply.stash[b].data.count end)

	for i = 1, #indices do
		if amount <= 0 then break end

		local idx = indices[i]
		local item = ply.stash[idx]
		if item == nil then continue end

		if item.data.count > 0 then
			if amount >= item.data.count then
				amount = amount - item.data.count
				DeleteItemFromStash(ply, idx)
			else
				local newData = table.Copy(item.data)
				newData.count = item.data.count - amount
				UpdateItemFromStash(ply, idx, newData)
				amount = 0

				break
			end
		end
	end

	return amount
end

net.Receive("PlayerStashAddItemFromInventory", function(len, ply)
	local itemIndex = net.ReadUInt(16)

	if !ply:IsInHideout() then return end
	if ply:GetNWInt("StashCount", 0) >= ply:GetNWInt("StashMax", 150) then return end

	local item = ply.inventory[itemIndex]
	if item == nil then return end

	local itemDef = EFGM.ITEMS[item.name]
	if itemDef == nil then return end

	if item.data.count <= itemDef.stackSize then
		FlowItemToStash(ply, item.name, item.data)
		DeleteItemFromInventory(ply, itemIndex)
	else
		if item.data.count and table.Count(item.data) == 1 then
			local newData = table.Copy(item.data)
			newData.count = itemDef.stackSize
			FlowItemToStash(ply, item.name, newData)
			DeflowItemsFromInventory(ply, item.name, newData.count)
		else
			item.data.count = item.data.count - itemDef.stackSize
			local newData = table.Copy(item.data)
			newData.count = itemDef.stackSize
			FlowItemToStash(ply, item.name, newData)
			UpdateItemFromInventory(ply, itemIndex, item.data)
		end
	end

	ReloadStash(ply)
	ReloadInventory(ply)

	ply:SetNWInt("StashCount", #ply.stash)
end)

net.Receive("PlayerStashAddItemFromEquipped", function(len, ply)
	local equipID = net.ReadUInt(4)
	local equipSlot = net.ReadUInt(4)

	if !ply:IsInHideout() then return end
	if ply:GetNWInt("StashCount", 0) >= ply:GetNWInt("StashMax", 150) then return end
	if equipID != WEAPONSLOTS.MELEE.ID and ply:CompareFaction(false) then return end

	local item = table.Copy(ply.weaponSlots[equipID][equipSlot])
	if table.IsEmpty(item) then return end

	ply.weaponSlots[equipID][equipSlot] = {}

	local wep = ply:GetWeapon(item.name)
	local def = EFGM.ITEMS[item.name]
	if def == nil then return end

	if wep != NULL and def.equipType == EQUIPTYPE.Weapon and def.displayType != "Grenade" then
		wep:Unload()
	end

	ReloadSlots(ply)

	ply:StripWeapon(item.name)

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

	FlowItemToStash(ply, item.name, item.data)
	ReloadStash(ply)
end)

function StashAllFromInventory(ply)
	if !ply:IsInHideout() then return end

	local indexes = #ply.inventory
	local indexesNuked = 0

	for i = 1, indexes do
		if ply:GetNWInt("StashCount", 0) >= ply:GetNWInt("StashMax", 150) then return end

		local itemIndex = i - indexesNuked
		local item = DeleteItemFromInventory(ply, itemIndex, false)
		indexesNuked = indexesNuked + 1

		if item == nil then return end

		FlowItemToStash(ply, item.name, item.data)
	end

	ReloadInventory(ply)
	ReloadStash(ply)
end

net.Receive("PlayerStashAddAllFromInventory", function(len, ply)
	StashAllFromInventory(ply)
end)

net.Receive("PlayerStashTakeItemToInventory", function(len, ply)
	local itemIndex = net.ReadUInt(16)

	if !ply:IsInHideout() then return end
	if ply:CompareFaction(false) then return end

	local item = ply.stash[itemIndex]
	if item == nil then return end

	local itemDef = EFGM.ITEMS[item.name]
	if itemDef == nil then return end

	if item.data.count <= itemDef.stackSize then
		FlowItemToInventory(ply, item.name, item.data)
		DeleteItemFromStash(ply, itemIndex)
	else
		if item.data.count and table.Count(item.data) == 1 then
			local newData = table.Copy(item.data)
			newData.count = itemDef.stackSize
			FlowItemToInventory(ply, item.name, newData)
			DeflowItemsFromStash(ply, item.name, newData.count)
		else
			item.data.count = item.data.count - itemDef.stackSize
			local newData = table.Copy(item.data)
			newData.count = itemDef.stackSize
			FlowItemToInventory(ply, item.name, newData)
			UpdateItemFromStash(ply, itemIndex, item.data)
		end
	end

	ReloadInventory(ply)
	ReloadStash(ply)
end)

net.Receive("PlayerStashEquipItem", function(len, ply)
	local itemIndex, equipSlot, equipSubSlot

	itemIndex = net.ReadUInt(16)
	equipSlot = net.ReadUInt(4)
	equipSubSlot = net.ReadUInt(16)

	if !ply:IsInHideout() then return end
	if equipSlot != WEAPONSLOTS.MELEE.ID and ply:CompareFaction(false) then return end

	local item = table.Copy(ply.stash[itemIndex])
	if item == nil then return end

	if HasInInventory(ply.weaponSlots[equipSlot], item.name) then return end

	if table.IsEmpty(ply.weaponSlots[equipSlot][equipSubSlot]) then
		if item.data.count > 1 then
			DeflowItemsFromStash(ply, item.name, 1)
		else
			DeleteItemFromStash(ply, itemIndex)
		end

		ply.weaponSlots[equipSlot][equipSubSlot] = item
		ply.weaponSlots[equipSlot][equipSubSlot].data.count = 1

		AddWeightToPlayer(ply, ply.weaponSlots[equipSlot][equipSubSlot].name, ply.weaponSlots[equipSlot][equipSubSlot].data.count)

		if ply.weaponSlots[equipSlot][equipSubSlot].data.att then
			local atts = GetPrefixedAttachmentListFromCode(ply.weaponSlots[equipSlot][equipSubSlot].data.att)
			if !atts then return end

			for _, a in ipairs(atts) do
				local att = EFGM.ITEMS[a]
				if att == nil then continue end

				AddWeightToPlayer(ply, a, 1)
			end
		end

		GiveWepWithPresetFromCode(ply, ply.weaponSlots[equipSlot][equipSubSlot].name, ply.weaponSlots[equipSlot][equipSubSlot].data)

		ReloadStash(ply)
		ReloadSlots(ply)
	end
end)

net.Receive("PlayerStashPinItem", function(len, ply)
	local itemIndex = net.ReadUInt(16)

	if !ply:IsInHideout() then return end

	if ply.stash[itemIndex].data.pin != 1 then
		ply.stash[itemIndex].data.pin = 1
	else
		ply.stash[itemIndex].data.pin = nil
	end

	net.Start("PlayerStashUpdateItem", false)
		net.WriteTable(ply.stash[itemIndex].data)
		net.WriteUInt(itemIndex, 16)
	net.Send(ply)

	ReloadStash(ply)
end)

function CalculateStashValue(ply)
	local value = 0

	for k, v in ipairs(ply.stash) do
		local def = EFGM.ITEMS[v.name]
		if def == nil then continue end

		local count = math.Clamp(v.data.count, 1, def.stashStackSize or def.stackSize) or 1

		if def.consumableType != "heal" and def.consumableType != "key" then
			value = value + (def.value * count)
		else
			value = value + math.floor(def.value * (v.data.durability / def.consumableValue))
		end

		if def.equipType == EQUIPTYPE.Weapon and v.data.att then
			local atts = GetPrefixedAttachmentListFromCode(v.data.att)
			if !atts then return end

			for _, a in ipairs(atts) do
				local att = EFGM.ITEMS[a]
				if att == nil then continue end

				value = value + att.value
			end
		end
	end

	ply:SetStat("StashValue", value)
	if value >= ply:GetNWInt("HighestStashValue") then ply:SetStat("HighestStashValue", value) end

	return value
end

function UpdateStashString(ply)
	local stashStr = util.TableToJSON(ply.stash)
	stashStr = util.Compress(stashStr)
	stashStr = util.Base64Encode(stashStr, true)
	ply.stashStr = stashStr

	return stashStr
end

function DecodeStash(ply, str)
	if !str then return end
	str = util.Base64Decode(str)
	str = util.Decompress(str)
	if !str then return end

	local tbl = util.JSONToTable(str)
	return tbl
end

function WipeStash(ply)
	ply.stash = {}
	UpdateStashString(ply)
	SendChunkedNet(ply, ply.stashStr, "PlayerNetworkStash")
end

if DEBUG:GetBool() then
	concommand.Add("efgm_debug_wipestash", function(ply, cmd, args)
		WipeStash(ply)
	end)

	function PrintStash(ply)
		UpdateStashString(ply)
		PrintTable(ply.stash)
	end
	concommand.Add("efgm_debug_printstash", function(ply, cmd, args) PrintStash(ply) end)

	function PrintStashString(ply)
		UpdateStashString(ply)
		print(ply.stashStr)
	end
	concommand.Add("efgm_debug_printstashstring", function(ply, cmd, args) PrintStashString(ply) end)

	-- for save editing and whatnot
	function PrintCleanStashString(ply)
		local cleanTbl = {}
		cleanTbl = table.Copy(ply.stash)

		for k, v in ipairs(cleanTbl) do
			v.data.owner = nil
			v.data.timestamp = nil
		end

		local stashStr = util.TableToJSON(cleanTbl)
		stashStr = util.Compress(stashStr)
		stashStr = util.Base64Encode(stashStr, true)
		print(stashStr)
	end
	concommand.Add("efgm_debug_printstashstring_clean", function(ply, cmd, args) PrintCleanStashString(ply) end)
end
