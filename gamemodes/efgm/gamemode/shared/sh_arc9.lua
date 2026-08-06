local table = table
local util = util

hook.Add("ARC9_PlayerGetAtts", "ARC9GetAtts", function(ply, att, wep)
	local inventory = {}

	if SERVER then
		inventory = ply.inventory
		if ply.givingPreset == true then return 999 end
	else
		inventory = EFGM.CLIENT.INVENTORY
	end

	return AmountInInventory(inventory, "arc9_att_" .. att)
end)

hook.Add("ARC9_PlayerGiveAtt", "ARC9GiveAtt", function(ply, att, amt)
	local data = {}
	data.count = amt

	if SERVER then
		FlowItemToInventory(ply, "arc9_att_" .. att, data)

		return
	end
end)

hook.Add("ARC9_PlayerTakeAtt", "ARC9TakeAtt", function(ply, att, amt)
	local i = DeflowItemsFromInventory(ply, "arc9_att_" .. att, amt)

	return i
end)

function PruneUnnecessaryAttachmentDataRecursive(tbl)
	tbl.t = tbl.ToggleNum
	tbl.i = tbl.Installed
	tbl.s = tbl.SubAttachments

	for i, _ in pairs(tbl) do
		if i != "i" and i != "s" and i != "t" and i != "ToggleNum" then
			tbl[i] = nil
		end
	end

	if table.Count(tbl.s or {}) > 0 then
		for _, k in pairs(tbl.s) do
			PruneUnnecessaryAttachmentDataRecursive(k)
		end
	else
		tbl.s = nil
	end

	tbl.BaseClass = nil
end

function DecompressTableRecursive(tbl)
	for i, k in pairs(tbl) do
		if i == "i" then
			tbl["i"] = nil
			tbl["Installed"] = k
		elseif i == "s" then
			tbl["s"] = nil
			tbl["SubAttachments"] = k
		elseif i == "t" then
			tbl["t"] = nil
			tbl["ToggleNum"] = k
		end
	end

	if table.Count(tbl.SubAttachments or {}) > 0 then
		for _, k in pairs(tbl.SubAttachments) do
			DecompressTableRecursive(k)
		end
	end
end

function GenerateAttachString(tbl)
	for _, k in pairs(tbl) do PruneUnnecessaryAttachmentDataRecursive(k) end

	local str = util.TableToJSON(tbl)
	str = util.Compress(str)
	str = util.Base64Encode(str, true)

	return str
end

function ImportPresetCode(str)
	if !str then return end
	str = util.Base64Decode(str)
	str = util.Decompress(str)
	if !str then return end

	local tbl = util.JSONToTable(str)
	if tbl then
		for _, k in pairs(tbl) do
			DecompressTableRecursive(k)
		end
	end

	return tbl
end

function LoadPresetFromTable(wep, tbl)
	wep:SetNoPresets(true)
	wep.Attachments = baseclass.Get(wep:GetClass()).Attachments

	for _, slottbl in ipairs(wep.Attachments) do
		slottbl.Installed = nil
		slottbl.SubAttachments = nil
	end

	wep:PruneAttachments()
	wep:BuildSubAttachments(tbl)
	wep:PostModify()
	wep:SendWeapon()
end

function LoadPresetFromCode(wep, str)
	local tbl = ImportPresetCode(str)
	if !tbl then return false end

	LoadPresetFromTable(wep, tbl)
end

function AttTreeToList(tree, tbl)
	if !istable(tree) then return {} end
	local atts = {}
	atts = {tree}

	if tree.SubAttachments then
		for _, sub in ipairs(tree.SubAttachments) do
			table.Add(atts, AttTreeToList(sub, tbl))
		end
	end

	return atts
end

function GetSubSlotList(tbl)
	local atts = {}

	for _, i in ipairs(tbl or {}) do
		table.Add(atts, AttTreeToList(i, tbl))
	end

	return atts
end

function GetAttachmentList(tbl)
	local atts = {}

	for _, i in ipairs(GetSubSlotList(tbl)) do
		if i.Installed and EFGM.ITEMS["arc9_att_" .. i.Installed] then table.insert(atts, i.Installed) end
	end

	return atts
end

function GetAttachmentListFromCode(str)
	local tbl = ImportPresetCode(str)
	if !tbl then return false end

	local cleanAttTbl = GetAttachmentList(tbl)
	local cleanAttStr = ""

	table.sort(cleanAttTbl, function(a, b)
		local a_value = EFGM.ITEMS["arc9_att_" .. a].value or 0
		local b_value = EFGM.ITEMS["arc9_att_" .. b].value or 0

		if a_value and b_value then
			return a_value > b_value
		end

		return true
	end)

	for i = 1, #cleanAttTbl do
		if !cleanAttTbl[i] then continue end
		cleanAttStr = cleanAttStr .. i .. ": " .. "\t" .. EFGM.ITEMS["arc9_att_" .. cleanAttTbl[i]].fullName .. ", " .. EFGM.ITEMS["arc9_att_" .. cleanAttTbl[i]].weight .. "kg, ₽" .. string.FormatComma(EFGM.ITEMS["arc9_att_" .. cleanAttTbl[i]].value)
		if i != #cleanAttTbl then cleanAttStr = cleanAttStr .. "\n" end
	end

	return cleanAttStr
end

function GetPrefixedAttachmentListFromCode(str)
	local tbl = ImportPresetCode(str)
	if !tbl then return false end

	local cleanAttTbl = GetAttachmentList(tbl)
	local prefixAttTbl = {}

	for i = 0, #cleanAttTbl do
		if !cleanAttTbl[i] then continue end
		table.insert(prefixAttTbl, "arc9_att_" .. cleanAttTbl[i])
	end

	return prefixAttTbl
end
