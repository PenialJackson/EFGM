HUD = HUD or {}
HUD.Enabled = GetConVar("efgm_hud_enable")
HUD.InIntro = false
HUD.IntroEnt = NULL
HUD.VotedMap = nil

local paddingCVar = GetConVar("efgm_hud_padding")
HUD.Padding = paddingCVar:GetInt() * (4 * (ScrW() / 1920.0))

HUD.ELEMENTS = HUD.ELEMENTS or {}

local math = math
local table = table
local net = net
local timer = timer
local util = util

local raidStatusTbl = {
	[0] = Colors.statusPending, -- raid pending
	[1] = Colors.statusActive, -- raid active
	[2] = Colors.statusEnded  -- raid ended
}

local function RenderRaidTime()
	local raidTime = string.FormattedTime(GetGlobalInt("RaidTimeLeft", 0), "%02i:%02i")
	local raidStatus = GetGlobalInt("RaidStatus", 0)

	BlurRect(ScrW() - EFGM.ScreenScale(120) - HUD.Padding, EFGM.ScreenScale(20), EFGM.ScreenScale(100), EFGM.ScreenScale(36), 4, 2)
	surface.SetDrawColor(raidStatusTbl[raidStatus])
	surface.DrawRect(ScrW() - EFGM.ScreenScale(120) - HUD.Padding, EFGM.ScreenScale(20), EFGM.ScreenScale(100), EFGM.ScreenScale(36))
	draw.DrawText(raidTime, "BenderExfilList", ScrW() - EFGM.ScreenScale(70) - HUD.Padding, EFGM.ScreenScale(19), Colors.whiteColor, TEXT_ALIGN_CENTER)
end

-- players current weapon and ammo
local function RenderPlayerWeapon()
	local wep = LocalPlayer():GetActiveWeapon()
	if wep == NULL then return end

	local name = wep:GetPrintName()
	if name == nil then return end

	draw.DrawText(name, "BenderWeaponName", ScrW() - EFGM.ScreenScale(20) - HUD.Padding, ScrH() - EFGM.ScreenScale(40), Colors.whiteColor, TEXT_ALIGN_RIGHT)

	local ammo = wep:Clip1()
	local ammoMax = wep:GetMaxClip1()
	local magstatus
	local status = nil

	if ammo >= ammoMax * 0.9 then magstatus = "Full"
	elseif ammo >= ammoMax * 0.8 then magstatus = "Nearly full"
	elseif ammo >= ammoMax * 0.4 then magstatus = "About half"
	elseif ammo >= ammoMax * 0.2 then magstatus = "Less than half"
	elseif ammo >= ammoMax * 0.01 then magstatus = "Almost empty"
	else magstatus = "Empty" end
	if ammo == -1 or ammoMax <= 0 then magstatus = "∞" end

	surface.SetFont("BenderAmmoCount")
	local ammoTextSize = surface.GetTextSize(magstatus) + EFGM.ScreenScale(10)

	local wepColor = Colors.whiteColor
	if wep.Hook_RedPrintName then status = wep:RunHook("Hook_RedPrintName") end
	if status then wepColor = Colors.deadColor end

	BlurRect(ScrW() - EFGM.ScreenScale(37) - ammoTextSize - HUD.Padding, ScrH() - EFGM.ScreenScale(75), ammoTextSize + EFGM.ScreenScale(17), EFGM.ScreenScale(35), 4, 2)
	surface.SetDrawColor(Colors.hudBackground)
	surface.DrawRect(ScrW() - EFGM.ScreenScale(37) - ammoTextSize - HUD.Padding, ScrH() - EFGM.ScreenScale(75), ammoTextSize + EFGM.ScreenScale(17), EFGM.ScreenScale(35))
	draw.DrawText(tostring(magstatus), "BenderAmmoCount", ScrW() - EFGM.ScreenScale(34) - HUD.Padding, ScrH() - EFGM.ScreenScale(74), wepColor, TEXT_ALIGN_RIGHT)
end

-- assorted overlays
local blurAmount = 0
local maxBlur = 4
local blurSpeed = 2
local vignetteMaxAlpha = 255
local function RenderOverlays()
	if LocalPlayer():Health() <= 0 then
		blurAmount = math.min(blurAmount + blurSpeed * FrameTime(), maxBlur)
	else
		blurAmount = math.max(blurAmount - (blurSpeed * 6) * FrameTime(), 0)
	end

	if blurAmount > 0 then
		surface.SetDrawColor(Colors.pureWhiteColor)
		surface.SetMaterial(Material("pp/blurscreen"))

		for i = 1, 3 do
			Material("pp/blurscreen"):SetInt("$blur", blurAmount * (i * 1))
			render.UpdateScreenEffectTexture()
			surface.DrawTexturedRect(0, 0, ScrW(), ScrH())
		end

		local vignetteAmount = math.Clamp((blurAmount / maxBlur) * vignetteMaxAlpha, 0, vignetteMaxAlpha)
		surface.SetDrawColor(0, 0, 0, vignetteAmount)
		surface.DrawRect(0, 0, ScrW(), ScrH())
	end
end

-- players current stance and health
local playerStance = 0
local healthMat = Material("stances/sprint_panel.png", "smooth")
local healthSliderMat = Material("stances/sprint_slider.png", "smooth")
local healthLowSliderMat = Material("stances/sprint_slider_exh.png", "smooth")
local stand = Material("stances/stand0.png", "smooth")
local stand1 = Material("stances/stand1.png", "smooth")
local stand2 = Material("stances/stand2.png", "smooth")
local stand3 = Material("stances/stand3.png", "smooth")
local stand4 = Material("stances/stand4.png", "smooth")
local stand5 = Material("stances/stand5.png", "smooth")
local crouch = Material("stances/crouch.png", "smooth")

local function RenderPlayerStance()
	local health = LocalPlayer():Health()
	local maxHealth = LocalPlayer():GetMaxHealth()

	local healthAlpha = 255
	local lowHealthAlpha = 0
	local hpBarPercent = math.Clamp(health / maxHealth * 146, 0, 146)

	local Standing0Alpha = 0
	local Standing1Alpha = 0
	local Standing2Alpha = 0
	local Standing3Alpha = 0
	local Standing4Alpha = 0
	local Standing5Alpha = 0
	local CrouchingAlpha = 0

	if health <= maxHealth / 4 then
		lowHealthAlpha = 255
		healthAlpha = 0
	end

	surface.SetDrawColor(Colors.pureWhiteColor)
	surface.SetMaterial(healthMat)
	surface.DrawTexturedRect(EFGM.ScreenScale(20) + HUD.Padding, ScrH() - EFGM.ScreenScale(29), EFGM.ScreenScale(156), EFGM.ScreenScale(13))
	surface.SetDrawColor(255, 255, 255, healthAlpha)
	surface.SetMaterial(healthSliderMat)
	surface.DrawTexturedRect(EFGM.ScreenScale(25) + HUD.Padding, ScrH() - EFGM.ScreenScale(25), EFGM.ScreenScale(hpBarPercent), EFGM.ScreenScale(3))
	surface.SetDrawColor(255, 255, 255, lowHealthAlpha)
	surface.SetMaterial(healthLowSliderMat)
	surface.DrawTexturedRect(EFGM.ScreenScale(25) + HUD.Padding, ScrH() - EFGM.ScreenScale(25), EFGM.ScreenScale(hpBarPercent), EFGM.ScreenScale(3))

	if LocalPlayer():Crouching() then
		playerStance = math.Approach(playerStance, 6, 6 * FrameTime() / 0.15)
	else
		playerStance = math.Approach(playerStance, 0, 6 * FrameTime() / 0.15)
	end

	if playerStance >= 6 then
		CrouchingAlpha = 255
	elseif playerStance >= 5 then
		Standing5Alpha = 255
	elseif playerStance >= 4 then
		Standing4Alpha = 255
	elseif playerStance >= 3 then
		Standing3Alpha = 255
	elseif playerStance >= 2 then
		Standing2Alpha = 255
	elseif playerStance >= 1 then
		Standing1Alpha = 255
	elseif playerStance >= 0 then
		Standing0Alpha = 255
	end

	surface.SetDrawColor(255, 255, 255, Standing0Alpha)
	surface.SetMaterial(stand)
	surface.DrawTexturedRect(EFGM.ScreenScale(25) + HUD.Padding, ScrH() - EFGM.ScreenScale(200), EFGM.ScreenScale(126), EFGM.ScreenScale(166))
	surface.SetDrawColor(255, 255, 255, Standing1Alpha)
	surface.SetMaterial(stand1)
	surface.DrawTexturedRect(EFGM.ScreenScale(25) + HUD.Padding, ScrH() - EFGM.ScreenScale(195), EFGM.ScreenScale(126), EFGM.ScreenScale(160))
	surface.SetDrawColor(255, 255, 255, Standing2Alpha)
	surface.SetMaterial(stand2)
	surface.DrawTexturedRect(EFGM.ScreenScale(25) + HUD.Padding, ScrH() - EFGM.ScreenScale(191), EFGM.ScreenScale(127), EFGM.ScreenScale(154))
	surface.SetDrawColor(255, 255, 255, Standing3Alpha)
	surface.SetMaterial(stand3)
	surface.DrawTexturedRect(EFGM.ScreenScale(25) + HUD.Padding, ScrH() - EFGM.ScreenScale(184), EFGM.ScreenScale(127), EFGM.ScreenScale(148))
	surface.SetDrawColor(255, 255, 255, Standing4Alpha)
	surface.SetMaterial(stand4)
	surface.DrawTexturedRect(EFGM.ScreenScale(25) + HUD.Padding, ScrH() - EFGM.ScreenScale(179), EFGM.ScreenScale(127), EFGM.ScreenScale(143))
	surface.SetDrawColor(255, 255, 255, Standing5Alpha)
	surface.SetMaterial(stand5)
	surface.DrawTexturedRect(EFGM.ScreenScale(25) + HUD.Padding, ScrH() - EFGM.ScreenScale(174), EFGM.ScreenScale(127), EFGM.ScreenScale(138))
	surface.SetDrawColor(255, 255, 255, CrouchingAlpha)
	surface.SetMaterial(crouch)
	surface.DrawTexturedRect(EFGM.ScreenScale(25) + HUD.Padding, ScrH() - EFGM.ScreenScale(151), EFGM.ScreenScale(127), EFGM.ScreenScale(114))
end

