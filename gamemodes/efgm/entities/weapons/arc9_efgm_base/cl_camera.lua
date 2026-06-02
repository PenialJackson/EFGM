local swepGetProcessedValue = SWEP.GetProcessedValue

local arc9_vm_cambob = GetConVar("arc9_vm_cambob")
local arc9_vm_cambobwalk = GetConVar("arc9_vm_cambobwalk")
local arc9_vm_cambobintensity = GetConVar("arc9_vm_cambobintensity")

local efgmFOVOverride = GetConVar("efgm_visuals_adsfov")

local SmoothRecoilAmount = 0

function SWEP:CalcView(ply, pos, ang, fov)
	if self:GetOwner():ShouldDrawLocalPlayer() then return end

	local swepDt = self.dt
	if !swepGetProcessedValue then swepGetProcessedValue = self.GetProcessedValue end

	local rec = (swepDt.LastRecoilTime + 0.25) - CurTime()

	local reckick = self:GetProcessedValue("RecoilKick")
	rec = rec * 3 * reckick

	if rec > 0 then
		ang.r = ang.r + (math.sin(CurTime() * self:GetProcessedValue("RecoilKickDamping", true)) * rec)
	end

	if self.RecoilKickAffectPitch then
		if !self:IsUsingRTScope() then
			local recam = math.min(swepDt.RecoilAmount, 15)
			SmoothRecoilAmount = Lerp(FrameTime() * 3, SmoothRecoilAmount, recam)
			local thing = SmoothRecoilAmount * (reckick * self:GetProcessedValue("RecoilKickPitchMult", true)) * self:GetProcessedValue("Recoil")
			ang.p = ang.p - 0.6 * thing
			self.VMZOffsetForCamera = -0.25 * thing
		end
	end

	local sightamount = swepDt.SightAmount

	fov = efgmFOVOverride:GetBool() and fov / self:GetSmoothedFOVMag() or fov
	self.FOV = fov

	ang = ang + (self.StoredVMAngles or angle_zero)

	if arc9_vm_cambob:GetBool() then
		local sprintmult = arc9_vm_cambobwalk:GetBool() and 1 or Lerp(swepDt.SprintAmount, 0, 1)
		local totalmult = math.ease.InQuad(math.Clamp(self.ViewModelBobVelocity / 350, 0, 1) * Lerp(sightamount, 1, 0.65)) * sprintmult * arc9_vm_cambobintensity:GetFloat()
		ang:RotateAroundAxis(ang:Right(),   math.cos(self.BobCT * 6)    * totalmult * -0.5)
		ang:RotateAroundAxis(ang:Up(),      math.cos(self.BobCT * 3.3)  * totalmult * -0.5)
		ang:RotateAroundAxis(ang:Forward(), math.sin(self.BobCT * 6)    * totalmult * -0.36)
	end

	return pos, ang, fov
end
