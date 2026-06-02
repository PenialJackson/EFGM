local arc9_atts_nocustomize = GetConVar("arc9_atts_nocustomize")
local arc9_atts_lock = GetConVar("arc9_atts_lock")

function SWEP:ReceiveWeapon()
	if SERVER and arc9_atts_nocustomize:GetBool() then return end

	local tbl = {}

	for i, k in pairs(self.Attachments or {}) do
		tbl[i] = self:ReceiveAttachmentTree()
	end

	if SERVER then
		if !self:ValidateInventoryForNewTree(tbl) then
			self:SendWeapon()
			return
		end

		if !arc9_atts_lock:GetBool() then
			local oldcount = self:CountAttsInTree(self.Attachments)
			local newcount = self:CountAttsInTree(tbl)

			for att, attc in pairs(newcount) do
				local atttbl = ARC9.GetAttTable(att)

				if atttbl.Free then continue end

				local has = oldcount[att] or 0
				local need = attc

				if has < need then
					local diff = need - has

					ARC9:PlayerTakeAtt(self:GetOwner(), att, diff)
				end
			end

			for att, attc in pairs(oldcount) do
				local atttbl = ARC9.GetAttTable(att)
				if !atttbl then ErrorNoHaltWithStack("The attachment trying to be installed doesn't exist. '" .. att .. "'") continue end
				if atttbl.Free then continue end
				if self:GetOwner().givingPreset == true then continue end

				local has = attc
				local need = newcount[att] or 0

				if has > need then
					local diff = has - need

					ARC9:PlayerGiveAtt(self:GetOwner(), att, diff)
				end
			end
		end

		self:GetOwner().givingPreset = false
	end

	self:BuildSubAttachments(tbl)

	if CLIENT then
		self:InvalidateCache()
		self:PruneAttachments()
		self:KillModel()
		self:SetupModel(true)
		self:SetupModel(false)
		self:RefreshCustomizeMenu()

		if !self.HasSightsPoseparam then -- fuck you
			if self:LookupPoseParameter("sights") != -1 then self.HasSightsPoseparam = true end
			if self:LookupPoseParameter("firemode") != -1 then self.HasFiremodePoseparam = true end
		end
	else
		self:InvalidateCache()
		-- self:PruneAttachments()
		self:FillIntegralSlots()
		self:SendWeapon()
		self:PostModify()

		ARC9:PlayerSendAttInv(self:GetOwner())
	end

	-- self:SetBaseSettings()
end
