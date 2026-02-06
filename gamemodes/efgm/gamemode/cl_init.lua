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

local ogLocalPlayer = LocalPlayer
local lcply = ogLocalPlayer()

function LocalPlayer()
	return lcply or NULL
end

hook.Add("InitPostEntity", "LPCache", function()
	lcply = ogLocalPlayer()
end)

local cScrW = ScrW()
local cScrH = ScrH()

function ScrW()
	return cScrW
end

function ScrH()
	return cScrH
end

local math = math

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

-- override ear animation
function GM:GrabEarAnimation()
end

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

		anim.Think = function(a, pnl, fraction)
			local nowpos = Lerp(fraction, a.StartPos, a.TargetPos)
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