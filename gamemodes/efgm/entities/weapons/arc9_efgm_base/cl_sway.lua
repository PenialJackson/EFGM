local Lerp = Lerp

function SWEP:GetViewModelSway(pos, ang)
	if self.SprintVerticalOffset then
		local sprintoffset = math.Clamp(EyeAngles().p * 0.1, -9, 4.5)
		local sprintoffset2 = sprintoffset + 1.2
		local lerrppp = Lerp(self:GetSprintAmount(), 0, 1)
		sprintoffset, sprintoffset2 = sprintoffset * lerrppp, sprintoffset2 * lerrppp

		pos:Add(ang:Up() * (sprintoffset2 + 2) * 0.1 * lerrppp)
		pos:Add(ang:Right() * sprintoffset2 * 0.2)
		pos:Add(ang:Forward() *  (sprintoffset2 + 10) * 0.1 * lerrppp)
		ang.z = ang.z + math.min(0, sprintoffset * -6)
		ang.y = ang.y + math.min(0, sprintoffset * -2)
	end

	return pos, ang
end

function SWEP:GetViewModelInertia(pos, ang)
	return pos, ang
end

function SWEP:GetViewModelSmooth(pos, ang)
	return pos, ang
end
