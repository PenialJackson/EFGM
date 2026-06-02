function SWEP:ValidateInventoryForNewTree(tree)
	local count = self:CountAttsInTree(tree)

	local currcount = self:CountAttsInTree(self.Attachments)

	for att, attc in pairs(count) do
		local atttbl = ARC9.GetAttTable(att)

		if atttbl.Free then continue end

		local has = (currcount[att] or 0) + ARC9:PlayerGetAtts(self:GetOwner(), att, self)
		local need = attc

		if has >= need then
			continue
		end

		return false
	end

	return true
end
