function SWEP:DoEffects()
	if !IsFirstTimePredicted() then return end
	if self:GetProcessedValue("NoMuzzleEffect", true) then return end

	local muzz_qca = self:GetQCAMuzzle()

	if vFireInstalled and self:GetProcessedValue("ShootEnt") == "vfire_ball" then
		local data = EffectData()
		data:SetEntity(self)
		data:SetAttachment(muzz_qca)
		-- We use the same QCA logic ARC9 already calculated
		util.Effect("arc9_boc_flamethrower_vfire", data, true, true)
		-- If you want to skip the standard muzzle flash when firing fire:
		return
	end

	local data = EffectData()
	data:SetEntity(self)
	data:SetAttachment(muzz_qca)
	data:SetSurfaceProp(self:GetNthShot() % 2) -- hopefully nobody uses this on a muzzle effect

	local muzzle = "efgm_muzzleeffect"

	local muzefect = self:GetProcessedValue("MuzzleEffect", true)

	if !self:GetProcessedValue("MuzzleParticle", true) and muzefect then
		muzzle = muzefect
		data:SetScale(1)
		data:SetFlags(0)
		data:SetEntity(self:GetVM())
	end

	util.Effect(muzzle, data, true)

	if IsValid(self.ActiveAfterShotPCF) then
		self.ActiveAfterShotPCF:StopEmission()
	end
end

