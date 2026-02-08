-- death perspective
local function Calc(ply, pos, angles, fov, target)
	local view = target:GetAttachment(target:LookupAttachment("eyes"))
	if !view then return end

	local playerview = {
		origin = view.Pos,
		angles = view.Ang,
		znear = 1
	}

	return playerview
end

hook.Add("CalcView", "POVDeath", function(ply, pos, angles, fov)
	local ragdoll = ply:GetRagdollEntity()
	local target = ply:GetObserverTarget()

	if IsValid(ragdoll) and (ragdoll == target or !IsValid(target)) then return Calc(ply, pos, angles, fov, ragdoll) end
	if IsValid(target) and target:GetClass() == "prop_ragdoll" then return Calc(ply, pos, angles, fov, target) end
end)

local limV = 35
local limH = 80

local freelooking = false

concommand.Add("+freelook", function(ply, cmd, args) freelooking = true end)
concommand.Add("-freelook", function(ply, cmd, args) freelooking = false end)

local LookX, LookY = 0, 0
local InitialAng, CoolAng = Angle(), Angle()
local ZeroAngle = Angle()

local function isinsights(ply)
	local weapon = ply:GetActiveWeapon()
	return true and (weapon.GetInSights and weapon:GetInSights())
end

local function holdingbind(ply) return freelooking end

hook.Add("CalcView", "AltlookView", function(ply, origin, angles, fov)
	CoolAng = LerpAngle(math.min(FrameTime() * 40, 1), CoolAng, Angle(LookY, -LookX, 0))

	if !holdingbind(ply) and CoolAng.p < 0.01 and CoolAng.p > -0.01 or isinsights(ply) and CoolAng.p < 0.01 and CoolAng.p > -0.01 or !system.HasFocus() or ply:ShouldDrawLocalPlayer() then
		InitialAng = angles + CoolAng
		LookX, LookY = 0, 0

		CoolAng = ZeroAngle

		return
	end

	angles.p = angles.p + CoolAng.p
	angles.y = angles.y + CoolAng.y
end)

hook.Add("CalcViewModelView", "AltlookVM", function(wep, vm, oPos, oAng, pos, ang)
	ang.p = ang.p + CoolAng.p / 2.5
	ang.y = ang.y + CoolAng.y / 2.5
end)

hook.Add("InputMouseApply", "AltlookMouse", function(cmd, x, y, ang)
	local lp = LocalPlayer()
	if !holdingbind(lp) or isinsights(lp) or lp:ShouldDrawLocalPlayer() then LookX, LookY = 0, 0 return end

	InitialAng.z = 0
	cmd:SetViewAngles(InitialAng)

	LookX = math.Clamp(LookX + x * 0.02, -limH, limH)
	LookY = math.Clamp(LookY + y * 0.02, -limV, limV)

	return true
end)