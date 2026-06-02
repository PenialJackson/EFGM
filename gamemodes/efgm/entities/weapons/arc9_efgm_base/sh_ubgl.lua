function SWEP:ThinkUBGL()
	if self:GetValue("UBGL") and !self:GetProcessedValue("UBGLInsteadOfSights", true)  then
		local owner = self:GetOwner()
		local mag = self:Clip2()
		local magr = self:Ammo2()
		local infmag = owner:GetNWBool("InRange", false)

		if mag == 0 and (!infmag and magr == 0) then
			if self:GetUBGL() then self:ToggleUBGL(false) end
			return
		end

		if (owner:KeyDown(IN_USE) and owner:KeyPressed(IN_ATTACK2)) or owner:KeyPressed(ARC9.IN_UBGL) then
			if self.NextUBGLSwitch and self.NextUBGLSwitch > CurTime() then return end
			self.NextUBGLSwitch = CurTime() + (self.UBGLToggleTime or 1)

			if self:GetUBGL() then
				self:ToggleUBGL(false)
			else
				self:ToggleUBGL(true)
			end
		end
	end
end
