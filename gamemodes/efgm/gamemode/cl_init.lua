EFGM = {}

include("shared.lua")
include("util.lua")
include("enums.lua")
include("config.lua")
include("items/items_init.lua")

for _, f in ipairs(file.Find("gamemodes/efgm/gamemode/shared/*.lua", "GAME", "nameasc")) do
	include("shared/" .. f)
end

for _, f in ipairs(file.Find("gamemodes/efgm/gamemode/items/*.lua", "GAME", "nameasc")) do
	if f == "items_init.lua" then continue end

	include("items/" .. f)
end

local lcply

function LocalPlayer()
	return lcply or LocalPlayer()
end

hook.Add("InitPostEntity", "LPCache", function()
	lcply = LocalPlayer()
end)

local cScrW = ScrW()
local cScrH = ScrH()

function ScrW()
	return cScrW
end

function ScrH()
	return cScrH
end

-- screen scale function, makes my life (penial) easier because i will most definently be doing most if not all of the user interface
-- all interfaces and fonts are (for the most part) created on a 2560x1440 monitor
local hudscaleCVar = GetConVar("efgm_hud_scale")
local paddingCVar = GetConVar("efgm_hud_padding")

EFGM.ScreenScale = function(size)
	local ratio = (ScrW() / ScrH() <= 1.8) and (ScrW() / 1920.0) or (ScrH() / 1080.0)
	local scaled = size * ratio * hudscaleCVar:GetFloat()
	return size > 0 and math.max(1, scaled) or math.min(-1, scaled)
end

EFGM.ScreenScaleRounded = function(size) -- we are actually gonna floor but this is named better imo
	local ratio = (ScrW() / ScrH() <= 1.8) and (ScrW() / 1920.0) or (ScrH() / 1080.0)
	local scaled = size * ratio * hudscaleCVar:GetFloat()
	return size > 0 and math.max(1, math.floor(scaled)) or math.min(-1, math.floor(scaled))
end

-- i can't be asked to support player controlled menu scaling, way too problematic, so we will seperate the HUDs scale and the menus scale
EFGM.MenuScale = function(size)
	local ratio = (ScrW() / ScrH() <= 1.8) and (ScrW() / 1920.0) or (ScrH() / 1080.0)
	local scaled = size * ratio
	return size > 0 and math.max(1, scaled) or math.min(-1, scaled)
end

EFGM.MenuScaleRounded = function(size)
	local ratio = (ScrW() / ScrH() <= 1.8) and (ScrW() / 1920.0) or (ScrH() / 1080.0)
	local scaled = size * ratio
	return size > 0 and math.max(1, math.floor(scaled)) or math.min(-1, math.floor(scaled))
end

hook.Add("OnScreenSizeChanged", "ClearScalingCache", function(_, _, newW, newH)
	cScrW = newW
	cScrH = newH
	HUD.Padding = paddingCVar:GetInt() * (4 * (newW / 1920.0))
end)

for _, f in ipairs(file.Find("gamemodes/efgm/gamemode/client/*.lua", "GAME", "nameasc")) do
	include("client/" .. f)
end

for _, f in ipairs(file.Find("gamemodes/efgm/gamemode/vgui/*.lua", "GAME", "nameasc")) do
	include("vgui/" .. f)
end

if GetConVar("efgm_derivesbox"):GetInt() == 0 then
	function ARC9_OpenSettings(page) return end
	concommand.Remove("arc9_settings_open")
end

EFGM.SteamNameCache = {}

local blurMat = Material("pp/blurscreen")
local blurCol = Color(255, 255, 255)

function BlurPanel(panel, strength, passes)
	if panel == nil or !ispanel(panel) then return end

	local x, y = panel:LocalToScreen(0, 0)
	local w, h = panel:GetSize()

	render.SetScissorRect(x, y, x + w, y + h, true)

	surface.SetMaterial(blurMat)
	surface.SetDrawColor(blurCol)

	for i = 1, (passes or 3) do
		blurMat:SetFloat("$blur", (i / (passes or 3)) * (strength or 3))
		blurMat:Recompute()
		render.UpdateScreenEffectTexture()
		surface.DrawTexturedRect(-x, -y, ScrW(), ScrH())
	end

	render.SetScissorRect(0, 0, 0, 0, false)
end

function BlurRect(x, y, w, h, strength, passes)
	surface.SetMaterial(blurMat)
	surface.SetDrawColor(blurCol)

	render.SetScissorRect(x, y, x + w, y + h, true)
		for i = 1, (passes or 3) do
			blurMat:SetFloat("$blur", (i / (passes or 3)) * (strength or 3))
			blurMat:Recompute()
			render.UpdateScreenEffectTexture()
			surface.DrawTexturedRect(0, 0, ScrW(), ScrH())
		end
	render.SetScissorRect(0, 0, 0, 0, false)
end

-- override ear animation
function GM:GrabEarAnimation()
end

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

-- smooth derma scrolling
local length = 0.4
local ease = 0.25
local amount = 60

hook.Add("PreGamemodeLoaded", "SmoothScrolling", function()
	local function sign(num) return num > 0 end

	local function getBiggerPos(signOld, signNew, old, new)
		if signOld != signNew then return new end
		if signNew then return math.max(old, new) else return math.min(old, new) end
	end

	local dermaCtrs = vgui.GetControlTable("DVScrollBar")
	local tScroll = 0
	local newerT = 0

	function dermaCtrs:AddScroll(dlta)
		self.Old_Pos = nil
		self.Old_Sign = nil

		local OldScroll = self:GetScroll()
		dlta = dlta * amount

		local anim = self:NewAnimation(length, 0, ease)
		anim.StartPos = OldScroll
		anim.TargetPos = OldScroll + dlta + tScroll
		tScroll = tScroll + dlta

		local ctime = RealTime()
		local doing_scroll = true
		newerT = ctime

		anim.Think = function(anim, pnl, fraction)
			local nowpos = Lerp(fraction, anim.StartPos, anim.TargetPos)
			if ctime == newerT then
				self:SetScroll(getBiggerPos(self.Old_Sign, sign(dlta), self.Old_Pos, nowpos))
				tScroll = tScroll - (tScroll * fraction)
			end

			if doing_scroll then
				self.Old_Sign = sign(dlta)
				self.Old_Pos = nowpos
			end

			if ctime != newerT then doing_scroll = false end
		end

		return math.Clamp(self:GetScroll() + tScroll, 0, self.CanvasSize) != self:GetScroll()
	end

	derma.DefineControl("DVScrollBar", "Smooth Scrollbar", dermaCtrs, "Panel")
end)

-- free look
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
	CoolAng = LerpAngle(0.3, CoolAng, Angle(LookY, -LookX, 0))

	if !holdingbind(ply) and CoolAng.p < 0.05 and CoolAng.p > -0.05 or isinsights(ply) and CoolAng.p < 0.05 and CoolAng.p > -0.05 or !system.HasFocus() or ply:ShouldDrawLocalPlayer() then
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