-- extract list
function RenderExtracts()
	if IsValid(HUD.ELEMENTS.ExtractList) then return end

	local extractList
	net.Receive("SendExtractList", function(len)
		extractList = net.ReadTable()
	end)

	net.Start("GrabExtractList")
	net.SendToServer()

	local extracts = vgui.Create("DPanel", GetHUDPanel())
	HUD.ELEMENTS.ExtractList = extracts

	extracts:SetSize(ScrW(), ScrH())
	extracts:SetPos(0, 0)
	extracts:SetAlpha(0)
	extracts:MoveToFront()

	function extracts:OnRemove()
		HUD.ELEMENTS.ExtractList = nil
	end

	local exitStatusTbl = {
		[false] = Color(255, 255, 255, 255), -- extract open
		[true] = Color(255, 0, 0, 255) -- extract closed
	}

	function extracts:Paint(w, h)
		if !LocalPlayer():Alive() then return end
		if extractList == nil then return end

		BlurRect(ScrW() - EFGM.ScreenScale(515) - HUD.Padding, EFGM.ScreenScale(20), EFGM.ScreenScale(390), EFGM.ScreenScale(36), 4, 2)
		surface.SetDrawColor(Colors.hudBackground)
		surface.DrawRect(ScrW() - EFGM.ScreenScale(515) - HUD.Padding, EFGM.ScreenScale(20), EFGM.ScreenScale(390), EFGM.ScreenScale(36))
		draw.SimpleTextOutlined("FIND AN EXTRACTION POINT", "BenderAmmoCount", ScrW() - EFGM.ScreenScale(320) - HUD.Padding, EFGM.ScreenScale(21), Color(255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.ScreenScaleRounded(1), Color(0, 100, 0, 128))

		for k, v in ipairs(extractList) do
			surface.DrawRect(ScrW() - EFGM.ScreenScale(515) - HUD.Padding, EFGM.ScreenScale(61) + ((k - 1) * EFGM.ScreenScale(41)), EFGM.ScreenScale(390), EFGM.ScreenScale(36))
			surface.DrawRect(ScrW() - EFGM.ScreenScale(120) - HUD.Padding, EFGM.ScreenScale(61) + ((k - 1) * EFGM.ScreenScale(41)), EFGM.ScreenScale(100), EFGM.ScreenScale(36))

			draw.DrawText("EXFIL0" .. k, "BenderExfilList", ScrW() - EFGM.ScreenScale(505) - HUD.Padding, EFGM.ScreenScale(60) + ((k - 1) * EFGM.ScreenScale(41)), exitStatusTbl[v.IsDisabled], TEXT_ALIGN_LEFT)
			draw.DrawText(string.sub(v.ExtractName, 1, 18), "BenderExfilName", ScrW() - EFGM.ScreenScale(380) - HUD.Padding, EFGM.ScreenScale(65) + ((k - 1) * EFGM.ScreenScale(41)), Color(255, 255, 255), TEXT_ALIGN_LEFT)
		end
	end

	extracts:AlphaTo(255, 0.35, 0, nil)
	extracts:AlphaTo(0, 1, 4.65, function() extracts:Remove() end)
end

-- intro
function RenderRaidIntro()
	if IsValid(HUD.ELEMENTS.Intro) then return end

	local intro = vgui.Create("DPanel", GetHUDPanel())
	HUD.ELEMENTS.Intro = intro

	intro:SetSize(ScrW(), ScrH())
	intro:SetPos(0, 0)
	intro:SetAlpha(0)
	intro:MoveToFront()

	function intro:OnRemove()
		HUD.ELEMENTS.Intro = nil
	end

	function intro:Paint(w, h)
		if !LocalPlayer():Alive() then return end

		draw.DrawText("Raid #" .. LocalPlayer():GetNWInt("RaidsPlayed", 0), "BenderAmmoCount", EFGM.ScreenScale(20) + HUD.Padding, EFGM.ScreenScale(21), Color(255, 255, 255, 200), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
		draw.DrawText(os.date("%H:%M:%S"), "BenderAmmoCount", EFGM.ScreenScale(20) + HUD.Padding, EFGM.ScreenScale(50), Color(255, 255, 255, 200), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
		draw.DrawText("Level " .. LocalPlayer():GetNWInt("Level", 0) .. ", Operator " .. LocalPlayer():GetName(), "BenderAmmoCount", EFGM.ScreenScale(20) + HUD.Padding, EFGM.ScreenScale(80), Color(255, 255, 255, 200), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
		draw.DrawText("Garkov, " .. (MAPNAMES[game.GetMap()] or game.GetMap()), "BenderAmmoCount", EFGM.ScreenScale(20) + HUD.Padding, EFGM.ScreenScale(110), Color(255, 255, 255, 200), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	end

	intro:AlphaTo(255, 0.35, 0, nil)
	intro:AlphaTo(0, 1, 5.65, function() intro:Remove() end)
end

local teamCVar = GetConVar("efgm_bind_teaminvite")
local duelCVar = GetConVar("efgm_bind_duelinvite")
local profileCVar = GetConVar("efgm_bind_viewprofile")

function RenderPlayerInfo(ent)
	local inHideout = ent:IsInHideout()

	local name = string.upper(ent:Name())
	surface.SetFont("BenderExfilTimerMenu")
	local nameTextSize = surface.GetTextSize(name) + EFGM.ScreenScale(10)

	local squadBind = string.upper(input.GetKeyName(teamCVar:GetInt()) or "NONE")
	local duelBind = string.upper(input.GetKeyName(duelCVar:GetInt()) or "NONE")
	local profileBind = string.upper(input.GetKeyName(profileCVar:GetInt()) or "NONE")

	local inviteText = string.upper("[" .. squadBind .. "] INVITE TO SQUAD" .. "   " .. "[" .. duelBind .. "] INVITE TO DUEL" .. "   " .. "[" .. profileBind .. "] VIEW PROFILE")
	if (CurTime() - Invites.lastInviteSentTime < 10) or Invites.invitedBy != nil or Invites.invitedType != nil then inviteText = string.upper("[" .. profileBind .. "] VIEW PROFILE") end
	surface.SetFont("Bender24")
	local inviteTextSize = surface.GetTextSize(inviteText) + EFGM.ScreenScale(10)

	local infoSize = math.max(nameTextSize, inviteTextSize)
	local infoSizeY = EFGM.ScreenScale(90)
	if !inHideout then infoSize = nameTextSize infoSizeY = EFGM.ScreenScale(65) end

	BlurRect(ScrW() / 2 - (infoSize / 2), ScrH() - infoSizeY - EFGM.ScreenScale(20), infoSize, infoSizeY, 4, 2)
	surface.SetDrawColor(Colors.hudBackground)
	surface.DrawRect(ScrW() / 2 - (infoSize / 2), ScrH() - infoSizeY - EFGM.ScreenScale(20), infoSize, infoSizeY)

	surface.SetDrawColor(Colors.transparentWhiteColor)
	surface.DrawRect(ScrW() / 2 - (infoSize / 2), ScrH() - infoSizeY - EFGM.ScreenScale(20), infoSize, EFGM.ScreenScale(1))

	draw.DrawText(name, "BenderExfilTimer", ScrW() / 2, ScrH() - infoSizeY - EFGM.ScreenScale(20), Color(255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)

	if !inHideout or !Invites.allow then return end
	draw.DrawText(inviteText, "Bender24", ScrW() / 2, ScrH() - infoSizeY + EFGM.ScreenScale(40), Color(255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
end

-- voip indicator
local function RenderVOIPIndicator()
	surface.SetDrawColor(175, 255, 0)
	surface.SetMaterial(Mats.voipIcon)
	surface.DrawTexturedRect(EFGM.ScreenScale(121) + HUD.Padding, ScrH() - EFGM.ScreenScale(90), EFGM.ScreenScale(60), EFGM.ScreenScale(60))
end

local interactables = {
	["efgm_interactable"] = true,
	["efgm_container"] = true,
	["efgm_filing_cabinet"] = true,
	["efgm_safe"] = true,
	["efgm_backpack"] = true,
	["efgm_dropped_item"] = true,
	["efgm_quest_item"] = true,
	["prop_door_rotating"] = true
}

local haloCVar = GetConVar("efgm_visuals_interactableglow")

-- interactable halos
hook.Add("PreDrawHalos", "InteractableHalos", function()
	if !LocalPlayer():IsValid() or !LocalPlayer():Alive() or !haloCVar:GetBool() then return end

	local tr = util.QuickTrace(LocalPlayer():EyePos(), LocalPlayer():GetAimVector() * 96, LocalPlayer())
	if !tr.Hit then return end

	local ent = tr.Entity
	if !IsValid(ent) then return end

	if interactables[ent:GetClass()] == true then
		halo.Add({ent}, Colors.whiteColor, 2, 2, 1, true, false)
	end
end)

local acceptCVar = GetConVar("efgm_bind_invites_accept")
local declineCVar = GetConVar("efgm_bind_invites_decline")

-- invites
function RenderInvite()
	if IsValid(HUD.ELEMENTS.Invite) then return end

	local invite = vgui.Create("DPanel", GetHUDPanel())
	HUD.ELEMENTS.Invite = invite

	invite:SetSize(ScrW(), ScrH())
	invite:SetPos(0, 0)
	invite:SetAlpha(0)
	invite:MoveToFront()

	function invite:OnRemove()
		HUD.ELEMENTS.Invite = nil
	end

	surface.PlaySound("ui/invite_receive.wav")

	local time = CurTime() + 10
	local sentBy = Invites.invitedBy
	local inviteType = Invites.invitedType

	local text = ""

	if inviteType == inviteTypes.SQUAD then
		text = string.upper(sentBy:GetName() .. " invited you to duel!")
	elseif inviteType == inviteTypes.DUEL then
		text = string.upper(sentBy:GetName() .. " invited you to join their squad!")
	end

	surface.SetFont("BenderExfilTimer")
	local textSize = surface.GetTextSize(text) + EFGM.ScreenScale(10)

	local acceptBind = string.upper(input.GetKeyName(acceptCVar:GetInt()) or "N/A")
	local declineBind = string.upper(input.GetKeyName(declineCVar:GetInt()) or "N/A")

	local bindsText = string.upper("[" .. acceptBind .. "] ACCEPT" .. "   " .. "[" .. declineBind .. "] IGNORE")
	surface.SetFont("Bender24")
	local bindsTextSize = surface.GetTextSize(bindsText) + EFGM.ScreenScale(10)

	function invite:Paint(w, h)
		if !LocalPlayer():Alive() then return end
		if !LocalPlayer():IsInHideout() then return end
		if Invites.invitedBy == nil or Invites.invitedType == nil or !Invites.allow then self:AlphaTo(0, 0.1, 9.9, function() self:Remove() end) return end

		BlurRect(EFGM.ScreenScale(20) + HUD.Padding, EFGM.ScreenScale(20), math.max(textSize, bindsTextSize), EFGM.ScreenScale(90), 4, 2)
		surface.SetDrawColor(Colors.hudBackground)
		surface.DrawRect(EFGM.ScreenScale(20) + HUD.Padding, EFGM.ScreenScale(20), math.max(textSize, bindsTextSize), EFGM.ScreenScale(90))

		surface.SetDrawColor(Colors.hudBackground)
		surface.DrawRect(EFGM.ScreenScale(20) + HUD.Padding, EFGM.ScreenScale(20), math.max(textSize, bindsTextSize), EFGM.ScreenScale(1))

		surface.SetDrawColor(Colors.transparentWhiteColor)
		surface.DrawRect(EFGM.ScreenScale(20) + HUD.Padding, EFGM.ScreenScale(20), ((time - CurTime()) / 10) * math.max(textSize, bindsTextSize), EFGM.ScreenScale(1))

		draw.SimpleText(text, "BenderExfilTimer", EFGM.ScreenScale(25) + HUD.Padding, EFGM.ScreenScale(21), Color(255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
		draw.SimpleText(bindsText, "Bender24", EFGM.ScreenScale(25) + HUD.Padding, EFGM.ScreenScale(81), Color(255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	end

	invite:AlphaTo(255, 0.1, 0, nil)
	invite:AlphaTo(0, 0.1, 10, function() invite:Remove() end)
end

-- duel loadout
function RenderDuelLoadout()
	if IsValid(HUD.ELEMENTS.DuelLoadout) then return end

	local duelLoadout = vgui.Create("DPanel", GetHUDPanel())
	HUD.ELEMENTS.DuelLoadout = duelLoadout

	duelLoadout:SetSize(ScrW(), ScrH())
	duelLoadout:SetPos(0, 0)
	duelLoadout:SetAlpha(0)
	duelLoadout:MoveToFront()

	local primary = playerWeaponSlots[1][1] or nil
	local holster = playerWeaponSlots[2][1] or nil
	local nade = playerWeaponSlots[4][1] or nil

	local hasPrimary = playerWeaponSlots[1][1].name != nil
	local hasHolster = playerWeaponSlots[2][1].name != nil
	local hasNade = playerWeaponSlots[4][1].name != nil

	if !hasPrimary and !hasHolster and !hasNade then return end

	local primaryDef
	local primaryName
	local primaryNameSize = 0
	local primaryCal
	local primaryEnt
	local primaryMax = 0
	local primaryMode
	local primaryModeSize = 0
	local holsterDef
	local holsterName
	local holsterNameSize = 0
	local holsterCal
	local holsterEnt
	local holsterMax = 0
	local holsterMode
	local holsterModeSize = 0
	local nadeDef
	local nadeName
	local nadeNameSize = 0
	local nadeType

	surface.SetFont("Bender24")

	if hasPrimary then
		primaryDef = EFGMITEMS[primary.name]

		primaryName = primaryDef.displayName or ""
		primaryNameSize = surface.GetTextSize(primaryName) + EFGM.ScreenScale(140)
		primaryCal = primaryDef.caliber or ""

		primaryEnt = LocalPlayer():GetWeapon(primary.name)
		primaryMax = tostring(primaryEnt:GetMaxClip1() or 0)
		primaryMode = string.upper(string.sub(primaryEnt:GetFiremodeName() or "", 1, 1))
		primaryModeSize = surface.GetTextSize(primaryMode) + EFGM.ScreenScale(5)
	end

	if hasHolster then
		holsterDef = EFGMITEMS[holster.name]

		holsterName = holsterDef.displayName or ""
		holsterNameSize = surface.GetTextSize(holsterName) + EFGM.ScreenScale(140)

		holsterCal = holsterDef.caliber or ""

		holsterEnt = LocalPlayer():GetWeapon(holster.name)
		holsterMax = tostring(holsterEnt:GetMaxClip1() or 0)
		holsterMode = string.upper(string.sub(holsterEnt:GetFiremodeName() or "", 1, 1))
		holsterModeSize = surface.GetTextSize(holsterMode) + EFGM.ScreenScale(5)
	end

	if hasNade then
		nadeDef = EFGMITEMS[nade.name]

		nadeName = nadeDef.displayName or ""
		nadeNameSize = surface.GetTextSize(nadeName) + EFGM.ScreenScale(140)
		nadeType = nadeDef.displayType or ""
	end

	local loadoutSize = math.max(primaryNameSize, holsterNameSize, nadeNameSize)
	local loadoutSizeY = EFGM.ScreenScale(43)
	local holsterY = EFGM.ScreenScale(-18)

	if hasPrimary then
		loadoutSizeY = loadoutSizeY + EFGM.ScreenScale(47)
		holsterY = EFGM.ScreenScale(25)
	end

	if hasNade then
		loadoutSizeY = loadoutSizeY + EFGM.ScreenScale(43)
	end

	function duelLoadout:Paint(w, h)
		if !LocalPlayer():Alive() then self:Remove() return end
		if !LocalPlayer():IsInDuel() then self:Remove() return end

		BlurRect(ScrW() / 2 - (loadoutSize / 2), ScrH() - loadoutSizeY - EFGM.ScreenScale(20), loadoutSize, loadoutSizeY, 4, 2)
		surface.SetDrawColor(Colors.hudBackground)
		surface.DrawRect(ScrW() / 2 - (loadoutSize / 2), ScrH() - loadoutSizeY - EFGM.ScreenScale(20), loadoutSize, loadoutSizeY)

		surface.SetDrawColor(Colors.transparentWhiteColor)
		surface.DrawRect(ScrW() / 2 - (loadoutSize / 2), ScrH() - loadoutSizeY - EFGM.ScreenScale(20), loadoutSize, EFGM.ScreenScale(1))

		if hasPrimary then
			primaryMax = IsValid(primaryEnt) and tostring(primaryEnt:GetMaxClip1()) or "0"
			draw.DrawText(primaryName, "Bender24", ScrW() / 2 - (loadoutSize / 2) + EFGM.ScreenScale(5), ScrH() - loadoutSizeY - EFGM.ScreenScale(15), Color(255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
			draw.DrawText(primaryCal, "Bender18", ScrW() / 2 - (loadoutSize / 2) + EFGM.ScreenScale(5), ScrH() - loadoutSizeY + EFGM.ScreenScale(5), Color(255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)

			surface.SetMaterial(Mats.switchIcon)
			surface.SetDrawColor(Colors.pureWhiteColor)
			surface.DrawTexturedRect(ScrW() / 2 + (loadoutSize / 2) - EFGM.ScreenScale(31), ScrH() - loadoutSizeY - EFGM.ScreenScale(15), EFGM.ScreenScale(24), EFGM.ScreenScale(24))

			draw.DrawText(primaryMode, "Bender24", ScrW() / 2 + (loadoutSize / 2) - EFGM.ScreenScale(36), ScrH() - loadoutSizeY - EFGM.ScreenScale(15), Color(255, 255, 255), TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP)

			surface.SetMaterial(Mats.bulletsIcon)
			surface.SetDrawColor(Colors.pureWhiteColor)
			surface.DrawTexturedRect(ScrW() / 2 + (loadoutSize / 2) - EFGM.ScreenScale(65) - primaryModeSize, ScrH() - loadoutSizeY - EFGM.ScreenScale(15), EFGM.ScreenScale(24), EFGM.ScreenScale(24))

			draw.DrawText(primaryMax, "Bender24", ScrW() / 2 + (loadoutSize / 2) - EFGM.ScreenScale(70) - primaryModeSize, ScrH() - loadoutSizeY - EFGM.ScreenScale(15), Color(255, 255, 255), TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP)
		end

		if hasHolster then
			holsterMax = IsValid(holsterEnt) and tostring(holsterEnt:GetMaxClip1()) or "0"
			draw.DrawText(holsterName, "Bender24", ScrW() / 2 - (loadoutSize / 2) + EFGM.ScreenScale(5), ScrH() - loadoutSizeY + holsterY, Color(255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
			draw.DrawText(holsterCal, "Bender18", ScrW() / 2 - (loadoutSize / 2) + EFGM.ScreenScale(5), ScrH() - loadoutSizeY + holsterY + EFGM.ScreenScale(20), Color(255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)

			surface.SetMaterial(Mats.switchIcon)
			surface.SetDrawColor(Colors.pureWhiteColor)
			surface.DrawTexturedRect(ScrW() / 2 + (loadoutSize / 2) - EFGM.ScreenScale(31), ScrH() - loadoutSizeY + holsterY, EFGM.ScreenScale(24), EFGM.ScreenScale(24))

			draw.DrawText(holsterMode, "Bender24", ScrW() / 2 + (loadoutSize / 2) - EFGM.ScreenScale(36), ScrH() - loadoutSizeY + holsterY, Color(255, 255, 255), TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP)

			surface.SetMaterial(Mats.bulletsIcon)
			surface.SetDrawColor(Colors.pureWhiteColor)
			surface.DrawTexturedRect(ScrW() / 2 + (loadoutSize / 2) - EFGM.ScreenScale(65) - holsterModeSize, ScrH() - loadoutSizeY + holsterY, EFGM.ScreenScale(24), EFGM.ScreenScale(24))

			draw.DrawText(holsterMax, "Bender24", ScrW() / 2 + (loadoutSize / 2) - EFGM.ScreenScale(70) - holsterModeSize, ScrH() - loadoutSizeY + holsterY, Color(255, 255, 255), TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP)
		end

		if hasNade then
			draw.DrawText(nadeName, "Bender24", ScrW() / 2 - (loadoutSize / 2) + EFGM.ScreenScale(5), ScrH() - loadoutSizeY + holsterY + EFGM.ScreenScale(43), Color(255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
			draw.DrawText(nadeType, "Bender18", ScrW() / 2 - (loadoutSize / 2) + EFGM.ScreenScale(5), ScrH() - loadoutSizeY + holsterY + EFGM.ScreenScale(63), Color(255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
		end
	end

	duelLoadout:AlphaTo(255, 0.35, 0, nil)
	duelLoadout:AlphaTo(0, 0.1, 3.65, function() duelLoadout:Remove() end)
end

local function DrawHUD()
	if !LocalPlayer():Alive() or Menu.IsOpen or HUD.InIntro then RenderOverlays() return end
	if !HUD.Enabled:GetBool() then return end

	RenderRaidTime()
	RenderPlayerWeapon()
	RenderPlayerStance()
	RenderOverlays()
end
hook.Add("HUDPaint", "DrawHUD", DrawHUD)

hook.Add("CalcView", "SetIntroView", function(ply, pos, angles, fov)
	if HUD.IntroEnt != NULL and HUD.InIntro then
		local camera = HUD.IntroEnt:GetAttachment(1)

		local view = {
			origin = camera.Pos,
			angles = camera.Ang,
			fov = fov,
			drawviewer = false
		}

		return view
	end
end)

hook.Add("PreDrawViewModel", "SetIntroViewVM", function(viewModel, weapon)
	if HUD.IntroEnt != NULL and HUD.InIntro then return true end
end)

hook.Add("RenderScreenspaceEffects", "IntroScreenspace", function()
	if HUD.IntroEnt == NULL or !HUD.InIntro then return end

	DrawBloom(0.75, 2.25, 9, 9, 1, 1, 1, 1, 1)

	local texture = surface.GetTextureID("overlays/vignette")
	local mult = 1 + (1 * (-0.66 * 1))

	surface.SetTexture(texture)
	surface.SetDrawColor(255, 255, 255, 255)
	surface.DrawTexturedRect(0 - (ScrW() * mult), 0 - (ScrH() * mult), ScrW() * (1 + 2 * mult), ScrH() * (1 + 2 * mult))
end)

net.Receive("SendIntroCamera", function()
	local ent = net.ReadEntity()
	HUD.IntroEnt = ent or NULL
end)

net.Receive("PlayerTransition", function()
	if IsValid(HUD.ELEMENTS.Transition) then return end
	if IsValid(HUD.ELEMENTS.Notification) then
		HUD.ELEMENTS.Notification:AlphaTo(0, 0.2, 0, function() HUD.ELEMENTS.Notification:Remove() end)
	end

	local transition = vgui.Create("DPanel", GetHUDPanel())
	HUD.ELEMENTS.Transition = transition

	transition:SetSize(ScrW(), ScrH())
	transition:SetPos(0, 0)
	transition:SetAlpha(0)
	transition:MoveToFront()

	function transition:OnRemove()
		HUD.ELEMENTS.Transition = nil
	end

	function transition:Paint(w, h)
		BlurPanel(self, 6, 4)

		surface.SetDrawColor(0, 0, 0, 255)
		surface.DrawRect(0, 0, ScrW(), ScrH())
	end

	transition:AlphaTo(255, 0.5, 0, nil)
	transition:AlphaTo(0, 0.35, 1, function()
		transition:Remove()
	end)

	if Menu.MenuFrame == nil then return end
	if Menu.MenuFrame:IsActive() != true then return end

	Menu:RunOnClose()

	Menu.MenuFrame:AlphaTo(0, 0.05, 0, function()
		Menu.MenuFrame:Close()
	end)
end)

net.Receive("PlayerRaidTransition", function()
	local status = net.ReadUInt(2)

	if status == 1 then
		timer.Simple(1, function()
			HUD.InIntro = false
		end)

		timer.Simple(1.5, function()
			hook.Run("efgm_raid_enter")
			RenderRaidIntro()
		end)

		timer.Simple(2.5, function()
			RenderExtracts()
		end)
	elseif status == 0 then
		timer.Simple(1, function()
			HUD.InIntro = true
		end)
	end

	Menu.PerferredTab = nil

	if IsValid(HUD.ELEMENTS.Transition) then return end
	if IsValid(HUD.ELEMENTS.Notification) then
		HUD.ELEMENTS.Notification:AlphaTo(0, 0.2, 0, function() HUD.ELEMENTS.Notification:Remove() end)
	end

	local transition = vgui.Create("DPanel", GetHUDPanel())
	HUD.ELEMENTS.Transition = transition

	transition:SetSize(ScrW(), ScrH())
	transition:SetPos(0, 0)
	transition:SetAlpha(0)
	transition:MoveToFront()

	function transition:OnRemove()
		HUD.ELEMENTS.Transition = nil
	end

	function transition:Paint(w, h)
		BlurPanel(self, 6, 4)

		surface.SetDrawColor(0, 0, 0, 255)
		surface.DrawRect(0, 0, ScrW(), ScrH())
	end

	local fadeOutTime = 0.35
	if status == 1 then fadeOutTime = 1.5 end

	transition:AlphaTo(255, 0.5, 0, nil)
	transition:AlphaTo(0, fadeOutTime, 1, function()
		transition:Remove()
	end)

	if Menu.MenuFrame == nil then return end
	if Menu.MenuFrame:IsActive() != true then return end

	Menu:RunOnClose()

	Menu.MenuFrame:AlphaTo(0, 0.05, 0, function()
		Menu.MenuFrame:Close()
	end)
end)

net.Receive("PlayerDuelTransition", function()
	local status = net.ReadUInt(1)

	if status == 1 then
		hook.Run("efgm_duel_enter")
		LocalPlayer().IsFreezed = true

		timer.Simple(1.5, function() RenderDuelLoadout() end)

		timer.Simple(2.35, function()
			LocalPlayer().IsFreezed = false
		end)
	end

	Menu.PerferredTab = nil

	if IsValid(HUD.ELEMENTS.Transition) then return end
	if IsValid(HUD.ELEMENTS.Notification) then
		HUD.ELEMENTS.Notification:AlphaTo(0, 0.2, 0, function() HUD.ELEMENTS.Notification:Remove() end)
	end

	local transition = vgui.Create("DPanel", GetHUDPanel())
	HUD.ELEMENTS.Transition = transition

	transition:SetSize(ScrW(), ScrH())
	transition:SetPos(0, 0)
	transition:SetAlpha(0)
	transition:MoveToFront()

	function transition:OnRemove()
		HUD.ELEMENTS.Transition = nil
	end

	function transition:Paint(self, w, h)
		BlurPanel(self, 6, 4)

		surface.SetDrawColor(0, 0, 0, 255)
		surface.DrawRect(0, 0, ScrW(), ScrH())
	end

	transition:AlphaTo(255, 0.5, 0, nil)
	transition:AlphaTo(0, 0.35, 1.15, function()
		transition:Remove()
	end)

	if Menu.MenuFrame == nil then return end
	if Menu.MenuFrame:IsActive() != true then return end

	Menu:RunOnClose()

	Menu.MenuFrame:AlphaTo(0, 0.05, 0, function()
		Menu.MenuFrame:Close()
	end)
end)

-- extraction timer
net.Receive("SendExtractionStatus", function()
	local status = net.ReadBool()

	if status then
		if IsValid(HUD.ELEMENTS.ExtractProgress) then HUD.ELEMENTS.ExtractProgress:Remove() return end

		local exitTime = net.ReadUInt(8)
		local exitAtTime = CurTime() + exitTime
		local exitTimeLeft = exitTime

		local extractPopup = vgui.Create("DPanel", GetHUDPanel())
		HUD.ELEMENTS.ExtractProgress = extractPopup

		extractPopup:SetSize(ScrW(), ScrH())
		extractPopup:SetPos(0, 0)
		extractPopup:SetAlpha(0)
		extractPopup:MoveToFront()

		function extractPopup:OnRemove()
			HUD.ELEMENTS.ExtractProgress = nil
		end

		function extractPopup:Paint(w, h)
			exitTimeLeft = math.max(0, exitAtTime - CurTime())

			surface.SetDrawColor(120, 180, 40, 125)
			surface.DrawRect(w / 2 - EFGM.ScreenScale(125), h - EFGM.ScreenScale(300), EFGM.ScreenScale(250), EFGM.ScreenScale(80))

			draw.DrawText("EXTRACTION IN", "BenderExfilList", w / 2, h - EFGM.ScreenScale(300), Colors.blackColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
			draw.DrawText(string.format("%.1f", tostring(exitTimeLeft)), "BenderExfilTimer", w / 2, h - EFGM.ScreenScale(275), Colors.blackColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)

			BlurRect(w / 2 - EFGM.ScreenScale(125), h - EFGM.ScreenScale(215), EFGM.ScreenScale(250), EFGM.ScreenScale(5), 4, 2)
			surface.SetDrawColor(Colors.hudBackground)
			surface.DrawRect(w / 2 - EFGM.ScreenScale(125), h - EFGM.ScreenScale(215), EFGM.ScreenScale(250), EFGM.ScreenScale(5))

			surface.SetDrawColor(120, 180, 40, 85)
			surface.DrawRect((w / 2) - EFGM.ScreenScale(250) * (exitTimeLeft / exitTime) / 2, h - EFGM.ScreenScale(215), EFGM.ScreenScale(250) * (exitTimeLeft / exitTime), EFGM.ScreenScale(5))
		end

		extractPopup:AlphaTo(255, 0.1, 0, nil)

		extractPopup:AlphaTo(0, 0.1, exitTime, function()
			if !IsValid(extractPopup) then return end
			extractPopup:Remove()
		end)
	else
		if !IsValid(HUD.ELEMENTS.ExtractProgress) then return end
		HUD.ELEMENTS.ExtractProgress:AlphaTo(0, 0.1, 0, function() HUD.ELEMENTS.ExtractProgress:Remove() end)
	end
end)

-- notifications
function CreateNotification(text, icon, snd)
	if IsValid(HUD.ELEMENTS.Notification) then HUD.ELEMENTS.Notification:Remove() end

	local panel = GetHUDPanel()
	if Menu.MenuFrame != nil and Menu.MenuFrame:IsActive() == true then panel = Menu.MenuFrame end
	if HUD.ELEMENTS.DeathPostScreen != nil and HUD.ELEMENTS.DeathPostScreen:IsValid() then panel = HUD.ELEMENTS.DeathPostScreen end
	if HUD.ELEMENTS.ExtractPostScreen != nil and HUD.ELEMENTS.ExtractPostScreen:IsValid() then panel = HUD.ELEMENTS.ExtractPostScreen end

	surface.SetFont("BenderNotification")
	local tw = surface.GetTextSize(text) + EFGM.ScreenScale(45)

	local notif = vgui.Create("DPanel", panel)
	HUD.ELEMENTS.Notification = notif

	notif:SetPos(ScrW() / 2 - (tw / 2), ScrH())
	notif:SetSize(tw, EFGM.ScreenScale(30))
	notif:SetAlpha(0)
	notif:MoveToFront()

	notif:MoveTo(ScrW() / 2 - (tw / 2), ScrH() - EFGM.ScreenScale(40), 0.25, 0.1, 1, nil)
	notif:AlphaTo(255, 0.3, 0.1, nil)

	notif:AlphaTo(0, 0.2, 4, function() notif:Remove() end)
	notif:MoveTo(ScrW() / 2 - (tw / 2), ScrH(), 0.25, 4, 1, nil)

	if snd then surface.PlaySound(snd) end

	function notif:Paint(w, h)
		BlurPanel(self, 3)

		surface.SetDrawColor(0, 0, 0, 200)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(Colors.transparentWhiteColor)
		surface.DrawRect(0, 0, w, EFGM.ScreenScale(1))

		surface.SetDrawColor(255, 255, 255, 255)
		surface.SetMaterial(icon)
		surface.DrawTexturedRect(EFGM.ScreenScale(2), 0, h, h)

		surface.SetFont("BenderNotification")
		surface.SetTextPos(w - tw + EFGM.ScreenScale(36), EFGM.ScreenScale(0.5))
		surface.SetTextColor(255, 255, 255, 255)
		surface.DrawText(text)
	end
end

net.Receive("SendNotification", function()
	local text = net.ReadString()
	local mat = net.ReadString()
	local snd = net.ReadString()

	local material = Material(mat, "smooth")

	CreateNotification(text, material, snd)
end)

local parallaxCVar = GetConVar("efgm_menu_parallax")

-- death overview
net.Receive("CreateDeathInformation", function()
	hook.Run("efgm_raid_exit", false)

	local xpMult = net.ReadFloat()

	local respawnTime = net.ReadUInt(8)
	local timeInRaid = net.ReadUInt(12)

	local statsTbl = {
		["DAMAGE DEALT:"] = math.Round(LocalPlayer():GetNWInt("RaidDamageDealt", 0)),
		["DAMAGE RECEIVED FROM OPERATORS:"] = math.Round(LocalPlayer():GetNWInt("RaidDamageRecievedPlayers", 0)),
		["DAMAGE RECEIVED FROM FALLING:"] = math.Round(LocalPlayer():GetNWInt("RaidDamageRecievedFalling", 0)),
		["DAMAGE RECEIVED FROM YOURSELF:"] = math.Round(LocalPlayer():GetNWInt("RaidDamageRecievedSelf", 0)),
		["DAMAGE RECEIVED:"] = math.Round(LocalPlayer():GetNWInt("RaidDamageRecievedPlayers", 0) + LocalPlayer():GetNWInt("RaidDamageRecievedFalling", 0) + LocalPlayer():GetNWInt("RaidDamageRecievedSelf", 0)),
		["HEALTH HEALED:"] = math.Round(LocalPlayer():GetNWInt("RaidHealthHealed", 0)),
		["ITEMS LOOTED:"] = LocalPlayer():GetNWInt("RaidItemsLooted", 0),
		["CONTAINERS OPENED:"] = LocalPlayer():GetNWInt("RaidContainersLooted", 0),
		["KEYS USED:"] = LocalPlayer():GetNWInt("RaidKeysUsed", 0),
		["OPERATORS KILLED:"] = LocalPlayer():GetNWInt("RaidKills", 0),
		["FARTHEST KILL:"] = LocalPlayer():GetNWInt("RaidFarthestKill", 0),
		["SHOTS FIRED:"] = LocalPlayer():GetNWInt("RaidShotsFired", 0),
		["SHOTS HIT:"] = LocalPlayer():GetNWInt("RaidShotsHit", 0),
		["GRENADES THROWN:"] = LocalPlayer():GetNWInt("RaidGrenadesThrown", 0)
	}
	table.SortByKey(statsTbl)

	local xpTime = net.ReadUInt(16)
	local xpCombat = net.ReadUInt(16)
	local xpExploration = net.ReadUInt(16)
	local xpLooting = net.ReadUInt(16)
	local xpBonus = net.ReadUInt(16)

	local killedBy = net.ReadPlayer()
	local killedByHealth = net.ReadUInt(8)
	local killedByWeapon = net.ReadTable()
	local killedFrom = net.ReadUInt(16)
	local hitGroup = net.ReadUInt(4)

	local minutes = math.floor(timeInRaid / 60)
	local seconds = timeInRaid % 60

	local totalXPRaw = xpTime + xpCombat + xpExploration + xpLooting + xpBonus
	local totalXPReal = math.Round(totalXPRaw * xpMult, 0)

	local quote = QUOTES[math.random(1, #QUOTES)]

	if respawnTime > EFGM.CONFIG.HideoutRespawnTime then surface.PlaySound("death_heartbeat.wav") end

	timer.Simple(respawnTime, function()
		if IsValid(HUD.ELEMENTS.DeathPostScreen) then return end

		local rewardsPanel = nil
		local attackerPanel = nil
		local mapPanel = nil
		local respawnButton = nil

		local deathDocker = vgui.Create("DPanel", GetHUDPanel())
		deathDocker:SetSize(ScrW(), ScrH())
		deathDocker:SetPos(0, 0)
		deathDocker:SetAlpha(0)
		deathDocker:AlphaTo(255, 0.2, 0, nil)

		function deathDocker:Paint(w, h)
			BlurPanel(self, 6, 4)

			surface.SetDrawColor(Color(0, 0, 0, 255))
			surface.DrawRect(0, 0, w, h)
		end

		local deathPopup = vgui.Create("DPanel", deathDocker)
		HUD.ELEMENTS.DeathPostScreen = deathPopup

		deathPopup:SetSize(ScrW(), ScrH())
		deathPopup:SetPos(0, 0)
		deathPopup:SetAlpha(0)
		deathPopup:AlphaTo(255, 0.2, 0, nil)
		deathPopup:MakePopup()
		deathPopup:SetMouseInputEnabled(true)
		deathPopup:SetKeyboardInputEnabled(true)

		function deathPopup:OnRemove()
			HUD.ELEMENTS.DeathPostScreen = nil
		end

		function deathPopup:Paint(w, h)
			draw.SimpleTextOutlined("KILLED IN ACTION", "PuristaBold64", w / 2, EFGM.MenuScale(35), Color(255, 0, 0, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.whiteColor)
			draw.SimpleTextOutlined(string.format("%02d:%02d", minutes, seconds) .. " TIME IN RAID", "PuristaBold22", w / 2, EFGM.MenuScale(90), Colors.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
			draw.SimpleTextOutlined(quote, "Purista18Italic", w / 2, EFGM.MenuScale(108), Colors.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

			self.MouseX, self.MouseY = self:LocalCursorPos()

			if parallaxCVar:GetBool() then
				self.ParallaxX = math.Clamp(((self.MouseX / math.Round(EFGM.MenuScale(1920), 1)) - 0.5) * EFGM.MenuScale(20), -10, 10)
				self.ParallaxY = math.Clamp(((self.MouseY / math.Round(EFGM.MenuScale(1080), 1)) - 0.5) * EFGM.MenuScale(20), -10, 10)

				self:SetPos(0 + self.ParallaxX, 0 + self.ParallaxY)
			else
				self.ParallaxX = 0
				self.ParallaxY = 0

				self:SetPos(0, 0)
			end

			if attackerPanel and mapPanel then
				if rewardsPanel then rewardsPanel:SetX(self:GetWide() / 2 - EFGM.MenuScale(920)) end
				if mapPanel then mapPanel:SetX(self:GetWide() / 2 - EFGM.MenuScale(400)) end
				if attackerPanel then attackerPanel:SetX(self:GetWide() / 2 + EFGM.MenuScale(420)) end
				if respawnButton then respawnButton:SetWide(EFGM.MenuScale(1840)) end
			elseif attackerPanel then
				if rewardsPanel then
					rewardsPanel:SetX(self:GetWide() / 2 - EFGM.MenuScale(510))
					if attackerPanel then attackerPanel:SetX(self:GetWide() / 2 + EFGM.MenuScale(10)) end
					if respawnButton then respawnButton:SetWide(EFGM.MenuScale(1020)) end
				else
					if attackerPanel then attackerPanel:SetX(self:GetWide() / 2 - EFGM.MenuScale(250)) end
					if respawnButton then respawnButton:SetWide(EFGM.MenuScale(500)) end
				end
			elseif mapPanel then
				if rewardsPanel then rewardsPanel:SetX(self:GetWide() / 2 - EFGM.MenuScale(660)) end
				if mapPanel then mapPanel:SetX(self:GetWide() / 2 - EFGM.MenuScale(140)) end
				if respawnButton then respawnButton:SetWide(EFGM.MenuScale(1320)) end
			else
				if rewardsPanel then rewardsPanel:SetX(self:GetWide() / 2 - EFGM.MenuScale(250)) end
				if respawnButton then respawnButton:SetWide(EFGM.MenuScale(500)) end
			end

			if respawnButton then respawnButton:SetX(ScrW() / 2 - respawnButton:GetWide() / 2) end
		end

		if respawnTime > EFGM.CONFIG.HideoutRespawnTime then surface.PlaySound("extract_failed.wav") end

		respawnButton = vgui.Create("DButton", deathPopup)
		respawnButton:SetSize(EFGM.MenuScale(1020), EFGM.MenuScale(50))
		respawnButton:SetPos(ScrW() / 2 - EFGM.MenuScale(510), deathPopup:GetTall() - EFGM.MenuScale(100))
		respawnButton:SetText("")

		function respawnButton:Paint(w, h)
			surface.SetDrawColor(Color(80, 80, 80, 10))
			surface.DrawRect(0, 0, w, h)

			surface.SetDrawColor(Colors.transparentWhiteColor)
			surface.DrawRect(0, 0, self:GetWide(), EFGM.MenuScale(2))

			draw.SimpleTextOutlined("RETURN TO HIDEOUT", "PuristaBold32", w / 2, EFGM.MenuScale(7), Colors.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
		end

		function respawnButton:DoClick()
			net.Start("PlayerRequestRespawn", false)
			net.SendToServer()

			surface.PlaySound("ui/element_select.wav")
			deathPopup:AlphaTo(0, 0.1, 0, function() deathPopup:Remove() end)
			deathDocker:AlphaTo(0, 0.9, 0.1, function() deathDocker:Remove() end)
		end

		if respawnTime > EFGM.CONFIG.HideoutRespawnTime then
			rewardsPanel = vgui.Create("DPanel", deathPopup)
			rewardsPanel:SetSize(EFGM.MenuScale(500), EFGM.MenuScale(800))
			rewardsPanel:SetPos(deathPopup:GetWide() / 2 - EFGM.MenuScale(510), EFGM.MenuScale(140))

			function rewardsPanel:Paint(w, h)
				BlurPanel(self, 3)

				surface.SetDrawColor(Color(80, 80, 80, 10))
				surface.DrawRect(0, 0, w, h)

				surface.SetDrawColor(Color(255, 255, 255, 25))
				surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
				surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
				surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
				surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)
			end

			local statsPanel = vgui.Create("DPanel", rewardsPanel)
			statsPanel:SetSize(0, EFGM.MenuScale(500))
			statsPanel:Dock(TOP)
			statsPanel:DockMargin(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5))

			function statsPanel:Paint(w, h)
				surface.SetDrawColor(Color(80, 80, 80, 10))
				surface.DrawRect(0, 0, w, h)

				surface.SetDrawColor(Colors.transparentWhiteColor)
				surface.DrawRect(0, 0, w, EFGM.MenuScale(6))

				surface.SetDrawColor(Color(255, 255, 255, 10))
				surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
				surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
				surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
				surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)
			end

			local statsText = vgui.Create("DPanel", statsPanel)
			statsText:Dock(TOP)
			statsText:SetSize(0, EFGM.MenuScale(36))

			function statsText:Paint(w, h)
				surface.SetDrawColor(Color(155, 155, 155, 10))
				surface.DrawRect(0, 0, w, h)

				draw.SimpleTextOutlined("STATS", "PuristaBold32", EFGM.MenuScale(5), EFGM.MenuScale(2), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
			end

			local statsHolder = vgui.Create("DPanel", statsPanel)
			statsHolder:Dock(FILL)
			statsHolder:DockMargin(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5))
			statsHolder:SetSize(0, 0)

			function statsHolder:Paint(w, h)
				local num = 0

				for k, v in pairs(statsTbl) do
					if v == 0 then continue end

					draw.SimpleTextOutlined(k, "PuristaBold24", EFGM.MenuScale(3), EFGM.MenuScale(22) * num, Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
					draw.SimpleTextOutlined(v, "PuristaBold24", w - EFGM.MenuScale(3), EFGM.MenuScale(22) * num, Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

					num = num + 1
				end
			end

			local levelingPanel = vgui.Create("DPanel", rewardsPanel)
			levelingPanel:SetSize(0, EFGM.MenuScale(285))
			levelingPanel:Dock(TOP)
			levelingPanel:DockMargin(EFGM.MenuScale(5), 0, EFGM.MenuScale(5), EFGM.MenuScale(5))

			function levelingPanel:Paint(w, h)
				surface.SetDrawColor(Color(80, 80, 80, 10))
				surface.DrawRect(0, 0, w, h)

				surface.SetDrawColor(Colors.transparentWhiteColor)
				surface.DrawRect(0, 0, w, EFGM.MenuScale(6))

				surface.SetDrawColor(Color(255, 255, 255, 10))
				surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
				surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
				surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
				surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)
			end

			local levelingText = vgui.Create("DPanel", levelingPanel)
			levelingText:Dock(TOP)
			levelingText:SetSize(0, EFGM.MenuScale(36))

			function levelingText:Paint(w, h)
				surface.SetDrawColor(Color(155, 155, 155, 10))
				surface.DrawRect(0, 0, w, h)

				draw.SimpleTextOutlined("LEVELING", "PuristaBold32", EFGM.MenuScale(5), EFGM.MenuScale(2), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
			end

			local levelingHolder = vgui.Create("DPanel", levelingPanel)
			levelingHolder:Dock(FILL)
			levelingHolder:DockMargin(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5))
			levelingHolder:SetSize(0, 0)

			function levelingHolder:Paint(w, h)
				draw.SimpleTextOutlined("TIME: ", "PuristaBold24", EFGM.MenuScale(3), 0, Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
				draw.SimpleTextOutlined(xpTime .. "XP", "PuristaBold24", w - EFGM.MenuScale(3), 0, Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

				draw.SimpleTextOutlined("COMBAT: ", "PuristaBold24", EFGM.MenuScale(3), EFGM.MenuScale(22), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
				draw.SimpleTextOutlined(xpCombat .. "XP", "PuristaBold24", w - EFGM.MenuScale(3), EFGM.MenuScale(22), Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

				draw.SimpleTextOutlined("EXPLORATION: ", "PuristaBold24", EFGM.MenuScale(3), EFGM.MenuScale(44), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
				draw.SimpleTextOutlined(xpExploration .. "XP", "PuristaBold24", w - EFGM.MenuScale(3), EFGM.MenuScale(44), Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

				draw.SimpleTextOutlined("LOOTING: ", "PuristaBold24", EFGM.MenuScale(3), EFGM.MenuScale(66), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
				draw.SimpleTextOutlined(xpLooting .. "XP", "PuristaBold24", w - EFGM.MenuScale(3), EFGM.MenuScale(66), Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

				draw.SimpleTextOutlined("BONUS: ", "PuristaBold24", EFGM.MenuScale(3), EFGM.MenuScale(88), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
				draw.SimpleTextOutlined(xpBonus .. "XP", "PuristaBold24", w - EFGM.MenuScale(3), EFGM.MenuScale(88), Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

				draw.SimpleTextOutlined("TOTAL: ", "PuristaBold24", EFGM.MenuScale(3), EFGM.MenuScale(120), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
				draw.SimpleTextOutlined(totalXPRaw .. "XP", "PuristaBold24", w - EFGM.MenuScale(3), EFGM.MenuScale(120), Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

				draw.SimpleTextOutlined("MULTIPLIER: ", "PuristaBold24", EFGM.MenuScale(3), EFGM.MenuScale(142), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
				draw.SimpleTextOutlined(xpMult .. "x", "PuristaBold24", w - EFGM.MenuScale(3), EFGM.MenuScale(142), Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

				draw.SimpleTextOutlined("FINAL XP: ", "PuristaBold24", EFGM.MenuScale(3), EFGM.MenuScale(174), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
				draw.SimpleTextOutlined("+" .. totalXPReal .. "XP", "PuristaBold24", w - EFGM.MenuScale(3), EFGM.MenuScale(174), Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

				draw.SimpleTextOutlined(LocalPlayer():GetNWInt("Level", 1), "PuristaBold24", EFGM.MenuScale(5), h - EFGM.MenuScale(40), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
				draw.SimpleTextOutlined(LocalPlayer():GetNWInt("Level", 1) + 1, "PuristaBold24", w - EFGM.MenuScale(5), h - EFGM.MenuScale(40), Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

				draw.SimpleTextOutlined(LocalPlayer():GetNWInt("Experience", 0) .. "/" .. LocalPlayer():GetNWInt("ExperienceToNextLevel", 500), "PuristaBold16", EFGM.MenuScale(30), h - EFGM.MenuScale(33), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

				surface.SetDrawColor(30, 30, 30, 125)
				surface.DrawRect(EFGM.MenuScale(5), h - EFGM.MenuScale(15), EFGM.MenuScale(470), EFGM.MenuScale(10))

				surface.SetDrawColor(255, 255, 255, 175)
				surface.DrawRect(EFGM.MenuScale(5), h - EFGM.MenuScale(15), (LocalPlayer():GetNWInt("Experience", 0) / LocalPlayer():GetNWInt("ExperienceToNextLevel", 500)) * EFGM.MenuScale(470), EFGM.MenuScale(10))
			end
		end

		if LocalPlayer() != killedBy and IsValid(killedBy) and killedBy:IsPlayer() then
			attackerPanel = vgui.Create("DPanel", deathPopup)
			attackerPanel:SetSize(EFGM.MenuScale(500), EFGM.MenuScale(800))
			attackerPanel:SetPos(deathPopup:GetWide() / 2 + EFGM.MenuScale(10), EFGM.MenuScale(140))
			attackerPanel:DockMargin(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5))

			function attackerPanel:Paint(w, h)
				BlurPanel(self, 3)

				surface.SetDrawColor(Color(80, 80, 80, 10))
				surface.DrawRect(0, 0, w, h)

				surface.SetDrawColor(Color(255, 255, 255, 25))
				surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
				surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
				surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
				surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)
			end

			local killerPanel = vgui.Create("DPanel", attackerPanel)
			killerPanel:SetSize(0, 0)
			killerPanel:Dock(FILL)
			killerPanel:DockMargin(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5))

			function killerPanel:Paint(w, h)
				surface.SetDrawColor(Color(80, 80, 80, 10))
				surface.DrawRect(0, 0, w, h)

				surface.SetDrawColor(Colors.transparentWhiteColor)
				surface.DrawRect(0, 0, w, EFGM.MenuScale(6))

				surface.SetDrawColor(Color(255, 255, 255, 10))
				surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
				surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
				surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
				surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)
			end

			local killerText = vgui.Create("DPanel", killerPanel)
			killerText:Dock(TOP)
			killerText:SetSize(0, EFGM.MenuScale(36))

			function killerText:Paint(w, h)
				surface.SetDrawColor(Color(155, 155, 155, 10))
				surface.DrawRect(0, 0, w, h)

				draw.SimpleTextOutlined("KILLED BY", "PuristaBold32", EFGM.MenuScale(5), EFGM.MenuScale(2), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
			end

			local killerHolder = vgui.Create("DPanel", killerPanel)
			killerHolder:Dock(FILL)
			killerHolder:DockMargin(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5))
			killerHolder:SetSize(0, 0)

			function killerHolder:Paint(w, h)
				draw.SimpleTextOutlined(killedBy:GetName(), "PuristaBold24", EFGM.MenuScale(90), 0, Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

				if killedFrom != 0 then
					draw.SimpleTextOutlined("from " .. killedFrom .. "m away", "PuristaBold16", EFGM.MenuScale(90), EFGM.MenuScale(18), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
				end

				if hitGroup != 0 and HITGROUPS[hitGroup] != nil then
					if killedFrom != 0 then
						draw.SimpleTextOutlined("in the " .. HITGROUPS[hitGroup], "PuristaBold16", EFGM.MenuScale(90), EFGM.MenuScale(30), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
					else
						draw.SimpleTextOutlined("in the " .. HITGROUPS[hitGroup], "PuristaBold16", EFGM.MenuScale(90), EFGM.MenuScale(18), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
					end
				end

				surface.SetDrawColor(Colors.healthGreenColor)
				surface.SetMaterial(Mats.healthIcon)
				surface.DrawTexturedRect(0, EFGM.MenuScale(90), EFGM.MenuScale(32), EFGM.MenuScale(32))

				draw.SimpleTextOutlined(killedByHealth .. "HP", "PuristaBold24", EFGM.MenuScale(32), EFGM.MenuScale(93), Colors.healthGreenColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
			end

			local killerPFP = vgui.Create("AvatarImage", killerHolder)
			killerPFP:SetPos(EFGM.MenuScale(5), EFGM.MenuScale(5))
			killerPFP:SetSize(EFGM.MenuScale(80), EFGM.MenuScale(80))
			killerPFP:SetPlayer(killedBy, 184)

			function killerPFP.OnMousePressed()
				local dropdown = DermaMenu()

				local profile = dropdown:AddOption("Open Steam Profile", function() gui.OpenURL("http://steamcommunity.com/profiles/" .. killedBy:SteamID64()) end)
				profile:SetIcon("games/16/all.png")
				local gameProfile = dropdown:AddOption("Open Game Profile", function() CreateNotification("I do not work yet LOL!", Mats.dontEvenAsk, "ui/boo.wav") end)
				gameProfile:SetIcon("icon16/chart_bar.png")

				dropdown:AddSpacer()

				dropdown:AddOption("Copy Name", function() SetClipboardText(killedBy:GetName()) end):SetIcon("icon16/pencil_add.png")
				dropdown:AddOption("Copy SteamID64", function() SetClipboardText(killedBy:SteamID64()) end):SetIcon("icon16/pencil_add.png")

				if killedBy != LocalPlayer() then
					local mute = dropdown:AddOption("Mute Player", function()
						if killedBy:IsMuted() then
							killedBy:SetMuted(false)
						else
							killedBy:SetMuted(true)
						end
					end)

					if killedBy:IsMuted() then
						mute:SetIcon("icon16/sound.png")
						mute:SetText("Unmute Player")
					else
						mute:SetIcon("icon16/sound_mute.png")
						mute:SetText("Mute Player")
					end
				end

				dropdown:Open()
			end

			local playerModel = vgui.Create("DModelPanel", killerHolder)
			playerModel:SetAlpha(0)
			playerModel:Dock(FILL)
			playerModel:SetMouseInputEnabled(false)
			playerModel:SetFOV(26)
			playerModel:SetCamPos(Vector(10, 0, 0))
			playerModel:SetLookAt(Vector(-100, 0, -24))
			playerModel:SetDirectionalLight(BOX_RIGHT, Color(255, 160, 80, 255))
			playerModel:SetDirectionalLight(BOX_LEFT, Color(80, 160, 255, 255))
			playerModel:SetAnimated(true)
			playerModel:SetModel(killedBy:GetModel())
			playerModel:AlphaTo(255, 0.1, 0, nil)

			local groups = GetEntityGroups(killedBy)

			if groups then
				if groups.Bodygroups then
					for k, v in pairs(groups.Bodygroups) do
						playerModel.Entity:SetBodygroup(k, v)
					end
				end

				if groups.Skin then
					playerModel.Entity:SetSkin(groups.Skin)
				end
			end

			playerModel.Entity:SetPos(Vector(-108, -1, -63))
			playerModel.Entity:SetAngles(Angle(0, 20, 0))

			function playerModel:LayoutEntity(Entity)
				if !IsValid(Entity) then return end
				playerModel:RunAnimation()
			end

			if killedByWeapon.name then
				local def = EFGMITEMS[killedByWeapon.name]
				if def == nil then return end

				local weaponHolder = vgui.Create("DButton", killerHolder)
				weaponHolder:SetText("")
				weaponHolder:SetSize(EFGM.MenuScale(57 * def.sizeX), EFGM.MenuScale(57 * def.sizeY))
				weaponHolder:SetPos(EFGM.MenuScale(5), EFGM.MenuScale(746) - weaponHolder:GetTall() - EFGM.MenuScale(5))

				function weaponHolder:Paint(w, h)
					BlurPanel(self, 3)

					surface.SetDrawColor(Colors.containerBackgroundColor)
					surface.DrawRect(0, 0, w, h)

					surface.SetDrawColor(Colors.whiteBorderColor)
					surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
					surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
					surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
					surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

					if !self:IsHovered() then surface.SetDrawColor(Colors.itemBackgroundColor) else surface.SetDrawColor(Colors.itemBackgroundColorHovered) end
					surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
					surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
					surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
					surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

					surface.SetDrawColor(def.iconColor or Colors.itemColor)
					surface.DrawRect(0, 0, w, h)

					surface.SetDrawColor(Colors.pureWhiteColor)
					surface.SetMaterial(def.icon)
					surface.DrawTexturedRect(0, 0, w, h)
				end

				surface.SetFont("PuristaBold14")

				local nameSize = surface.GetTextSize(def.displayName)
				local nameFont
				local tagFont
				local tagH

				if nameSize <= weaponHolder:GetWide() - EFGM.MenuScale(17) then nameFont = "PuristaBold18" tagFont = "PuristaBold14" tagH = EFGM.MenuScale(12)
				else nameFont = "PuristaBold14" tagFont = "PuristaBold10" tagH = EFGM.MenuScale(10) end

				local magFont = "PuristaBold18"
				local magSizeY = EFGM.MenuScale(19)
				if def.sizeX <= 2 then magFont = "PuristaBold14" magSizeY = EFGM.MenuScale(15) end

				function weaponHolder:PaintOver(w, h)
					draw.SimpleTextOutlined(def.displayName, nameFont, w - EFGM.MenuScale(3), EFGM.MenuScale(-1), Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

					if def.caliber then
						draw.SimpleTextOutlined(def.caliber, magFont, EFGM.MenuScale(3), h - magSizeY, Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
					end

					if killedByWeapon.data and killedByWeapon.data.tag then
						draw.SimpleTextOutlined(killedByWeapon.data.tag, tagFont, w - EFGM.MenuScale(3), tagH, Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
					end
				end

				local weaponText = vgui.Create("DPanel", killerHolder)
				weaponText:SetSize(EFGM.MenuScale(120), EFGM.MenuScale(30))
				weaponText:SetPos(EFGM.MenuScale(5), weaponHolder:GetY() - EFGM.MenuScale(30))

				function weaponText:Paint(w, h)
					surface.SetDrawColor(Colors.containerBackgroundColor)
					surface.DrawRect(0, 0, w, h)

					surface.SetDrawColor(Colors.transparentWhiteColor)
					surface.DrawRect(0, 0, EFGM.MenuScale(220), EFGM.MenuScale(2))

					draw.SimpleTextOutlined("KILLED WITH", "PuristaBold24", w / 2, EFGM.MenuScale(2), Colors.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
				end

				function weaponHolder:OnCursorEntered()
					surface.PlaySound("ui/inv_item_hover_" .. math.random(1, 3) .. ".wav")
				end

				function weaponHolder:DoClick()
					HUDInspectItem(killedByWeapon.name, killedByWeapon.data, deathPopup)
					surface.PlaySound("ui/element_select.wav")
				end
			end
		end

		if Tracking.inRaidLength then
			mapPanel = vgui.Create("DPanel", deathPopup)
			mapPanel:SetSize(EFGM.MenuScale(800), EFGM.MenuScale(800))
			mapPanel:SetPos(deathPopup:GetWide() / 2 + EFGM.MenuScale(10), EFGM.MenuScale(140))
			mapPanel:SetPaintBackground(false)

			local mapRawName = game.GetMap()
			local mapOverhead = Material("maps/" .. mapRawName .. ".png", "smooth")

			local mapSizeX = EFGM.MenuScale(800)
			local mapSizeY = EFGM.MenuScale(800)

			if mapOverhead then
				mapSizeX = EFGM.MenuScale(mapOverhead:Width())
				mapSizeY = EFGM.MenuScale(mapOverhead:Height())
			end

			local mapHolder = vgui.Create("DPanel", mapPanel)
			mapHolder:SetSize(EFGM.MenuScale(800), EFGM.MenuScale(800))
			mapHolder:Dock(FILL)

			function mapHolder:Paint(w, h)
				BlurPanel(self, 5)
			end

			function mapHolder:PaintOver(w, h)
				surface.SetDrawColor(Color(255, 255, 255, 25))
				surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
				surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
				surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
				surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)
			end

			local xDiff = EFGM.MenuScale(800) / mapSizeX
			local yDiff = EFGM.MenuScale(800) / mapSizeY

			local minZoom = math.max(xDiff, yDiff)

			if yDiff > xDiff and mapSizeX > mapSizeY then minZoom = math.min(xDiff, yDiff) end

			local map = vgui.Create("EMap", mapHolder)
			map:SetSize(mapSizeX, mapSizeY)
			map:SetMouseInputEnabled(true)
			map:SetCursor("crosshair")
			map.Zoom = minZoom
			map.MinZoom = minZoom
			map.MaxZoom = 2.5
			map.MapHolderX, map.MapHolderY = mapHolder:GetSize()

			map.DrawRaidInfo = true
			map.DrawFullInfo = false

			map.MapSizeX = mapSizeX
			map.MapSizeY = mapSizeY

			map.MapInfo = MAPINFO[mapRawName]
			map.OverheadImage = mapOverhead

			map:ClampPanOffset()
		end
	end)
end)

-- extracat overview
net.Receive("CreateExtractionInformation", function()
	hook.Run("efgm_raid_exit", true)

	local xpMult = net.ReadFloat()
	local timeInRaid = net.ReadUInt(12)

	local statsTbl = {
		["DAMAGE DEALT:"] = math.Round(LocalPlayer():GetNWInt("RaidDamageDealt", 0)),
		["DAMAGE RECEIVED FROM OPERATORS:"] = math.Round(LocalPlayer():GetNWInt("RaidDamageRecievedPlayers", 0)),
		["DAMAGE RECEIVED FROM FALLING:"] = math.Round(LocalPlayer():GetNWInt("RaidDamageRecievedFalling", 0)),
		["DAMAGE RECEIVED FROM YOURSELF:"] = math.Round(LocalPlayer():GetNWInt("RaidDamageRecievedSelf", 0)),
		["DAMAGE RECEIVED:"] = math.Round(LocalPlayer():GetNWInt("RaidDamageRecievedPlayers", 0) + LocalPlayer():GetNWInt("RaidDamageRecievedFalling", 0) + LocalPlayer():GetNWInt("RaidDamageRecievedSelf", 0)),
		["HEALTH HEALED:"] = math.Round(LocalPlayer():GetNWInt("RaidHealthHealed", 0)),
		["ITEMS LOOTED:"] = LocalPlayer():GetNWInt("RaidItemsLooted", 0),
		["CONTAINERS OPENED:"] = LocalPlayer():GetNWInt("RaidContainersLooted", 0),
		["OPERATORS KILLED:"] = LocalPlayer():GetNWInt("RaidKills", 0),
		["SHOTS FIRED:"] = LocalPlayer():GetNWInt("RaidShotsFired", 0),
		["SHOTS HIT:"] = LocalPlayer():GetNWInt("RaidShotsHit", 0),
	}
	table.SortByKey(statsTbl)

	local xpTime = net.ReadUInt(16)
	local xpCombat = net.ReadUInt(16)
	local xpExploration = net.ReadUInt(16)
	local xpLooting = net.ReadUInt(16)
	local xpBonus = net.ReadUInt(16)

	local minutes = math.floor(timeInRaid / 60)
	local seconds = timeInRaid % 60

	local totalXPRaw = xpTime + xpCombat + xpExploration + xpLooting + xpBonus
	local totalXPReal = math.Round(totalXPRaw * xpMult, 0)

	if IsValid(HUD.ELEMENTS.ExtractPostScreen) then return end

	local rewardsPanel = nil
	local mapPanel = nil
	local respawnButton = nil

	local extractDocker = vgui.Create("DPanel", GetHUDPanel())
	extractDocker:SetSize(ScrW(), ScrH())
	extractDocker:SetPos(0, 0)
	extractDocker:SetAlpha(0)
	extractDocker:AlphaTo(255, 0.2, 0, nil)

	function extractDocker:Paint(w, h)
		BlurPanel(self, 6, 4)

		surface.SetDrawColor(Color(10, 10, 10, 205))
		surface.DrawRect(0, 0, w, h)
	end

	local extractionPopup = vgui.Create("DPanel", extractDocker)
	HUD.ELEMENTS.ExtractPostScreen = extractionPopup

	extractionPopup:SetSize(ScrW(), ScrH())
	extractionPopup:SetPos(0, 0)
	extractionPopup:SetAlpha(0)
	extractionPopup:AlphaTo(255, 0.2, 0, nil)
	extractionPopup:MakePopup()
	extractionPopup:SetMouseInputEnabled(true)
	extractionPopup:SetKeyboardInputEnabled(true)

	function extractionPopup:OnRemove()
		HUD.ELEMENTS.ExtractPostScreen = nil
	end

	function extractionPopup:Paint(w, h)
		draw.SimpleTextOutlined("EXTRACTED", "PuristaBold64", w / 2, EFGM.MenuScale(35), Color(0, 255, 0, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.whiteColor)
		draw.SimpleTextOutlined(string.format("%02d:%02d", minutes, seconds) .. " TIME IN RAID", "PuristaBold22", w / 2, EFGM.MenuScale(90), Colors.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

		self.MouseX, self.MouseY = self:LocalCursorPos()

		if parallaxCVar:GetBool() then
			self.ParallaxX = math.Clamp(((self.MouseX / math.Round(EFGM.MenuScale(1920), 1)) - 0.5) * EFGM.MenuScale(20), -10, 10)
			self.ParallaxY = math.Clamp(((self.MouseY / math.Round(EFGM.MenuScale(1080), 1)) - 0.5) * EFGM.MenuScale(20), -10, 10)

			self:SetPos(0 + self.ParallaxX, 0 + self.ParallaxY)
		else
			self.ParallaxX = 0
			self.ParallaxY = 0

			self:SetPos(0, 0)
		end

		if mapPanel then
			if rewardsPanel then rewardsPanel:SetX(self:GetWide() / 2 - EFGM.MenuScale(660)) end
			if mapPanel then mapPanel:SetX(self:GetWide() / 2 - EFGM.MenuScale(140)) end
			if respawnButton then respawnButton:SetWide(EFGM.MenuScale(1320)) end
		else
			if rewardsPanel then rewardsPanel:SetX(self:GetWide() / 2 - EFGM.MenuScale(250)) end
			if respawnButton then respawnButton:SetWide(EFGM.MenuScale(500)) end
		end

		if respawnButton then respawnButton:SetX(ScrW() / 2 - respawnButton:GetWide() / 2) end
	end

	surface.PlaySound("storytask_end.wav")

	respawnButton = vgui.Create("DButton", extractionPopup)
	respawnButton:SetSize(EFGM.MenuScale(1020), EFGM.MenuScale(50))
	respawnButton:SetPos(ScrW() / 2 - EFGM.MenuScale(510), extractionPopup:GetTall() - EFGM.MenuScale(100))
	respawnButton:SetText("")

	function respawnButton:Paint(w, h)
		surface.SetDrawColor(Color(80, 80, 80, 10))
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(Colors.transparentWhiteColor)
		surface.DrawRect(0, 0, self:GetWide(), EFGM.MenuScale(2))

		draw.SimpleTextOutlined("CLOSE", "PuristaBold32", w / 2, EFGM.MenuScale(7), Colors.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
	end

	function respawnButton:DoClick()
		surface.PlaySound("ui/element_select.wav")
		extractDocker:AlphaTo(0, 0.1, 0, function() extractDocker:Remove() end)
	end

	rewardsPanel = vgui.Create("DPanel", extractionPopup)
	rewardsPanel:SetSize(EFGM.MenuScale(500), EFGM.MenuScale(800))
	rewardsPanel:SetPos(extractionPopup:GetWide() / 2 - EFGM.MenuScale(255), EFGM.MenuScale(140))

	function rewardsPanel:Paint(w, h)
		BlurPanel(self, 3)

		surface.SetDrawColor(Color(80, 80, 80, 10))
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(Color(255, 255, 255, 25))
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)
	end

	local statsPanel = vgui.Create("DPanel", rewardsPanel)
	statsPanel:SetSize(0, EFGM.MenuScale(500))
	statsPanel:Dock(TOP)
	statsPanel:DockMargin(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5))

	function statsPanel:Paint(w, h)
		surface.SetDrawColor(Color(80, 80, 80, 10))
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(Colors.transparentWhiteColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(6))

		surface.SetDrawColor(Color(255, 255, 255, 10))
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)
	end

	local statsText = vgui.Create("DPanel", statsPanel)
	statsText:Dock(TOP)
	statsText:SetSize(0, EFGM.MenuScale(36))

	function statsText:Paint(w, h)
		surface.SetDrawColor(Color(155, 155, 155, 10))
		surface.DrawRect(0, 0, w, h)

		draw.SimpleTextOutlined("STATS", "PuristaBold32", EFGM.MenuScale(5), EFGM.MenuScale(2), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
	end

	local statsHolder = vgui.Create("DPanel", statsPanel)
	statsHolder:Dock(FILL)
	statsHolder:DockMargin(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5))
	statsHolder:SetSize(0, 0)

	function statsHolder:Paint(w, h)
		local num = 0

		for k, v in pairs(statsTbl) do
			if v == 0 then continue end

			draw.SimpleTextOutlined(k, "PuristaBold24", EFGM.MenuScale(3), EFGM.MenuScale(22) * num, Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
			draw.SimpleTextOutlined(v, "PuristaBold24", w - EFGM.MenuScale(3), EFGM.MenuScale(22) * num, Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

			num = num + 1
		end
	end

	local levelingPanel = vgui.Create("DPanel", rewardsPanel)
	levelingPanel:SetSize(0, EFGM.MenuScale(285))
	levelingPanel:Dock(TOP)
	levelingPanel:DockMargin(EFGM.MenuScale(5), 0, EFGM.MenuScale(5), EFGM.MenuScale(5))

	function levelingPanel:Paint(w, h)
		surface.SetDrawColor(Color(80, 80, 80, 10))
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(Colors.transparentWhiteColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(6))

		surface.SetDrawColor(Color(255, 255, 255, 10))
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)
	end

	local levelingText = vgui.Create("DPanel", levelingPanel)
	levelingText:Dock(TOP)
	levelingText:SetSize(0, EFGM.MenuScale(36))

	function levelingText:Paint(w, h)
		surface.SetDrawColor(Color(155, 155, 155, 10))
		surface.DrawRect(0, 0, w, h)

		draw.SimpleTextOutlined("LEVELING", "PuristaBold32", EFGM.MenuScale(5), EFGM.MenuScale(2), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
	end

	local levelingHolder = vgui.Create("DPanel", levelingPanel)
	levelingHolder:Dock(FILL)
	levelingHolder:DockMargin(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5))
	levelingHolder:SetSize(0, 0)

	function levelingHolder:Paint(w, h)
		draw.SimpleTextOutlined("TIME: ", "PuristaBold24", EFGM.MenuScale(3), 0, Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
		draw.SimpleTextOutlined(xpTime .. "XP", "PuristaBold24", w - EFGM.MenuScale(3), 0, Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

		draw.SimpleTextOutlined("COMBAT: ", "PuristaBold24", EFGM.MenuScale(3), EFGM.MenuScale(22), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
		draw.SimpleTextOutlined(xpCombat .. "XP", "PuristaBold24", w - EFGM.MenuScale(3), EFGM.MenuScale(22), Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

		draw.SimpleTextOutlined("EXPLORATION: ", "PuristaBold24", EFGM.MenuScale(3), EFGM.MenuScale(44), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
		draw.SimpleTextOutlined(xpExploration .. "XP", "PuristaBold24", w - EFGM.MenuScale(3), EFGM.MenuScale(44), Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

		draw.SimpleTextOutlined("LOOTING: ", "PuristaBold24", EFGM.MenuScale(3), EFGM.MenuScale(66), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
		draw.SimpleTextOutlined(xpLooting .. "XP", "PuristaBold24", w - EFGM.MenuScale(3), EFGM.MenuScale(66), Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

		draw.SimpleTextOutlined("BONUS: ", "PuristaBold24", EFGM.MenuScale(3), EFGM.MenuScale(88), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
		draw.SimpleTextOutlined(xpBonus .. "XP", "PuristaBold24", w - EFGM.MenuScale(3), EFGM.MenuScale(88), Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

		draw.SimpleTextOutlined("TOTAL: ", "PuristaBold24", EFGM.MenuScale(3), EFGM.MenuScale(120), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
		draw.SimpleTextOutlined(totalXPRaw .. "XP", "PuristaBold24", w - EFGM.MenuScale(3), EFGM.MenuScale(120), Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

		draw.SimpleTextOutlined("MULTIPLIER: ", "PuristaBold24", EFGM.MenuScale(3), EFGM.MenuScale(142), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
		draw.SimpleTextOutlined(xpMult .. "x", "PuristaBold24", w - EFGM.MenuScale(3), EFGM.MenuScale(142), Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

		draw.SimpleTextOutlined("FINAL XP: ", "PuristaBold24", EFGM.MenuScale(3), EFGM.MenuScale(174), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
		draw.SimpleTextOutlined("+" .. totalXPReal .. "XP", "PuristaBold24", w - EFGM.MenuScale(3), EFGM.MenuScale(174), Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

		draw.SimpleTextOutlined(LocalPlayer():GetNWInt("Level", 1), "PuristaBold24", EFGM.MenuScale(5), h - EFGM.MenuScale(40), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
		draw.SimpleTextOutlined(LocalPlayer():GetNWInt("Level", 1) + 1, "PuristaBold24", w - EFGM.MenuScale(5), h - EFGM.MenuScale(40), Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

		draw.SimpleTextOutlined(LocalPlayer():GetNWInt("Experience", 0) .. "/" .. LocalPlayer():GetNWInt("ExperienceToNextLevel", 500), "PuristaBold16", EFGM.MenuScale(30), h - EFGM.MenuScale(33), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

		surface.SetDrawColor(30, 30, 30, 125)
		surface.DrawRect(EFGM.MenuScale(5), h - EFGM.MenuScale(15), EFGM.MenuScale(470), EFGM.MenuScale(10))

		surface.SetDrawColor(255, 255, 255, 175)
		surface.DrawRect(EFGM.MenuScale(5), h - EFGM.MenuScale(15), (LocalPlayer():GetNWInt("Experience", 0) / LocalPlayer():GetNWInt("ExperienceToNextLevel", 500)) * EFGM.MenuScale(470), EFGM.MenuScale(10))
	end

	if Tracking.inRaidLength then
		mapPanel = vgui.Create("DPanel", extractionPopup)
		mapPanel:SetSize(EFGM.MenuScale(800), EFGM.MenuScale(800))
		mapPanel:SetPos(extractionPopup:GetWide() / 2 + EFGM.MenuScale(10), EFGM.MenuScale(140))
		mapPanel:SetPaintBackground(false)

		local mapRawName = game.GetMap()
		local mapOverhead = Mats.curMapOverhad

		local mapSizeX = EFGM.MenuScale(800)
		local mapSizeY = EFGM.MenuScale(800)

		if mapOverhead then
			mapSizeX = EFGM.MenuScale(mapOverhead:Width())
			mapSizeY = EFGM.MenuScale(mapOverhead:Height())
		end

		local mapHolder = vgui.Create("DPanel", mapPanel)
		mapHolder:SetSize(EFGM.MenuScale(800), EFGM.MenuScale(800))
		mapHolder:Dock(FILL)

		function mapHolder:Paint(w, h)
			BlurPanel(self, 5)
		end

		function mapHolder:PaintOver(w, h)
			surface.SetDrawColor(Color(255, 255, 255, 25))
			surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
			surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
			surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
			surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)
		end

		local xDiff = EFGM.MenuScale(800) / mapSizeX
		local yDiff = EFGM.MenuScale(800) / mapSizeY

		local minZoom = math.max(xDiff, yDiff)

		if yDiff > xDiff and mapSizeX > mapSizeY then minZoom = math.min(xDiff, yDiff) end

		local map = vgui.Create("EMap", mapHolder)
		map:SetSize(mapSizeX, mapSizeY)
		map:SetMouseInputEnabled(true)
		map:SetCursor("crosshair")
		map.Zoom = minZoom
		map.MinZoom = minZoom
		map.MaxZoom = 2.5
		map.MapHolderX, map.MapHolderY = mapHolder:GetSize()

		map.DrawRaidInfo = true
		map.DrawFullInfo = false

		map.MapSizeX = mapSizeX
		map.MapSizeY = mapSizeY

		map.MapInfo = MAPINFO[mapRawName]
		map.OverheadImage = mapOverhead

		map:ClampPanOffset()
	end
end)

function HUDInspectItem(item, data, panel)
	if IsValid(HUD.ELEMENTS.ItemInspect) then HUD.ELEMENTS.ItemInspect:Remove() end

	local i = EFGMITEMS[item]
	if i == nil then return end

	surface.SetFont("PuristaBold24")
	local itemNameText = string.upper(i.fullName)
	local itemNameSize = surface.GetTextSize(itemNameText)

	local value = i.value
	local weight = i.weight

	if data and data.att then
		local atts = GetPrefixedAttachmentListFromCode(data.att)
		if !atts then return end

		for _, a in ipairs(atts) do
			local att = EFGMITEMS[a]
			if att == nil then continue end

			value = value + att.value
			weight = weight + att.weight
		end
	end

	local ownerName = nil
	if data.owner then
		ownerName = EFGM.SteamNameCache[data.owner]
		if !ownerName then
			steamworks.RequestPlayerInfo(data.owner, function(steamName) ownerName = steamName or "" EFGM.SteamNameCache[data.owner] = steamName or "" end)
		end
	end

	local taggedByName = nil
	if data.taggedBy then
		taggedByName = EFGM.SteamNameCache[data.taggedBy]
		if !taggedByName then
			steamworks.RequestPlayerInfo(data.taggedBy, function(steamName) taggedByName = steamName or "" EFGM.SteamNameCache[data.taggedBy] = steamName or "" end)
		end
	end

	surface.SetFont("PuristaBold18")
	local itemDescText = string.upper(i.displayType) .. " / " .. string.upper(weight) .. "KG" .. " / ₽" .. string.upper(string.FormatComma(value))
	if i.canPurchase == true or i.canPurchase == nil then itemDescText = itemDescText .. " / LEVEL " .. i.levelReq else itemDescText = itemDescText .. " / FIR ONLY" end
	local itemDescSize = surface.GetTextSize(itemDescText)

	local iconSizeX = EFGM.MenuScale(114 * i.sizeX)

	local panelWidth
	if iconSizeX >= itemNameSize then panelWidth = iconSizeX else panelWidth = itemNameSize end
	if itemDescSize + EFGM.MenuScale(8) >= panelWidth then panelWidth = itemDescSize + EFGM.MenuScale(8) end

	local originalWidth, originalHeight = EFGM.MenuScale(114 * i.sizeX), EFGM.MenuScale(114 * i.sizeY)
	local scaleFactor
	local targetMaxDimension = math.min(panelWidth, i.sizeX * 200)

	if originalWidth > originalHeight then
		scaleFactor = targetMaxDimension / originalWidth
	else
		scaleFactor = targetMaxDimension / originalHeight
	end

	local newPanelWidth = math.Round(originalWidth * scaleFactor)
	local newPanelHeight = math.Round(originalHeight * scaleFactor)

	local inspectPanel = vgui.Create("DFrame", panel)
	HUD.ELEMENTS.ItemInspect = inspectPanel

	inspectPanel:SetSize(panelWidth + EFGM.MenuScale(40), newPanelHeight + EFGM.MenuScale(100))
	inspectPanel:Center()
	inspectPanel:SetAlpha(0)
	inspectPanel:SetTitle("")
	inspectPanel:ShowCloseButton(false)
	inspectPanel:SetScreenLock(true)
	inspectPanel:AlphaTo(255, 0.1, 0, nil)

	function inspectPanel:OnRemove()
		HUD.ELEMENTS.ItemInspect = nil
	end

	function inspectPanel:Paint(w, h)
		BlurPanel(self, 3)

		surface.SetDrawColor(Color(20, 20, 20, 205))
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(Colors.transparentWhiteColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(6))

		surface.SetDrawColor(Colors.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

		draw.SimpleTextOutlined(itemNameText, "PuristaBold24", EFGM.MenuScale(5), EFGM.MenuScale(5), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
		draw.SimpleTextOutlined(itemDescText, "PuristaBold18", EFGM.MenuScale(5), EFGM.MenuScale(25), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

		if data.tag then
			draw.SimpleTextOutlined(data.tag, "PuristaBold14", EFGM.MenuScale(5), EFGM.MenuScale(40), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
		end

		surface.SetDrawColor(Colors.pureWhiteColor)
		surface.SetMaterial(i.icon)

		-- panel width = 198, panel height = 216
		local x = inspectPanel:GetWide() / 2 - (newPanelWidth / 2)
		local y = inspectPanel:GetTall() / 2 - (newPanelHeight / 2)

		surface.DrawTexturedRect(x, y, newPanelWidth, newPanelHeight)
	end

	local itemPullOutPanel = vgui.Create("DPanel", inspectPanel)
	itemPullOutPanel:SetSize(inspectPanel:GetWide(), inspectPanel:GetTall() - EFGM.MenuScale(85))
	itemPullOutPanel:SetPos(0, inspectPanel:GetTall() - 1)
	itemPullOutPanel:Hide()

	function itemPullOutPanel:Paint(w, h)
		BlurPanel(self, 1)

		surface.SetDrawColor(Color(20, 20, 20, 205))
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(Colors.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)
	end

	surface.SetFont("PuristaBold24")
	local infoText = "INFO"
	local infoTextSize = surface.GetTextSize(infoText)

	local itemInfoButton = vgui.Create("DButton", inspectPanel)
	itemInfoButton:SetPos(EFGM.MenuScale(1), itemPullOutPanel:GetY() - EFGM.MenuScale(28))
	itemInfoButton:SetSize(infoTextSize + EFGM.MenuScale(10), EFGM.MenuScale(28))
	itemInfoButton:SetText("")

	function itemInfoButton:Paint(w, h)
		self:SetY(itemPullOutPanel:GetY() - EFGM.MenuScale(28))

		surface.SetDrawColor(Color(80, 80, 80, 10))
		surface.DrawRect(0, 0, infoTextSize + EFGM.MenuScale(10), h)

		surface.SetDrawColor(Colors.transparentWhiteColor)
		if !self:IsHovered() then surface.DrawRect(0, 0, infoTextSize + EFGM.MenuScale(10), EFGM.MenuScale(2)) else surface.DrawRect(0, 0, infoTextSize + EFGM.MenuScale(10), EFGM.MenuScale(3)) end

		draw.SimpleTextOutlined(infoText, "PuristaBold24", EFGM.MenuScale(5), EFGM.MenuScale(2), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
	end

	surface.SetFont("PuristaBold24")
	local wikiText = "WIKI"
	local wikiTextSize = surface.GetTextSize(wikiText)

	local itemWikiButton = vgui.Create("DButton", inspectPanel)
	itemWikiButton:SetPos(itemInfoButton:GetWide() + EFGM.MenuScale(1), itemPullOutPanel:GetY() - EFGM.MenuScale(28))
	itemWikiButton:SetSize(wikiTextSize + EFGM.MenuScale(10), EFGM.MenuScale(28))
	itemWikiButton:SetText("")

	function itemWikiButton:Paint(w, h)
		self:SetY(itemPullOutPanel:GetY() - EFGM.MenuScale(28))

		surface.SetDrawColor(Color(80, 80, 80, 10))
		surface.DrawRect(0, 0, wikiTextSize + EFGM.MenuScale(10), h)

		surface.SetDrawColor(Colors.transparentWhiteColor)
		if !self:IsHovered() then surface.DrawRect(0, 0, infoTextSize + EFGM.MenuScale(10), EFGM.MenuScale(2)) else surface.DrawRect(0, 0, infoTextSize + EFGM.MenuScale(10), EFGM.MenuScale(3)) end

		draw.SimpleTextOutlined(wikiText, "PuristaBold24", EFGM.MenuScale(5), EFGM.MenuScale(2), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
	end

	if !data or table.IsEmpty(data) then
		itemInfoButton:Remove()
		itemWikiButton:SetX(EFGM.MenuScale(1))
	end

	local pullOutContent = vgui.Create("DPanel", itemPullOutPanel)
	pullOutContent:Dock(FILL)
	pullOutContent:DockPadding(EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10))
	pullOutContent:SetAlpha(0)
	pullOutContent:SetPaintBackground(false)

	itemPullOutPanel.content = pullOutContent

	local tab
	local function OpenPullOutInfoTab()
		tab = "Info"

		local infoContent = vgui.Create("DPanel", itemPullOutPanel)
		infoContent:Dock(FILL)
		infoContent:DockPadding(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5))
		infoContent:SetAlpha(0)
		infoContent:SetPaintBackground(false)

		local infoContentText = vgui.Create("RichText", infoContent)
		infoContentText:Dock(FILL)
		infoContentText:SetVerticalScrollbarEnabled(true)
		infoContentText:InsertColorChange(255, 255, 255, 255)

		if ownerName then
			infoContentText:AppendText("OWNER: " .. ownerName .. "\n")
		end

		if data.timestamp then
			infoContentText:AppendText("AQUIRED AT: " .. os.date("%x, %I:%M:%S %p", data.timestamp) .. "\n")
		end

		if data.count != 0 and data.count != 1 and data.count != nil then
			infoContentText:AppendText("COUNT: " .. data.count .. "\n")
		end

		if data.durability then
			infoContentText:AppendText("DURABILITY: " .. data.durability .. "\n")
		end

		if data.tag and !data.tagLevel then
			infoContentText:AppendText("NAME TAG: " .. data.tag .. "\n")

			if data.taggedBy then
				infoContentText:AppendText("NAME TAG SET BY: " .. taggedByName .. "\n")
			end
		end

		if data.att then
			infoContentText:AppendText("ATTACHMENTS: \n" .. GetAttachmentListFromCode(data.att) .. "\n")
		end

		-- dog tag specific
		if data.tagLevel then
			infoContentText:AppendText("LEVEL: " .. data.tagLevel .. "\n")
		end

		if data.tagKiller then
			infoContentText:AppendText("KILLED BY: " .. data.tagKiller .. "\n")
		end

		if data.tagCauseOfDeath then
			local def = EFGMITEMS[data.tagCauseOfDeath]
			local cause = "Unknown"
			if data.tagCauseOfDeath == "Suicide" then cause = "Suicide" elseif def then cause = def.fullName .. " (" .. def.displayName .. ")" end
			infoContentText:AppendText("CAUSE OF DEATH: " .. cause .. "\n")
		end

		if data.tagWoundOrigin and data.tagWoundOrigin != 0 and HITGROUPS[data.tagWoundOrigin] != nil then
			infoContentText:AppendText("WOUND: " .. HITGROUPS[data.tagWoundOrigin] .. "\n")
		end

		function infoContentText:PerformLayout()
			infoContentText:SetFontInternal("PuristaBold18")
		end

		itemPullOutPanel.content = infoContent
	end

	local function OpenPullOutWikiTab()
		tab = "Wiki"

		local wikiContent = vgui.Create("DPanel", itemPullOutPanel)
		wikiContent:Dock(FILL)
		wikiContent:DockPadding(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5))
		wikiContent:SetAlpha(0)
		wikiContent:SetPaintBackground(false)

		local wikiContentText = vgui.Create("RichText", wikiContent)
		wikiContentText:Dock(FILL)
		wikiContentText:SetVerticalScrollbarEnabled(true)
		wikiContentText:InsertColorChange(255, 255, 255, 255)

		local wep = table.Copy(weapons.Get(item))

		if i.fullName and i.displayName then
			wikiContentText:AppendText("NAME: " .. i.fullName .. " (" .. i.displayName .. ")" .. "\n")
		end

		if i.description then
			wikiContentText:AppendText("DESCRIPTION: " .. i.description .. "\n")
		elseif wep != nil and wep["Description"] then
			wikiContentText:AppendText("DESCRIPTION: " .. wep["Description"] .. "\n")
		end

		if i.displayType then
			wikiContentText:AppendText("TYPE: " .. i.displayType .. "\n")
		end

		if i.weight then
			wikiContentText:AppendText("BASE WEIGHT: " .. i.weight .. "kg" .. "\n")
		end

		if i.value then
			wikiContentText:AppendText("BASE VALUE: ₽" .. string.FormatComma(i.value) .. "\n")
		end

		if i.lootWeight then
			wikiContentText:AppendText("LOOT WEIGHT: " .. i.lootWeight .. "%" .. "\n")
		else
			wikiContentText:AppendText("LOOT WEIGHT: 100%" .. "\n")
		end

		if i.canPurchase == true or i.canPurchase == nil then
			if i.levelReq then
				wikiContentText:AppendText("CAN PURCHASE FROM MARKET: TRUE" .. "\n")
				wikiContentText:AppendText("UNLOCKS AT: LEVEL " .. i.levelReq .. "\n")
			end
		else
			wikiContentText:AppendText("CAN PURCHASE FROM MARKET: " .. string.upper(tostring(i.canPurchase)) .. "\n")
		end

		if i.sizeX and i.sizeY then
			wikiContentText:AppendText("SIZE: " .. i.sizeX .. "x" .. i.sizeY .. "\n")
		end

		if i.stackSize then
			wikiContentText:AppendText("STACK SIZE: " .. i.stackSize  .. "\n")
		end

		if i.equipType == EQUIPTYPE.Weapon and wep != nil then
			wikiContentText:AppendText("\n")

			local firemodes = wep["Firemodes"] or nil
			local damageMax = math.Round(wep["DamageMax"] or 0) or nil
			local damageMin = math.Round(wep["DamageMin"] or 0) or nil
			local rpm = math.Round(wep["RPM"] or 0) or nil
			local range = math.Round((wep["RangeMax"] or 0) * 0.0254) or nil
			local velocity = math.Round(((wep["PhysBulletMuzzleVelocity"] or 0) * 0.0254) * 1.2) or nil
			local tracerSize = math.Round(wep["TracerSize"] or 0, 2) or nil

			local recoilMult = math.Round(wep["Recoil"] or 1, 2) or 1
			local visualRecoilMult = math.Round(wep["VisualRecoil"] or 1, 2) or 1
			local recoilUp = math.Round((wep["RecoilUp"] or 0) * recoilMult, 2) or nil
			local recoilUpRand = math.Round((wep["RecoilRandomUp"] or 0) * recoilMult, 2) or nil
			local recoilSide = math.Round((wep["RecoilSide"] or 0) * recoilMult, 2) or nil
			local recoilSideRand = math.Round((wep["RecoilRandomSide"] or 0) * recoilMult, 2) or nil
			local visualRecoilUp = math.Round((wep["VisualRecoilUp"] or 0) * visualRecoilMult, 2) or nil
			local visualRecoilSide = math.Round((wep["VisualRecoilSide"] or 0) * visualRecoilMult, 2) or nil
			local visualRecoilDamping = math.Round(wep["VisualRecoilDampingConst"] or 0, 2) or nil
			local recoilRecovery = math.Round(wep["RecoilAutoControl"], 2) or nil
			local accuracy = math.Round((wep["Spread"] or 0) * 360 * 60 / 10, 2)
			local ergo = wep["EFTErgo"] or nil

			local manufacturer = ARC9:GetPhrase(wep["Trivia"]["eft_trivia_manuf1"]) or nil
			local country = ARC9:GetPhrase(wep["Trivia"]["eft_trivia_country4"]) or nil
			local year = wep["Trivia"]["eft_trivia_year5"] or nil

			if firemodes then
				local str = ""
				for k, v in pairs(firemodes) do
					if v.PrintName then
						str = str .. v.PrintName .. ", "
					else
						if v.Mode then
							if v.Mode == 0 then
								str = str .. "Safe" .. ", "
							elseif v.Mode < 0 then
								str = str .. "Auto" .. ", "
							elseif v.Mode == 1 then
								str = str .. "Single" .. ", "
							elseif v.Mode > 1 then
								str = str .. tostring(v.Mode) .. "-" .. "Burst" .. ", "
							end
						end
					end
				end

				str = string.sub(str, 1, string.len(str) - 2)

				wikiContentText:AppendText("FIRING MODES: " ..  str .. "\n")
			end

			if damageMax and damageMin then
				wikiContentText:AppendText("DAMAGE: " ..  damageMax .. " → " .. damageMin .. "\n")
			end

			if rpm then
				wikiContentText:AppendText("RPM: " ..  rpm .. "\n")
			end

			if range then
				wikiContentText:AppendText("RANGE: " ..  range .. "m" .. "\n")
			end

			if velocity then
				wikiContentText:AppendText("MUZZLE VELOCITY: " ..  velocity .. "m/s" .. "\n")
			end

			if tracerSize then
				wikiContentText:AppendText("TRACER SIZE: " ..  tracerSize .. "\n")
			end

			if recoilUp and recoilUpRand then
				wikiContentText:AppendText("VERTICAL RECOIL: " .. recoilUp .. " + " .. recoilUpRand .. "°" .. "\n")
			end

			if recoilSide and recoilSideRand then
				wikiContentText:AppendText("HORIZONTAL RECOIL: " .. recoilSide .. " + " .. recoilSideRand .. "°" .. "\n")
			end

			if visualRecoilUp then
				wikiContentText:AppendText("VISUAL VERTICAL RECOIL: " .. visualRecoilUp .. "\n")
			end

			if visualRecoilSide then
				wikiContentText:AppendText("VISUAL HORIZONTAL RECOIL: " .. visualRecoilSide .. "\n")
			end

			if visualRecoilDamping then
				wikiContentText:AppendText("VISUAL RECOIL DAMPING: " .. visualRecoilDamping .. "\n")
			end

			if recoilRecovery then
				wikiContentText:AppendText("RECOIL RECOVERY: " .. recoilRecovery .. "\n")
			end

			if accuracy and accuracy != 0 then
				wikiContentText:AppendText("ACCURACY: " .. accuracy .. " MOA" .. "\n")
			end

			if ergo and ergo != 0 then
				wikiContentText:AppendText("ERGONOMICS: " .. ergo .. "\n")
			end

			wikiContentText:AppendText("\n")

			if manufacturer then
				wikiContentText:AppendText("MANUFACTURER: " ..  manufacturer .. "\n")
			end

			if country then
				wikiContentText:AppendText("COUNTRY: " ..  country .. "\n")
			end

			if year then
				wikiContentText:AppendText("YEAR: " ..  year)
			end
		end

		if i.equipType == EQUIPTYPE.Consumable and wep != nil then
			wikiContentText:AppendText("\n")

			local delay = wep["ConsumableDelay"] or nil
			local time = wep["ConsumableTime"] or nil
			local usageValue = wep["ConsumableValue"] or nil
			local ticks = wep["ConsumableTicks"] or nil
			local range = wep["ConsumableRange"] or nil
			local dmgCancel = wep["DamageCancel"] or false

			if delay then
				wikiContentText:AppendText("DELAY: " ..  delay .. "\n")
			end

			if time then
				wikiContentText:AppendText("USE TIME: " ..  time .. "\n")
			end

			if usageValue then
				wikiContentText:AppendText("USAGE PER USE: " ..  usageValue .. "\n")
			end

			if ticks then
				wikiContentText:AppendText("TICKS PER USE: " ..  ticks .. "\n")
			end

			if range then
				wikiContentText:AppendText("APPLICATION RANGE ON OTHER PLAYERS: " ..  range .. "\n")
			end

			if dmgCancel != nil then
				wikiContentText:AppendText("CANCELLED ON DAMAGE TAKEN: " ..  string.upper(tostring(dmgCancel)) .. "\n")
			end
		end

		function wikiContentText:PerformLayout()
			wikiContentText:SetFontInternal("PuristaBold18")
		end

		itemPullOutPanel.content = wikiContent
	end

	function itemInfoButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function itemInfoButton:DoClick()
		if tab == "Info" then return end

		surface.PlaySound("ui/element_select.wav")

		itemPullOutPanel:Show()
		itemPullOutPanel:MoveTo(0, EFGM.MenuScale(85), 0.1, 0, 0.3)

		itemPullOutPanel.content:AlphaTo(0, 0.05, 0, function()
			itemPullOutPanel.content:Remove()
			OpenPullOutInfoTab()
			itemPullOutPanel.content:AlphaTo(255, 0.05, 0, nil)
		end)
	end

	function itemWikiButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function itemWikiButton:DoClick()
		if tab == "Wiki" then return end

		surface.PlaySound("ui/element_select.wav")

		itemPullOutPanel:Show()
		itemPullOutPanel:MoveTo(0, EFGM.MenuScale(85), 0.1, 0, 0.3)

		itemPullOutPanel.content:AlphaTo(0, 0.05, 0, function()
			itemPullOutPanel.content:Remove()
			OpenPullOutWikiTab()
			itemPullOutPanel.content:AlphaTo(255, 0.05, 0, nil)
		end)
	end

	function inspectPanel:OnMousePressed()
		itemPullOutPanel:MoveTo(0, self:GetTall() - 1, 0.1, 0, 0.3, function() itemPullOutPanel:Hide() end)

		tab = nil

		itemPullOutPanel.content:AlphaTo(0, 0.05, 0, nil)

		local screenX, screenY = self:LocalToScreen(0, 0)

		if (self.m_bSizable and gui.MouseX() > (screenX + self:GetWide() - 20) and gui.MouseY() > (screenY + self:GetTall() - 20)) then
			self.Sizing = {gui.MouseX() - self:GetWide(), gui.MouseY() - self:GetTall()}
			self:MouseCapture(true)

			return
		end

		if (self:GetDraggable() and gui.MouseY() < (screenY + 24)) then
			self.Dragging = {gui.MouseX() - self.x, gui.MouseY() - self.y}
			self:MouseCapture(true)

			return
		end
	end

	local closeButton = vgui.Create("DButton", inspectPanel)
	closeButton:SetSize(EFGM.MenuScale(32), EFGM.MenuScale(32))
	closeButton:SetPos(inspectPanel:GetWide() - EFGM.MenuScale(32), EFGM.MenuScale(5))
	closeButton:SetText("")

	function closeButton:Paint(w, h)
		surface.SetDrawColor(Colors.pureWhiteColor)
		surface.SetMaterial(Mats.closeButtonIcon)
		surface.DrawTexturedRect(0, 0, EFGM.MenuScale(32), EFGM.MenuScale(32))
	end

	function closeButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function closeButton:DoClick()
		inspectPanel:AlphaTo(0, 0.1, 0, function() inspectPanel:Remove() end)
	end
end

-- ads vignette
local adsProg
local sharpenIntensity = 10
local sharpenDistance = 1

hook.Add("RenderScreenspaceEffects", "Vignette", function()
	if !LocalPlayer():Alive() then return end

	local weapon = LocalPlayer():GetActiveWeapon()

	if type(weapon.GetSightAmount) == "function" then
		adsProg = weapon:GetSightAmount()
	else
		adsProg = 0
	end

	local texture = surface.GetTextureID("overlays/vignette")
	local mult = 1 + (adsProg * (-0.66 * 1))

	surface.SetTexture(texture)
	surface.SetDrawColor(255, 255, 255, 255)
	surface.DrawTexturedRect(0 - (ScrW() * mult), 0 - (ScrH() * mult), ScrW() * (1 + 2 * mult), ScrH() * (1 + 2 * mult))

	local hp = LocalPlayer():Health()
	local maxHP = LocalPlayer():GetMaxHealth()
	if hp <= 0 or maxHP <= 0 then return end

	-- sharpening begins at 25hp
	local intensity = 1 - math.Clamp((hp / maxHP) * 4, 0.66, 1)

	if intensity > 0 then
		local contrast = intensity * sharpenIntensity
		local distance = intensity * sharpenDistance

		DrawSharpen(contrast, distance)
	end
end)

function DrawTarget()
	if !LocalPlayer():Alive() then return false end
	if !LocalPlayer(): IsInHideout() then return false end

	local ent = LocalPlayer():GetEyeTrace().Entity
	if !IsValid(ent) then return false end
	if !ent:IsPlayer() then return false end

	RenderPlayerInfo(ent)
	return false
end
hook.Add("HUDDrawTargetID", "HidePlayerInfo", DrawTarget)

function DrawWeaponInfo()
	return false
end
hook.Add("HUDWeaponPickedUp", "WeaponPickedUp", DrawWeaponInfo)

function DrawAmmoInfo()
	return false
end
hook.Add("HUDAmmoPickedUp", "AmmoPickedUp", DrawAmmoInfo)

function DrawItemInfo()
	return false
end
hook.Add("HUDItemPickedUp", "ItemPickedUp", DrawItemInfo)

function HideHud(name)
	for k, v in pairs({"CHudHealth", "CHudBattery", "CHudAmmo", "CHudSecondaryAmmo", "CHudZoom", "CHudVoiceStatus", "CHudDamageIndicator", "CHUDQuickInfo", "CHudCrosshair", "CHudWeaponSelection"}) do
		if name == v then
			return false
		end
	end
end
hook.Add("HUDShouldDraw", "HideDefaultHud", HideHud)

-- disable scoreboard
hook.Add("ScoreboardShow", "DisableHL2Scoreboard", function() return true end)

-- hide voice chat panels
hook.Add("PlayerStartVoice", "ImageOnVoice", function(voipPly)
	if LocalPlayer() != voipPly then return true end
	hook.Add("HUDPaint", "VoiceIndicator", RenderVOIPIndicator)
	return true
end)

hook.Add("PlayerEndVoice", "ImageOnVoice", function()
	hook.Remove("HUDPaint", "VoiceIndicator")
end)

net.Receive("VoteableMaps", function(len)
	local maps = net.ReadTable(true)

	local map1 = maps[1]
	local map2 = maps[2]

	local map1Name = MAPNAMES[map1.name]
	local map2Name = MAPNAMES[map2.name]
	local map1Icon = Material("maps/icon_" .. map1.name .. "_" .. math.random(1, 5) .. ".png")
	local map2Icon = Material("maps/icon_" .. map2.name .. "_" .. math.random(1, 5) .. ".png")
	local map1Votes = 0
	local map2Votes = 0

	timer.Simple(40, function()
		if IsValid(HUD.ELEMENTS.Invite) then HUD.ELEMENTS.Invite:Remove() end
		if IsValid(HUD.ELEMENTS.MapVoting) then HUD.ELEMENTS.MapVoting:Remove() end

		local mapVote = vgui.Create("DPanel", GetHUDPanel())
		HUD.ELEMENTS.MapVoting = mapVote

		mapVote:SetSize(ScrW(), ScrH())
		mapVote:SetPos(0, 0)
		mapVote:SetAlpha(0)
		mapVote:MoveToFront()

		function mapVote:OnRemove()
			HUD.ELEMENTS.MapVoting = nil
		end

		surface.PlaySound("ui/invite_receive.wav")

		local time = CurTime() + 20

		local text = "VOTE FOR THE NEXT MAP!"
		surface.SetFont("BenderExfilTimer")
		local textSize = surface.GetTextSize(text) + EFGM.ScreenScale(10)

		local acceptBind = string.upper(input.GetKeyName(acceptCVar:GetInt()) or "N/A")
		local declineBind = string.upper(input.GetKeyName(declineCVar:GetInt()) or "N/A")

		function mapVote:Paint(w, h)
			if GetGlobalInt("MapVotes_1", 0) != 0 or GetGlobalInt("MapVotes_2", 0) != 0 then
				map1Votes = math.Round(GetGlobalInt("MapVotes_1", 0) / (GetGlobalInt("MapVotes_1", 0) + GetGlobalInt("MapVotes_2", 0)) * 100)
				map2Votes = math.Round(GetGlobalInt("MapVotes_2", 0) / (GetGlobalInt("MapVotes_2", 0) + GetGlobalInt("MapVotes_1", 0)) * 100)
			end

			BlurRect(EFGM.ScreenScale(20) + HUD.Padding, EFGM.ScreenScale(20), textSize, EFGM.ScreenScale(250), 4, 2)
			surface.SetDrawColor(Colors.hudBackground)
			surface.DrawRect(EFGM.ScreenScale(20) + HUD.Padding, EFGM.ScreenScale(20), textSize, EFGM.ScreenScale(250))

			surface.SetDrawColor(Colors.hudBackground)
			surface.DrawRect(EFGM.ScreenScale(20) + HUD.Padding, EFGM.ScreenScale(20), textSize, EFGM.ScreenScale(1))

			surface.SetDrawColor(Colors.transparentWhiteColor)
			surface.DrawRect(EFGM.ScreenScale(20) + HUD.Padding, EFGM.ScreenScale(20), ((time - CurTime()) / 20) * textSize, EFGM.ScreenScale(1))

			draw.SimpleText(text, "BenderExfilTimer", EFGM.ScreenScale(25) + HUD.Padding, EFGM.ScreenScale(21), Color(255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
			draw.SimpleText(string.upper("[" .. acceptBind .. "] " .. map1Name), "Bender24", EFGM.ScreenScale(25) + HUD.Padding, EFGM.ScreenScale(241), Color(255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
			draw.SimpleText(string.upper("[" .. declineBind .. "] " .. map2Name), "Bender24", EFGM.ScreenScale(185) + HUD.Padding, EFGM.ScreenScale(241), Color(255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)

			draw.SimpleText(map1Votes .. "%", "Bender18", EFGM.ScreenScale(25) + HUD.Padding, EFGM.ScreenScale(225), Color(255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
			draw.SimpleText(map2Votes .. "%", "Bender18", EFGM.ScreenScale(185) + HUD.Padding, EFGM.ScreenScale(225), Color(255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)

			surface.SetMaterial(map1Icon)
			surface.SetDrawColor(Colors.pureWhiteColor)
			surface.DrawTexturedRect(EFGM.ScreenScale(25) + HUD.Padding, EFGM.ScreenScale(75), EFGM.ScreenScale(150), EFGM.ScreenScale(150))

			surface.SetMaterial(map2Icon)
			surface.SetDrawColor(Colors.pureWhiteColor)
			surface.DrawTexturedRect(EFGM.ScreenScale(185) + HUD.Padding, EFGM.ScreenScale(75), EFGM.ScreenScale(150), EFGM.ScreenScale(150))
		end

		mapVote:AlphaTo(255, 0.1, 0, nil)
	end)
end)