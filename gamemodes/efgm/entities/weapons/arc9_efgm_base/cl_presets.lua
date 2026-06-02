local arc9_atts_nocustomize = GetConVar("arc9_atts_nocustomize")
local arc9_autosave = GetConVar("arc9_autosave")

function SWEP:LoadPreset(filename)
	if arc9_atts_nocustomize:GetBool() then return end
	if LocalPlayer() != self:GetOwner() then return end

	filename = filename or "autosave"

	if filename == "autosave" then
		if !arc9_autosave:GetBool() then return end
	end

	filename = ARC9.PresetPath .. self:GetPresetBase() .. "/" .. filename .. ".txt"

	if !file.Exists(filename, "DATA") then return end

	local f = file.Open(filename, "r", "DATA")
	if !f then return end

	local str = f:Read()

	if str[1] == "{" then
		self:LoadPresetFromTable(util.JSONToTable(str))
	elseif string.sub(str, 1, 5) == "name=" then
		-- first line is name second line is data
		local strs = string.Split(str, "\n")
		self:LoadPresetFromTable(self:ImportPresetCode(strs[2]))
	else
		self:LoadPresetFromTable(self:ImportPresetCode(str))
	end

	if self.CustomizeHUD and self.CustomizeHUD.lowerpanel then
		timer.Simple(0, function()
			if !IsValid(self) then return end
			self:CreateHUD_Bottom()
		end)
	end

	f:Close()
end

function SWEP:LoadPresetFromTable(tbl)
	self.Attachments = baseclass.Get(self:GetClass()).Attachments

	for _, slottbl in ipairs(self.Attachments) do
		slottbl.Installed = nil
		slottbl.SubAttachments = nil
	end

	self:PruneAttachments()

	self:BuildSubAttachments(tbl)
	self:PostModify()
end

function SWEP:ImportPresetCode(str)
	if !str then return end
	str = util.Base64Decode(str)
	str = util.Decompress(str)

	if !str then return end

	local tbl = util.JSONToTable(str)

	if tbl then
		for i, k in pairs(tbl) do
			self:DecompressTableRecursive(k)
		end
	end

	return tbl
end

function SWEP:DecompressTableRecursive(tbl)
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
			self:DecompressTableRecursive(k)
		end
	end
end
