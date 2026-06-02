local arc9_mod_overheat = GetConVar("arc9_mod_overheat")

function SWEP:RollJam()
	if !self:GetProcessedValue("Malfunction", true) then return end
	if self:Clip1() == 0 and self.MalfunctionNeverLastShoot then return end
	if self:GetOwner():IsInDuel() then return end
	if self:GetOwner():GetNWBool("InRange", false) == true then return end

	local chance = 1 / self:GetProcessedValue("MalfunctionMeanShotsToFail")

	if util.SharedRandom("arc9_jam", 0, 1000) / 1000 <= chance then
		if self:GetProcessedValue("MalfunctionJam", true) then
			self:SetJammed(true)
		end

		if self:GetProcessedValue("MalfunctionExitSights", true) then
			self:ExitSights()
		end

		self:PlayAnimation("jam", 1, true)
		local soundtab1 = {
			name = "jam",
			sound = self:RandomChoice(self:GetProcessedValue("MalfunctionSound", true)),
			channel = ARC9.CHAN_FIDDLE
		}
		self:PlayTranslatedSound(soundtab1)
		self:SetNextPrimaryFire(CurTime() + self:GetProcessedValue("MalfunctionWait", true))
		self:SetNeedsCycle(false)

		return true
	end
end

function SWEP:DoHeat()
	if !arc9_mod_overheat:GetBool() or !self:GetProcessedValue("Overheat", true) then return end
	if self:GetOwner():GetNWBool("InRange", false) == true then return end

	self:SetHeatAmount(self:GetHeatAmount() + self:GetProcessedValue("HeatPerShot", true))

	if self:GetHeatAmount() >= self:GetProcessedValue("HeatCapacity") then
		self:SetHeatAmount(self:GetProcessedValue("HeatCapacity"))
		if self:GetProcessedValue("HeatLockout", true) then
			self:SetHeatLockout(true)
		end

		if self:HasAnimation(self:TranslateAnimation("fix")) then
			self:SetJammed(true)
			self:SetNextPrimaryFire(CurTime() + self:GetProcessedValue("MalfunctionWait", true))
		end
	end
end
