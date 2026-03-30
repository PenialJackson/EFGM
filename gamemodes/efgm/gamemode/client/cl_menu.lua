EFGM.MENU = EFGM.MENU or {}

EFGM.MENU.ActiveTab = nil
EFGM.MENU.MouseX = 0
EFGM.MENU.MouseY = 0
EFGM.MENU.Player = LocalPlayer()
EFGM.MENU.PlayerHealth = 0
EFGM.MENU.Closing = false
EFGM.MENU.SwitchingTab = false
EFGM.MENU.IsOpen = false
EFGM.MENU.PerferredTab = nil
EFGM.MENU.PerferredShopDestination = nil

EFGM.MENU.StashFilter = 1
EFGM.MENU.MarketStashFilter = 1
EFGM.MENU.StashSort = 1
EFGM.MENU.StashSortOrder = false
EFGM.MENU.MarketStashSort = 1
EFGM.MENU.MarketStashSortOrder = false
EFGM.MENU.StashValue = 0

EFGM.MENU.DraggingType = nil
EFGM.MENU.BindTypes = {}

EFGM.MENU.ELEMENTS = {}

local math = math
local table = table
local net = net
local player = player
local timer = timer
local util = util

local holdtypes = {
	"idle_revolver",
	"idle_dual",
	"idle_rpg",
	"idle_passive",
	"idle_slam",
	"idle_camera",
	"idle_grenade",
	"idle_melee2",
	"idle_knife",
	"idle_magic",
	"pose_standing_01",
	"pose_standing_02",
	"pose_standing_03",
	"pose_standing_04"
}

local tabList = {
	["profile"] = {
		id = 1,
		inRaid = false
	},

	["map"] = {
		id = 2,
		inRaid = true
	},

	["inventory"] = {
		id = 3,
		inRaid = true
	},

	["market"] = {
		id = 4,
		inRaid = false
	},

	["tasks"] = {
		id = 5,
		inRaid = true
	},

	["skills"] = {
		id = 6,
		inRaid = false
	},

	["codex"] = {
		id = 7,
		inRaid = false
	},

	["locker"] = {
		id = 8,
		inRaid = false
	},

	["settings"] = {
		id = 9,
		inRaid = true
	}
}
EFGM.MENU.OpenTab = {}
local tabListCount = table.Count(tabList)

function EFGM.MENU:OpenTabFromActive()
	local active = EFGM.MENU.ActiveTab

	if active == "profile" then
		EFGM.MENU.OpenTab.Profile()
	elseif active == "map" then
		EFGM.MENU.OpenTab.Map()
	elseif active == "inventory" then
		EFGM.MENU.OpenTab.Inventory(EFGM.MENU.Container)
	elseif active == "market" then
		EFGM.MENU.OpenTab.Market()
	elseif active == "tasks" then
		EFGM.MENU.OpenTab.Tasks()
	elseif active == "skills" then
		EFGM.MENU.OpenTab.Skills()
	elseif active == "codex" then
		EFGM.MENU.OpenTab.Codex()
	elseif active == "locker" then
		EFGM.MENU.OpenTab.Locker()
	elseif active == "settings" then
		EFGM.MENU.OpenTab.Settings()
	end
end

function EFGM.MENU:ReloadSlots()
end

function EFGM.MENU:ReloadInventory()
end

function EFGM.MENU:ReloadContainer()
end

function EFGM.MENU:ReloadStash()
end

function EFGM.MENU:ReloadMarketStash()
end

local plyItems = {}
local plyStashItems = {}
local marketPlyStashItems = {}

-- filter name, filter icon, definition to filter by, value to use for inventory filtering
local filters = {
	[1] = {
		name = "All Items",
		icon = MATS.filterAllIcon,
		def = nil,
		value = nil,
		count = 0
	},
	[2] = {
		name = "Weapons",
		icon = MATS.filterWeaponsIcon,
		def = "equipType",
		value = 1,
		count = 0
	},
	[3] = {
		name = "Ammunition",
		icon = MATS.filterAmmunitionIcon,
		def = "equipType",
		value = 2,
		count = 0
	},
	[4] = {
		name = "Consumables",
		icon = MATS.filterConsumablesIcon,
		def = "equipType",
		value = 5,
		count = 0
	},
	[5] = {
		name = "Attachments",
		icon = MATS.filterAttachmentsIcon,
		def = "equipType",
		value = 6,
		count = 0
	},
	[6] = {
		name = "Keys",
		icon = MATS.filterKeysIcon,
		def = "equipType",
		value = 7,
		count = 0
	},
	[7] = {
		name = "Barter",
		icon = MATS.filterBarterIcon,
		def = "equipType",
		value = 8,
		count = 0
	}
}

-- sort name, sort icon for inventory sorting
local sorts = {
	[1] = {
		name = "Default Sorting",
		icon = MATS.sortDefaultIcon
	},
	[2] = {
		name = "Sort Alphabetically",
		icon = MATS.sortAlphaIcon
	},
	[3] = {
		name = "Sort By Value",
		icon = MATS.sortValueIcon
	},
	[4] = {
		name = "Sort By Level",
		icon = MATS.sortLevelIcon
	},
	[5] = {
		name = "Sort By Date Acquired",
		icon = MATS.sortTimeIcon
	},
	[6] = {
		name = "Sort By Attachment Count",
		icon = MATS.sortAttachIcon
	},
	[7] = {
		name = "Sort By Name Tag",
		icon = MATS.sortTagIcon
	}
}

hook.Add("OnReloaded", "MenuReload", function()
	if !IsValid(EFGM.MENU.MenuFrame) then return end
	EFGM.MENU.MenuFrame:Close()
end)

local menuBind = GetConVar("efgm_bind_menu")
local previousTabBind = GetConVar("efgm_bind_menu_tab_previous")
local nextTabBind = GetConVar("efgm_bind_menu_tab_next")

local parallaxCVar = GetConVar("efgm_menu_parallax")
local scalingCVar = GetConVar("efgm_menu_scalingmethod")
local sboxCVar = GetConVar("efgm_derivesbox")
local saveTabHideoutCVar = GetConVar("efgm_menu_savetab_hideout")
local saveTabRaidCVar = GetConVar("efgm_menu_savetab_raid")
local closeOnHitCVar = GetConVar("efgm_menu_closeonhit")

-- dont let players attack/ads/jump while in the menu
hook.Add("PlayerBindPress", "BlockBindsWhileInMenu", function(ply, bind, pressed)
	if EFGM.MENU.MenuFrame == nil then return end
	if EFGM.MENU.MenuFrame:IsActive() != true then return end

	if bind == "+attack" or bind == "+attack2" or bind == "+jump" then
		return true
	end
end)

hook.Add("OnPauseMenuShow", "DisableMenu", function()
	if EFGM.MENU.MenuFrame == nil then return true end
	if EFGM.MENU.MenuFrame:IsActive() == true then
		EFGM.MENU:RunOnClose()
		EFGM.MENU.MenuFrame:AlphaTo(0, 0.1, 0, function()
			EFGM.MENU.MenuFrame:Close()
		end)

		return false
	end
end)

function EFGM.MENU:RunOnClose()
	self.Closing = true
	if IsValid(self.MenuFrame) then
		self.MenuFrame:SetKeyboardInputEnabled(false)
		self.MenuFrame:SetMouseInputEnabled(false)
	end
	self.IsOpen = false
	self.PerferredTab = self.ActiveTab
end

function EFGM.MENU:Initialize(openTo, container)
	local menuFrame = vgui.Create("DFrame")
	menuFrame:SetSize(ScrW(), ScrH())
	menuFrame:Center()
	menuFrame:SetTitle("")
	menuFrame:SetVisible(true)
	menuFrame:SetDraggable(false)
	menuFrame:SetDeleteOnClose(false)
	menuFrame:ShowCloseButton(false)
	menuFrame:MakePopup()
	menuFrame:SetAlpha(0)
	menuFrame:NoClipping(true)
	menuFrame:MouseCapture(false)

	menuFrame:AlphaTo(255, 0.2, 0, function()
		if menuFrame:IsActive() then self.IsOpen = true end
	end)

	self.Player = LocalPlayer()
	self.Unblur = false
	self.Closing = false
	self.SwitchingTab = false
	self.PlayerHealth = EFGM.MENU.Player:Health()

	function menuFrame:Paint(w, h)
		if EFGM.MENU.Unblur then return end

		surface.SetDrawColor(COLORS.frameColor)
		surface.DrawRect(0, 0, ScrW(), ScrH())
		BlurPanel(self, 2, 2)
	end

	function menuFrame:OnKeyCodePressed(key)
		if key == previousTabBind:GetInt() then
			if tabList[EFGM.MENU.ActiveTab].id == 1 then return end

			local prevTab = EFGM.MENU.ActiveTab
			local prevID = tabList[prevTab].id
			local breakTab = false

			for tab = prevID - 1, 1, -1 do
				for k, v in pairs(tabList) do
					if tab != v.id then continue end
					if !EFGM.MENU.Player:IsInHideout() and v.inRaid == false then continue end

					EFGM.MENU.ActiveTab = k
					breakTab = true
					break
				end

				if breakTab then break end
			end

			if prevTab == EFGM.MENU.ActiveTab then return end

			surface.PlaySound("ui/element_select.wav")

			if EFGM.MENU.ActiveTab == "map" then
				net.Start("RemovePlayerSquadRF")
				net.SendToServer()
			end

			EFGM.MENU.SwitchingTab = true

			EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(0, 0.05, 0, function()
				EFGM.MENU.MenuFrame.LowerPanel.Contents:Remove()
				EFGM.MENU:OpenTabFromActive()
				EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(255, 0.05, 0, function()
					EFGM.MENU.SwitchingTab = false
				end)
			end)
		end

		if key == nextTabBind:GetInt() then
			if tabList[EFGM.MENU.ActiveTab].id == tabListCount then return end

			local prevTab = EFGM.MENU.ActiveTab
			local prevID = tabList[prevTab].id
			local breakTab = false

			for tab = prevID + 1, tabListCount do
				for k, v in pairs(tabList) do
					if tab != v.id then continue end
					if !EFGM.MENU.Player:IsInHideout() and v.inRaid == false then continue end

					EFGM.MENU.ActiveTab = k
					breakTab = true
					break
				end

				if breakTab then break end
			end

			if prevTab == EFGM.MENU.ActiveTab then return end

			surface.PlaySound("ui/element_select.wav")

			if EFGM.MENU.ActiveTab == "map" then
				net.Start("RemovePlayerSquadRF")
				net.SendToServer()
			end

			EFGM.MENU.SwitchingTab = true

			EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(0, 0.05, 0, function()
				EFGM.MENU.MenuFrame.LowerPanel.Contents:Remove()
				EFGM.MENU:OpenTabFromActive()
				EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(255, 0.05, 0, function()
					EFGM.MENU.SwitchingTab = false
				end)
			end)
		end
	end

	function menuFrame:OnKeyCodeReleased(key)
		if key == menuBind:GetInt() then
			EFGM.MENU:RunOnClose()
			menuFrame:AlphaTo(0, 0.1, 0, function()
				menuFrame:Close()
			end)
		end
	end

	function menuFrame:Think()
		if gui.IsGameUIVisible() or gui.IsConsoleVisible() then
			if EFGM.MENU.ActiveTab == "map" then
				net.Start("RemovePlayerSquadRF")
				net.SendToServer()
			end

			EFGM.MENU:RunOnClose()
			menuFrame:Close()
		end

		if EFGM.MENU.Player:Health() > EFGM.MENU.PlayerHealth then
			EFGM.MENU.PlayerHealth = EFGM.MENU.Player:Health()
		elseif closeOnHitCVar:GetBool() and EFGM.MENU.Player:Health() < EFGM.MENU.PlayerHealth then
			EFGM.MENU:RunOnClose()
			menuFrame:AlphaTo(0, 0.03, 0, function()
				menuFrame:Close()
			end)
		end
	end

	function menuFrame:OnClose()
		EFGM.MENU.PerferredShopDestination = nil
		EFGM.MENU.Closing = true
		EFGM.MENU.IsOpen = false
		EFGM.MENU.ActiveTab = nil

		if EFGM.MENU.ActiveTab == "map" then
			net.Start("RemovePlayerSquadRF")
			net.SendToServer()
		end

		function EFGM.MENU:ReloadSlots()
		end

		function EFGM.MENU:ReloadInventory()
		end

		function EFGM.MENU:ReloadContainer()
		end

		function EFGM.MENU:ReloadStash()
		end

		function EFGM.MENU:ReloadMarketStash()
		end
	end

	self.MenuFrame = menuFrame
	self.Container = container

	local tooltip = vgui.Create("DPanel", menuFrame)
	tooltip:SetMouseInputEnabled(false)
	tooltip:SetAlpha(0)
	tooltip:Hide()

	function tooltip:SetSide()
		local x, y = EFGM.MENU.MouseX, EFGM.MENU.MouseY
		self.SideH = x <= (ScrW() / 2) and true or false
		self.SideV = y <= (ScrH() / 2) and true or false
	end

	function tooltip:BeginShowing(t, paint, w, h)
		if self.LastTip != t then return end
		self.TipPaint = paint
		self:SetSize(w, h)
		local x, y = EFGM.MENU.MouseX, EFGM.MENU.MouseY
		self:SetSide()
		self:SetPos(self.SideH and math.Clamp(x + EFGM.MenuScale(15), 0, ScrW() - w) or math.Clamp(x - w - EFGM.MenuScale(15), 0, ScrW() - w), self.SideV and math.Clamp(y + EFGM.MenuScale(15), 0, ScrH() - h) or math.Clamp(y - h + EFGM.MenuScale(15), 0, ScrH() - h))
		self:MoveToFront()
		self:Show()
		self:AlphaTo(255, 0.1, 0, nil)
	end

	function tooltip:DisplayTip(parent, paint, w, h, delay)
		timer.Remove("tooltip")
		local ct = CurTime()
		self.LastTip = ct
		self.Parent = parent

		if delay == nil or delay == 0 then
			self:BeginShowing(ct, paint, w, h)
			return
		end

		self.TipPaint = nil
		timer.Create("tooltip", delay, 1, function()
			if EFGM.MENU.IsClosing or !self then return end
			self:BeginShowing(ct, paint, w, h)
		end)
	end

	function tooltip:RemoveTip()
		timer.Remove("tooltip")
		local closingTime = CurTime()
		self.LastTip = closingTime

		self:SetAlpha(0)
		self:Hide()
		self.TipPaint = nil
	end

	function tooltip:Paint(w, h)
		if self.TipPaint == nil then return end
		if (!self.Parent:IsHovered() or self.Parent:IsDragging()) then self:RemoveTip() end

		BlurPanel(self, 3)

		local x, y = EFGM.MENU.MouseX, EFGM.MENU.MouseY
		self:SetPos(self.SideH and math.Clamp(x + EFGM.MenuScale(15), 0, ScrW() - w) or math.Clamp(x - w - EFGM.MenuScale(15), 0, ScrW() - w), self.SideV and math.Clamp(y + EFGM.MenuScale(15), 0, ScrH() - h) or math.Clamp(y - h + EFGM.MenuScale(15), 0, ScrH() - h))

		if isfunction(self.TipPaint) then self:TipPaint() end
	end

	self.Tooltip = tooltip

	local ultrawide = (ScrW() / ScrH() <= 1.8) and false or true

	local tabParentPanel = vgui.Create("DPanel", self.MenuFrame)
	tabParentPanel:SetPos(!ultrawide and EFGM.MenuScale(10) or ((ScrW() - EFGM.MenuScale(1920)) / 2) + EFGM.MenuScale(10), EFGM.MenuScale(10))
	tabParentPanel:SetSize(!ultrawide and (ScrW() - EFGM.MenuScale(20)) or EFGM.MenuScale(1900), EFGM.MenuScale(40))

	surface.SetFont("PuristaBold32")

	local roubles = string.FormatComma(EFGM.MENU.Player:GetNWInt("Money", 0))
	local roublesTextSize = surface.GetTextSize(roubles)

	local time = string.FormattedTime(GetGlobalInt("RaidTimeLeft", 0), "%02i:%02i")
	local timeTextSize = surface.GetTextSize(time)

	local plyCount = #player.GetAll()
	local plyCountTextSize = surface.GetTextSize(plyCount)

	local raidStatus = GetGlobalInt("RaidStatus", 0)
	local raidStatusTbl = {
		[0] = COLORS.menuStatusPending,
		[1] = COLORS.whiteColor,
		[2] = COLORS.menuStatusEnded
	}

	function tabParentPanel:Paint(w, h)
		surface.SetFont("PuristaBold32")

		roubles = string.FormatComma(EFGM.MENU.Player:GetNWInt("Money", 0))
		roublesTextSize = surface.GetTextSize(roubles)

		time = string.FormattedTime(GetGlobalInt("RaidTimeLeft", 0), "%02i:%02i")
		timeTextSize = surface.GetTextSize(time)

		plyCount = #player.GetAll()
		plyCountTextSize = surface.GetTextSize(plyCount)

		raidStatus = GetGlobalInt("RaidStatus", 0)

		draw.SimpleTextOutlined(roubles, "PuristaBold32", w, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		draw.SimpleTextOutlined(time, "PuristaBold32", w - roublesTextSize - EFGM.MenuScale(65), EFGM.MenuScale(2), raidStatusTbl[raidStatus], TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		draw.SimpleTextOutlined(plyCount, "PuristaBold32", w - roublesTextSize - timeTextSize - EFGM.MenuScale(130), EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	self.MenuFrame.TabParentPanel = tabParentPanel

	local roubleIcon = vgui.Create("DButton", self.MenuFrame.TabParentPanel)
	roubleIcon:SetPos(self.MenuFrame.TabParentPanel:GetWide() - EFGM.MenuScale(45) - roublesTextSize, EFGM.MenuScale(2))
	roubleIcon:SetSize(EFGM.MenuScale(36), EFGM.MenuScale(36))
	roubleIcon:SetText("")

	function roubleIcon:Paint(w, h)
		self:SetX(EFGM.MENU.MenuFrame.TabParentPanel:GetWide() - EFGM.MenuScale(45) - roublesTextSize)

		surface.SetDrawColor(COLORS.pureWhiteColor)
		surface.SetMaterial(MATS.roubleIcon)
		surface.DrawTexturedRect(0, 0, EFGM.MenuScale(36), EFGM.MenuScale(36))
	end

	function roubleIcon:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")

		local paint = function()
			local w, h = EFGM.MENU.Tooltip:GetSize()

			surface.SetDrawColor(COLORS.tooltipBackgroundColor)
			surface.DrawRect(0, 0, w, h)

			surface.SetDrawColor(Color(50, 100, 50, 45))
			surface.DrawRect(0, 0, w, h)

			surface.SetDrawColor(Color(50, 100, 50, 255))
			surface.DrawRect(0, 0, w, EFGM.MenuScale(5))

			surface.SetDrawColor(COLORS.transparentWhiteColor)
			surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
			surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
			surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
			surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

			draw.SimpleTextOutlined("ROUBLES", "PuristaBold24", EFGM.MenuScale(5), EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			draw.SimpleTextOutlined("Your primary currency when purchasing goods, using services and trading with other operatives.", "Purista18", EFGM.MenuScale(5), EFGM.MenuScale(25), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		end

		EFGM.MENU.Tooltip:DisplayTip(self, paint, EFGM.MenuScale(625), EFGM.MenuScale(50))
	end

	function roubleIcon:OnCursorExited()
		EFGM.MENU.Tooltip:RemoveTip()
	end

	local timeIcon = vgui.Create("DPanel", self.MenuFrame.TabParentPanel)
	timeIcon:SetPos(self.MenuFrame.TabParentPanel:GetWide() - EFGM.MenuScale(110) - roublesTextSize - timeTextSize, EFGM.MenuScale(2))
	timeIcon:SetSize(EFGM.MenuScale(36), EFGM.MenuScale(36))

	function timeIcon:Paint(w, h)
		self:SetX(EFGM.MENU.MenuFrame.TabParentPanel:GetWide() - EFGM.MenuScale(110) - roublesTextSize - timeTextSize)

		surface.SetDrawColor(COLORS.pureWhiteColor)
		surface.SetMaterial(MATS.timeIcon)
		surface.DrawTexturedRect(0, 0, EFGM.MenuScale(36), EFGM.MenuScale(36))
	end

	local plyCountIcon = vgui.Create("DPanel", self.MenuFrame.TabParentPanel)
	plyCountIcon:SetPos(self.MenuFrame.TabParentPanel:GetWide() - EFGM.MenuScale(175) - roublesTextSize - timeTextSize - plyCountTextSize, EFGM.MenuScale(2))
	plyCountIcon:SetSize(EFGM.MenuScale(36), EFGM.MenuScale(36))

	function plyCountIcon:Paint(w, h)
		self:SetX(EFGM.MENU.MenuFrame.TabParentPanel:GetWide() - EFGM.MenuScale(175) - roublesTextSize - timeTextSize - plyCountTextSize)

		surface.SetDrawColor(COLORS.pureWhiteColor)
		surface.SetMaterial(MATS.populationIcon)
		surface.DrawTexturedRect(0, 0, EFGM.MenuScale(36), EFGM.MenuScale(36))
	end

	local lowerPanel = vgui.Create("DPanel", self.MenuFrame)
	lowerPanel:SetSize(EFGM.MenuScale(1880), EFGM.MenuScale(980))
	lowerPanel:NoClipping(true)
	lowerPanel:SetPaintBackgroundEnabled(false)
	lowerPanel:SetPaintBorderEnabled(false)
	lowerPanel:SetPaintBackground(false)

	function lowerPanel:Paint(w, h)
		if !EFGM.MENU.Player:Alive() then
			EFGM.MENU:RunOnClose()
			menuFrame:AlphaTo(0, 0.1, 0, function()
				menuFrame:Close()
			end)

			return
		end

		if EFGM.MENU.Closing or EFGM.MENU.SwitchingTab then return end
		EFGM.MENU.MouseX, EFGM.MENU.MouseY = menuFrame:LocalCursorPos()

		if parallaxCVar:GetBool() then
			EFGM.MENU.ParallaxX = math.Clamp(((EFGM.MENU.MouseX / math.Round(EFGM.MenuScale(1920), 1)) - 0.5) * EFGM.MenuScale(6), EFGM.MenuScale(-3), EFGM.MenuScale(3))
			EFGM.MENU.ParallaxY = math.Clamp(((EFGM.MENU.MouseY / math.Round(EFGM.MenuScale(1080), 1)) - 0.5) * EFGM.MenuScale(6), EFGM.MenuScale(-3), EFGM.MenuScale(3))
		else
			EFGM.MENU.ParallaxX = 0
			EFGM.MENU.ParallaxY = 0
		end

		if !scalingCVar:GetBool() then
			lowerPanel:SetPos(ScrW() / 2 - (EFGM.MenuScale(1880) / 2) + EFGM.MENU.ParallaxX, EFGM.MenuScale(50) + EFGM.MENU.ParallaxY)
		else
			lowerPanel:SetPos(ScrW() / 2 - (EFGM.MenuScale(1880) / 2) + EFGM.MENU.ParallaxX, EFGM.MenuScale(1060) / 2 - (920 / 2) + EFGM.MENU.ParallaxY)
		end

		if IsValid(contextMenu) and !EFGM.MENU.Tooltip.Closing then EFGM.MENU.Tooltip:RemoveTip() end
	end

	function lowerPanel:OnMouseWheeled(delta)
		if !IsValid(contextMenu) then return end
		contextMenu:AlphaTo(0, 0.05, 0, function() contextMenu:Remove() end)
	end

	self.MenuFrame.LowerPanel = lowerPanel

	local contents = vgui.Create("DPanel", EFGM.MENU.MenuFrame.LowerPanel)
	contents:Dock(FILL)
	contents:SetAlpha(0)
	contents:SetPaintBackground(false)

	EFGM.MENU.MenuFrame.LowerPanel.Contents = contents

	local bottomPanel = vgui.Create("DPanel", self.MenuFrame)
	bottomPanel:SetPos(!ultrawide and EFGM.MenuScale(10) or ((ScrW() - EFGM.MenuScale(1920)) / 2) + EFGM.MenuScale(10), ScrH() - EFGM.MenuScale(50))
	bottomPanel:SetSize(!ultrawide and ScrW() - EFGM.MenuScale(20) or EFGM.MenuScale(1900), EFGM.MenuScale(40))
	bottomPanel:SetPaintBackground(false)

	function bottomPanel:Paint(w, h)
		draw.DrawText("EFGM", "PuristaBold32", w - EFGM.MenuScale(5), EFGM.MenuScale(2), COLORS.itemBackgroundColor, TEXT_ALIGN_RIGHT)
	end

	-- tabs
	-- for text size calculations
	surface.SetFont("PuristaBold32")

	-- profile
	local profileBGColor = COLORS.transparent

	local profileTab = vgui.Create("DPanel", self.MenuFrame.TabParentPanel)
	profileTab:Dock(LEFT)
	profileTab:SetSize(EFGM.MenuScale(80), 0)
	profileTab:DockMargin(0, 0, EFGM.MenuScale(20), 0)

	if !EFGM.MENU.Player:IsInHideout() then
		profileTab:Hide()
	end

	local profileIcon = vgui.Create("DButton", profileTab)
	profileIcon:SetPos(0, 0)
	profileIcon:SetSize(EFGM.MenuScale(80), EFGM.MenuScale(40))
	profileIcon:SetText("")

	function profileIcon:Paint(w, h)
		surface.SetDrawColor(Color(100, 100, 50, 45))
		surface.DrawRect(0, 0, EFGM.MenuScale(40), EFGM.MenuScale(40))

		surface.SetDrawColor(Color(100, 100, 50))
		surface.DrawRect(0, 0, (EFGM.MENU.Player:GetNWInt("Experience", 0) / EFGM.MENU.Player:GetNWInt("ExperienceToNextLevel", 500)) * EFGM.MenuScale(40), EFGM.MenuScale(40))

		draw.SimpleTextOutlined(EFGM.MENU.Player:GetNWInt("Level", 1), "PuristaBold32", EFGM.MenuScale(18), EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local profilePFP = vgui.Create("AvatarImage", profileIcon)
	profilePFP:SetPos(EFGM.MenuScale(40), 0)
	profilePFP:SetSize(EFGM.MenuScale(40), EFGM.MenuScale(40))
	profilePFP:SetPlayer(EFGM.MENU.Player, 184)
	profilePFP:SetMouseInputEnabled(false)

	function profileTab:PaintOver(w, h)
		surface.SetDrawColor(profileBGColor)
		surface.DrawRect(0, 0, w, h)

		if EFGM.MENU.ActiveTab == "profile" then
			surface.SetDrawColor(COLORS.whiteColor)
			surface.DrawRect(0, EFGM.MenuScale(38), w, EFGM.MenuScale(2))
		end
	end

	function profileIcon:OnCursorEntered()
		local paint = function()
			local w, h = EFGM.MENU.Tooltip:GetSize()

			surface.SetDrawColor(COLORS.tooltipBackgroundColor)
			surface.DrawRect(0, 0, w, h)

			surface.SetDrawColor(Color(100, 100, 50, 45))
			surface.DrawRect(0, 0, w, h)

			surface.SetDrawColor(Color(100, 100, 50))
			surface.DrawRect(0, 0, w, EFGM.MenuScale(5))

			surface.SetDrawColor(COLORS.transparentWhiteColor)
			surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
			surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
			surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
			surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

			draw.SimpleTextOutlined("LEVEL", "PuristaBold24", EFGM.MenuScale(5), EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			draw.SimpleTextOutlined("Your characters level, what seperates you from better services and reputation.", "Purista18", EFGM.MenuScale(5), EFGM.MenuScale(25), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

			draw.SimpleTextOutlined(EFGM.MENU.Player:GetNWInt("Level", 1), "PuristaBold24", EFGM.MenuScale(5), EFGM.MenuScale(50), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			draw.SimpleTextOutlined(EFGM.MENU.Player:GetNWInt("Experience", 0) .. "/" .. EFGM.MENU.Player:GetNWInt("ExperienceToNextLevel", 500), "PuristaBold16", w - EFGM.MenuScale(5), EFGM.MenuScale(55.5), COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

			surface.SetDrawColor(COLORS.transparentWhiteColor)
			surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(75), EFGM.MenuScale(505), EFGM.MenuScale(1))
			surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(84), EFGM.MenuScale(505), EFGM.MenuScale(1))
			surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(75), EFGM.MenuScale(1), EFGM.MenuScale(10))
			surface.DrawRect(EFGM.MenuScale(509), EFGM.MenuScale(75), EFGM.MenuScale(1), EFGM.MenuScale(10))

			surface.SetDrawColor(30, 30, 30, 125)
			surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(75), EFGM.MenuScale(505), EFGM.MenuScale(10))

			surface.SetDrawColor(255, 255, 255, 175)
			surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(75), (EFGM.MENU.Player:GetNWInt("Experience", 0) / EFGM.MENU.Player:GetNWInt("ExperienceToNextLevel", 500)) * EFGM.MenuScale(505), EFGM.MenuScale(10))
		end

		EFGM.MENU.Tooltip:DisplayTip(self, paint, EFGM.MenuScale(515), EFGM.MenuScale(90))
	end

	function profileIcon:OnCursorExited()
		EFGM.MENU.Tooltip:RemoveTip()
	end

	function profileIcon:DoClick()
		if !EFGM.MENU.Player:IsInHideout() then
			surface.PlaySound("common/wpn_denyselect.wav")
			return
		end

		if EFGM.MENU.ActiveTab == "profile" then return end

		surface.PlaySound("ui/element_select.wav")

		if EFGM.MENU.ActiveTab == "map" then
			net.Start("RemovePlayerSquadRF")
			net.SendToServer()
		end

		local prevTab = EFGM.MENU.ActiveTab
		EFGM.MENU.ActiveTab = "profile"

		EFGM.MENU.SwitchingTab = true

		EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(0, 0.05, 0, function()
			EFGM.MENU.MenuFrame.LowerPanel.Contents:Remove()
			EFGM.MENU.OpenTab.Profile()
			EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(255, 0.05, 0, function()
				EFGM.MENU.SwitchingTab = false
			end)
		end)
	end

	-- map
	local mapBGColor = COLORS.transparent
	local mapText = "MAP"
	local mapTextSize = surface.GetTextSize(mapText)

	local mapTab = vgui.Create("DButton", self.MenuFrame.TabParentPanel)
	mapTab:Dock(LEFT)
	mapTab:SetSize(mapTextSize, 0)
	mapTab:SetText("")
	mapTab:DockMargin(0, 0, EFGM.MenuScale(10), 0)

	function mapTab:Paint(w, h)
		surface.SetDrawColor(mapBGColor)
		surface.DrawRect(0, 0, w, h)

		draw.SimpleTextOutlined(mapText, "PuristaBold32", 0, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

		if EFGM.MENU.ActiveTab == "map" then
			surface.SetDrawColor(COLORS.whiteColor)
			surface.DrawRect(0, EFGM.MenuScale(38), w, EFGM.MenuScale(2))
		end
	end

	function mapTab:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function mapTab:DoClick()
		if EFGM.MENU.ActiveTab == "map" then return end

		surface.PlaySound("ui/element_select.wav")

		local prevTab = EFGM.MENU.ActiveTab
		EFGM.MENU.ActiveTab = "map"

		EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(0, 0.05, 0, function()
			EFGM.MENU.MenuFrame.LowerPanel.Contents:Remove()
			EFGM.MENU.OpenTab.Map()
			EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(255, 0.05, 0, function()
				EFGM.MENU.SwitchingTab = false
			end)
		end)

		if EFGM.MENU.Player:IsInHideout() then
			net.Start("AddPlayerSquadRF")
			net.SendToServer()
		end
	end

	-- inventory
	local inventoryBGColor = COLORS.transparent
	local inventoryText = "INVENTORY"
	local inventoryTextSize = surface.GetTextSize(inventoryText)

	local inventoryTab = vgui.Create("DButton", self.MenuFrame.TabParentPanel)
	inventoryTab:Dock(LEFT)
	inventoryTab:SetSize(inventoryTextSize, 0)
	inventoryTab:SetText("")
	inventoryTab:DockMargin(0, 0, EFGM.MenuScale(10), 0)

	function inventoryTab:Paint(w, h)
		surface.SetDrawColor(inventoryBGColor)
		surface.DrawRect(0, 0, w, h)

		draw.SimpleTextOutlined(inventoryText, "PuristaBold32", 0, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

		if EFGM.MENU.ActiveTab == "inventory" then
			surface.SetDrawColor(COLORS.whiteColor)
			surface.DrawRect(0, EFGM.MenuScale(38), w, EFGM.MenuScale(2))
		end
	end

	function inventoryTab:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function inventoryTab:DoClick()
		if EFGM.MENU.ActiveTab == "inventory" then return end

		if EFGM.MENU.ActiveTab == "map" then
			net.Start("RemovePlayerSquadRF")
			net.SendToServer()
		end

		surface.PlaySound("ui/element_select.wav")

		local prevTab = EFGM.MENU.ActiveTab
		EFGM.MENU.ActiveTab = "inventory"

		EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(0, 0.05, 0, function()
			EFGM.MENU.MenuFrame.LowerPanel.Contents:Remove()
			EFGM.MENU.OpenTab.Inventory(EFGM.MENU.Container)
			EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(255, 0.05, 0, function()
				EFGM.MENU.SwitchingTab = false
			end)
		end)
	end

	-- market
	local marketBGColor = COLORS.transparent
	local marketText = "MARKET"
	local marketTextSize = surface.GetTextSize(marketText)

	local marketTab = vgui.Create("DButton", self.MenuFrame.TabParentPanel)
	marketTab:Dock(LEFT)
	marketTab:SetSize(marketTextSize, 0)
	marketTab:SetText("")
	marketTab:DockMargin(0, 0, EFGM.MenuScale(10), 0)

	if !EFGM.MENU.Player:IsInHideout() then
		marketTab:Hide()
	end

	function marketTab:Paint(w, h)
		surface.SetDrawColor(marketBGColor)
		surface.DrawRect(0, 0, w, h)

		draw.SimpleTextOutlined(marketText, "PuristaBold32", 0, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

		if EFGM.MENU.ActiveTab == "market" then
			surface.SetDrawColor(COLORS.whiteColor)
			surface.DrawRect(0, EFGM.MenuScale(38), w, EFGM.MenuScale(2))
		end
	end

	function marketTab:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function marketTab:DoClick()
		if EFGM.MENU.ActiveTab == "market" then return end

		if !EFGM.MENU.Player:IsInHideout() then
			surface.PlaySound("common/wpn_denyselect.wav")
			return
		end

		if EFGM.MENU.ActiveTab == "map" then
			net.Start("RemovePlayerSquadRF")
			net.SendToServer()
		end

		surface.PlaySound("ui/element_select.wav")

		local prevTab = EFGM.MENU.ActiveTab
		EFGM.MENU.ActiveTab = "market"

		EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(0, 0.05, 0, function()
			EFGM.MENU.MenuFrame.LowerPanel.Contents:Remove()
			EFGM.MENU.OpenTab.Market()
			EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(255, 0.05, 0, function()
				EFGM.MENU.SwitchingTab = false
			end)
		end)
	end

	-- tasks
	local tasksBGColor = COLORS.transparent
	local tasksText = "TASKS"
	local tasksTextSize = surface.GetTextSize(tasksText)

	local tasksTab = vgui.Create("DButton", self.MenuFrame.TabParentPanel)
	tasksTab:Dock(LEFT)
	tasksTab:SetSize(tasksTextSize, 0)
	tasksTab:SetText("")
	tasksTab:DockMargin(0, 0, EFGM.MenuScale(10), 0)

	function tasksTab:Paint(w, h)
		surface.SetDrawColor(tasksBGColor)
		surface.DrawRect(0, 0, w, h)

		draw.SimpleTextOutlined(tasksText, "PuristaBold32", 0, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

		if EFGM.MENU.ActiveTab == "tasks" then
			surface.SetDrawColor(COLORS.whiteColor)
			surface.DrawRect(0, EFGM.MenuScale(38), w, EFGM.MenuScale(2))
		end
	end

	function tasksTab:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function tasksTab:DoClick()
		if EFGM.MENU.ActiveTab == "tasks" then return end

		RunConsoleCommand("efgm_task_requestall")

		if EFGM.MENU.ActiveTab == "map" then
			net.Start("RemovePlayerSquadRF")
			net.SendToServer()
		end

		surface.PlaySound("ui/element_select.wav")

		local prevTab = EFGM.MENU.ActiveTab
		EFGM.MENU.ActiveTab = "tasks"

		EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(0, 0.05, 0, function()
			EFGM.MENU.MenuFrame.LowerPanel.Contents:Remove()
			EFGM.MENU.OpenTab.Tasks()
			EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(255, 0.05, 0, function()
				EFGM.MENU.SwitchingTab = false
			end)
		end)
	end

	-- skills
	local skillsBGColor = COLORS.transparent
	local skillsText = "SKILLS"
	local skillsTextSize = surface.GetTextSize(skillsText)

	local skillsTab = vgui.Create("DButton", self.MenuFrame.TabParentPanel)
	skillsTab:Dock(LEFT)
	skillsTab:SetSize(skillsTextSize, 0)
	skillsTab:SetText("")
	skillsTab:DockMargin(0, 0, EFGM.MenuScale(10), 0)

	if !EFGM.MENU.Player:IsInHideout() then
		skillsTab:Hide()
	end

	function skillsTab:Paint(w, h)
		surface.SetDrawColor(skillsBGColor)
		surface.DrawRect(0, 0, w, h)

		draw.SimpleTextOutlined(skillsText, "PuristaBold32", 0, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

		if EFGM.MENU.ActiveTab == "skills" then
			surface.SetDrawColor(COLORS.whiteColor)
			surface.DrawRect(0, EFGM.MenuScale(38), w, EFGM.MenuScale(2))
		end
	end

	function skillsTab:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function skillsTab:DoClick()
		if EFGM.MENU.ActiveTab == "skills" then return end

		if !EFGM.MENU.Player:IsInHideout() then
			surface.PlaySound("common/wpn_denyselect.wav")
			return
		end

		if EFGM.MENU.ActiveTab == "map" then
			net.Start("RemovePlayerSquadRF")
			net.SendToServer()
		end

		surface.PlaySound("ui/element_select.wav")

		local prevTab = EFGM.MENU.ActiveTab
		EFGM.MENU.ActiveTab = "skills"

		EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(0, 0.05, 0, function()
			EFGM.MENU.MenuFrame.LowerPanel.Contents:Remove()
			EFGM.MENU.OpenTab.Skills()
			EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(255, 0.05, 0, function()
				EFGM.MENU.SwitchingTab = false
			end)
		end)
	end

	-- codex
	local codexBGColor = COLORS.transparent
	local codexText = "CODEX"
	local codexTextSize = surface.GetTextSize(codexText)

	local codexTab = vgui.Create("DButton", self.MenuFrame.TabParentPanel)
	codexTab:Dock(LEFT)
	codexTab:SetSize(codexTextSize, 0)
	codexTab:SetText("")
	codexTab:DockMargin(0, 0, EFGM.MenuScale(10), 0)

	if !EFGM.MENU.Player:IsInHideout() then
		codexTab:Hide()
	end

	function codexTab:Paint(w, h)
		surface.SetDrawColor(codexBGColor)
		surface.DrawRect(0, 0, w, h)

		draw.SimpleTextOutlined(codexText, "PuristaBold32", 0, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

		if EFGM.MENU.ActiveTab == "codex" then
			surface.SetDrawColor(COLORS.whiteColor)
			surface.DrawRect(0, EFGM.MenuScale(38), w, EFGM.MenuScale(2))
		end
	end

	function codexTab:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function codexTab:DoClick()
		if EFGM.MENU.ActiveTab == "codex" then return end

		if !EFGM.MENU.Player:IsInHideout() then
			surface.PlaySound("common/wpn_denyselect.wav")
			return
		end

		if EFGM.MENU.ActiveTab == "map" then
			net.Start("RemovePlayerSquadRF")
			net.SendToServer()
		end

		surface.PlaySound("ui/element_select.wav")

		local prevTab = EFGM.MENU.ActiveTab
		EFGM.MENU.ActiveTab = "codex"

		EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(0, 0.05, 0, function()
			EFGM.MENU.MenuFrame.LowerPanel.Contents:Remove()
			EFGM.MENU.OpenTab.Codex()
			EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(255, 0.05, 0, function()
				EFGM.MENU.SwitchingTab = false
			end)
		end)
	end

	-- locker
	local lockerBGColor = COLORS.transparent
	local lockerText = "LOCKER"
	local lockerTextSize = surface.GetTextSize(lockerText)

	local lockerTab = vgui.Create("DButton", self.MenuFrame.TabParentPanel)
	lockerTab:Dock(LEFT)
	lockerTab:SetSize(lockerTextSize, 0)
	lockerTab:SetText("")
	lockerTab:DockMargin(0, 0, EFGM.MenuScale(10), 0)

	if !EFGM.MENU.Player:IsInHideout() then
		lockerTab:Hide()
	end

	function lockerTab:Paint(w, h)
		surface.SetDrawColor(lockerBGColor)
		surface.DrawRect(0, 0, w, h)

		draw.SimpleTextOutlined(lockerText, "PuristaBold32", 0, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

		if EFGM.MENU.ActiveTab == "locker" then
			surface.SetDrawColor(COLORS.whiteColor)
			surface.DrawRect(0, EFGM.MenuScale(38), w, EFGM.MenuScale(2))
		end
	end

	function lockerTab:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function lockerTab:DoClick()
		if EFGM.MENU.ActiveTab == "locker" then return end

		if !EFGM.MENU.Player:IsInHideout() then
			surface.PlaySound("common/wpn_denyselect.wav")
			return
		end

		if EFGM.MENU.ActiveTab == "map" then
			net.Start("RemovePlayerSquadRF")
			net.SendToServer()
		end

		surface.PlaySound("ui/element_select.wav")

		local prevTab = EFGM.MENU.ActiveTab
		EFGM.MENU.ActiveTab = "locker"

		EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(0, 0.05, 0, function()
			EFGM.MENU.MenuFrame.LowerPanel.Contents:Remove()
			EFGM.MENU.OpenTab.Locker()
			EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(255, 0.05, 0, function()
				EFGM.MENU.SwitchingTab = false
			end)
		end)
	end

	-- settings
	local settingsBGColor = COLORS.transparent
	local settingsText = "SETTINGS"
	local settingsTextSize = surface.GetTextSize(settingsText)

	local settingsTab = vgui.Create("DButton", self.MenuFrame.TabParentPanel)
	settingsTab:Dock(LEFT)
	settingsTab:SetSize(settingsTextSize, 0)
	settingsTab:SetText("")
	settingsTab:DockMargin(0, 0, EFGM.MenuScale(10), 0)

	function settingsTab:Paint(w, h)
		surface.SetDrawColor(settingsBGColor)
		surface.DrawRect(0, 0, w, h)

		draw.SimpleTextOutlined(settingsText, "PuristaBold32", 0, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

		if EFGM.MENU.ActiveTab == "settings" then
			surface.SetDrawColor(COLORS.whiteColor)
			surface.DrawRect(0, EFGM.MenuScale(38), w, EFGM.MenuScale(2))
		end
	end

	function settingsTab:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function settingsTab:DoClick()
		if EFGM.MENU.ActiveTab == "settings" then return end

		surface.PlaySound("ui/element_select.wav")

		if EFGM.MENU.ActiveTab == "map" then
			net.Start("RemovePlayerSquadRF")
			net.SendToServer()
		end

		local prevTab = EFGM.MENU.ActiveTab
		EFGM.MENU.ActiveTab = "settings"

		EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(0, 0.05, 0, function()
			EFGM.MENU.MenuFrame.LowerPanel.Contents:Remove()
			EFGM.MENU.OpenTab.Settings()
			EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(255, 0.05, 0, function()
				EFGM.MENU.SwitchingTab = false
			end)
		end)
	end

	local tab
	if !EFGM.MENU.Player:IsInRaid() then
		tab = openTo == "map" and "map" or !table.IsEmpty(EFGM.MENU.Container) and "inventory" or ((saveTabHideoutCVar:GetBool() and EFGM.MENU.PerferredTab) or openTo)
	else
		tab = openTo == "map" and "map" or !table.IsEmpty(EFGM.MENU.Container) and "inventory" or ((saveTabRaidCVar:GetBool() and EFGM.MENU.PerferredTab) or openTo)
	end

	if tab == "profile" then
		EFGM.MENU.OpenTab.Profile()
		EFGM.MENU.ActiveTab = "profile"
		EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(255, 0.05, 0, nil)
	elseif tab == "map" then
		EFGM.MENU.OpenTab.Map()
		EFGM.MENU.ActiveTab = "map"
		EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(255, 0.05, 0, nil)

		if EFGM.MENU.Player:IsInHideout() then
			net.Start("AddPlayerSquadRF")
			net.SendToServer()
		end
	elseif tab == "inventory" then
		EFGM.MENU.OpenTab.Inventory(EFGM.MENU.Container)
		EFGM.MENU.ActiveTab = "inventory"
		EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(255, 0.05, 0, nil)
	elseif tab == "market" then
		EFGM.MENU.OpenTab.Market()
		EFGM.MENU.ActiveTab = "market"
		EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(255, 0.05, 0, nil)
	elseif tab == "tasks" then
		EFGM.MENU.OpenTab.Tasks()
		EFGM.MENU.ActiveTab = "tasks"
		EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(255, 0.05, 0, nil)

		RunConsoleCommand("efgm_task_requestall")
	elseif tab == "skills" then
		EFGM.MENU.OpenTab.Skills()
		EFGM.MENU.ActiveTab = "skills"
		EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(255, 0.05, 0, nil)
	elseif tab == "codex" then
		EFGM.MENU.OpenTab.Codex()
		EFGM.MENU.ActiveTab = "codex"
		EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(255, 0.05, 0, nil)
	elseif tab == "locker" then
		EFGM.MENU.OpenTab.Locker()
		EFGM.MENU.ActiveTab = "locker"
		EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(255, 0.05, 0, nil)
	elseif tab == "settings" then
		EFGM.MENU.OpenTab.Settings()
		EFGM.MENU.ActiveTab = "settings"
		EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(255, 0.05, 0, nil)
	else -- default to inventory
		EFGM.MENU.OpenTab.Inventory(EFGM.MENU.Container)
		EFGM.MENU.ActiveTab = "inventory"
		EFGM.MENU.MenuFrame.LowerPanel.Contents:AlphaTo(255, 0.05, 0, nil)
	end
end

-- called to either initialize or open the menu
function EFGM.MENU:Open(openTo, container)
	if container == nil then container = {} end
	if self.MenuFrame != nil then self.MenuFrame:Remove() end

	self:Initialize(openTo, container)
end

local inspectPanel

function EFGM.MENU.InspectItem(item, data)
	if IsValid(inspectPanel) then inspectPanel:Remove() end

	local i = EFGM.ITEMS[item]
	if i == nil then inspectPanel:Remove() return end

	surface.SetFont("PuristaBold24")
	local itemNameText = string.upper(i.fullName)
	local itemNameSize = surface.GetTextSize(itemNameText)

	local value = i.value
	local weight = i.weight

	if data and data.att then
		local atts = GetPrefixedAttachmentListFromCode(data.att)
		if !atts then return end

		for _, a in ipairs(atts) do
			local att = EFGM.ITEMS[a]
			if att == nil then continue end

			value = value + att.value
			weight = weight + att.weight
		end
	end

	local ownerName = nil
	if data.owner then
		ownerName = SteamNameFromID64(data.owner)
	end

	local taggedByName = nil
	if data.taggedBy then
		taggedByName = SteamNameFromID64(data.taggedBy)
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

	inspectPanel = vgui.Create("DFrame", EFGM.MENU.MenuFrame)
	inspectPanel:SetSize(panelWidth + EFGM.MenuScale(40), newPanelHeight + EFGM.MenuScale(100))
	inspectPanel:Center()
	inspectPanel:SetAlpha(0)
	inspectPanel:SetTitle("")
	inspectPanel:ShowCloseButton(false)
	inspectPanel:SetScreenLock(true)
	inspectPanel:AlphaTo(255, 0.1, 0, nil)

	function inspectPanel:Paint(w, h)
		BlurPanel(self, 3)

		surface.SetDrawColor(Color(20, 20, 20, 205))
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(6))

		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

		draw.SimpleTextOutlined(itemNameText, "PuristaBold24", EFGM.MenuScale(5), EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		draw.SimpleTextOutlined(itemDescText, "PuristaBold18", EFGM.MenuScale(5), EFGM.MenuScale(25), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

		if data.tag then
			draw.SimpleTextOutlined(data.tag, "PuristaBold14", EFGM.MenuScale(5), EFGM.MenuScale(40), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		end

		surface.SetDrawColor(COLORS.pureWhiteColor)
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

		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)
	end

	surface.SetFont("PuristaBold24")
	local infoText = "INFO"
	local infoTextSize = surface.GetTextSize(infoText)

	local itemInfoButton = vgui.Create("DButton", inspectPanel)
	itemInfoButton:SetPos(EFGM.MenuScale(1), itemPullOutPanel:GetY() - EFGM.MenuScale(28) + 1)
	itemInfoButton:SetSize(infoTextSize + EFGM.MenuScale(10), EFGM.MenuScale(28))
	itemInfoButton:SetText("")

	function itemInfoButton:Paint(w, h)
		self:SetY(itemPullOutPanel:GetY() - EFGM.MenuScale(28) + 1)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, infoTextSize + EFGM.MenuScale(10), h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		if !self:IsHovered() then surface.DrawRect(0, 0, infoTextSize + EFGM.MenuScale(10), EFGM.MenuScale(2)) else surface.DrawRect(0, 0, infoTextSize + EFGM.MenuScale(10), EFGM.MenuScale(3)) end

		draw.SimpleTextOutlined(infoText, "PuristaBold24", EFGM.MenuScale(5), EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	surface.SetFont("PuristaBold24")
	local wikiText = "WIKI"
	local wikiTextSize = surface.GetTextSize(wikiText)

	local itemWikiButton = vgui.Create("DButton", inspectPanel)
	itemWikiButton:SetPos(itemInfoButton:GetWide() + EFGM.MenuScale(1), itemPullOutPanel:GetY() - EFGM.MenuScale(28) + 1)
	itemWikiButton:SetSize(wikiTextSize + EFGM.MenuScale(10), EFGM.MenuScale(28))
	itemWikiButton:SetText("")

	function itemWikiButton:Paint(w, h)
		self:SetY(itemPullOutPanel:GetY() - EFGM.MenuScale(28) + 1)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, wikiTextSize + EFGM.MenuScale(10), h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		if !self:IsHovered() then surface.DrawRect(0, 0, infoTextSize + EFGM.MenuScale(10), EFGM.MenuScale(2)) else surface.DrawRect(0, 0, infoTextSize + EFGM.MenuScale(10), EFGM.MenuScale(3)) end

		draw.SimpleTextOutlined(wikiText, "PuristaBold24", EFGM.MenuScale(5), EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
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
			local def = EFGM.ITEMS[data.tagCauseOfDeath]
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
		surface.SetDrawColor(COLORS.pureWhiteColor)
		surface.SetMaterial(MATS.closeButtonIcon)
		surface.DrawTexturedRect(0, 0, EFGM.MenuScale(32), EFGM.MenuScale(32))
	end

	function closeButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function closeButton:DoClick()
		inspectPanel:AlphaTo(0, 0.1, 0, function() inspectPanel:Remove() end)
	end
end

function EFGM.MENU.ConfirmPurchase(item, sendTo, closeMenu)
	if IsValid(EFGM.MENU.ELEMENTS.ConfirmPanel) then EFGM.MENU.ELEMENTS.ConfirmPanel:Remove() end

	local i = EFGM.ITEMS[item]
	if i == nil then
		if closeMenu == true then
			EFGM.MENU:RunOnClose()
			EFGM.MENU.MenuFrame:Close()
		end

		return
	end

	local transactionCost = i.value
	local transactionCount = 1

	local marketLimit = EFGM.CLIENT.MARKETLIMITS[item]

	local plyMoney = EFGM.MENU.Player:GetNWInt("Money", 0)
	local plyLevel = EFGM.MENU.Player:GetNWInt("Level", 1)

	if plyMoney < i.value then
		surface.PlaySound("ui/element_deselect.wav")

		if closeMenu == true then
			EFGM.MENU:RunOnClose()
			EFGM.MENU.MenuFrame:Close()
		end

		return
	end

	if plyLevel < (i.levelReq or 1) then
		surface.PlaySound("ui/element_deselect.wav")

		if closeMenu == true then
			EFGM.MENU:RunOnClose()
			EFGM.MENU.MenuFrame:Close()
		end

		return
	end

	if marketLimit == 0 then
		surface.PlaySound("ui/element_deselect.wav")

		if closeMenu == true then
			EFGM.MENU:RunOnClose()
			EFGM.MENU.MenuFrame:Close()
		end

		return
	end

	local maxTransactionCountMult = math.min(10, EFGM.MENU.Player:GetNWInt("StashMax", 150) - EFGM.MENU.Player:GetNWInt("StashCount", 0))
	local maxTransactionCount = math.Clamp(math.floor(plyMoney / i.value), 1, marketLimit and math.min(marketLimit, i.stackSize * maxTransactionCountMult) or (i.stackSize * maxTransactionCountMult))

	if i.equipSlot == WEAPONSLOTS.PRIMARY.ID or i.equipSlot == WEAPONSLOTS.HOLSTER.ID or i.equipSlot == WEAPONSLOTS.MELEE.ID or i.equipType == EQUIPTYPE.Attachment then maxTransactionCount = 1 end

	surface.SetFont("PuristaBold24")
	local confirmText = "Purchase " .. math.Clamp(transactionCount, 1, maxTransactionCount) .. "x " .. i.fullName .. " (" .. i.displayName .. ") for ₽" .. string.FormatComma(transactionCost) .. "?"
	local confirmTextSize = math.max(EFGM.MenuScale(300), surface.GetTextSize(confirmText))

	local confirmPanelHeight = EFGM.MenuScale(110)

	if maxTransactionCount > 1 then confirmPanelHeight = EFGM.MenuScale(135) end
	if marketLimit != nil and maxTransactionCount > 1 then confirmPanelHeight = confirmPanelHeight + EFGM.MenuScale(10) end

	surface.SetFont("PuristaBold16")
	local invText = "INVENTORY"
	local stashText = "STASH"

	local transactionDestination = (EFGM.MENU.Player:IsScav() and "stash") or sendTo or EFGM.MENU.PerferredShopDestination or "stash"
	EFGM.MENU.PerferredShopDestination = transactionDestination

	surface.PlaySound("ui/market_select.wav")

	local confirmPanel = vgui.Create("DFrame", EFGM.MENU.MenuFrame)
	confirmPanel:SetSize(confirmTextSize + EFGM.MenuScale(10), confirmPanelHeight)
	confirmPanel:SetPos(EFGM.MENU.MenuFrame:GetWide() / 2 - confirmPanel:GetWide() / 2, EFGM.MENU.MenuFrame:GetTall() / 2 - confirmPanel:GetTall() / 2)
	confirmPanel:SetAlpha(0)
	confirmPanel:SetTitle("")
	confirmPanel:ShowCloseButton(false)
	confirmPanel:SetScreenLock(true)
	confirmPanel:AlphaTo(255, 0.1, 0, nil)
	confirmPanel:RequestFocus()

	EFGM.MENU.ELEMENTS.ConfirmPanel = confirmPanel

	function confirmPanel:Paint(w, h)
		BlurPanel(self, 3)

		surface.SetDrawColor(Color(20, 20, 20, 205))
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(6))

		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

		draw.SimpleTextOutlined(confirmText, "PuristaBold24", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		if marketLimit != nil and maxTransactionCount > 1 then draw.SimpleTextOutlined(marketLimit .. "x REMAINING THIS RESET", "Purista14", w / 2, EFGM.MenuScale(50), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor) end

		draw.SimpleTextOutlined("SEND TO", "PuristaBold16", w / 2, confirmPanelHeight - EFGM.MenuScale(80), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		draw.SimpleTextOutlined(invText, "PuristaBold16", w / 2 - EFGM.MenuScale(65), confirmPanelHeight - EFGM.MenuScale(61), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		draw.SimpleTextOutlined(stashText, "PuristaBold16", w / 2 + EFGM.MenuScale(45), confirmPanelHeight - EFGM.MenuScale(61), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	function confirmPanel:Think()
		if (input.IsMouseDown(MOUSE_LEFT) or input.IsMouseDown(MOUSE_RIGHT) or input.IsMouseDown(MOUSE_MIDDLE) or input.IsMouseDown(MOUSE_WHEEL_DOWN) or input.IsMouseDown(MOUSE_WHEEL_UP)) and !self:IsChildHovered() and !self:IsHovered() then
			self:AlphaTo(0, 0.1, 0, function() self:Remove() end)

			if closeMenu == true then
				EFGM.MENU:RunOnClose()
				EFGM.MENU.MenuFrame:AlphaTo(0, 0.05, 0, function()
					EFGM.MENU.MenuFrame:Close()
				end)
			end
		end
	end

	local sendToInventoryBox = vgui.Create("DCheckBox", confirmPanel)
	sendToInventoryBox:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))
	sendToInventoryBox:SetPos(confirmPanel:GetWide() / 2 - EFGM.MenuScale(85), confirmPanelHeight - EFGM.MenuScale(60))

	if EFGM.MENU.Player:IsScav() then sendToInventoryBox:SetEnabled(false) end

	local sendToStashBox = vgui.Create("DCheckBox", confirmPanel)
	sendToStashBox:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))
	sendToStashBox:SetPos(confirmPanel:GetWide() / 2 + EFGM.MenuScale(25), confirmPanelHeight - EFGM.MenuScale(60))

	if transactionDestination == "inv" then
		sendToInventoryBox:SetValue(true)
		sendToStashBox:SetValue(false)
	else
		sendToInventoryBox:SetValue(false)
		sendToStashBox:SetValue(true)
	end

	function sendToInventoryBox:OnChange(bVal)
		if EFGM.MENU.Player:IsScav() then return end

		if (bVal) then
			sendToStashBox:SetChecked(false)
			transactionDestination = "inv"
			EFGM.MENU.PerferredShopDestination = "inv"
		else
			sendToStashBox:SetChecked(true)
			transactionDestination = "stash"
			EFGM.MENU.PerferredShopDestination = "stash"
		end
	end

	function sendToStashBox:OnChange(bVal)
		if EFGM.MENU.Player:IsScav() then
			self:SetChecked(true)
			transactionDestination = "stash"
			EFGM.MENU.PerferredShopDestination = "stash"
			return
		end

		if (bVal) then
			sendToInventoryBox:SetChecked(false)
			transactionDestination = "stash"
			EFGM.MENU.PerferredShopDestination = "stash"
		else
			sendToInventoryBox:SetChecked(true)
			transactionDestination = "inv"
			EFGM.MENU.PerferredShopDestination = "inv"
		end
	end

	surface.SetFont("PuristaBold24")
	local yesText = "YES [SPACE]"
	local yesTextSize = surface.GetTextSize(yesText)
	local yesButtonSize = yesTextSize + EFGM.MenuScale(10)

	local yesButton = vgui.Create("DButton", confirmPanel)
	yesButton:SetSize(yesButtonSize, EFGM.MenuScale(28))
	yesButton:SetPos(confirmPanel:GetWide() / 2 - (yesButtonSize / 2) - EFGM.MenuScale(25), confirmPanelHeight - EFGM.MenuScale(35))
	yesButton:SetText("")

	function yesButton:Paint(w, h)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, yesTextSize + EFGM.MenuScale(10), h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, yesTextSize + EFGM.MenuScale(10), EFGM.MenuScale(2))

		draw.SimpleTextOutlined(yesText, "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	surface.SetFont("PuristaBold24")
	local noText = "NO"
	local noTextSize = surface.GetTextSize(noText)
	local noButtonSize = noTextSize + EFGM.MenuScale(10)

	local noButton = vgui.Create("DButton", confirmPanel)
	noButton:SetPos(confirmPanel:GetWide() / 2 - (noButtonSize / 2) + yesButton:GetWide() / 2 + EFGM.MenuScale(5), confirmPanelHeight - EFGM.MenuScale(35))
	noButton:SetSize(noButtonSize, EFGM.MenuScale(28))
	noButton:SetText("")

	function noButton:Paint(w, h)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, noButtonSize + EFGM.MenuScale(10), h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, noButtonSize + EFGM.MenuScale(10), EFGM.MenuScale(2))

		draw.SimpleTextOutlined(noText, "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	if maxTransactionCount > 1 then
		local amountInput = vgui.Create("DTextEntry", confirmPanel)
		amountInput:SetPos(confirmPanel:GetWide() / 2 - EFGM.MenuScale(80), EFGM.MenuScale(35))
		amountInput:SetSize(EFGM.MenuScale(160), EFGM.MenuScale(15))
		amountInput:SetDrawLanguageID(false)
		amountInput:SetPlaceholderText("1-" .. maxTransactionCount)
		amountInput:SetNumeric(true)
		amountInput:SetUpdateOnType(true)
		amountInput:RequestFocus()

		function amountInput:AllowInput(char)
			if char == "." or char == "-" then return true end
		end

		function amountInput:OnChange()
			local num = math.Clamp(self:GetInt() or 1, 1, maxTransactionCount)

			transactionCount = num
			transactionCost = i.value * num

			surface.SetFont("PuristaBold24")
			confirmText = "Purchase " .. transactionCount .. "x " .. i.fullName .. " (" .. i.displayName .. ") for ₽" .. string.FormatComma(transactionCost) .. "?"
			confirmTextSize = math.max(EFGM.MenuScale(300), surface.GetTextSize(confirmText))

			confirmPanel:SetWide(confirmTextSize + EFGM.MenuScale(10))
			confirmPanel:SetX(EFGM.MENU.MenuFrame:GetWide() / 2 - confirmPanel:GetWide() / 2)
			sendToInventoryBox:SetX(confirmPanel:GetWide() / 2 - EFGM.MenuScale(85))
			sendToStashBox:SetX(confirmPanel:GetWide() / 2 + EFGM.MenuScale(25))
			self:SetX(confirmPanel:GetWide() / 2 - EFGM.MenuScale(80))
			yesButton:SetX(confirmPanel:GetWide() / 2 - (yesButtonSize / 2) - EFGM.MenuScale(25))
			noButton:SetX(confirmPanel:GetWide() / 2 - (noButtonSize / 2) + yesButton:GetWide() / 2 + EFGM.MenuScale(5))
		end
	end

	function yesButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function yesButton:DoClick()
		surface.PlaySound("ui/success.wav")
		confirmPanel:AlphaTo(0, 0.1, 0, function() confirmPanel:Remove() end)

		if transactionDestination == "stash" then PurchaseItem(item, transactionCount) elseif transactionDestination == "inv" then PurchaseItemToInv(item, transactionCount) end

		if closeMenu == true then
			EFGM.MENU:RunOnClose()
			EFGM.MENU.MenuFrame:AlphaTo(0, 0.05, 0, function()
				EFGM.MENU.MenuFrame:Close()
			end)
		end
	end

	local cd = false
	function confirmPanel:OnKeyCodePressed(bind)
		if (bind == KEY_ENTER or bind == KEY_SPACE) and cd == false then yesButton:DoClick() cd = true end
	end

	function noButton.OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function noButton:DoClick()
		surface.PlaySound("ui/element_deselect.wav")
		confirmPanel:AlphaTo(0, 0.1, 0, function() confirmPanel:Remove() end)

		if closeMenu == true then
			EFGM.MENU:RunOnClose()
			EFGM.MENU.MenuFrame:AlphaTo(0, 0.05, 0, function()
				EFGM.MENU.MenuFrame:Close()
			end)
		end
	end
end

function EFGM.MENU.ConfirmSell(item, data, key)
	if IsValid(EFGM.MENU.ELEMENTS.ConfirmPanel) then EFGM.MENU.ELEMENTS.ConfirmPanel:Remove() end

	local i = EFGM.ITEMS[item]
	if i == nil then return end

	local transactionCost = math.floor(i.value * EFGM.CONFIG.MARKET.SELLMULTIPLIER)

	if data.att then
		local atts = GetPrefixedAttachmentListFromCode(data.att)
		if !atts then return end

		for _, a in ipairs(atts) do
			local att = EFGM.ITEMS[a]
			if att == nil then continue end

			transactionCost = transactionCost + math.floor(att.value * EFGM.CONFIG.MARKET.SELLMULTIPLIER)
		end
	end

	local maxTransactionCount = math.Clamp(data.count or 1, 1, i.stashStackSize or i.stackSize)
	if maxTransactionCount <= 1 and GetConVar("efgm_menu_sellprompt_single"):GetInt() == 0 then
		surface.PlaySound("ui/success.wav")
		SellItem(item, maxTransactionCount, key)

		return
	elseif maxTransactionCount > 1 and GetConVar("efgm_menu_sellprompt_stacked"):GetInt() == 0 then
		surface.PlaySound("ui/success.wav")
		SellItem(item, maxTransactionCount, key)

		return
	end

	local transactionCount = maxTransactionCount

	surface.SetFont("PuristaBold24")
	local confirmText = "Sell " .. transactionCount .. "x " .. i.fullName .. " (" .. i.displayName .. ") for ₽" .. string.FormatComma(transactionCost) .. "?"
	local confirmTextSize = math.max(EFGM.MenuScale(300), surface.GetTextSize(confirmText))

	local confirmPanelHeight = EFGM.MenuScale(70)

	if maxTransactionCount > 1 then confirmPanelHeight = EFGM.MenuScale(100) end

	surface.PlaySound("ui/element_select.wav")

	local confirmPanel = vgui.Create("DFrame", EFGM.MENU.MenuFrame)
	confirmPanel:SetSize(confirmTextSize + EFGM.MenuScale(10), confirmPanelHeight)
	confirmPanel:SetPos(EFGM.MENU.MenuFrame:GetWide() / 2 - confirmPanel:GetWide() / 2, EFGM.MENU.MenuFrame:GetTall() / 2 - confirmPanel:GetTall() / 2)
	confirmPanel:SetAlpha(0)
	confirmPanel:SetTitle("")
	confirmPanel:ShowCloseButton(false)
	confirmPanel:SetScreenLock(true)
	confirmPanel:AlphaTo(255, 0.1, 0, nil)
	confirmPanel:RequestFocus()
	EFGM.MENU.ELEMENTS.ConfirmPanel = confirmPanel

	function confirmPanel:Paint(w, h)
		BlurPanel(self, 3)

		surface.SetDrawColor(Color(20, 20, 20, 205))
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(6))

		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

		draw.SimpleTextOutlined(confirmText, "PuristaBold24", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	function confirmPanel:Think()
		if (input.IsMouseDown(MOUSE_LEFT) or input.IsMouseDown(MOUSE_RIGHT) or input.IsMouseDown(MOUSE_MIDDLE) or input.IsMouseDown(MOUSE_WHEEL_DOWN) or input.IsMouseDown(MOUSE_WHEEL_UP)) and !self:IsChildHovered() and !self:IsHovered() then
			self:AlphaTo(0, 0.1, 0, function() self:Remove() end)
		end
	end

	surface.SetFont("PuristaBold24")
	local yesText = "YES [SPACE]"
	local yesTextSize = surface.GetTextSize(yesText)
	local yesButtonSize = yesTextSize + EFGM.MenuScale(10)

	local yesButton = vgui.Create("DButton", confirmPanel)
	yesButton:SetPos(confirmPanel:GetWide() / 2 - (yesButtonSize / 2) - EFGM.MenuScale(25), confirmPanelHeight - EFGM.MenuScale(35))
	yesButton:SetSize(yesButtonSize, EFGM.MenuScale(28))
	yesButton:SetText("")

	function yesButton:Paint(w, h)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, yesTextSize + EFGM.MenuScale(10), h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, yesTextSize + EFGM.MenuScale(10), EFGM.MenuScale(2))

		draw.SimpleTextOutlined(yesText, "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	surface.SetFont("PuristaBold24")
	local noText = "NO"
	local noTextSize = surface.GetTextSize(noText)
	local noButtonSize = noTextSize + EFGM.MenuScale(10)

	local noButton = vgui.Create("DButton", confirmPanel)
	noButton:SetPos(confirmPanel:GetWide() / 2 - (noButtonSize / 2) + yesButton:GetWide() / 2 + EFGM.MenuScale(5), confirmPanelHeight - EFGM.MenuScale(35))
	noButton:SetSize(noButtonSize, EFGM.MenuScale(28))
	noButton:SetText("")

	function noButton:Paint(w, h)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, noButtonSize + EFGM.MenuScale(10), h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, noButtonSize + EFGM.MenuScale(10), EFGM.MenuScale(2))

		draw.SimpleTextOutlined(noText, "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	if maxTransactionCount > 1 then
		local amountInput = vgui.Create("DTextEntry", confirmPanel)
		amountInput:SetPos(confirmPanel:GetWide() / 2 - EFGM.MenuScale(80), EFGM.MenuScale(35))
		amountInput:SetSize(EFGM.MenuScale(160), EFGM.MenuScale(15))
		amountInput:SetDrawLanguageID(false)
		amountInput:SetPlaceholderText("1-" .. maxTransactionCount)
		amountInput:SetNumeric(true)
		amountInput:SetUpdateOnType(true)
		amountInput:RequestFocus()

		function amountInput:AllowInput(char)
			if char == "." or char == "-" then return true end
		end

		function amountInput:OnChange()
			local num = math.Clamp(self:GetInt() or 1, 1, maxTransactionCount)

			transactionCount = num
			transactionCost = math.floor(i.value * EFGM.CONFIG.MARKET.SELLMULTIPLIER) * num

			if data.att then
				local atts = GetPrefixedAttachmentListFromCode(data.att)
				if !atts then return end

				for _, a in ipairs(atts) do
					local att = EFGM.ITEMS[a]
					if att == nil then continue end

					transactionCost = transactionCost + math.floor(att.value * EFGM.CONFIG.MARKET.SELLMULTIPLIER)
				end
			end

			surface.SetFont("PuristaBold24")
			confirmText = "Sell " .. transactionCount .. "x " .. i.fullName .. " (" .. i.displayName .. ") for ₽" .. string.FormatComma(transactionCost) .. "?"
			confirmTextSize = math.max(EFGM.MenuScale(300), surface.GetTextSize(confirmText))

			confirmPanel:SetWide(confirmTextSize + EFGM.MenuScale(10))
			confirmPanel:SetX(EFGM.MENU.MenuFrame:GetWide() / 2 - confirmPanel:GetWide() / 2)
			self:SetX(confirmPanel:GetWide() / 2 - EFGM.MenuScale(80))
			yesButton:SetX(confirmPanel:GetWide() / 2 - (yesButtonSize / 2) - EFGM.MenuScale(25))
			noButton:SetX(confirmPanel:GetWide() / 2 - (noButtonSize / 2) + yesButton:GetWide() / 2 + EFGM.MenuScale(5))
		end
	end

	function yesButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function yesButton:DoClick()
		surface.PlaySound("ui/success.wav")
		confirmPanel:AlphaTo(0, 0.1, 0, function() confirmPanel:Remove() end)
		SellItem(item, transactionCount, key)
	end

	local cd = false
	function confirmPanel:OnKeyCodePressed(bind)
		if (bind == KEY_ENTER or bind == KEY_SPACE) and cd == false then
			yesButton:DoClick()
			cd = true
		end
	end

	function noButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function noButton:DoClick()
		surface.PlaySound("ui/element_deselect.wav")
		confirmPanel:AlphaTo(0, 0.1, 0, function() confirmPanel:Remove() end)
	end
end

function EFGM.MENU.ConfirmSplit(item, data, key, inv)
	if IsValid(EFGM.MENU.ELEMENTS.ConfirmPanel) then EFGM.MENU.ELEMENTS.ConfirmPanel:Remove() end

	local i = EFGM.ITEMS[item]
	if i == nil then return end

	surface.SetFont("PuristaBold24")
	local confirmText = "Split " .. i.fullName .. " (" .. i.displayName .. ")?"
	local confirmTextSize = math.max(EFGM.MenuScale(300), surface.GetTextSize(confirmText))

	local splitCount = math.Round(data.count / 2)
	local maxSplitCount = data.count - 1

	local confirmPanelHeight = EFGM.MenuScale(100)

	surface.PlaySound("ui/element_select.wav")

	local confirmPanel = vgui.Create("DFrame", EFGM.MENU.MenuFrame)
	confirmPanel:SetSize(confirmTextSize + EFGM.MenuScale(10), confirmPanelHeight)
	confirmPanel:SetPos(EFGM.MENU.MenuFrame:GetWide() / 2 - confirmPanel:GetWide() / 2, EFGM.MENU.MenuFrame:GetTall() / 2 - confirmPanel:GetTall() / 2)
	confirmPanel:SetAlpha(0)
	confirmPanel:SetTitle("")
	confirmPanel:ShowCloseButton(false)
	confirmPanel:SetScreenLock(true)
	confirmPanel:AlphaTo(255, 0.1, 0, nil)
	confirmPanel:RequestFocus()
	EFGM.MENU.ELEMENTS.ConfirmPanel = confirmPanel

	function confirmPanel:Paint(w, h)
		BlurPanel(self, 3)

		surface.SetDrawColor(Color(20, 20, 20, 205))
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(6))

		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

		draw.SimpleTextOutlined(confirmText, "PuristaBold24", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	function confirmPanel:Think()
		if (input.IsMouseDown(MOUSE_LEFT) or input.IsMouseDown(MOUSE_RIGHT) or input.IsMouseDown(MOUSE_MIDDLE) or input.IsMouseDown(MOUSE_WHEEL_DOWN) or input.IsMouseDown(MOUSE_WHEEL_UP)) and !self:IsChildHovered() and !self:IsHovered() then
			self:AlphaTo(0, 0.1, 0, function() self:Remove() end)
		end
	end

	surface.SetFont("PuristaBold24")
	local yesText = "YES [SPACE]"
	local yesTextSize = surface.GetTextSize(yesText)
	local yesButtonSize = yesTextSize + EFGM.MenuScale(10)

	local yesButton = vgui.Create("DButton", confirmPanel)
	yesButton:SetPos(confirmPanel:GetWide() / 2 - (yesButtonSize / 2) - EFGM.MenuScale(25), confirmPanelHeight - EFGM.MenuScale(35))
	yesButton:SetSize(yesButtonSize, EFGM.MenuScale(28))
	yesButton:SetText("")

	function yesButton:Paint(w, h)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, yesTextSize + EFGM.MenuScale(10), h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, yesTextSize + EFGM.MenuScale(10), EFGM.MenuScale(2))

		draw.SimpleTextOutlined(yesText, "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	surface.SetFont("PuristaBold24")
	local noText = "NO"
	local noTextSize = surface.GetTextSize(noText)
	local noButtonSize = noTextSize + EFGM.MenuScale(10)

	local noButton = vgui.Create("DButton", confirmPanel)
	noButton:SetPos(confirmPanel:GetWide() / 2 - (noButtonSize / 2) + yesButton:GetWide() / 2 + EFGM.MenuScale(5), confirmPanelHeight - EFGM.MenuScale(35))
	noButton:SetSize(noButtonSize, EFGM.MenuScale(28))
	noButton:SetText("")

	function noButton:Paint(w, h)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, noButtonSize + EFGM.MenuScale(10), h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, noButtonSize + EFGM.MenuScale(10), EFGM.MenuScale(2))

		draw.SimpleTextOutlined(noText, "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local amountSlider = vgui.Create("DNumSlider", confirmPanel)
	amountSlider:SetPos(confirmPanel:GetWide() / 2 - EFGM.MenuScale(160), EFGM.MenuScale(35))
	amountSlider:SetSize(EFGM.MenuScale(240), EFGM.MenuScale(15))
	amountSlider:SetMin(1)
	amountSlider:SetMax(maxSplitCount)
	amountSlider:SetValue(math.Round(data.count / 2))
	amountSlider:SetDefaultValue(math.Round(data.count / 2))
	amountSlider:SetDecimals(0)

	function amountSlider:OnValueChanged(val)
		splitCount = math.Round(val)
	end

	function yesButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function yesButton:DoClick()
		surface.PlaySound("ui/element_select.wav")
		confirmPanel:AlphaTo(0, 0.1, 0, function() confirmPanel:Remove() end)
		SplitFromInventory(inv, item, splitCount, key)
	end

	local cd = false
	function confirmPanel:OnKeyCodePressed(bind)
		if (bind == KEY_ENTER or bind == KEY_SPACE) and cd == false then
			yesButton:DoClick()
			cd = true
		end
	end

	function noButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function noButton:DoClick()
		surface.PlaySound("ui/element_deselect.wav")
		confirmPanel:AlphaTo(0, 0.1, 0, function() confirmPanel:Remove() end)
	end
end

function EFGM.MENU.ConfirmDelete(item, key, inv, eID, eSlot)
	if IsValid(EFGM.MENU.ELEMENTS.ConfirmPanel) then EFGM.MENU.ELEMENTS.ConfirmPanel:Remove() end

	local i = EFGM.ITEMS[item]
	if i == nil then return end

	if GetConVar("efgm_menu_deleteprompt"):GetInt() == 0 then
		surface.PlaySound("ui/element_select.wav")
		DeleteFromInventory(inv, item, key, eID, eSlot)

		return
	end

	surface.SetFont("PuristaBold24")
	local confirmText = "Delete " .. i.fullName .. " (" .. i.displayName .. ")?"
	local confirmTextSize = math.max(EFGM.MenuScale(300), surface.GetTextSize(confirmText))

	local confirmPanelHeight = EFGM.MenuScale(70)

	surface.PlaySound("ui/element_select.wav")

	local confirmPanel = vgui.Create("DFrame", EFGM.MENU.MenuFrame)
	confirmPanel:SetSize(confirmTextSize + EFGM.MenuScale(10), confirmPanelHeight)
	confirmPanel:SetPos(EFGM.MENU.MenuFrame:GetWide() / 2 - confirmPanel:GetWide() / 2, EFGM.MENU.MenuFrame:GetTall() / 2 - confirmPanel:GetTall() / 2)
	confirmPanel:SetAlpha(0)
	confirmPanel:SetTitle("")
	confirmPanel:ShowCloseButton(false)
	confirmPanel:SetScreenLock(true)
	confirmPanel:AlphaTo(255, 0.1, 0, nil)
	confirmPanel:RequestFocus()
	EFGM.MENU.ELEMENTS.ConfirmPanel = confirmPanel

	function confirmPanel:Paint(w, h)
		BlurPanel(self, 3)

		surface.SetDrawColor(Color(20, 20, 20, 205))
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(6))

		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

		draw.SimpleTextOutlined(confirmText, "PuristaBold24", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	function confirmPanel:Think()
		if (input.IsMouseDown(MOUSE_LEFT) or input.IsMouseDown(MOUSE_RIGHT) or input.IsMouseDown(MOUSE_MIDDLE) or input.IsMouseDown(MOUSE_WHEEL_DOWN) or input.IsMouseDown(MOUSE_WHEEL_UP)) and !self:IsChildHovered() and !self:IsHovered() then
			self:AlphaTo(0, 0.1, 0, function() self:Remove() end)
		end
	end

	surface.SetFont("PuristaBold24")
	local yesText = "YES [SPACE]"
	local yesTextSize = surface.GetTextSize(yesText)
	local yesButtonSize = yesTextSize + EFGM.MenuScale(10)

	local yesButton = vgui.Create("DButton", confirmPanel)
	yesButton:SetPos(confirmPanel:GetWide() / 2 - (yesButtonSize / 2) - EFGM.MenuScale(25), confirmPanelHeight - EFGM.MenuScale(35))
	yesButton:SetSize(yesButtonSize, EFGM.MenuScale(28))
	yesButton:SetText("")

	function yesButton:Paint(w, h)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, yesTextSize + EFGM.MenuScale(10), h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, yesTextSize + EFGM.MenuScale(10), EFGM.MenuScale(2))

		draw.SimpleTextOutlined(yesText, "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	surface.SetFont("PuristaBold24")
	local noText = "NO"
	local noTextSize = surface.GetTextSize(noText)
	local noButtonSize = noTextSize + EFGM.MenuScale(10)

	local noButton = vgui.Create("DButton", confirmPanel)
	noButton:SetPos(confirmPanel:GetWide() / 2 - (noButtonSize / 2) + yesButton:GetWide() / 2 + EFGM.MenuScale(5), confirmPanelHeight - EFGM.MenuScale(35))
	noButton:SetSize(noButtonSize, EFGM.MenuScale(28))
	noButton:SetText("")

	function noButton:Paint(w, h)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, noButtonSize + EFGM.MenuScale(10), h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, noButtonSize + EFGM.MenuScale(10), EFGM.MenuScale(2))

		draw.SimpleTextOutlined(noText, "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	function yesButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function yesButton:DoClick()
		surface.PlaySound("ui/element_select.wav")
		confirmPanel:AlphaTo(0, 0.1, 0, function() confirmPanel:Remove() end)
		DeleteFromInventory(inv, item, key, eID, eSlot)
	end

	local cd = false
	function confirmPanel:OnKeyCodePressed(bind)
		if (bind == KEY_ENTER or bind == KEY_SPACE) and cd == false then
			yesButton:DoClick()
			cd = true
		end
	end

	function noButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function noButton:DoClick()
		surface.PlaySound("ui/element_deselect.wav")
		confirmPanel:AlphaTo(0, 0.1, 0, function() confirmPanel:Remove() end)
	end
end

function EFGM.MENU.ConfirmTag(item, key, inv, eID, eSlot)
	if IsValid(EFGM.MENU.ELEMENTS.ConfirmPanel) then EFGM.MENU.ELEMENTS.ConfirmPanel:Remove() end

	local i = EFGM.ITEMS[item]
	if i == nil then return end

	local tagString = ""

	surface.SetFont("PuristaBold24")
	local confirmText = "Set name tag for " .. i.fullName .. " (" .. i.displayName .. ")?"
	local confirmTextSize = math.max(EFGM.MenuScale(300), surface.GetTextSize(confirmText))

	local confirmPanelHeight = EFGM.MenuScale(110)

	local confirmPanel = vgui.Create("DFrame", EFGM.MENU.MenuFrame)
	confirmPanel:SetSize(confirmTextSize + EFGM.MenuScale(10), confirmPanelHeight)
	confirmPanel:SetPos(EFGM.MENU.MenuFrame:GetWide() / 2 - confirmPanel:GetWide() / 2, EFGM.MENU.MenuFrame:GetTall() / 2 - confirmPanel:GetTall() / 2)
	confirmPanel:SetAlpha(0)
	confirmPanel:SetTitle("")
	confirmPanel:ShowCloseButton(false)
	confirmPanel:SetScreenLock(true)
	confirmPanel:AlphaTo(255, 0.1, 0, nil)
	confirmPanel:RequestFocus()
	EFGM.MENU.ELEMENTS.ConfirmPanel = confirmPanel

	function confirmPanel:Paint(w, h)
		BlurPanel(self, 3)

		surface.SetDrawColor(Color(20, 20, 20, 205))
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(6))

		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

		draw.SimpleTextOutlined(confirmText, "PuristaBold24", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

		draw.SimpleTextOutlined("CANNOT BE UNDONE", "PuristaBold16", w / 2, confirmPanelHeight - EFGM.MenuScale(55), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	function confirmPanel:Think()
		if (input.IsMouseDown(MOUSE_LEFT) or input.IsMouseDown(MOUSE_RIGHT) or input.IsMouseDown(MOUSE_MIDDLE) or input.IsMouseDown(MOUSE_WHEEL_DOWN) or input.IsMouseDown(MOUSE_WHEEL_UP)) and !self:IsChildHovered() and !self:IsHovered() then
			self:AlphaTo(0, 0.1, 0, function() self:Remove() end)
		end
	end

	surface.SetFont("PuristaBold24")
	local yesText = "YES"
	local yesTextSize = surface.GetTextSize(yesText)
	local yesButtonSize = yesTextSize + EFGM.MenuScale(10)

	local yesButton = vgui.Create("DButton", confirmPanel)
	yesButton:SetPos(confirmPanel:GetWide() / 2 - (yesButtonSize / 2) - EFGM.MenuScale(25), confirmPanelHeight - EFGM.MenuScale(35))
	yesButton:SetSize(yesButtonSize, EFGM.MenuScale(28))
	yesButton:SetText("")

	function yesButton:Paint(w, h)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, yesTextSize + EFGM.MenuScale(10), h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, yesTextSize + EFGM.MenuScale(10), EFGM.MenuScale(2))

		draw.SimpleTextOutlined(yesText, "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	surface.SetFont("PuristaBold24")
	local noText = "NO"
	local noTextSize = surface.GetTextSize(noText)
	local noButtonSize = noTextSize + EFGM.MenuScale(10)

	local noButton = vgui.Create("DButton", confirmPanel)
	noButton:SetPos(confirmPanel:GetWide() / 2 - (noButtonSize / 2) + yesButton:GetWide() / 2 + EFGM.MenuScale(5), confirmPanelHeight - EFGM.MenuScale(35))
	noButton:SetSize(noButtonSize, EFGM.MenuScale(28))
	noButton:SetText("")

	function noButton:Paint(w, h)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, noButtonSize + EFGM.MenuScale(10), h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, noButtonSize + EFGM.MenuScale(10), EFGM.MenuScale(2))

		draw.SimpleTextOutlined(noText, "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local tagInput = vgui.Create("DTextEntry", confirmPanel)
	tagInput:SetPos(confirmPanel:GetWide() / 2 - EFGM.MenuScale(80), EFGM.MenuScale(35))
	tagInput:SetSize(EFGM.MenuScale(160), EFGM.MenuScale(15))
	tagInput:SetDrawLanguageID(false)
	tagInput:SetPlaceholderText("1-20 characters")
	tagInput:SetMaximumCharCount(20)
	tagInput:SetUpdateOnType(true)
	tagInput:RequestFocus()

	function tagInput:AllowInput(char)
		if char == "[" or char == "]" then return true end
	end

	function tagInput:OnChange()
		tagString = self:GetValue()
	end

	function yesButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function yesButton:DoClick()
		if tagString == "" then return end
		surface.PlaySound("ui/element_tag.wav")
		confirmPanel:AlphaTo(0, 0.1, 0, function() confirmPanel:Remove() end)
		TagFromInventory(tagString, inv, item, key, eID, eSlot)
	end

	function noButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function noButton:DoClick()
		surface.PlaySound("ui/element_deselect.wav")
		confirmPanel:AlphaTo(0, 0.1, 0, function() confirmPanel:Remove() end)
	end
end

function EFGM.MENU.ConfirmPreset(atts, presetName, presetID, closeMenu)
	if IsValid(EFGM.MENU.ELEMENTS.ConfirmPanel) then EFGM.MENU.ELEMENTS.ConfirmPanel:Remove() end

	local confirmPanelHeight = EFGM.MenuScale(75)
	local highestAttSize = 0

	local transactionCost = 0
	local highestLvlAtt = 0

	local plyMoney = EFGM.MENU.Player:GetNWInt("Money", 0)
	local plyLevel = EFGM.MENU.Player:GetNWInt("Level", 1)

	for att, count in pairs(atts) do
		local i = EFGM.ITEMS[att]
		if i == nil then
			if closeMenu == true then
				EFGM.MENU:RunOnClose()
				EFGM.MENU.MenuFrame:AlphaTo(0, 0.05, 0, function()
					EFGM.MENU.MenuFrame:Close()
				end)
			end

			return
		end

		transactionCost = transactionCost + (i.value * count)
		if (i.levelReq or 1) > highestLvlAtt then highestLvlAtt = (i.levelReq or 1) end

		confirmPanelHeight = confirmPanelHeight + EFGM.MenuScale(15)

		surface.SetFont("PuristaBold16")
		local attText = count .. "x " .. i.fullName .. " (" .. i.displayName .. "):   ₽" .. i.value
		local attTextSize = surface.GetTextSize(attText)

		if attTextSize > highestAttSize then highestAttSize = attTextSize end
	end

	-- can't afford or purchase all of the attachments for the preset
	if plyMoney < transactionCost or plyLevel < highestLvlAtt then
		surface.PlaySound("ui/element_deselect.wav")

		if closeMenu == true then
			EFGM.MENU:RunOnClose()
			EFGM.MENU.MenuFrame:AlphaTo(0, 0.05, 0, function()
				EFGM.MENU.MenuFrame:Close()
			end)
		end

		return
	end

	surface.SetFont("PuristaBold24")
	local confirmText = "Buy attachments for the " .. string.upper(presetName) .. " preset for ₽" .. string.FormatComma(transactionCost) .. "?"
	local confirmTextSize = math.max(EFGM.MenuScale(300), surface.GetTextSize(confirmText))

	local confirmPanelSize = confirmTextSize + EFGM.MenuScale(10)
	if highestAttSize + EFGM.MenuScale(15) > confirmPanelSize then confirmPanelSize = highestAttSize + EFGM.MenuScale(15) end

	surface.PlaySound("ui/element_select.wav")

	local confirmPanel = vgui.Create("DFrame", EFGM.MENU.MenuFrame)
	confirmPanel:SetSize(confirmPanelSize, confirmPanelHeight)
	confirmPanel:SetPos(EFGM.MENU.MenuFrame:GetWide() / 2 - confirmPanel:GetWide() / 2, EFGM.MENU.MenuFrame:GetTall() / 2 - confirmPanel:GetTall() / 2)
	confirmPanel:SetAlpha(0)
	confirmPanel:SetTitle("")
	confirmPanel:ShowCloseButton(false)
	confirmPanel:SetScreenLock(true)
	confirmPanel:AlphaTo(255, 0.1, 0, nil)
	confirmPanel:RequestFocus()
	EFGM.MENU.ELEMENTS.ConfirmPanel = confirmPanel

	function confirmPanel:Paint(w, h)
		BlurPanel(self, 3)

		surface.SetDrawColor(Color(20, 20, 20, 205))
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(6))

		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

		draw.SimpleTextOutlined(confirmText, "PuristaBold24", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

		local num = 0
		for k, v in pairs(atts) do
			local i = EFGM.ITEMS[k]
			if i == nil then continue end

			draw.SimpleTextOutlined(v .. "x " .. i.fullName .. " (" .. i.displayName .. "):", "PuristaBold16", EFGM.MenuScale(5), EFGM.MenuScale(30) + (EFGM.MenuScale(15) * num), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			draw.SimpleTextOutlined("₽" .. (i.value * v), "PuristaBold16", w - EFGM.MenuScale(5), EFGM.MenuScale(30) + (EFGM.MenuScale(15) * num), COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

			num = num + 1
		end
	end

	function confirmPanel:Think()
		if (input.IsMouseDown(MOUSE_LEFT) or input.IsMouseDown(MOUSE_RIGHT) or input.IsMouseDown(MOUSE_MIDDLE) or input.IsMouseDown(MOUSE_WHEEL_DOWN) or input.IsMouseDown(MOUSE_WHEEL_UP)) and !self:IsChildHovered() and !self:IsHovered() then
			self:AlphaTo(0, 0.1, 0, function() self:Remove() end)
			if closeMenu == true then
				EFGM.MENU:RunOnClose()
				EFGM.MENU.MenuFrame:AlphaTo(0, 0.05, 0, function()
					EFGM.MENU.MenuFrame:Close()
				end)
			end
		end
	end

	surface.SetFont("PuristaBold24")
	local yesText = "YES [SPACE]"
	local yesTextSize = surface.GetTextSize(yesText)
	local yesButtonSize = yesTextSize + EFGM.MenuScale(10)

	local yesButton = vgui.Create("DButton", confirmPanel)
	yesButton:SetPos(confirmPanel:GetWide() / 2 - EFGM.MenuScale(100), confirmPanelHeight - EFGM.MenuScale(35))
	yesButton:SetSize(yesButtonSize, EFGM.MenuScale(28))
	yesButton:SetText("")

	function yesButton:Paint(w, h)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, yesTextSize + EFGM.MenuScale(10), h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, yesTextSize + EFGM.MenuScale(10), EFGM.MenuScale(2))

		draw.SimpleTextOutlined(yesText, "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	surface.SetFont("PuristaBold24")
	local noText = "NO"
	local noTextSize = surface.GetTextSize(noText)
	local noButtonSize = noTextSize + EFGM.MenuScale(10)

	local noButton = vgui.Create("DButton", confirmPanel)
	noButton:SetPos(confirmPanel:GetWide() / 2 - (noButtonSize / 2) + yesButton:GetWide() / 2 + EFGM.MenuScale(5), confirmPanelHeight - EFGM.MenuScale(35))
	noButton:SetSize(noButtonSize, EFGM.MenuScale(28))
	noButton:SetText("")

	function noButton:Paint(w, h)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, noButtonSize + EFGM.MenuScale(10), h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, noButtonSize + EFGM.MenuScale(10), EFGM.MenuScale(2))

		draw.SimpleTextOutlined(noText, "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	function yesButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function yesButton:DoClick()
		surface.PlaySound("ui/success.wav")
		confirmPanel:AlphaTo(0, 0.1, 0, function() confirmPanel:Remove() end)

		PurchasePresetToInventory(atts)

		if closeMenu == true then
			EFGM.MENU:RunOnClose()
			EFGM.MENU.MenuFrame:AlphaTo(0, 0.05, 0, function()
				EFGM.MENU.MenuFrame:Close()
				local wep = EFGM.MENU.Player:GetActiveWeapon()
				if wep != NULL then wep:LoadPreset(presetID) end
			end)
		end
	end

	local cd = false
	function confirmPanel:OnKeyCodePressed(bind)
		if (bind == KEY_ENTER or bind == KEY_SPACE) and cd == false then
			yesButton:DoClick()
			cd = true
		end
	end

	function noButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function noButton:DoClick()
		surface.PlaySound("ui/element_deselect.wav")
		confirmPanel:AlphaTo(0, 0.1, 0, function() confirmPanel:Remove() end)

		if closeMenu == true then
			EFGM.MENU:RunOnClose()
			EFGM.MENU.MenuFrame:AlphaTo(0, 0.05, 0, function()
				EFGM.MENU.MenuFrame:Close()
			end)
		end
	end
end

function EFGM.MENU.OpenTab.Profile()
	local contents = vgui.Create("DPanel", EFGM.MENU.MenuFrame.LowerPanel)
	contents:Dock(FILL)
	contents:DockPadding(EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10))
	contents:SetAlpha(0)
	contents:SetPaintBackground(false)

	EFGM.MENU.MenuFrame.LowerPanel.Contents = contents

	local stats = vgui.Create("DScrollPanel", contents)
	stats:Dock(LEFT)
	stats:SetSize(EFGM.MenuScale(320), 0)
	stats:SetPaintBackground(false)

	local statsTitle = vgui.Create("DPanel", stats)
	statsTitle:Dock(TOP)
	statsTitle:SetSize(0, EFGM.MenuScale(32))

	function statsTitle:Paint(w, h)
		draw.SimpleTextOutlined("STATISTICS", "PuristaBold32", w / 2, 0, COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local statsBar = stats:GetVBar()
	statsBar:SetHideButtons(true)
	statsBar:SetSize(EFGM.MenuScale(15), 0)

	function statsBar:Paint(w, h)
		surface.SetDrawColor(COLORS.scrollerColor)
		surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(8), EFGM.MenuScale(5), h - EFGM.MenuScale(16))
	end

	function statsBar.btnGrip:Paint(w, h)
		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(8), EFGM.MenuScale(5), h - EFGM.MenuScale(16))
	end

	local importantStats = vgui.Create("DPanel", stats)
	importantStats:Dock(TOP)
	importantStats:SetSize(0, EFGM.MenuScale(580))
	importantStats:SetPaintBackground(false)

	local statsTbl = {}

	statsTbl["Level"] = EFGM.MENU.Player:GetNWInt("Level")
	statsTbl["Experience"] = string.FormatComma(EFGM.MENU.Player:GetNWInt("Experience"))
	statsTbl["Money Earned"] = "₽" .. string.FormatComma(EFGM.MENU.Player:GetNWInt("MoneyEarned"))
	statsTbl["Money Spent"] = "₽" .. string.FormatComma(EFGM.MENU.Player:GetNWInt("MoneySpent"))
	statsTbl["Time"] = util.FormatTimePretty(EFGM.MENU.Player:GetNWInt("Time"))
	statsTbl["Stash Value"] = "₽" .. string.FormatComma(EFGM.MENU.Player:GetNWInt("StashValue"))
	statsTbl["Items Looted"] = string.FormatComma(EFGM.MENU.Player:GetNWInt("ItemsLooted"))
	statsTbl["Containers Opened"] = string.FormatComma(EFGM.MENU.Player:GetNWInt("ContainersLooted"))
	statsTbl["Keys Used"] = string.FormatComma(EFGM.MENU.Player:GetNWInt("KeysUsed"))

	statsTbl["Kills"] = string.FormatComma(EFGM.MENU.Player:GetNWInt("Kills"))
	statsTbl["Deaths"] = string.FormatComma(EFGM.MENU.Player:GetNWInt("Deaths"))
	statsTbl["Suicides"] = string.FormatComma(EFGM.MENU.Player:GetNWInt("Suicides"))
	statsTbl["Damage Dealt"] = string.FormatComma(math.Round(EFGM.MENU.Player:GetNWInt("DamageDealt")))
	statsTbl["Damage Received"] = string.FormatComma(math.Round(EFGM.MENU.Player:GetNWInt("DamageRecieved")))
	statsTbl["Health Healed"] = string.FormatComma(math.Round(EFGM.MENU.Player:GetNWInt("HealthHealed")))
	statsTbl["Shots Fired"] = string.FormatComma(EFGM.MENU.Player:GetNWInt("ShotsFired"))
	statsTbl["Shots Hit"] = string.FormatComma(EFGM.MENU.Player:GetNWInt("ShotsHit"))
	statsTbl["Headshots"] = string.FormatComma(EFGM.MENU.Player:GetNWInt("Headshots"))
	statsTbl["Farthest Kill"] = string.FormatComma(EFGM.MENU.Player:GetNWInt("FarthestKill"))

	statsTbl["Extractions"] = string.FormatComma(EFGM.MENU.Player:GetNWInt("Extractions"))
	statsTbl["Quits"] = string.FormatComma(EFGM.MENU.Player:GetNWInt("Quits"))
	statsTbl["Raids Played"] = string.FormatComma(EFGM.MENU.Player:GetNWInt("RaidsPlayed"))

	statsTbl["Duels Played"] = string.FormatComma(EFGM.MENU.Player:GetNWInt("DuelsPlayed"))
	statsTbl["Duels Won"] = string.FormatComma(EFGM.MENU.Player:GetNWInt("DuelsWon"))

	statsTbl["Current Kill Streak"] = string.FormatComma(EFGM.MENU.Player:GetNWInt("CurrentKillStreak"))
	statsTbl["Best Kill Streak"] = string.FormatComma(EFGM.MENU.Player:GetNWInt("BestKillStreak"))
	statsTbl["Current Extraction Streak"] = string.FormatComma(EFGM.MENU.Player:GetNWInt("CurrentExtractionStreak"))
	statsTbl["Best Extraction Streak"] = string.FormatComma(EFGM.MENU.Player:GetNWInt("BestExtractionStreak"))
	statsTbl["Current Duel Win Streak"] = string.FormatComma(EFGM.MENU.Player:GetNWInt("CurrentDuelWinStreak"))
	statsTbl["Best Duel Win Streak"] = string.FormatComma(EFGM.MENU.Player:GetNWInt("BestDuelWinStreak"))

	statsTbl["K/D Ratio"] = math.Round(EFGM.MENU.Player:GetNWInt("Kills") / math.max(EFGM.MENU.Player:GetNWInt("Deaths"), 1), 3)
	statsTbl["Survival Rate"] = math.Round(EFGM.MENU.Player:GetNWInt("Extractions") / EFGM.MENU.Player:GetNWInt("RaidsPlayed") * 100) .. "%"
	statsTbl["Accuracy"] = math.Round(EFGM.MENU.Player:GetNWInt("ShotsHit") / EFGM.MENU.Player:GetNWInt("ShotsFired") * 100) .. "%"
	statsTbl["Duels Win Rate"] = math.Round(EFGM.MENU.Player:GetNWInt("DuelsWon") / EFGM.MENU.Player:GetNWInt("DuelsPlayed") * 100) .. "%"

	for k, v in SortedPairs(statsTbl) do
		local statEntry = vgui.Create("DPanel", importantStats)
		statEntry:Dock(TOP)
		statEntry:SetSize(0, EFGM.MenuScale(17))

		function statEntry:Paint(w, h)
			draw.SimpleTextOutlined(k .. "", "Purista18", EFGM.MenuScale(5), 0, COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			draw.SimpleTextOutlined(v, "Purista18", w - EFGM.MenuScale(5), 0, COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		end
	end

	local selectedBoard
	local selectedBoardName

	local leaderboardTitle = vgui.Create("DPanel", stats)
	leaderboardTitle:Dock(TOP)
	leaderboardTitle:SetSize(0, EFGM.MenuScale(32))

	function leaderboardTitle:Paint(w, h)
		draw.SimpleTextOutlined("LEADERBOARDS", "PuristaBold32", w / 2, 0, COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	function SelectBoard(text, data)
		if selectedBoardName == text then return end

		net.Start("GrabLeaderboardData")
			net.WriteString(data)
		net.SendToServer()

		selectedBoardName = text
	end

	local leaderboardSelectButton = vgui.Create("DButton", stats)
	leaderboardSelectButton:Dock(TOP)
	leaderboardSelectButton:SetText("SELECT LEADERBOARD")

	function leaderboardSelectButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function leaderboardSelectButton:DoClick()
		surface.PlaySound("ui/element_select.wav")

		local boardSelection = DermaMenu()

		for text, board in SortedPairs(LEADERBOARDS) do
			boardSelection:AddOption(text, function() SelectBoard(text, board) end)
		end

		boardSelection:Open()
	end

	local yColor = Color(255, 255, 0, 255)
	SelectBoard("Stash Value", "StashValue")

	local leaderboardContents = vgui.Create("DScrollPanel", stats)
	leaderboardContents:Dock(TOP)
	leaderboardContents:SetSize(0, EFGM.MenuScale(380))

	function leaderboardContents:Paint(w, h)
		if selectedBoard == nil then return end

		draw.SimpleTextOutlined(string.upper(selectedBoardName), "PuristaBold22", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

		for k, v in ipairs(selectedBoard) do
			local color = COLORS.whiteColor
			if v.SteamID == EFGM.MENU.Player:SteamID64() then color = yColor end
			if !v.Name then return end
			draw.SimpleTextOutlined(k, "Purista18", EFGM.MenuScale(5), EFGM.MenuScale(25) + ((k - 1) * EFGM.MenuScale(20)), color, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			draw.SimpleTextOutlined(string.sub(v.Name, 1, 21), "Purista18", EFGM.MenuScale(25), EFGM.MenuScale(25) + ((k - 1) * EFGM.MenuScale(20)), color, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

			--asdofiauhasdofiauashydafasdifa
			if selectedBoardName == "Money Earned" or selectedBoardName == "Money Spent" or selectedBoardName == "Stash Value" then
				draw.SimpleTextOutlined("₽" .. string.FormatComma(v.Value), "Purista18", w - EFGM.MenuScale(5), EFGM.MenuScale(25) + ((k - 1) * EFGM.MenuScale(20)), color, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			elseif selectedBoardName == "Time Played" then
				draw.SimpleTextOutlined(util.FormatTimePretty(v.Value), "Purista18", w - EFGM.MenuScale(5), EFGM.MenuScale(25) + ((k - 1) * EFGM.MenuScale(20)), color, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			else
				draw.SimpleTextOutlined(string.FormatComma(v.Value), "Purista18", w - EFGM.MenuScale(5), EFGM.MenuScale(25) + ((k - 1) * EFGM.MenuScale(20)), color, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			end
		end
	end

	net.Receive("SendLeaderboardData", function(len)
		local str = net.ReadString()
		if !str then return end

		str = util.Base64Decode(str)
		str = util.Decompress(str)
		if !str then return end

		local tbl = util.JSONToTable(str)
		selectedBoard = tbl

		if !selectedBoard then return end

		for k, v in ipairs(selectedBoard) do
			local name = SteamNameFromID64(v.SteamID)

			timer.Simple(k * 0.01, function()
				selectedBoard[k].Name = name
			end)
		end
	end)
end

function EFGM.MENU.OpenTab.Map()
	local contents = vgui.Create("DPanel", EFGM.MENU.MenuFrame.LowerPanel)
	contents:Dock(FILL)
	contents:DockPadding(EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10))
	contents:SetAlpha(0)
	contents:SetPaintBackground(false)

	EFGM.MENU.MenuFrame.LowerPanel.Contents = contents

	local pmcPanel = vgui.Create("DScrollPanel", contents)
	pmcPanel:Dock(LEFT)
	pmcPanel:SetSize(EFGM.MenuScale(320), 0)
	pmcPanel:SetPaintBackground(false)

	if EFGM.MENU.Player:IsInHideout() then
		local pmcTitle = vgui.Create("DPanel", pmcPanel)
		pmcTitle:Dock(TOP)
		pmcTitle:SetSize(0, EFGM.MenuScale(32))

		function pmcTitle:Paint(w, h)
			draw.SimpleTextOutlined("OPERATORS", "PuristaBold32", w / 2, 0, COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		end

		local pmcPanelBar = pmcPanel:GetVBar()
		pmcPanelBar:SetHideButtons(true)
		pmcPanelBar:SetSize(EFGM.MenuScale(15), 0)

		function pmcPanelBar:Paint(w, h)
			surface.SetDrawColor(COLORS.scrollerColor)
			surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(8), EFGM.MenuScale(5), h - EFGM.MenuScale(16))
		end

		function pmcPanelBar.btnGrip:Paint(w, h)
			surface.SetDrawColor(COLORS.transparentWhiteColor)
			surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(8), EFGM.MenuScale(5), h - EFGM.MenuScale(16))
		end

		local pmcList = vgui.Create("DListLayout", pmcPanel)
		pmcList:Dock(TOP)
		pmcList:SetSize(EFGM.MenuScale(320), 0)

		for k, v in player.Iterator() do
			local name = v:GetName()
			local ping = v:Ping()
			local kills = v:Frags()
			local deaths = v:Deaths()

			local pmcEntry = vgui.Create("DPanel", pmcList)
			pmcEntry:SetSize(pmcList:GetWide(), EFGM.MenuScale(50))
			pmcEntry:SetPos(0, 0)

			function pmcEntry:Paint(w, h)
				if !IsValid(v) then return end
				draw.SimpleTextOutlined(name, "Purista18", EFGM.MenuScale(50), EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
				draw.SimpleTextOutlined(ping  .. "ms", "Purista18", w - EFGM.MenuScale(5), EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
				draw.SimpleTextOutlined(kills, "Purista18", EFGM.MenuScale(50), EFGM.MenuScale(25), COLORS.inRaidColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
				draw.SimpleTextOutlined(deaths, "Purista18", EFGM.MenuScale(85), EFGM.MenuScale(25), COLORS.deadColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
				if v:IsInRaid() then
					draw.SimpleTextOutlined("IN RAID", "Purista18", w - EFGM.MenuScale(5), EFGM.MenuScale(25), COLORS.neutralColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
				elseif v:IsInDuel() then
					draw.SimpleTextOutlined("IN DUEL", "Purista18", w - EFGM.MenuScale(5), EFGM.MenuScale(25), COLORS.deadColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
				end
			end

			local pmcPFP = vgui.Create("AvatarImage", pmcEntry)
			pmcPFP:SetPos(EFGM.MenuScale(5), EFGM.MenuScale(5))
			pmcPFP:SetSize(EFGM.MenuScale(40), EFGM.MenuScale(40))
			pmcPFP:SetPlayer(v, 184)

			function pmcPFP:OnMousePressed()
				local dropdown = DermaMenu()

				local profile = dropdown:AddOption("Open Steam Profile", function() gui.OpenURL("http://steamcommunity.com/profiles/" .. v:SteamID64()) end)
				profile:SetIcon("games/16/all.png")
				local gameProfile = dropdown:AddOption("Open Game Profile", function() CreateNotification("I do not work yet LOL!", MATS.dontEvenAsk, "ui/boo.wav") end)
				gameProfile:SetIcon("icon16/chart_bar.png")

				if v != EFGM.MENU.Player and v:IsInHideout() then
					dropdown:AddSpacer()

					local inviteToSquad = dropdown:AddOption("Invite To Squad", function() InvitePlayerToSquad(v) end)
					inviteToSquad:SetIcon("icon16/user_add.png")
					local inviteToDuel = dropdown:AddOption("Invite To Duel", function() InvitePlayerToDuel(v) end)
					inviteToDuel:SetIcon("icon16/bomb.png")
				end

				dropdown:AddSpacer()

				dropdown:AddOption("Copy Name", function() SetClipboardText(v:GetName()) end):SetIcon("icon16/pencil_add.png")
				dropdown:AddOption("Copy SteamID64", function() SetClipboardText(v:SteamID64()) end):SetIcon("icon16/pencil_add.png")

				if v != EFGM.MENU.Player then
					local mute = dropdown:AddOption("Mute Player", function()
						if v:IsMuted() then
							v:SetMuted(false)
						else
							v:SetMuted(true)
						end
					end)

					if v:IsMuted() then
						mute:SetIcon("icon16/sound.png")
						mute:SetText("Unmute Player")
					else
						mute:SetIcon("icon16/sound_mute.png")
						mute:SetText("Mute Player")
					end
				end

				dropdown:Open()
			end
		end
	end

	local mapPanel = vgui.Create("DPanel", contents)
	mapPanel:Dock(LEFT)
	mapPanel:SetSize(EFGM.MenuScale(1220), 0)
	mapPanel:SetPaintBackground(false)

	local mapRawName = game.GetMap()
	local mapOverhead = MATS.curMapOverhad

	local mapName = MAPNAMES[mapRawName]
	surface.SetFont("PuristaBold50")
	local mapNameText = string.upper(mapName or "")

	local mapTitle = vgui.Create("DPanel", mapPanel)
	mapTitle:Dock(TOP)
	mapTitle:SetSize(0, EFGM.MenuScale(40))

	function mapTitle:Paint(w, h)
		draw.SimpleTextOutlined(mapNameText, "PuristaBold32", w / 2, 0, COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local mapSizeX = EFGM.MenuScale(1200)
	local mapSizeY = EFGM.MenuScale(1200)

	if mapOverhead then
		mapSizeX = EFGM.MenuScale(mapOverhead:Width())
		mapSizeY = EFGM.MenuScale(mapOverhead:Height())
	end

	local mapHolder = vgui.Create("DPanel", mapPanel)
	mapHolder:SetPos(EFGM.MenuScale(10), EFGM.MenuScale(40))
	mapHolder:SetSize(EFGM.MenuScale(1200), EFGM.MenuScale(920))

	function mapHolder:Paint(w, h)
		BlurPanel(self, 5)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)
	end

	function mapHolder:PaintOver(w, h)
		surface.SetDrawColor(COLORS.pureWhiteColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)
	end

	local xDiff = EFGM.MenuScale(1200) / mapSizeX
	local yDiff = EFGM.MenuScale(1200) / mapSizeY

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

	map.DrawRaidInfo = false
	map.DrawFullInfo = true

	map.MapSizeX = mapSizeX
	map.MapSizeY = mapSizeY

	map.MapInfo = MAPINFO[mapRawName]
	map.OverheadImage = mapOverhead

	map:ClampPanOffset()

	local mapLegend = vgui.Create("DPanel", mapHolder)
	mapLegend:SetSize(EFGM.MenuScale(110), EFGM.MenuScale(100))
	mapLegend:SetPos(mapHolder:GetWide() - mapLegend:GetWide() - EFGM.MenuScale(10), EFGM.MenuScale(10))

	function mapLegend:Paint(w, h)
		BlurPanel(self, 3)

		surface.SetDrawColor(Color(20, 20, 20, 155))
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

		draw.SimpleTextOutlined("LEGEND", "PuristaBold32", w / 2, 0, COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		draw.SimpleTextOutlined("SPAWNS ■", "PuristaBold18", w - EFGM.MenuScale(5), EFGM.MenuScale(30), COLORS.mapSpawn, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		draw.SimpleTextOutlined("EXTRACTS ■", "PuristaBold18", w - EFGM.MenuScale(5), EFGM.MenuScale(45), COLORS.mapExtract, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		draw.SimpleTextOutlined("POIs ■", "PuristaBold18", w - EFGM.MenuScale(5), EFGM.MenuScale(60), COLORS.mapLocation, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		draw.SimpleTextOutlined("KEYS ■", "PuristaBold18", w - EFGM.MenuScale(5), EFGM.MenuScale(75), COLORS.mapKey, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	if !EFGM.MENU.Player:IsInHideout() then return end

	local squad = EFGM.MENU.Player:GetNW2String("PlayerInSquad", nil)

	local squadPanel = vgui.Create("DPanel", contents)
	squadPanel:Dock(LEFT)
	squadPanel:SetSize(EFGM.MenuScale(320), 0)
	squadPanel:SetPaintBackground(false)

	local CreateSquadPlayerLimit
	local CreateSquadColor = {RED = 255, GREEN = 255, BLUE = 255}

	local createSquadTitle = vgui.Create("DPanel", squadPanel)
	createSquadTitle:Dock(TOP)
	createSquadTitle:SetSize(0, EFGM.MenuScale(32))

	function createSquadTitle:Paint(w, h)
		draw.SimpleTextOutlined("CREATE SQUAD", "PuristaBold32", w / 2, 0, COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local squadNamePanel = vgui.Create("DPanel", squadPanel)
	squadNamePanel:Dock(TOP)
	squadNamePanel:SetSize(0, EFGM.MenuScale(55))

	function squadNamePanel:Paint(w, h)
		draw.SimpleTextOutlined("Squad Name", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local squadNameBG = vgui.Create("DPanel", squadNamePanel)
	squadNameBG:SetPos(EFGM.MenuScale(85), EFGM.MenuScale(30))
	squadNameBG:SetSize(EFGM.MenuScale(150), EFGM.MenuScale(20))
	squadNameBG:SetBackgroundColor(COLORS.transparent)

	local squadName = vgui.Create("DTextEntry", squadNameBG)
	squadName:Dock(FILL)
	squadName:SetPlaceholderText("")
	squadName:SetDrawLanguageID(false)
	squadName:SetUpdateOnType(true)
	squadName:SetTextColor(COLORS.whiteColor)
	squadName:SetCursorColor(COLORS.whiteColor)

	function squadName:OnValueChange(val)
		CreateSquadName = val
	end

	local squadPasswordPanel = vgui.Create("DPanel", squadPanel)
	squadPasswordPanel:Dock(TOP)
	squadPasswordPanel:SetSize(0, EFGM.MenuScale(55))

	function squadPasswordPanel:Paint(w, h)
		draw.SimpleTextOutlined("Squad Password (optional)", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local squadPasswordBG = vgui.Create("DPanel", squadPasswordPanel)
	squadPasswordBG:SetPos(EFGM.MenuScale(85), EFGM.MenuScale(30))
	squadPasswordBG:SetSize(EFGM.MenuScale(150), EFGM.MenuScale(20))
	squadPasswordBG:SetBackgroundColor(COLORS.transparent)

	local squadPassword = vgui.Create("DTextEntry", squadPasswordBG)
	squadPassword:Dock(FILL)
	squadPassword:SetDrawLanguageID(false)
	squadPassword:SetPlaceholderText("")
	squadPassword:SetUpdateOnType(true)
	squadPassword:SetTextColor(COLORS.whiteColor)
	squadPassword:SetCursorColor(COLORS.whiteColor)

	function squadPassword:OnValueChange(val)
		CreateSquadPassword = val
	end

	local squadMemberLimitPanel = vgui.Create("DPanel", squadPanel)
	squadMemberLimitPanel:Dock(TOP)
	squadMemberLimitPanel:SetSize(0, EFGM.MenuScale(55))

	function squadMemberLimitPanel:Paint(w, h)
		draw.SimpleTextOutlined("Squad Member Limit (2 to " .. EFGM.CONFIG.SQUAD.MAXPLAYERS .. ")", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local squadMemberLimit = vgui.Create("DNumberWang", squadMemberLimitPanel)
	squadMemberLimit:SetPos(EFGM.MenuScale(135), EFGM.MenuScale(30))
	squadMemberLimit:SetSize(EFGM.MenuScale(50), EFGM.MenuScale(20))
	squadMemberLimit:SetMin(2)
	squadMemberLimit:SetMax(EFGM.CONFIG.SQUAD.MAXPLAYERS)
	squadMemberLimit:SetValue(EFGM.CONFIG.SQUAD.MAXPLAYERS)

	function squadMemberLimit:OnValueChanged(val)
		CreateSquadPlayerLimit = math.Clamp(val, self:GetMin(), self:GetMax())
	end

	local squadColorPanel = vgui.Create("DPanel", squadPanel)
	squadColorPanel:Dock(TOP)
	squadColorPanel:SetSize(0, EFGM.MenuScale(110 + 20))

	function squadColorPanel:Paint(w, h)
		draw.SimpleTextOutlined("Squad Color", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		surface.SetDrawColor(Color(CreateSquadColor.RED, CreateSquadColor.GREEN, CreateSquadColor.BLUE, 255))
		surface.DrawRect(EFGM.MenuScale(85), EFGM.MenuScale(55), EFGM.MenuScale(145), EFGM.MenuScale(5))
	end

	local squadColorR = vgui.Create("DNumberWang", squadColorPanel)
	squadColorR:SetPos(EFGM.MenuScale(85), EFGM.MenuScale(30))
	squadColorR:SetSize(EFGM.MenuScale(45), EFGM.MenuScale(20))
	squadColorR:SetMin(0)
	squadColorR:SetMax(255)
	squadColorR:SetValue(255)

	function squadColorR:OnValueChanged(val)
		CreateSquadColor.RED = math.Clamp(val, self:GetMin(), self:GetMax())
	end

	local squadColorG = vgui.Create("DNumberWang", squadColorPanel)
	squadColorG:SetPos(EFGM.MenuScale(135), EFGM.MenuScale(30))
	squadColorG:SetSize(EFGM.MenuScale(45), EFGM.MenuScale(20))
	squadColorG:SetMin(0)
	squadColorG:SetMax(255)
	squadColorG:SetValue(255)

	function squadColorG:OnValueChanged(val)
		CreateSquadColor.GREEN = math.Clamp(val, self:GetMin(), self:GetMax())
	end

	local squadColorB = vgui.Create("DNumberWang", squadColorPanel)
	squadColorB:SetPos(EFGM.MenuScale(185), EFGM.MenuScale(30))
	squadColorB:SetSize(EFGM.MenuScale(45), EFGM.MenuScale(20))
	squadColorB:SetMin(0)
	squadColorB:SetMax(255)
	squadColorB:SetValue(255)

	function squadColorB:OnValueChanged(val)
		CreateSquadColor.BLUE = math.Clamp(val, self:GetMin(), self:GetMax())
	end

	local squadCreateButton = vgui.Create("DButton", squadColorPanel)
	squadCreateButton:SetPos(EFGM.MenuScale(85), EFGM.MenuScale(75))
	squadCreateButton:SetSize(EFGM.MenuScale(150), EFGM.MenuScale(20))
	squadCreateButton:SetText("CREATE SQUAD")

	function squadCreateButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function squadCreateButton:DoClick()
		surface.PlaySound("ui/element_select.wav")
		RunConsoleCommand("efgm_squad_create", squadName:GetValue(), squadPassword:GetValue(), CreateSquadPlayerLimit, CreateSquadColor.RED, CreateSquadColor.GREEN, CreateSquadColor.BLUE)
	end

	local joinSquadTitle = vgui.Create("DPanel", squadPanel)
	joinSquadTitle:Dock(TOP)
	joinSquadTitle:SetSize(0, EFGM.MenuScale(32 + 10))

	function joinSquadTitle:Paint(w, h)
		draw.SimpleTextOutlined("JOIN SQUAD", "PuristaBold32", w / 2, 0, COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local availableSquadsPanel = vgui.Create("DScrollPanel", squadPanel)
	availableSquadsPanel:Dock(TOP)
	availableSquadsPanel:SetSize(0, EFGM.MenuScale(220))
	availableSquadsPanel:SetPaintBackground(false)

	local availableSquadsPanelBar = availableSquadsPanel:GetVBar()
	availableSquadsPanelBar:SetHideButtons(true)
	availableSquadsPanelBar:SetSize(EFGM.MenuScale(15), 0)

	function availableSquadsPanelBar:Paint(w, h)
		surface.SetDrawColor(COLORS.scrollerColor)
		surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(8), EFGM.MenuScale(5), h - EFGM.MenuScale(16))
	end

	function availableSquadsPanelBar.btnGrip:Paint(w, h)
		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(8), EFGM.MenuScale(5), h - EFGM.MenuScale(16))
	end

	local availableSquadsList = vgui.Create("DListLayout", availableSquadsPanel)
	availableSquadsList:Dock(TOP)
	availableSquadsList:SetSize(EFGM.MenuScale(300), EFGM.MenuScale(330))

	function GenerateJoinableSquads(array)
		for name, data in SortedPairs(array) do
			local color = data.COLOR
			local owner = data.OWNER
			local status
			local password = data.PASSWORD
			local limit = data.LIMIT
			local members = data.MEMBERS
			local faction = data.FACTION
			local memberCount = #members
			local open = limit != memberCount
			local protected = string.len(password) != 0

			if !protected then status = "PUBLIC" else status = "PRIVATE" end

			local squadEntry = vgui.Create("DButton", availableSquadsList)
			squadEntry:SetText("")
			squadEntry:SetSize(0, EFGM.MenuScale(55))

			function squadEntry:Paint(w, h)
				if open then
					surface.SetDrawColor(COLORS.transparentBlackColor)
				else
					surface.SetDrawColor(Color(50, 0, 0, 100))
				end
				surface.DrawRect(0, 0, w, h)

				draw.SimpleTextOutlined(name, "PuristaBold24", w / 2, EFGM.MenuScale(5), Color(color.RED, color.GREEN, color.BLUE), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
				draw.SimpleTextOutlined(memberCount .. " / " .. limit .. " | " .. status .. " | " .. (faction == 1 and "PMCs" or faction == 2 and "SCAVs"), "PuristaBold18", w / 2, EFGM.MenuScale(30), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			end

			function squadEntry:DoClick(w, h)
				if open and !protected then
					surface.PlaySound("ui/element_select.wav")
					RunConsoleCommand("efgm_squad_join", name, password)
				end
			end

			local squadPopOut

			function squadEntry:OnCursorEntered()
				local x, y = EFGM.MENU.MouseX, EFGM.MENU.MouseY
				local sideH, sideV

				surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")

				if x <= (ScrW() / 2) then sideH = true else sideH = false end
				if y <= (ScrH() / 2) then sideV = true else sideV = false end

				local function UpdatePopOutPos()
					if sideH == true then
						squadPopOut:SetX(math.Clamp(x + EFGM.MenuScale(15), EFGM.MenuScale(10), ScrW() - squadPopOut:GetWide() - EFGM.MenuScale(10)))
					else
						squadPopOut:SetX(math.Clamp(x - squadPopOut:GetWide() - EFGM.MenuScale(15), EFGM.MenuScale(10), ScrW() - squadPopOut:GetWide() - EFGM.MenuScale(10)))
					end

					if sideV == true then
						squadPopOut:SetY(math.Clamp(y + EFGM.MenuScale(15), EFGM.MenuScale(60), ScrH() - squadPopOut:GetTall() - EFGM.MenuScale(20)))
					else
						squadPopOut:SetY(math.Clamp(y - squadPopOut:GetTall() + EFGM.MenuScale(15), EFGM.MenuScale(60), ScrH() - squadPopOut:GetTall() - EFGM.MenuScale(20)))
					end
				end

				if IsValid(squadPopOut) then squadPopOut:Remove() end
				squadPopOut = vgui.Create("DPanel", EFGM.MENU.MenuFrame)
				squadPopOut:SetSize(EFGM.MenuScale(200), EFGM.MenuScale(60) + (memberCount * EFGM.MenuScale(19)))
				UpdatePopOutPos()
				squadPopOut:SetAlpha(0)
				squadPopOut:AlphaTo(255, 0.1, 0, nil)
				squadPopOut:SetMouseInputEnabled(false)

				if protected and open and squad == "nil" then
					squadPopOut:SetSize(EFGM.MenuScale(200), EFGM.MenuScale(90) + (memberCount * EFGM.MenuScale(19)))
				end

				if squad != "nil" then
					squadPopOut:SetSize(EFGM.MenuScale(200), EFGM.MenuScale(40) + (memberCount * EFGM.MenuScale(19)))
				end

				function squadPopOut:Paint(w, h)
					BlurPanel(self, 3)

					x, y = EFGM.MENU.MouseX, EFGM.MENU.MouseY

					UpdatePopOutPos()

					surface.SetDrawColor(COLORS.tooltipBackgroundColor)
					surface.DrawRect(0, 0, w, h)

					surface.SetDrawColor(Color(color.RED, color.GREEN, color.BLUE, 45))
					surface.DrawRect(0, 0, w, h)

					surface.SetDrawColor(Color(color.RED, color.GREEN, color.BLUE, 255))
					surface.DrawRect(0, 0, w, EFGM.MenuScale(5))

					surface.SetDrawColor(COLORS.transparentWhiteColor)
					surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
					surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
					surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
					surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

					draw.SimpleTextOutlined("MEMBERS", "PuristaBold24", EFGM.MenuScale(5), EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

					for k, v in SortedPairs(members) do
						if v == owner then
							draw.SimpleTextOutlined(v:GetName() .. "*", "PuristaBold18", EFGM.MenuScale(27), (k * EFGM.MenuScale(20)) + EFGM.MenuScale(10), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
						else
							draw.SimpleTextOutlined(v:GetName(), "PuristaBold18", EFGM.MenuScale(27), (k * EFGM.MenuScale(20)) + EFGM.MenuScale(10), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
						end
					end

					if squad != "nil" then return end

					if !open then
						draw.SimpleTextOutlined("SQUAD FULL!", "PuristaBold18", EFGM.MenuScale(5), h - EFGM.MenuScale(23), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.deadColor)
						return
					end

					if !protected then
						draw.SimpleTextOutlined("CLICK TO JOIN!", "PuristaBold18", EFGM.MenuScale(5), h - EFGM.MenuScale(23), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
					else
						draw.SimpleTextOutlined("ENTER PASSWORD TO JOIN!", "PuristaBold18", EFGM.MenuScale(5), h - EFGM.MenuScale(23), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
					end
				end

				for key, plys in SortedPairs(members) do
					local memberPFP = vgui.Create("AvatarImage", squadPopOut)
					memberPFP:SetPos(EFGM.MenuScale(5), (key * EFGM.MenuScale(20)) + EFGM.MenuScale(12))
					memberPFP:SetSize(EFGM.MenuScale(18), EFGM.MenuScale(18))
					memberPFP:SetPlayer(plys, 64)
				end

				-- create password entry if squad is password protected and not full
				if protected and open and squad == "nil" then
					local squadPasswordEntryBG = vgui.Create("DPanel", squadPopOut)
					squadPasswordEntryBG:SetPos(EFGM.MenuScale(5), squadPopOut:GetTall() - EFGM.MenuScale(43))
					squadPasswordEntryBG:SetSize(EFGM.MenuScale(181), EFGM.MenuScale(20))
					squadPasswordEntryBG:SetBackgroundColor(Color(25, 25, 25, 155))

					local squadPasswordEntry = vgui.Create("DTextEntry", squadPasswordEntryBG)
					squadPasswordEntry:Dock(FILL)
					squadPasswordEntry:SetPlaceholderText("")
					squadPasswordEntry:SetDrawLanguageID(false)
					squadPasswordEntry:SetPaintBackground(false)
					squadPasswordEntry:SetTextColor(COLORS.whiteColor)
					squadPasswordEntry:SetCursorColor(COLORS.whiteColor)
					squadPasswordEntry:RequestFocus()

					function squadPasswordEntry:OnEnter(val)
						RunConsoleCommand("efgm_squad_join", name, val)
					end
				end
			end

			function squadEntry:OnCursorExited()
				if IsValid(squadPopOut) then
					squadPopOut:AlphaTo(0, 0.1, 0, function()
						squadPopOut:Remove()
					end)
				end
			end
		end
	end

	local currentSquadPanel = vgui.Create("DPanel", squadPanel)
	currentSquadPanel:Dock(TOP)
	currentSquadPanel:SetSize(EFGM.MenuScale(320), EFGM.MenuScale(320))
	currentSquadPanel:DockMargin(0, EFGM.MenuScale(50), 0, 0)
	currentSquadPanel:SetPaintBackground(false)

	local function RenderCurrentSquad(array)
		if array == nil then return end
		if squad == "nil" then return end

		local color = array[squad].COLOR
		local owner = array[squad].OWNER
		local status
		local password = array[squad].PASSWORD
		local limit = array[squad].LIMIT
		local members = array[squad].MEMBERS
		local faction = array[squad].FACTION
		local memberCount = #array[squad].MEMBERS
		local protected = string.len(password) != 0

		if !protected then status = "PUBLIC" else status = "PRIVATE" end

		local currentSquadName = vgui.Create("DPanel", currentSquadPanel)
		currentSquadName:Dock(TOP)
		currentSquadName:SetSize(0, EFGM.MenuScale(60))

		function currentSquadName:Paint(w, h)
			surface.SetDrawColor(Color(0, 0, 0, 155))
			surface.DrawRect(0, 0, w, h)

			surface.SetDrawColor(Color(color.RED, color.GREEN, color.BLUE, 45))
			surface.DrawRect(0, 0, w, h)

			surface.SetDrawColor(Color(color.RED, color.GREEN, color.BLUE, 255))
			surface.DrawRect(0, 0, w, EFGM.MenuScale(5))

			surface.SetDrawColor(COLORS.transparentWhiteColor)
			surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
			surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
			surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

			draw.SimpleTextOutlined(squad, "PuristaBold32", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			draw.SimpleTextOutlined(status .. " | " .. (faction == 1 and "PMCs" or faction == 2 and "SCAVs"), "PuristaBold18", w / 2, EFGM.MenuScale(37), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		end

		-- allows squad owners to copy the squad password if the squad is private
		if status == "PRIVATE" and EFGM.MENU.Player == owner then
			currentSquadName:SetSize(0, EFGM.MenuScale(77))

			local currentSquadPasswordButton = vgui.Create("DButton", currentSquadName)
			currentSquadPasswordButton:SetPos(EFGM.MenuScale(100), EFGM.MenuScale(57))
			currentSquadPasswordButton:SetSize(EFGM.MenuScale(120), EFGM.MenuScale(18))
			currentSquadPasswordButton:SetText("")

			function currentSquadPasswordButton:Paint(w, h)
				surface.SetDrawColor(Color(25, 25, 25, 155))
				surface.DrawRect(0, 0, w, h)

				draw.SimpleTextOutlined("Copy Password", "PuristaBold18", w / 2, EFGM.MenuScale(-2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			end

			function currentSquadPasswordButton:OnCursorEntered()
				surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
			end

			function currentSquadPasswordButton:DoClick()
				surface.PlaySound("ui/element_select.wav")
				SetClipboardText(password)
			end
		end

		local currentSquadMembers = vgui.Create("DPanel", currentSquadPanel)
		currentSquadMembers:Dock(TOP)
		currentSquadMembers:SetSize(0, EFGM.MenuScale(30) + (memberCount * EFGM.MenuScale(35)))

		function currentSquadMembers:Paint(w, h)
			surface.SetDrawColor(Color(color.RED, color.GREEN, color.BLUE, 10))
			surface.DrawRect(0, 0, w, h)

			surface.SetDrawColor(COLORS.transparentWhiteColor)
			surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
			surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

			draw.SimpleTextOutlined("MEMBERS [" .. memberCount .. "/" .. limit .. "]", "PuristaBold24", EFGM.MenuScale(5), 0, COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

			for k, v in SortedPairs(members) do
				if v == owner then
					draw.SimpleTextOutlined(v:GetName() .. "*", "PuristaBold24", EFGM.MenuScale(40), (k * EFGM.MenuScale(35)) - EFGM.MenuScale(3), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
				else
					draw.SimpleTextOutlined(v:GetName(), "PuristaBold24", EFGM.MenuScale(40), (k * EFGM.MenuScale(35)) - EFGM.MenuScale(3), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
				end
			end
		end

		for k, v in SortedPairs(members) do
			local memberPFP = vgui.Create("AvatarImage", currentSquadMembers)
			memberPFP:SetPos(EFGM.MenuScale(5), (k * EFGM.MenuScale(35)) - EFGM.MenuScale(5))
			memberPFP:SetSize(EFGM.MenuScale(30), EFGM.MenuScale(30))
			memberPFP:SetPlayer(v, 184)

			function memberPFP:OnMousePressed()
				local dropdown = DermaMenu()

				local profile = dropdown:AddOption("Open Steam Profile", function() gui.OpenURL("http://steamcommunity.com/profiles/" .. v:SteamID64()) end)
				profile:SetIcon("games/16/all.png")
				local gameProfile = dropdown:AddOption("Open Game Profile", function() CreateNotification("I do not work yet LOL!", MATS.dontEvenAsk, "ui/boo.wav") end)
				gameProfile:SetIcon("icon16/chart_bar.png")

				if v != EFGM.MENU.Player and v:IsInHideout() then
					dropdown:AddSpacer()

					local inviteToDuel = dropdown:AddOption("Invite To Duel", function() InvitePlayerToDuel(v) end)
					inviteToDuel:SetIcon("icon16/bomb.png")
				end

				dropdown:AddSpacer()

				dropdown:AddOption("Copy Name", function() SetClipboardText(v:GetName()) end):SetIcon("icon16/pencil_add.png")
				dropdown:AddOption("Copy SteamID64", function() SetClipboardText(v:SteamID64()) end):SetIcon("icon16/pencil_add.png")

				if v != EFGM.MENU.Player then
					local mute = dropdown:AddOption("Mute Player", function()
						if v:IsMuted() then
							v:SetMuted(false)
						else
							v:SetMuted(true)
						end
					end)

					if v:IsMuted() then
						mute:SetIcon("icon16/sound.png")
						mute:SetText("Unmute Player")
					else
						mute:SetIcon("icon16/sound_mute.png")
						mute:SetText("Mute Player")
					end
				end

				dropdown:Open()
			end

			if EFGM.MENU.Player == owner and EFGM.MENU.Player != v then
				local transferToMember = vgui.Create("DButton", currentSquadMembers)
				transferToMember:SetPos(EFGM.MenuScale(262), (k * EFGM.MenuScale(35)) - EFGM.MenuScale(2))
				transferToMember:SetSize(EFGM.MenuScale(24), EFGM.MenuScale(24))
				transferToMember:SetText("")

				function transferToMember:Paint(w, h)
					surface.SetDrawColor(COLORS.pureWhiteColor)
					surface.SetMaterial(MATS.squadTransferIcon)
					surface.DrawTexturedRect(0, 0, EFGM.MenuScale(24), EFGM.MenuScale(24))
				end

				function transferToMember:OnCursorEntered()
					surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")

					surface.SetFont("Purista18")
					local text = "Transfer ownership to " .. v:GetName()
					local textSize = surface.GetTextSize(text)

					local paint = function()
						local w, h = EFGM.MENU.Tooltip:GetSize()

						surface.SetDrawColor(Color(25, 25, 25, 155))
						surface.DrawRect(0, 0, w, h)

						surface.SetDrawColor(COLORS.transparentWhiteColor)
						surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
						surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
						surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
						surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

						draw.SimpleTextOutlined(text, "Purista18", EFGM.MenuScale(5), EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
					end

					EFGM.MENU.Tooltip:DisplayTip(self, paint, EFGM.MenuScale(10) + textSize, EFGM.MenuScale(24))
				end

				function transferToMember:OnCursorExited()
					EFGM.MENU.Tooltip:RemoveTip()
				end

				function transferToMember:DoClick()
					surface.PlaySound("ui/element_select.wav")
					RunConsoleCommand("efgm_squad_transfer", v:GetName())
				end

				local kickMember = vgui.Create("DButton", currentSquadMembers)
				kickMember:SetPos(EFGM.MenuScale(291), (k * EFGM.MenuScale(35)) - EFGM.MenuScale(2))
				kickMember:SetSize(EFGM.MenuScale(24), EFGM.MenuScale(24))
				kickMember:SetText("")

				function kickMember:Paint(w, h)
					surface.SetDrawColor(COLORS.pureWhiteColor)
					surface.SetMaterial(MATS.squadKickIcon)
					surface.DrawTexturedRect(0, 0, EFGM.MenuScale(24), EFGM.MenuScale(24))
				end

				function kickMember:OnCursorEntered()
					surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")

					surface.SetFont("Purista18")
					local text = "Kick " .. v:GetName()
					local textSize = surface.GetTextSize(text)

					local paint = function()
						local w, h = EFGM.MENU.Tooltip:GetSize()

						surface.SetDrawColor(Color(25, 25, 25, 155))
						surface.DrawRect(0, 0, w, h)

						surface.SetDrawColor(COLORS.transparentWhiteColor)
						surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
						surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
						surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
						surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

						draw.SimpleTextOutlined(text, "Purista18", EFGM.MenuScale(5), EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
					end

					EFGM.MENU.Tooltip:DisplayTip(self, paint, EFGM.MenuScale(10) + textSize, EFGM.MenuScale(24))
				end

				function kickMember:OnCursorExited()
					EFGM.MENU.Tooltip:RemoveTip()
				end

				function kickMember:DoClick()
					surface.PlaySound("ui/element_select.wav")
					RunConsoleCommand("efgm_squad_kick", v:GetName())
				end
			end
		end

		local currentSquadLeavePanel = vgui.Create("DPanel", currentSquadPanel)
		currentSquadLeavePanel:Dock(TOP)
		currentSquadLeavePanel:SetSize(0, EFGM.MenuScale(35))

		function currentSquadLeavePanel:Paint(w, h)
			surface.SetDrawColor(Color(color.RED, color.GREEN, color.BLUE, 10))
			surface.DrawRect(0, 0, w, h)

			surface.SetDrawColor(COLORS.transparentWhiteColor)
			surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
			surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
			surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)
		end

		local currentSquadLeaveButton = vgui.Create("DButton", currentSquadLeavePanel)
		currentSquadLeaveButton:SetPos(EFGM.MenuScale(85), EFGM.MenuScale(5))
		currentSquadLeaveButton:SetSize(EFGM.MenuScale(175), EFGM.MenuScale(25))
		currentSquadLeaveButton:SetText("")

		function currentSquadLeaveButton:Paint(w, h)
			surface.SetDrawColor(Color(25, 25, 25, 155))
			surface.DrawRect(0, 0, w, h)

			if owner != EFGM.MENU.Player then
				draw.SimpleTextOutlined("LEAVE SQUAD", "PuristaBold24", w / 2, EFGM.MenuScale(-2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			else
				draw.SimpleTextOutlined("DISBAND SQUAD", "PuristaBold24", w / 2, EFGM.MenuScale(-2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			end
		end

		function currentSquadLeaveButton:OnCursorEntered()
			surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
		end

		function currentSquadLeaveButton:DoClick()
			surface.PlaySound("ui/element_deselect.wav")

			if owner != EFGM.MENU.Player then
				RunConsoleCommand("efgm_squad_leave")
			else
				RunConsoleCommand("efgm_squad_disband")
			end
		end
	end

	net.Receive("SendSquadData", function(len, ply)
		squad = EFGM.MENU.Player:GetNW2String("PlayerInSquad", nil)

		if EFGM.MENU.ActiveTab != "map" then return end

		availableSquadsList:Clear()
		currentSquadPanel:Clear()

		if squad == "nil" then
			squadCreateButton:Show()
		else
			squadCreateButton:Hide()
		end

		if IsValid(squadPopOut) then squadPopOut:Remove() end

		local squadArray = table.Copy(net.ReadTable())
		GenerateJoinableSquads(squadArray)
		RenderCurrentSquad(squadArray)
	end)

	net.Start("GrabSquadData")
	net.SendToServer()
end

function EFGM.MENU.OpenTab.Inventory(container)
	local contents = vgui.Create("DPanel", EFGM.MENU.MenuFrame.LowerPanel)
	contents:Dock(FILL)
	contents:DockPadding(EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10))
	contents:SetAlpha(0)
	contents:SetPaintBackground(false)

	EFGM.MENU.MenuFrame.LowerPanel.Contents = contents

	local pm = EFGM.MENU.Player:GetModel() or "models/eft/pmcs/usec_extended_pm.mdl"
	local factionMat = (pm == "models/eft/pmcs/usec_extended_pm.mdl" and MATS.factionUSECIcon) or (pm == "models/eft/pmcs/bear_extended_pm.mdl" and MATS.factionBEARIcon) or MATS.factionScavIcon

	local playerPanel = vgui.Create("DPanel", contents)
	playerPanel:Dock(LEFT)
	playerPanel:SetSize(EFGM.MenuScale(613), 0)

	function playerPanel:Paint(w, h)
		BlurPanel(self, 5)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(6))

		surface.SetDrawColor(COLORS.itemBackgroundColor)
		surface.SetMaterial(factionMat)
		surface.DrawTexturedRect(EFGM.MenuScale(20), EFGM.MenuScale(50), EFGM.MenuScale(115), EFGM.MenuScale(119))
	end

	local playerText = vgui.Create("DPanel", playerPanel)
	playerText:Dock(TOP)
	playerText:SetSize(0, EFGM.MenuScale(36))

	function playerText:Paint(w, h)
		surface.SetDrawColor(COLORS.containerHeaderColor)
		surface.DrawRect(0, 0, w, h)

		draw.SimpleTextOutlined(string.upper(EFGM.MENU.Player:Nick()), "PuristaBold32", EFGM.MenuScale(5), EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local playerModel = vgui.Create("DModelPanel", playerPanel)
	playerModel:Dock(FILL)
	playerModel:SetMouseInputEnabled(false)
	playerModel:SetFOV(26)
	playerModel:SetCamPos(Vector(10, 0, 0))
	playerModel:SetLookAt(Vector(-100, 0, -24))
	playerModel:SetDirectionalLight(BOX_RIGHT, COLORS.modelLeftColor)
	playerModel:SetDirectionalLight(BOX_LEFT, COLORS.modelRightColor)
	playerModel:SetAnimated(true)
	playerModel:SetModel(pm)

	local seq = playerModel.Entity:LookupSequence(table.Random(holdtypes))
	playerModel.Entity:SetSequence(seq)

	local groups = GetEntityGroups(EFGM.MENU.Player)

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
	playerModel.Entity:SetAngles(Angle(0, math.random(0, 40), 0))

	function playerModel:LayoutEntity(Entity)
		if !IsValid(Entity) then return end
	end

	local equipmentHolder = vgui.Create("DPanel", playerPanel)
	equipmentHolder:SetPos(EFGM.MenuScale(153), EFGM.MenuScale(100))
	equipmentHolder:SetSize(EFGM.MenuScale(450), EFGM.MenuScale(850))
	equipmentHolder:SetPaintBackground(false)

	local consumableHolder = vgui.Create("DPanel", playerPanel)
	consumableHolder:SetPos(EFGM.MenuScale(10), EFGM.MenuScale(655))
	consumableHolder:SetSize(EFGM.MenuScale(300), EFGM.MenuScale(200))
	consumableHolder:SetPaintBackground(false)

	-- secondary slot
	local secondaryWeaponHolder = vgui.Create("DPanel", equipmentHolder)

	function secondaryWeaponHolder:Paint(w, h)
		BlurPanel(self, 3)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

		if EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.PRIMARY.ID][2].name then return end

		surface.SetDrawColor(COLORS.weaponSilhouetteColor)
		surface.SetMaterial(MATS.invPrimaryIcon)
		surface.DrawTexturedRect(EFGM.MenuScale(25), EFGM.MenuScale(15), EFGM.MenuScale(250), EFGM.MenuScale(80))
	end

	local secondaryWeaponText = vgui.Create("DPanel", equipmentHolder)
	secondaryWeaponText:SetSize(EFGM.MenuScale(120), EFGM.MenuScale(30))

	function secondaryWeaponText:Paint(w, h)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, EFGM.MenuScale(220), EFGM.MenuScale(2))

		draw.SimpleTextOutlined("SECONDARY", "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	-- primary slot
	local primaryWeaponHolder = vgui.Create("DPanel", equipmentHolder)

	function primaryWeaponHolder:Paint(w, h)
		BlurPanel(self, 3)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

		if EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.PRIMARY.ID][1].name then return end

		surface.SetDrawColor(COLORS.weaponSilhouetteColor)
		surface.SetMaterial(MATS.invPrimaryIcon)
		surface.DrawTexturedRect(EFGM.MenuScale(25), EFGM.MenuScale(15), EFGM.MenuScale(250), EFGM.MenuScale(80))
	end

	local primaryWeaponText = vgui.Create("DPanel", equipmentHolder)
	primaryWeaponText:SetSize(EFGM.MenuScale(90), EFGM.MenuScale(30))

	function primaryWeaponText:Paint(w, h)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, EFGM.MenuScale(220), EFGM.MenuScale(2))

		draw.SimpleTextOutlined("PRIMARY", "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	-- holster slot
	local holsterWeaponHolder = vgui.Create("DPanel", equipmentHolder)

	function holsterWeaponHolder:Paint(w, h)
		BlurPanel(self, 3)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

		if EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.HOLSTER.ID][1].name then return end

		surface.SetDrawColor(COLORS.weaponSilhouetteColor)
		surface.SetMaterial(MATS.invHolsterIcon)
		surface.DrawTexturedRect(EFGM.MenuScale(27), EFGM.MenuScale(8), EFGM.MenuScale(60), EFGM.MenuScale(40))
	end

	local holsterWeaponText = vgui.Create("DPanel", equipmentHolder)
	holsterWeaponText:SetSize(EFGM.MenuScale(90), EFGM.MenuScale(30))

	function holsterWeaponText:Paint(w, h)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, EFGM.MenuScale(220), EFGM.MenuScale(2))

		draw.SimpleTextOutlined("HOLSTER", "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	-- melee slot
	local meleeWeaponHolder = vgui.Create("DPanel", equipmentHolder)

	function meleeWeaponHolder:Paint(w, h)
		BlurPanel(self, 3)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

		if EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.MELEE.ID][1].name then return end

		surface.SetDrawColor(COLORS.weaponSilhouetteColor)
		surface.SetMaterial(MATS.invMeleeIcon)
		surface.DrawTexturedRect(EFGM.MenuScale(25), EFGM.MenuScale(8), EFGM.MenuScale(60), EFGM.MenuScale(40))
	end

	local meleeWeaponText = vgui.Create("DPanel", equipmentHolder)
	meleeWeaponText:SetSize(EFGM.MenuScale(65), EFGM.MenuScale(30))

	function meleeWeaponText:Paint(w, h)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, EFGM.MenuScale(220), EFGM.MenuScale(2))

		draw.SimpleTextOutlined("MELEE", "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	-- nade slot
	local nadeWeaponHolder = vgui.Create("DPanel", equipmentHolder)

	function nadeWeaponHolder:Paint(w, h)
		BlurPanel(self, 3)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

		if EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.GRENADE.ID][1].name then return end

		surface.SetDrawColor(COLORS.weaponSilhouetteColor)
		surface.SetMaterial(MATS.invNadeIcon)
		surface.DrawTexturedRect(EFGM.MenuScale(2), 0, EFGM.MenuScale(57), EFGM.MenuScale(57))
	end

	local nadeWeaponText = vgui.Create("DPanel", equipmentHolder)
	nadeWeaponText:SetSize(EFGM.MenuScale(57), EFGM.MenuScale(30))

	function nadeWeaponText:Paint(w, h)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, EFGM.MenuScale(220), EFGM.MenuScale(2))

		draw.SimpleTextOutlined("NADE", "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	-- consumable slot
	local consumableItemHolder = vgui.Create("DPanel", consumableHolder)

	function consumableItemHolder:Paint(w, h)
		BlurPanel(self, 3)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

		if EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.CONSUMABLE.ID][1].name then return end

		surface.SetDrawColor(COLORS.weaponSilhouetteColor)
		surface.SetMaterial(MATS.invMedicalIcon)
		surface.DrawTexturedRect(0, 0, EFGM.MenuScale(57), EFGM.MenuScale(57))
	end

	local consumableItemText = vgui.Create("DPanel", consumableHolder)
	consumableItemText:SetSize(EFGM.MenuScale(85), EFGM.MenuScale(30))

	function consumableItemText:Paint(w, h)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, EFGM.MenuScale(220), EFGM.MenuScale(2))

		draw.SimpleTextOutlined("MEDICAL", "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local secondaryItem
	local primaryItem
	local holsterItem
	local meleeItem
	local nadeItem
	local consumableItem

	function EFGM.MENU:ReloadSlots()
		secondaryWeaponHolder:SetSize(EFGM.MenuScale(285), EFGM.MenuScale(114))
		if ispanel(secondaryItem) then secondaryItem:Remove() end
		primaryWeaponHolder:SetSize(EFGM.MenuScale(285), EFGM.MenuScale(114))
		if ispanel(primaryItem) then primaryItem:Remove() end
		holsterWeaponHolder:SetSize(EFGM.MenuScale(114), EFGM.MenuScale(57))
		if ispanel(holsterItem) then holsterItem:Remove() end
		meleeWeaponHolder:SetSize(EFGM.MenuScale(114), EFGM.MenuScale(57))
		if ispanel(meleeItem) then meleeItem:Remove() end
		nadeWeaponHolder:SetSize(EFGM.MenuScale(57), EFGM.MenuScale(57))
		if ispanel(nadeItem) then nadeItem:Remove() end
		consumableItemHolder:SetSize(EFGM.MenuScale(57), EFGM.MenuScale(57))
		if ispanel(consumableItem) then consumableItem:Remove() end

		local secondaryTbl = EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.PRIMARY.ID][2]
		local primaryTbl = EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.PRIMARY.ID][1]
		local holsterTbl = EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.HOLSTER.ID][1]
		local meleeTbl = EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.MELEE.ID][1]
		local nadeTbl = EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.GRENADE.ID][1]
		local consumableTbl = EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.CONSUMABLE.ID][1]

		-- secondary
		if secondaryTbl.name then
			local name = secondaryTbl.name
			local data = secondaryTbl.data

			local i = EFGM.ITEMS[name]
			if i == nil then return end

			secondaryWeaponHolder:SetSize(EFGM.MenuScale(57 * i.sizeX), EFGM.MenuScale(57 * i.sizeY))

			secondaryItem = vgui.Create("EEquippedSecondary", secondaryWeaponHolder)
			secondaryItem:Droppable("items")
			secondaryItem:Droppable("slot_primary")
			secondaryItem.SlotID = 1
			secondaryItem.Slot = 2
			secondaryItem.Origin = "equipped"
			secondaryItem.CTXParent = equipmentHolder
			secondaryItem:CreateVar(name, data, i)
		end

		-- primary
		if primaryTbl.name then
			local name = primaryTbl.name
			local data = primaryTbl.data

			local i = EFGM.ITEMS[name]
			if i == nil then return end

			primaryWeaponHolder:SetSize(EFGM.MenuScale(57 * i.sizeX), EFGM.MenuScale(57 * i.sizeY))

			primaryItem = vgui.Create("EEquippedPrimary", primaryWeaponHolder)
			primaryItem:Droppable("items")
			primaryItem:Droppable("slot_primary")
			primaryItem.SlotID = 1
			primaryItem.Slot = 1
			primaryItem.Origin = "equipped"
			primaryItem.CTXParent = equipmentHolder
			primaryItem:CreateVar(name, data, i)
		end

		-- holster
		if holsterTbl.name then
			local name = holsterTbl.name
			local data = holsterTbl.data

			local i = EFGM.ITEMS[name]
			if i == nil then return end

			holsterWeaponHolder:SetSize(EFGM.MenuScale(57 * i.sizeX), EFGM.MenuScale(57 * i.sizeY))

			holsterItem = vgui.Create("EEquippedHolster", holsterWeaponHolder)
			holsterItem:Droppable("items")
			holsterItem:Droppable("slot_holster")
			holsterItem.SlotID = 2
			holsterItem.Slot = 1
			holsterItem.Origin = "equipped"
			holsterItem.CTXParent = equipmentHolder
			holsterItem:CreateVar(name, data, i)
		end

		-- melee
		if meleeTbl.name then
			local name = meleeTbl.name
			local data = meleeTbl.data

			local i = EFGM.ITEMS[name]
			if i == nil then return end

			meleeWeaponHolder:SetSize(EFGM.MenuScale(57 * i.sizeX), EFGM.MenuScale(57 * i.sizeY))

			meleeItem = vgui.Create("EEquippedMelee", meleeWeaponHolder)
			meleeItem:Droppable("items")
			meleeItem:Droppable("slot_melee")
			meleeItem.SlotID = 3
			meleeItem.Slot = 1
			meleeItem.Origin = "equipped"
			meleeItem.CTXParent = equipmentHolder
			meleeItem:CreateVar(name, data, i)
		end

		-- nade
		if nadeTbl.name then
			local name = nadeTbl.name
			local data = nadeTbl.data

			local i = EFGM.ITEMS[name]
			if i == nil then return end

			nadeWeaponHolder:SetSize(EFGM.MenuScale(57 * i.sizeX), EFGM.MenuScale(57 * i.sizeY))

			nadeItem = vgui.Create("EEquippedNade", nadeWeaponHolder)
			nadeItem:Droppable("items")
			nadeItem:Droppable("slot_grenade")
			nadeItem.SlotID = 4
			nadeItem.Slot = 1
			nadeItem.Origin = "equipped"
			nadeItem.CTXParent = equipmentHolder
			nadeItem:CreateVar(name, data, i)
		end

		-- consumable
		if consumableTbl.name then
			local name = consumableTbl.name
			local data = consumableTbl.data

			local i = EFGM.ITEMS[name]
			if i == nil then return end

			consumableItemHolder:SetSize(EFGM.MenuScale(57 * i.sizeX), EFGM.MenuScale(57 * i.sizeY))

			consumableItem = vgui.Create("EEquippedConsume", consumableItemHolder)
			consumableItem:Droppable("items")
			consumableItem:Droppable("slot_consumable")
			consumableItem.SlotID = 5
			consumableItem.Slot = 1
			consumableItem.Origin = "equipped"
			consumableItem.CTXParent = equipmentHolder
			consumableItem:CreateVar(name, data, i)
		end

		if EFGM.MENU.Player:IsPMC() then
			secondaryWeaponHolder:SetPos(equipmentHolder:GetWide() - secondaryWeaponHolder:GetWide(), equipmentHolder:GetTall() - secondaryWeaponHolder:GetTall())
			secondaryWeaponText:SetPos(equipmentHolder:GetWide() - secondaryWeaponText:GetWide(), secondaryWeaponHolder:GetY() - EFGM.MenuScale(30))
			primaryWeaponHolder:SetPos(equipmentHolder:GetWide() - primaryWeaponHolder:GetWide(), secondaryWeaponHolder:GetY() - primaryWeaponHolder:GetTall() - EFGM.MenuScale(40))
			primaryWeaponText:SetPos(equipmentHolder:GetWide() - primaryWeaponText:GetWide(), primaryWeaponHolder:GetY() - EFGM.MenuScale(30))
			holsterWeaponHolder:SetPos(equipmentHolder:GetWide() - holsterWeaponHolder:GetWide(), primaryWeaponHolder:GetY() - holsterWeaponHolder:GetTall() - EFGM.MenuScale(40))
			holsterWeaponText:SetPos(equipmentHolder:GetWide() - holsterWeaponText:GetWide(), holsterWeaponHolder:GetY() - EFGM.MenuScale(30))
			meleeWeaponHolder:SetPos(equipmentHolder:GetWide() - meleeWeaponHolder:GetWide(), holsterWeaponHolder:GetY() - meleeWeaponHolder:GetTall() - EFGM.MenuScale(40))
			meleeWeaponText:SetPos(equipmentHolder:GetWide() - meleeWeaponText:GetWide(), meleeWeaponHolder:GetY() - EFGM.MenuScale(30))
			nadeWeaponHolder:SetPos(equipmentHolder:GetWide() - nadeWeaponHolder:GetWide(), meleeWeaponHolder:GetY() - nadeWeaponHolder:GetTall() - EFGM.MenuScale(40))
			nadeWeaponText:SetPos(equipmentHolder:GetWide() - nadeWeaponText:GetWide(), nadeWeaponHolder:GetY() - EFGM.MenuScale(30))
			consumableItemHolder:SetPos(0, consumableHolder:GetTall() - consumableItemHolder:GetTall())
			consumableItemText:SetPos(0, consumableItemHolder:GetY() - EFGM.MenuScale(30))
		else
			secondaryWeaponHolder:Hide()
			secondaryWeaponText:Hide()
			primaryWeaponHolder:Hide()
			primaryWeaponText:Hide()
			holsterWeaponHolder:Hide()
			holsterWeaponText:Hide()
			nadeWeaponHolder:Hide()
			nadeWeaponText:Hide()
			consumableItemHolder:Hide()
			consumableItemText:Hide()
			meleeWeaponHolder:SetPos(equipmentHolder:GetWide() - meleeWeaponHolder:GetWide(), equipmentHolder:GetTall() - meleeWeaponHolder:GetTall())
			meleeWeaponText:SetPos(equipmentHolder:GetWide() - meleeWeaponText:GetWide(), meleeWeaponHolder:GetY() - EFGM.MenuScale(30))
		end
	end

	secondaryWeaponHolder:Receiver("slot_primary", function(self, panels, dropped, _, x, y)
		if !dropped then return end
		if !EFGM.MENU.Player:Alive() then return end

		if panels[1].Origin == "inventory" then
			if table.IsEmpty(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.PRIMARY.ID][2]) then
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				EquipItemFromInventory(panels[1].ID, panels[1].Slot, 2)
			else
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				UnEquipItemFromInventory(1, 2, false, false)
				EquipItemFromInventory(panels[1].ID, panels[1].Slot, 2)
			end
		end

		if panels[1].Origin == "stash" then
			if table.IsEmpty(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.PRIMARY.ID][2]) then
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				EquipItemFromStash(panels[1].ID, panels[1].Slot, 2)
			else
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				UnEquipItemFromInventory(1, 2, true, false)
				EquipItemFromStash(panels[1].ID, panels[1].Slot, 2)
			end
		end

		if panels[1].Origin == "equipped" and panels[1].SlotID == 1 and panels[1]:GetParent() != self then
			surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
			EquipItemFromEquipped(panels[1].SlotID, panels[1].Slot, 1, 2)
		end

		if panels[1].Origin == "container" then
			if table.IsEmpty(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.PRIMARY.ID][2]) then
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")

				local conItem = container.items[panels[1].ID]
				if conItem == nil then return end

				if AmountInInventory(EFGM.CLIENT.EQUIPPED[panels[1].Slot], conItem.name) != 0 then return end

				EFGM.CLIENT.EQUIPPED[panels[1].Slot][2] = conItem

				table.remove(container.items, panels[1].ID)

				net.Start("PlayerInventoryEquipItemFromContainer", false)
					net.WriteEntity(container.entity)
					net.WriteUInt(panels[1].ID, 16)
					net.WriteUInt(panels[1].Slot, 4)
					net.WriteUInt(2, 4)
				net.SendToServer()

				EFGM.MENU:ReloadContainer()
			else
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				UnEquipItemFromInventory(1, 2, false, false)

				local conItem = container.items[panels[1].ID]
				if conItem == nil then return end

				if AmountInInventory(EFGM.CLIENT.EQUIPPED[panels[1].Slot], conItem.name) != 0 then return end

				EFGM.CLIENT.EQUIPPED[panels[1].Slot][2] = conItem

				table.remove(container.items, panels[1].ID)

				net.Start("PlayerInventoryEquipItemFromContainer", false)
					net.WriteEntity(container.entity)
					net.WriteUInt(panels[1].ID, 16)
					net.WriteUInt(panels[1].Slot, 4)
					net.WriteUInt(2, 4)
				net.SendToServer()

				EFGM.MENU:ReloadContainer()
			end
		end
	end)

	primaryWeaponHolder:Receiver("slot_primary", function(self, panels, dropped, _, x, y)
		if !dropped then return end
		if !EFGM.MENU.Player:Alive() then return end

		if panels[1].Origin == "inventory" then
			if table.IsEmpty(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.PRIMARY.ID][1]) then
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				EquipItemFromInventory(panels[1].ID, panels[1].Slot, 1)
			else
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				UnEquipItemFromInventory(1, 1, false, false)
				EquipItemFromInventory(panels[1].ID, panels[1].Slot, 1)
			end
		end

		if panels[1].Origin == "stash" then
			if table.IsEmpty(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.PRIMARY.ID][1]) then
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				EquipItemFromStash(panels[1].ID, panels[1].Slot, 1)
			else
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				UnEquipItemFromInventory(1, 1, true, false)
				EquipItemFromStash(panels[1].ID, panels[1].Slot, 1)
			end
		end

		if panels[1].Origin == "equipped" and panels[1].SlotID == 1 and panels[1]:GetParent() != self then
			surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
			EquipItemFromEquipped(panels[1].SlotID, panels[1].Slot, 1, 1)
		end

		if panels[1].Origin == "container" then
			if table.IsEmpty(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.PRIMARY.ID][1]) then
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")

				local conItem = container.items[panels[1].ID]
				if conItem == nil then return end

				if AmountInInventory(EFGM.CLIENT.EQUIPPED[panels[1].Slot], conItem.name) != 0 then return end

				EFGM.CLIENT.EQUIPPED[panels[1].Slot][1] = conItem

				table.remove(container.items, panels[1].ID)

				net.Start("PlayerInventoryEquipItemFromContainer", false)
					net.WriteEntity(container.entity)
					net.WriteUInt(panels[1].ID, 16)
					net.WriteUInt(panels[1].Slot, 4)
					net.WriteUInt(1, 4)
				net.SendToServer()

				EFGM.MENU:ReloadContainer()
			else
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				UnEquipItemFromInventory(1, 1, false, false)

				local conItem = container.items[panels[1].ID]
				if conItem == nil then return end

				if AmountInInventory(EFGM.CLIENT.EQUIPPED[panels[1].Slot], conItem.name) != 0 then return end

				EFGM.CLIENT.EQUIPPED[panels[1].Slot][1] = conItem

				table.remove(container.items, panels[1].ID)

				net.Start("PlayerInventoryEquipItemFromContainer", false)
					net.WriteEntity(container.entity)
					net.WriteUInt(panels[1].ID, 16)
					net.WriteUInt(panels[1].Slot, 4)
					net.WriteUInt(1, 4)
				net.SendToServer()

				EFGM.MENU:ReloadContainer()
			end
		end
	end)

	holsterWeaponHolder:Receiver("slot_holster", function(self, panels, dropped, _, x, y)
		if !dropped then return end
		if !EFGM.MENU.Player:Alive() then return end

		if panels[1].Origin == "inventory" then
			if table.IsEmpty(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.HOLSTER.ID][1]) then
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				EquipItemFromInventory(panels[1].ID, panels[1].Slot)
			else
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				UnEquipItemFromInventory(2, 1, false, false)
				EquipItemFromInventory(panels[1].ID, panels[1].Slot)
			end
		end

		if panels[1].Origin == "stash" then
			if table.IsEmpty(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.HOLSTER.ID][1]) then
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				EquipItemFromStash(panels[1].ID, panels[1].Slot)
			else
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				UnEquipItemFromInventory(2, 1, true, false)
				EquipItemFromStash(panels[1].ID, panels[1].Slot)
			end
		end

		if panels[1].Origin == "container" then
			if table.IsEmpty(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.HOLSTER.ID][1]) then
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")

				local conItem = container.items[panels[1].ID]
				if conItem == nil then return end

				if AmountInInventory(EFGM.CLIENT.EQUIPPED[panels[1].Slot], conItem.name) != 0 then return end

				EFGM.CLIENT.EQUIPPED[panels[1].Slot][1] = conItem

				table.remove(container.items, panels[1].ID)

				net.Start("PlayerInventoryEquipItemFromContainer", false)
					net.WriteEntity(container.entity)
					net.WriteUInt(panels[1].ID, 16)
					net.WriteUInt(panels[1].Slot, 4)
					net.WriteUInt(1, 4)
				net.SendToServer()

				EFGM.MENU:ReloadContainer()
			else
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				UnEquipItemFromInventory(2, 1, false, false)

				local conItem = container.items[panels[1].ID]
				if conItem == nil then return end

				if AmountInInventory(EFGM.CLIENT.EQUIPPED[panels[1].Slot], conItem.name) != 0 then return end

				EFGM.CLIENT.EQUIPPED[panels[1].Slot][1] = conItem

				table.remove(container.items, panels[1].ID)

				net.Start("PlayerInventoryEquipItemFromContainer", false)
					net.WriteEntity(container.entity)
					net.WriteUInt(panels[1].ID, 16)
					net.WriteUInt(panels[1].Slot, 4)
					net.WriteUInt(1, 4)
				net.SendToServer()

				EFGM.MENU:ReloadContainer()
			end
		end
	end)

	meleeWeaponHolder:Receiver("slot_melee", function(self, panels, dropped, _, x, y)
		if !dropped then return end
		if !EFGM.MENU.Player:Alive() then return end

		if panels[1].Origin == "inventory" then
			if table.IsEmpty(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.MELEE.ID][1]) then
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				EquipItemFromInventory(panels[1].ID, panels[1].Slot)
			else
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				UnEquipItemFromInventory(3, 1, false, false)
				EquipItemFromInventory(panels[1].ID, panels[1].Slot)
			end
		end

		if panels[1].Origin == "stash" then
			if table.IsEmpty(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.MELEE.ID][1]) then
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				EquipItemFromStash(panels[1].ID, panels[1].Slot)
			else
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				UnEquipItemFromInventory(3, 1, true, false)
				EquipItemFromStash(panels[1].ID, panels[1].Slot)
			end
		end

		if panels[1].Origin == "container" then
			if table.IsEmpty(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.MELEE.ID][1]) then
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")

				local conItem = container.items[panels[1].ID]
				if conItem == nil then return end

				if AmountInInventory(EFGM.CLIENT.EQUIPPED[panels[1].Slot], conItem.name) != 0 then return end

				EFGM.CLIENT.EQUIPPED[panels[1].Slot][1] = conItem

				table.remove(container.items, panels[1].ID)

				net.Start("PlayerInventoryEquipItemFromContainer", false)
					net.WriteEntity(container.entity)
					net.WriteUInt(panels[1].ID, 16)
					net.WriteUInt(panels[1].Slot, 4)
					net.WriteUInt(1, 4)
				net.SendToServer()

				EFGM.MENU:ReloadContainer()
			else
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				UnEquipItemFromInventory(3, 1, false, false)

				local conItem = container.items[panels[1].ID]
				if conItem == nil then return end

				if AmountInInventory(EFGM.CLIENT.EQUIPPED[panels[1].Slot], conItem.name) != 0 then return end

				EFGM.CLIENT.EQUIPPED[panels[1].Slot][1] = conItem

				table.remove(container.items, panels[1].ID)

				net.Start("PlayerInventoryEquipItemFromContainer", false)
					net.WriteEntity(container.entity)
					net.WriteUInt(panels[1].ID, 16)
					net.WriteUInt(panels[1].Slot, 4)
					net.WriteUInt(1, 4)
				net.SendToServer()

				EFGM.MENU:ReloadContainer()
			end
		end
	end)

	nadeWeaponHolder:Receiver("slot_grenade", function(self, panels, dropped, _, x, y)
		if !dropped then return end
		if !EFGM.MENU.Player:Alive() then return end

		if panels[1].Origin == "inventory" then
			if table.IsEmpty(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.GRENADE.ID][1]) then
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				EquipItemFromInventory(panels[1].ID, panels[1].Slot)
			else
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				UnEquipItemFromInventory(4, 1, false, false)
				EquipItemFromInventory(panels[1].ID, panels[1].Slot)
			end
		end

		if panels[1].Origin == "stash" then
			if table.IsEmpty(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.GRENADE.ID][1]) then
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				EquipItemFromStash(panels[1].ID, panels[1].Slot)
			else
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				UnEquipItemFromInventory(4, 1, true, false)
				EquipItemFromStash(panels[1].ID, panels[1].Slot)
			end
		end

		if panels[1].Origin == "container" then
			if table.IsEmpty(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.GRENADE.ID][1]) then
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")

				local conItem = container.items[panels[1].ID]
				if conItem == nil then return end

				if AmountInInventory(EFGM.CLIENT.EQUIPPED[panels[1].Slot], conItem.name) != 0 then return end

				EFGM.CLIENT.EQUIPPED[panels[1].Slot][1] = conItem

				table.remove(container.items, panels[1].ID)

				net.Start("PlayerInventoryEquipItemFromContainer", false)
					net.WriteEntity(container.entity)
					net.WriteUInt(panels[1].ID, 16)
					net.WriteUInt(panels[1].Slot, 4)
					net.WriteUInt(1, 4)
				net.SendToServer()

				EFGM.MENU:ReloadContainer()
			else
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				UnEquipItemFromInventory(4, 1, false, false)

				local conItem = container.items[panels[1].ID]
				if conItem == nil then return end

				if AmountInInventory(EFGM.CLIENT.EQUIPPED[panels[1].Slot], conItem.name) != 0 then return end

				EFGM.CLIENT.EQUIPPED[panels[1].Slot][1] = conItem

				table.remove(container.items, panels[1].ID)

				net.Start("PlayerInventoryEquipItemFromContainer", false)
					net.WriteEntity(container.entity)
					net.WriteUInt(panels[1].ID, 16)
					net.WriteUInt(panels[1].Slot, 4)
					net.WriteUInt(1, 4)
				net.SendToServer()

				EFGM.MENU:ReloadContainer()
			end
		end
	end)

	consumableItemHolder:Receiver("slot_consumable", function(self, panels, dropped, _, x, y)
		if !dropped then return end
		if !EFGM.MENU.Player:Alive() then return end

		if panels[1].Origin == "inventory" then
			if table.IsEmpty(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.CONSUMABLE.ID][1]) then
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				EquipItemFromInventory(panels[1].ID, panels[1].Slot)
			else
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				UnEquipItemFromInventory(5, 1, false, false)
				EquipItemFromInventory(panels[1].ID, panels[1].Slot)
			end
		end

		if panels[1].Origin == "stash" then
			if table.IsEmpty(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.CONSUMABLE.ID][1]) then
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				EquipItemFromStash(panels[1].ID, panels[1].Slot)
			else
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				UnEquipItemFromInventory(5, 1, true, false)
				EquipItemFromStash(panels[1].ID, panels[1].Slot)
			end
		end

		if panels[1].Origin == "container" then
			if table.IsEmpty(EFGM.CLIENT.EQUIPPED[WEAPONSLOTS.CONSUMABLE.ID][1]) then
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")

				local conItem = container.items[panels[1].ID]
				if conItem == nil then return end

				if AmountInInventory(EFGM.CLIENT.EQUIPPED[panels[1].Slot], conItem.name) != 0 then return end

				EFGM.CLIENT.EQUIPPED[panels[1].Slot][1] = conItem

				table.remove(container.items, panels[1].ID)

				net.Start("PlayerInventoryEquipItemFromContainer", false)
					net.WriteEntity(container.entity)
					net.WriteUInt(panels[1].ID, 16)
					net.WriteUInt(panels[1].Slot, 4)
					net.WriteUInt(1, 4)
				net.SendToServer()

				EFGM.MENU:ReloadContainer()
			else
				surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
				UnEquipItemFromInventory(5, 1, false, false)

				local conItem = container.items[panels[1].ID]
				if conItem == nil then return end

				if AmountInInventory(EFGM.CLIENT.EQUIPPED[panels[1].Slot], conItem.name) != 0 then return end

				EFGM.CLIENT.EQUIPPED[panels[1].Slot][1] = conItem

				table.remove(container.items, panels[1].ID)

				net.Start("PlayerInventoryEquipItemFromContainer", false)
					net.WriteEntity(container.entity)
					net.WriteUInt(panels[1].ID, 16)
					net.WriteUInt(panels[1].Slot, 4)
					net.WriteUInt(1, 4)
				net.SendToServer()

				EFGM.MENU:ReloadContainer()
			end
		end
	end)

	EFGM.MENU:ReloadSlots()

	local healthHolder = vgui.Create("DPanel", playerPanel)
	healthHolder:SetPos(EFGM.MenuScale(10), EFGM.MenuScale(895))
	healthHolder:SetSize(EFGM.MenuScale(125), EFGM.MenuScale(55))

	function healthHolder:Paint(w, h)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

		draw.SimpleTextOutlined(EFGM.MENU.Player:Health() or "0", "PuristaBold50", w - EFGM.MenuScale(8), 0, COLORS.healthGreenColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

		surface.SetDrawColor(COLORS.healthGreenColor)
		surface.SetMaterial(MATS.healthIcon)
		surface.DrawTexturedRect(0, 0, EFGM.MenuScale(53), EFGM.MenuScale(53))
	end

	local healthText = vgui.Create("DPanel", playerPanel)
	healthText:SetSize(EFGM.MenuScale(80), EFGM.MenuScale(30))
	healthText:SetPos(EFGM.MenuScale(10), EFGM.MenuScale(865))

	function healthText:Paint(w, h)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, EFGM.MenuScale(220), EFGM.MenuScale(2))

		draw.SimpleTextOutlined("HEALTH", "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local playerButtonPanel = vgui.Create("DPanel", playerPanel)
	playerButtonPanel:SetSize(playerPanel:GetWide() - EFGM.MenuScale(20), EFGM.MenuScale(28))
	playerButtonPanel:SetPos(EFGM.MenuScale(10), EFGM.MenuScale(46))
	playerButtonPanel:SetPaintBackground(false)

	if EFGM.MENU.Player:IsInHideout() then
		surface.SetFont("PuristaBold24")
		local unloadText = "UNEQUIP ALL"
		local unloadTextSize = surface.GetTextSize(unloadText)
		local unloadButtonSize = unloadTextSize + EFGM.MenuScale(10)

		local unloadButton = vgui.Create("DButton", playerButtonPanel)
		unloadButton:Dock(RIGHT)
		unloadButton:SetSize(unloadButtonSize, EFGM.MenuScale(28))
		unloadButton:SetText("")
		unloadButton:DockMargin(EFGM.MenuScale(10), 0, 0, 0)

		function unloadButton:Paint(w, h)
			surface.SetDrawColor(COLORS.containerBackgroundColor)
			surface.DrawRect(0, 0, unloadTextSize + EFGM.MenuScale(10), h)

			surface.SetDrawColor(COLORS.transparentWhiteColor)
			surface.DrawRect(0, 0, unloadTextSize + EFGM.MenuScale(10), EFGM.MenuScale(2))

			draw.SimpleTextOutlined(unloadText, "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		end

		function unloadButton:Think()
			if EFGM.CLIENT.EQUIPPED == {} then self:SetWide(0) else self:SetWide(unloadButtonSize) end
		end

		function unloadButton:OnCursorEntered()
			surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
		end

		function unloadButton:DoClick()
			surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
			UnequipAll()
		end

		if EFGM.MENU.Player:IsScav() then unloadButton:SetEnabled(false) end

		surface.SetFont("PuristaBold24")
		local factionText = "SWITCH TO SCAV"
		local factionTextSize = surface.GetTextSize(factionText)
		local factionButtonSize = factionTextSize + EFGM.MenuScale(10)

		local factionButton = vgui.Create("DButton", playerButtonPanel)
		factionButton:Dock(RIGHT)
		factionButton:SetSize(factionButtonSize, EFGM.MenuScale(28))
		factionButton:SetText("")

		function factionButton:Paint(w, h)
			surface.SetFont("PuristaBold24")

			if EFGM.MENU.Player:IsPMC() then
				factionText = "SWITCH TO SCAV"
				factionTextSize = surface.GetTextSize(factionText)
				factionButtonSize = factionTextSize + EFGM.MenuScale(10)
			else
				factionText = "SWITCH TO PMC"
				factionTextSize = surface.GetTextSize(factionText)
				factionButtonSize = factionTextSize + EFGM.MenuScale(10)
			end

			self:SetWide(factionButtonSize)
			self:SetX(playerPanel:GetWide() - unloadButtonSize - factionTextSize - EFGM.MenuScale(25))

			surface.SetDrawColor(COLORS.containerBackgroundColor)
			surface.DrawRect(0, 0, factionTextSize + EFGM.MenuScale(10), h)

			surface.SetDrawColor(COLORS.transparentWhiteColor)
			surface.DrawRect(0, 0, factionTextSize + EFGM.MenuScale(10), EFGM.MenuScale(2))

			draw.SimpleTextOutlined(factionText, "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		end

		function factionButton:OnCursorEntered()
			surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
		end

		function factionButton:DoClick()
			surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
			net.Start("PlayerSwitchFactions", false)
			net.SendToServer()
		end
	end

	local inventoryPanel = vgui.Create("DPanel", contents)
	inventoryPanel:Dock(LEFT)
	inventoryPanel:DockMargin(EFGM.MenuScale(13), 0, 0, 0)
	inventoryPanel:SetSize(EFGM.MenuScale(613), 0)

	function inventoryPanel:Paint(w, h)
		BlurPanel(self, 5)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(6))
	end

	local inventoryText = vgui.Create("DPanel", inventoryPanel)
	inventoryText:Dock(TOP)
	inventoryText:SetSize(0, EFGM.MenuScale(36))

	function inventoryText:Paint(w, h)
		surface.SetDrawColor(COLORS.containerHeaderColor)
		surface.DrawRect(0, 0, w, h)

		draw.SimpleTextOutlined("INVENTORY", "PuristaBold32", EFGM.MenuScale(5), EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local itemsHolder = vgui.Create("DPanel", inventoryPanel)
	itemsHolder:Dock(FILL)
	itemsHolder:DockMargin(EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(9))
	itemsHolder:SetSize(0, 0)
	itemsHolder:SetPaintBackground(false)

	local itemsText = vgui.Create("DPanel", itemsHolder)
	itemsText:Dock(TOP)
	itemsText:SetSize(0, EFGM.MenuScale(28))

	surface.SetFont("PuristaBold24")
	local usedWeight = string.format("%04.2f", EFGM.MENU.Player:GetNWFloat("InventoryWeight", 0.000))
	local maxWeight = 85
	local weightText = usedWeight .. " / " .. maxWeight .. "KG"
	local weightTextSize = surface.GetTextSize(weightText)
	local weightColor

	function itemsText:Paint(w, h)
		surface.SetFont("PuristaBold24")
		usedWeight = string.format("%04.2f", EFGM.MENU.Player:GetNWFloat("InventoryWeight", 0.000))
		maxWeight = 85
		weightText = usedWeight .. " / " .. maxWeight .. "KG"
		weightTextSize = surface.GetTextSize(weightText)

		BlurPanel(self, 3)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, weightTextSize + EFGM.MenuScale(220), h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, weightTextSize + EFGM.MenuScale(220), EFGM.MenuScale(2))

		draw.SimpleTextOutlined(weightText, "PuristaBold24", EFGM.MenuScale(215), EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

		-- total weight capacity
		surface.SetDrawColor(COLORS.transparentBlackColor)
		surface.DrawRect(EFGM.MenuScale(30), EFGM.MenuScale(7), EFGM.MenuScale(180), EFGM.MenuScale(16))

		-- used weight capacity
		if EFGM.MENU.Player:GetNWFloat("InventoryWeight", 0.000) < 30 then
			weightColor = COLORS.weightUnderColor
		elseif EFGM.MENU.Player:GetNWFloat("InventoryWeight", 0.000) >= 30 and EFGM.MENU.Player:GetNWFloat("InventoryWeight", 0.000) < 85 then
			weightColor = COLORS.weightWarningColor
		elseif EFGM.MENU.Player:GetNWFloat("InventoryWeight", 0.000) >= 85 then
			weightColor = COLORS.weightMaxColor
		end

		surface.SetDrawColor(weightColor)
		surface.DrawRect(EFGM.MenuScale(30), EFGM.MenuScale(7), math.min((usedWeight / maxWeight) * EFGM.MenuScale(180), EFGM.MenuScale(180)), EFGM.MenuScale(16))

		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(EFGM.MenuScale(30), EFGM.MenuScale(7), EFGM.MenuScale(180), EFGM.MenuScale(1))
		surface.DrawRect(EFGM.MenuScale(30), EFGM.MenuScale(23), EFGM.MenuScale(180), EFGM.MenuScale(1))
		surface.DrawRect(EFGM.MenuScale(30), EFGM.MenuScale(7), EFGM.MenuScale(1), EFGM.MenuScale(16))
		surface.DrawRect(EFGM.MenuScale(210) - 1, EFGM.MenuScale(7), EFGM.MenuScale(1), EFGM.MenuScale(16))
	end

	local weightIcon = vgui.Create("DButton", itemsHolder)
	weightIcon:SetPos(0, 0)
	weightIcon:SetSize(EFGM.MenuScale(28), EFGM.MenuScale(28))
	weightIcon:SetText("")

	function weightIcon:Paint(w, h)
		surface.SetDrawColor(COLORS.pureWhiteColor)
		surface.SetMaterial(MATS.weightIcon)
		surface.DrawTexturedRect(0, EFGM.MenuScale(1), EFGM.MenuScale(28), EFGM.MenuScale(28))
	end

	function weightIcon:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")

		local maxLossMove = 45
		local maxLossInertia = 0.75
		local maxLossADS = 3
		local maxLossSway = 1.2
		local maxLossLean = 0.6

		local paint = function()
			local w, h = EFGM.MENU.Tooltip:GetSize()

			surface.SetDrawColor(COLORS.tooltipBackgroundColor)
			surface.DrawRect(0, 0, w, h)

			surface.SetDrawColor(COLORS.tooltipBackgroundColorTransparent)
			surface.DrawRect(0, 0, w, h)

			surface.SetDrawColor(COLORS.tooltipHeaderColor)
			surface.DrawRect(0, 0, w, EFGM.MenuScale(5))

			surface.SetDrawColor(COLORS.transparentWhiteColor)
			surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
			surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
			surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
			surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

			draw.SimpleTextOutlined("WEIGHT", "PuristaBold24", EFGM.MenuScale(5), EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			draw.SimpleTextOutlined("Your carry weight can begin to negatively affect your character if it goes unchecked.", "Purista18", EFGM.MenuScale(5), EFGM.MenuScale(25), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

			draw.SimpleTextOutlined("EFFECTS", "PuristaBold24", EFGM.MenuScale(5), EFGM.MenuScale(50), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, 1, COLORS.blackColor)
			draw.SimpleTextOutlined("MOVEMENT SPEED: -" .. math.max(0, math.min(maxLossMove, math.Round(math.max(0, EFGM.MENU.Player:GetNWFloat("InventoryWeight", 0.000) - EFGM.CONFIG.PLAYER.UNDERWEIGHTLIMIT) * 0.818, 2))) .. "u/s", "PuristaBold16", EFGM.MenuScale(5), EFGM.MenuScale(70), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			draw.SimpleTextOutlined("MOVEMENT INERTIA: +" .. math.max(0, math.min(maxLossInertia, math.Round(math.max(0, EFGM.MENU.Player:GetNWFloat("InventoryWeight", 0.000) - EFGM.CONFIG.PLAYER.UNDERWEIGHTLIMIT) * 0.0136, 2))) * 100 .. "%", "PuristaBold16", EFGM.MenuScale(5), EFGM.MenuScale(83), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			draw.SimpleTextOutlined("AIM DOWN SIGHTS TIME: +" .. math.max(1, 1 + math.min(maxLossADS, math.Round((math.max(0, EFGM.MENU.Player:GetNWFloat("InventoryWeight", 0.000) - EFGM.CONFIG.PLAYER.UNDERWEIGHTLIMIT) * 0.011) * 5, 2))) * 100 .. "%", "PuristaBold16", EFGM.MenuScale(5), EFGM.MenuScale(96), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			draw.SimpleTextOutlined("WEAPON SWAY: +" .. math.max(1, 1 + math.min(maxLossSway, math.Round((math.max(0, EFGM.MENU.Player:GetNWFloat("InventoryWeight", 0.000) - EFGM.CONFIG.PLAYER.UNDERWEIGHTLIMIT) * 0.011) * 2, 2))) * 100 .. "%", "PuristaBold16", EFGM.MenuScale(5), EFGM.MenuScale(109), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			draw.SimpleTextOutlined("LEANING SPEED: -" .. 100 - math.min(1, 1 - math.min(maxLossLean, math.Round(math.max(0, EFGM.MENU.Player:GetNWFloat("InventoryWeight", 0.000) - EFGM.CONFIG.PLAYER.UNDERWEIGHTLIMIT) * 0.0109, 2))) * 100 .. "%", "PuristaBold16", EFGM.MenuScale(5), EFGM.MenuScale(122), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

			surface.SetDrawColor(COLORS.transparentWhiteColor)
			surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(150), EFGM.MenuScale(550), EFGM.MenuScale(1))
			surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(159), EFGM.MenuScale(550), EFGM.MenuScale(1))
			surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(150), EFGM.MenuScale(1), EFGM.MenuScale(10))
			surface.DrawRect(EFGM.MenuScale(554), EFGM.MenuScale(150), EFGM.MenuScale(1), EFGM.MenuScale(10))

			surface.SetDrawColor(Color(255, 255, 0, 55))
			surface.DrawRect(EFGM.MenuScale(198), EFGM.MenuScale(150), EFGM.MenuScale(10), EFGM.MenuScale(10))

			surface.SetDrawColor(Color(255, 0, 0, 55))
			surface.DrawRect(EFGM.MenuScale(545), EFGM.MenuScale(150), EFGM.MenuScale(10), EFGM.MenuScale(10))

			surface.SetDrawColor(30, 30, 30, 125)
			surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(150), EFGM.MenuScale(550), EFGM.MenuScale(10))

			surface.SetDrawColor(weightColor)
			surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(150), math.min(usedWeight / maxWeight * EFGM.MenuScale(550), EFGM.MenuScale(550)), EFGM.MenuScale(10))
		end

		EFGM.MENU.Tooltip:DisplayTip(self, paint, EFGM.MenuScale(560), EFGM.MenuScale(165))
	end

	function weightIcon:OnCursorExited()
		EFGM.MENU.Tooltip:RemoveTip()
	end

	local unloadText = ""
	local unloadTextSize = EFGM.MenuScale(-15)
	local unloadButtonSize = 0

	if EFGM.MENU.Player:IsInHideout() then
		surface.SetFont("PuristaBold24")
		unloadText = "STASH ALL"
		unloadTextSize = surface.GetTextSize(unloadText)
		unloadButtonSize = unloadTextSize + EFGM.MenuScale(10)

		local unloadButton = vgui.Create("DButton", itemsHolder)
		unloadButton:SetPos(EFGM.MenuScale(225) + weightTextSize, 0)
		unloadButton:SetSize(unloadButtonSize, EFGM.MenuScale(28))
		unloadButton:SetText("")

		function unloadButton:Paint(w, h)
			self:SetX(EFGM.MenuScale(225) + weightTextSize)

			surface.SetDrawColor(COLORS.containerBackgroundColor)
			surface.DrawRect(0, 0, unloadTextSize + EFGM.MenuScale(10), h)

			surface.SetDrawColor(COLORS.transparentWhiteColor)
			surface.DrawRect(0, 0, unloadTextSize + EFGM.MenuScale(10), EFGM.MenuScale(2))

			draw.SimpleTextOutlined(unloadText, "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		end

		function unloadButton:Think()
			if #EFGM.CLIENT.INVENTORY == 0 then self:SetWidth(0) else self:SetWidth(unloadButtonSize) end
		end

		function unloadButton:OnCursorEntered()
			surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
		end

		function unloadButton:DoClick()
			surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
			UnloadInventoryToStash()
		end
	end

	local playerItemsHolder = vgui.Create("DScrollPanel", itemsHolder)
	playerItemsHolder:SetPos(0, EFGM.MenuScale(32))
	playerItemsHolder:SetSize(EFGM.MenuScale(593), EFGM.MenuScale(872))

	function playerItemsHolder:Paint(w, h)
		BlurPanel(self, 3)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)
	end

	function playerItemsHolder:OnVScroll(offset)
		self.pnlCanvas:SetPos(0, offset)
		if !IsValid(contextMenu) then return end
		contextMenu:AlphaTo(0, 0.05, 0, function() contextMenu:Remove() end)
	end

	function playerItemsHolder:PaintOver(w, h)
		if EFGM.MENU.Player:IsScav() then
			surface.SetDrawColor(COLORS.whiteBorderColor)
			surface.SetMaterial(MATS.blockedIcon)
			surface.DrawTexturedRect(w / 2 - EFGM.MenuScale(72), h / 2 - EFGM.MenuScale(116), EFGM.MenuScale(144), EFGM.MenuScale(144))
		end
	end

	playerItemsHolder:Receiver("items", function(self, panels, dropped, _, x, y)
		if !dropped then return end

		if panels[1].Origin == "equipped" then
			if !EFGM.MENU.Player:Alive() then return end
			surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
			UnEquipItemFromInventory(panels[1].SlotID, panels[1].Slot)
		end

		if panels[1].Origin == "stash" then
			surface.PlaySound("ui/inv_item_toinv_" .. math.random(1, 7) .. ".wav")
			TakeFromStashToInventory(panels[1].ID)
		end

		if panels[1].Origin == "container" then
			surface.PlaySound("ui/inv_item_toinv_" .. math.random(1, 7) .. ".wav")
			table.remove(container.items, panels[1].ID)

			net.Start("PlayerInventoryLootItemFromContainer", false)
				net.WriteEntity(container.entity)
				net.WriteUInt(panels[1].ID, 16)
			net.SendToServer()

			EFGM.MENU:ReloadContainer()
		end
	end)

	local playerItems = vgui.Create("DIconLayout", playerItemsHolder)
	playerItems:Dock(TOP)
	playerItems:SetSpaceX(0)
	playerItems:SetSpaceY(0)

	local playerItemsBar = playerItemsHolder:GetVBar()
	playerItemsBar:SetHideButtons(true)
	playerItemsBar:SetSize(EFGM.MenuScale(5), 0)

	function playerItemsBar:Paint(w, h)
		surface.SetDrawColor(COLORS.scrollerColor)
		surface.DrawRect(0, 0, EFGM.MenuScale(5), h)
	end

	function playerItemsBar.btnGrip:Paint(w, h)
		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, EFGM.MenuScale(5), h)
	end

	function EFGM.MENU:ReloadInventory()
		playerItems:Clear()
		plyItems = {}

		for k, v in ipairs(EFGM.CLIENT.INVENTORY) do
			local def = EFGM.ITEMS[v.name]
			if def == nil then continue end

			local count = math.min(math.max(v.data.count, 1), def.stackSize)
			local baseValue = def.value
			local isConsumable = (def.consumableType == "heal" or def.consumableType == "key")

			local value
			if !isConsumable then
				value = baseValue * count
			else
				value = math.floor(baseValue * ((v.data.durability or def.consumableValue) / def.consumableValue))
			end

			plyItems[k] = {
				name = v.name,
				id = k,
				data = v.data,
				value = value,
				weight = (def.weight or 0.1) * count,
				atts = 0,
				def = def
			}

			if v.data.att then
				local atts = GetPrefixedAttachmentListFromCode(v.data.att)
				if !atts then return end

				for _, a in ipairs(atts) do
					local att = EFGM.ITEMS[a]
					if att == nil then continue end

					plyItems[k].value = plyItems[k].value + att.value
					plyItems[k].weight = plyItems[k].weight + (att.weight or 0.1)
					plyItems[k].atts = plyItems[k].atts + 1
				end
			end
		end

		if plyItems[1] == nil then return end

		table.sort(plyItems, function(a, b)
			if a == nil and b == nil then return false end
			if a == nil then return false end
			if b == nil then return true end

			local a_def = a.def or EFGM.ITEMS[a.name]
			local b_def = b.def or EFGM.ITEMS[b.name]

			if a_def == nil and b_def == nil then return false end
			if a_def == nil then return false end
			if b_def == nil then return true end

			local a_size = (a_def.sizeX * a_def.sizeY) or 1
			local b_size = (b_def.sizeX * b_def.sizeY) or 1
			if a_size != b_size then return a_size > b_size end

			local a_type = a_def.equipType or EQUIPTYPE.None
			local b_type = b_def.equipType or EQUIPTYPE.None
			if a_type != b_type then return a_type < b_type end

			local a_name = a_def.displayName or ""
			local b_name = b_def.displayName or ""
			if a_name != b_name then return string.upper(a_name) < string.upper(b_name) end

			local a_fullName = a_def.fullName or ""
			local b_fullName = b_def.fullName or ""
			if a_fullName != b_fullName then return string.upper(a_fullName) < string.upper(b_fullName) end

			local a_tag = a.data.tag
			local b_tag = b.data.tag
			if a_tag != b_tag then
				if !a_tag then return false end
				if !b_tag then return true end
				return string.upper(a_tag) < string.upper(b_tag)
			end

			local a_durability = a.data.durability or 0
			local b_durability = b.data.durability or 0
			if a_durability != b_durability then return a_durability > b_durability end

			local a_count = a.data.count or 1
			local b_count = b.data.count or 1
			if a_count != b_count then return a_count > b_count end

			local a_value = a.value or 0
			local b_value = b.value or 0
			if a_value != b_value then return a_value > b_value end

			return false
		end)

		local canStash = EFGM.MENU.Player:IsInHideout() and table.IsEmpty(EFGM.MENU.Container)

		local co = coroutine.create(function()
			for k, v in ipairs(plyItems) do
				local i = v.def or EFGM.ITEMS[v.name]
				if i == nil then continue end

				local count = v.data.count
				local isConsumable = i.consumableType == "heal" or i.consumableType == "key"
				local isAmmo = i.equipType == EQUIPTYPE.Ammunition and count > 1

				local item = playerItems:Add("EItemInventory")
				item:SetSize(EFGM.MenuScale(57 * i.sizeX), EFGM.MenuScale(57 * i.sizeY))
				item:Droppable("items")
				item.ID = v.id
				item.Slot = i.equipSlot
				item.Origin = "inventory"

				if i.equipType == EQUIPTYPE.Weapon or i.equipType == EQUIPTYPE.Consumable then
					local slotDrop = {
						[WEAPONSLOTS.PRIMARY.ID] = "slot_primary",
						[WEAPONSLOTS.HOLSTER.ID] = "slot_holster",
						[WEAPONSLOTS.MELEE.ID] = "slot_melee",
						[WEAPONSLOTS.GRENADE.ID] = "slot_grenade",
						[WEAPONSLOTS.CONSUMABLE.ID] = "slot_consumable"
					}

					if slotDrop[item.Slot] then item:Droppable(slotDrop[item.Slot]) end
				end

				if canStash then item:Droppable("stash") end

				local borderColor = COLORS.itemBackgroundColor

				surface.SetFont("PuristaBold14")
				local nameSize = surface.GetTextSize(i.displayName)
				local nameFont = "PuristaBold14"
				local tagFont = "PuristaBold10"
				local tagH = EFGM.MenuScale(10)

				if nameSize < item:GetWide() - EFGM.MenuScale(17) then
					nameFont = "PuristaBold18"
					tagFont = "PuristaBold14"
					tagH = EFGM.MenuScale(12)
				end

				local countText = isAmmo and count or isConsumable and v.data.durability .. "/" .. i.consumableValue or nil
				local countSize = nil
				local countSizeY = nil
				local countFont = nil

				if isConsumable or isAmmo then
					countSize = surface.GetTextSize(isAmmo and count or isConsumable and i.consumableValue .. "/" .. i.consumableValue)
					countSizeY = EFGM.MenuScale(16)
					countFont = "PuristaBold14"

					if countSize < item:GetWide() - EFGM.MenuScale(17) then
						countSizeY = EFGM.MenuScale(20)
						countFont = "PuristaBold18"
					end
				end

				function item:Paint(w, h)
					surface.SetDrawColor(borderColor)
					surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
					surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
					surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
					surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

					surface.SetDrawColor(i.iconColor or COLORS.itemColor)
					surface.DrawRect(0, 0, w, h)

					surface.SetDrawColor(COLORS.pureWhiteColor)
					surface.SetMaterial(i.icon)
					surface.DrawTexturedRect(0, 0, w, h)

					if self.PaintingDragging then return end

					draw.SimpleTextOutlined(i.displayName, nameFont, w - EFGM.MenuScale(3), EFGM.MenuScale(-1), COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

					if isConsumable or isAmmo then
						draw.SimpleTextOutlined(countText, countFont, w - EFGM.MenuScale(3), h - countSizeY, COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
					end

					if i.caliber then
						draw.SimpleTextOutlined(i.caliber, "PuristaBold18", EFGM.MenuScale(3), h - EFGM.MenuScale(19), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
					end

					if v.data.tag then
						draw.SimpleTextOutlined(v.data.tag, tagFont, w - EFGM.MenuScale(3), tagH, COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
					end
				end

				function item:OnCursorEntered()
					surface.PlaySound("ui/inv_item_hover_" .. math.random(1, 3) .. ".wav")

					borderColor = COLORS.itemBackgroundColorHovered

					surface.SetFont("PuristaBold18")
					local tipItemName = i.fullName .. " (" .. i.displayName .. ")"
					if count > 1 and isAmmo then
						tipItemName = count .. "x " .. tipItemName
					elseif isConsumable then
						tipItemName = tipItemName .. " [" .. countText .. "]"
					end
					local tipItemNameSize = surface.GetTextSize(tipItemName)
					surface.SetFont("Purista14")
					local canPurchase = i.canPurchase == true or i.canPurchase == nil
					local tipDesc = i.displayType .. " / " .. v.weight .. "kg / ₽" .. string.FormatComma(v.value)
					if canPurchase then tipDesc = tipDesc .. " / LVL " .. i.levelReq else tipDesc = tipDesc .. " / FIR only" end
					local tipDescSize = surface.GetTextSize(tipDesc)

					local paint = function()
						local w, h = EFGM.MENU.Tooltip:GetSize()

						surface.SetDrawColor(i.iconColor or COLORS.itemColor)
						surface.DrawRect(0, 0, w, h)

						surface.SetDrawColor(COLORS.tooltipBackgroundColorTransparent)
						surface.DrawRect(0, 0, w, h)

						local headerColor = i.iconColor and i.iconColor:Copy() or COLORS.tooltipHeaderColor
						if i.iconColor then
							headerColor.r = headerColor.r + 30
							headerColor.g = headerColor.g + 30
							headerColor.b = headerColor.b + 30
						end

						surface.SetDrawColor(headerColor)
						surface.DrawRect(0, 0, w, EFGM.MenuScale(5))

						surface.SetDrawColor(COLORS.transparentWhiteColor)
						surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
						surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
						surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
						surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

						draw.SimpleTextOutlined(tipItemName, "PuristaBold18", EFGM.MenuScale(5), EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
						draw.SimpleTextOutlined(tipDesc, "Purista14", EFGM.MenuScale(5), EFGM.MenuScale(20), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
					end

					EFGM.MENU.Tooltip:DisplayTip(self, paint, math.max(tipItemNameSize, tipDescSize) + EFGM.MenuScale(10), EFGM.MenuScale(40), 0.4)
				end

				function item:OnCursorExited()
					borderColor = COLORS.itemBackgroundColor

					EFGM.MENU.Tooltip:RemoveTip()
				end

				function item:DoClick()
					if input.IsKeyDown(KEY_LSHIFT) and (EFGM.MENU.Player:IsInHideout() and table.IsEmpty(EFGM.MENU.Container)) then
						surface.PlaySound("ui/inv_item_tostash_" .. math.random(1, 7) .. ".wav")
						StashItemFromInventory(v.id)
					end

					if input.IsKeyDown(KEY_LALT) and (i.equipType == EQUIPTYPE.Weapon or i.equipType == EQUIPTYPE.Consumable) then
						if !EFGM.MENU.Player:Alive() then return end
						surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
						EquipItemFromInventory(v.id, i.equipSlot)
					end
				end

				function item:DoDoubleClick()
					EFGM.MENU.InspectItem(v.name, v.data)
					surface.PlaySound("ui/element_select.wav")
				end

				function item:DoRightClick()
					local x, y = itemsHolder:LocalCursorPos()
					local sideH, sideV

					surface.PlaySound("ui/context.wav")

					if x <= (itemsHolder:GetWide() / 2) then sideH = true else sideH = false end
					if y <= (itemsHolder:GetTall() / 2) then sideV = true else sideV = false end

					if IsValid(EFGM.MENU.ELEMENTS.ContextMenu) then EFGM.MENU.ELEMENTS.ContextMenu:Remove() end
					local contextMenu = vgui.Create("EContextMenu", itemsHolder)
					contextMenu:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(10))
					contextMenu:DockPadding(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5))
					contextMenu:SetAlpha(0)
					contextMenu:AlphaTo(255, 0.1, 0, nil)
					contextMenu:RequestFocus()
					EFGM.MENU.ELEMENTS.ContextMenu = contextMenu

					local inspectButton = vgui.Create("EContextButton", contextMenu)
					inspectButton:SetText("INSPECT")
					inspectButton.OnClickEvent = function()
						EFGM.MENU.InspectItem(v.name, v.data)
					end

					-- actions that can be performed on this specific item
					-- default
					local actions = {
						droppable = true,
						equipable = false,
						consumable = false,
						splittable = false,
						stashable = false,
						deletable = false,
						ammoBuyable = false
					}

					actions.stashable = canStash
					actions.equipable = i.equipType == EQUIPTYPE.Weapon or i.equipType == EQUIPTYPE.Consumable
					actions.splittable = i.stackSize > 1 and count > 1
					actions.consumable = !EFGM.MENU.Player:IsInHideout() and i.equipType == EQUIPTYPE.Consumable
					actions.deletable = EFGM.MENU.Player:IsInHideout()
					actions.ammoBuyable = EFGM.MENU.Player:IsInHideout() and i.ammoID
					actions.taggable = EFGM.MENU.Player:IsInHideout() and v.data.tag == nil and (actions.ammoBuyable or i.equipSlot == WEAPONSLOTS.MELEE.ID) and count <= 1

					if actions.stashable then
						local stashButton = vgui.Create("EContextButton", contextMenu)
						stashButton:SetText("STASH")
						stashButton.OnClickSound = "ui/inv_item_tostash_" .. math.random(1, 7) .. ".wav"
						stashButton.OnClickEvent = function()
							StashItemFromInventory(v.id)
						end
					end

					if actions.equipable then
						local equipButton = vgui.Create("EContextButton", contextMenu)
						equipButton:SetText("EQUIP")
						equipButton.OnClickSound = "ui/equip_" .. math.random(1, 6) .. ".wav"
						equipButton.OnClickEvent = function()
							if !EFGM.MENU.Player:Alive() then return end
							EquipItemFromInventory(v.id, i.equipSlot)
						end
					end

					if actions.ammoBuyable then
						local buyAmmoButton = vgui.Create("EContextButton", contextMenu)
						buyAmmoButton:SetText("BUY AMMO")
						buyAmmoButton.OnClickSound = "nil"
						buyAmmoButton.OnClickEvent = function()
							EFGM.MENU.ConfirmPurchase(i.ammoID, "inv", false)
						end
					end

					if actions.taggable then
						local tagButton = vgui.Create("EContextButton", contextMenu)
						tagButton:SetText("SET TAG")
						tagButton.OnClickEvent = function()
							EFGM.MENU.ConfirmTag(v.name, v.id, "inv", 0, 0)
						end
					end

					if actions.splittable then
						local splitButton = vgui.Create("EContextButton", contextMenu)
						splitButton:SetText("SPLIT")
						splitButton.OnClickSound = "nil"
						splitButton.OnClickEvent = function()
							EFGM.MENU.ConfirmSplit(v.name, v.data, v.id, "inv")
						end
					end

					if actions.droppable then
						local dropButton = vgui.Create("EContextButton", contextMenu)
						dropButton:SetText("DROP")
						dropButton.OnClickEvent = function()
							DropItemFromInventory(v.id)
						end
					end

					if actions.deletable then
						local deleteButton = vgui.Create("EContextButton", contextMenu)
						deleteButton:SetText("DELETE")
						deleteButton.OnClickSound = "nil"
						deleteButton.OnClickEvent = function()
							EFGM.MENU.ConfirmDelete(v.name, v.id, "inv", 0, 0)
						end
					end

					contextMenu:SetTallAfterCTX()

					if sideH == true then
						contextMenu:SetX(math.Clamp(x + EFGM.MenuScale(5), EFGM.MenuScale(5), itemsHolder:GetWide() - contextMenu:GetWide() - EFGM.MenuScale(5)))
					else
						contextMenu:SetX(math.Clamp(x - contextMenu:GetWide() - EFGM.MenuScale(5), EFGM.MenuScale(5), itemsHolder:GetWide() - contextMenu:GetWide() - EFGM.MenuScale(5)))
					end

					if sideV == true then
						contextMenu:SetY(math.Clamp(y + EFGM.MenuScale(5), EFGM.MenuScale(5), itemsHolder:GetTall() - contextMenu:GetTall() - EFGM.MenuScale(5)))
					else
						contextMenu:SetY(math.Clamp(y - contextMenu:GetTall() + EFGM.MenuScale(5), EFGM.MenuScale(5), itemsHolder:GetTall() - contextMenu:GetTall() - EFGM.MenuScale(5)))
					end
				end

				coroutine.yield()
			end
		end)

		while true do
			if coroutine.status(co) == "dead" then return end
			coroutine.resume(co)
		end
	end

	EFGM.MENU:ReloadInventory()

	if !table.IsEmpty(container) then
		local containerPanel = vgui.Create("DPanel", contents)
		containerPanel:Dock(LEFT)
		containerPanel:DockMargin(EFGM.MenuScale(13), 0, 0, 0)
		containerPanel:SetSize(EFGM.MenuScale(613), 0)

		function containerPanel:Paint(w, h)
			BlurPanel(self, 5)

			surface.SetDrawColor(COLORS.containerBackgroundColor)
			surface.DrawRect(0, 0, w, h)

			surface.SetDrawColor(COLORS.transparentWhiteColor)
			surface.DrawRect(0, 0, w, EFGM.MenuScale(6))
		end

		local containerText = vgui.Create("DPanel", containerPanel)
		containerText:Dock(TOP)
		containerText:SetSize(0, EFGM.MenuScale(36))

		function containerText:Paint(w, h)
			surface.SetDrawColor(COLORS.containerHeaderColor)
			surface.DrawRect(0, 0, w, h)

			draw.SimpleTextOutlined(string.upper(container.name), "PuristaBold32", EFGM.MenuScale(5), EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		end

		local containerHolder = vgui.Create("DPanel", containerPanel)
		containerHolder:Dock(FILL)
		containerHolder:DockMargin(EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(9))
		containerHolder:SetSize(0, 0)
		containerHolder:SetPaintBackground(false)

		local containerItemsHolder = vgui.Create("DScrollPanel", containerHolder)
		containerItemsHolder:SetPos(0, EFGM.MenuScale(32))
		containerItemsHolder:SetSize(EFGM.MenuScale(593), EFGM.MenuScale(872))

		function containerItemsHolder:Paint(w, h)
			BlurPanel(self, 3)

			surface.SetDrawColor(COLORS.containerBackgroundColor)
			surface.DrawRect(0, 0, w, h)

			surface.SetDrawColor(COLORS.whiteBorderColor)
			surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
			surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
			surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
			surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)
		end

		function containerItemsHolder:OnVScroll(offset)
			self.pnlCanvas:SetPos(0, offset)
			if !IsValid(contextMenu) then return end
			contextMenu:AlphaTo(0, 0.05, 0, function() contextMenu:Remove() end)
		end

		local containerItems = vgui.Create("DIconLayout", containerItemsHolder)
		containerItems:Dock(TOP)
		containerItems:SetSpaceX(0)
		containerItems:SetSpaceY(0)

		function containerItems:Think()
			if !IsValid(container.entity) then
				EFGM.MENU:RunOnClose()
				EFGM.MENU.MenuFrame:AlphaTo(0, 0.05, 0, function()
					EFGM.MENU.MenuFrame:Close()
				end)
			end
		end

		local containerItemsBar = containerItemsHolder:GetVBar()
		containerItemsBar:SetHideButtons(true)
		containerItemsBar:SetSize(EFGM.MenuScale(5), 0)

		function containerItemsBar:Paint(w, h)
			surface.SetDrawColor(COLORS.scrollerColor)
			surface.DrawRect(0, 0, EFGM.MenuScale(5), h)
		end

		function containerItemsBar.btnGrip:Paint(w, h)
			surface.SetDrawColor(COLORS.transparentWhiteColor)
			surface.DrawRect(0, 0, EFGM.MenuScale(5), h)
		end

		function EFGM.MENU:ReloadContainer()
			if table.IsEmpty(container) then return end

			containerItems:Clear()
			local conItems = {}

			for k, v in ipairs(container.items) do
				local def = EFGM.ITEMS[v.name]
				if def == nil then continue end

				local count = math.min(math.max(v.data.count, 1), def.stackSize)
				local baseValue = def.value
				local isConsumable = (def.consumableType == "heal" or def.consumableType == "key")

				local value
				if !isConsumable then
					value = baseValue * count
				else
					value = math.floor(baseValue * ((v.data.durability or def.consumableValue) / def.consumableValue))
				end

				conItems[k] = {
					name = v.name,
					id = k,
					data = v.data,
					value = value,
					weight = (def.weight or 0.1) * count,
					atts = 0,
					def = def
				}

				if v.data.att then
					local atts = GetPrefixedAttachmentListFromCode(v.data.att)
					if !atts then return end

					for _, a in ipairs(atts) do
						local att = EFGM.ITEMS[a]
						if att == nil then continue end

						conItems[k].value = conItems[k].value + att.value
						conItems[k].weight = conItems[k].weight + (att.weight or 0.1)
						conItems[k].atts = conItems[k].atts + 1
					end
				end
			end

			if conItems[1] == nil then return end

			table.sort(conItems, function(a, b)
				if a == nil and b == nil then return false end
				if a == nil then return false end
				if b == nil then return true end

				local a_def = a.def or EFGM.ITEMS[a.name]
				local b_def = b.def or EFGM.ITEMS[b.name]

				if a_def == nil and b_def == nil then return false end
				if a_def == nil then return false end
				if b_def == nil then return true end

				local a_size = (a_def.sizeX * a_def.sizeY) or 1
				local b_size = (b_def.sizeX * b_def.sizeY) or 1
				if a_size != b_size then return a_size > b_size end

				local a_type = a_def.equipType or EQUIPTYPE.None
				local b_type = b_def.equipType or EQUIPTYPE.None
				if a_type != b_type then return a_type < b_type end

				local a_name = a_def.displayName or ""
				local b_name = b_def.displayName or ""
				if a_name != b_name then return string.upper(a_name) < string.upper(b_name) end

				local a_fullName = a_def.fullName or ""
				local b_fullName = b_def.fullName or ""
				if a_fullName != b_fullName then return string.upper(a_fullName) < string.upper(b_fullName) end

				local a_tag = a.data.tag
				local b_tag = b.data.tag
				if a_tag != b_tag then
					if !a_tag then return false end
					if !b_tag then return true end
					return string.upper(a_tag) < string.upper(b_tag)
				end

				local a_durability = a.data.durability or 0
				local b_durability = b.data.durability or 0
				if a_durability != b_durability then return a_durability > b_durability end

				local a_count = a.data.count or 1
				local b_count = b.data.count or 1
				if a_count != b_count then return a_count > b_count end

				local a_value = a.value or 0
				local b_value = b.value or 0
				if a_value != b_value then return a_value > b_value end

				return false
			end)

			local co = coroutine.create(function()
				for k, v in ipairs(conItems) do
					local i = v.def or EFGM.ITEMS[v.name]
					if i == nil then continue end

					local count = v.data.count
					local isConsumable = i.consumableType == "heal" or i.consumableType == "key"
					local isAmmo = i.equipType == EQUIPTYPE.Ammunition and count > 1

					local item = containerItems:Add("EItemContainer")
					item:SetSize(EFGM.MenuScale(57 * i.sizeX), EFGM.MenuScale(57 * i.sizeY))
					item:Droppable("items")
					item.ID = v.id
					item.Slot = i.equipSlot
					item.Origin = "container"

					if i.equipType == EQUIPTYPE.Weapon or i.equipType == EQUIPTYPE.Consumable then
						local slotDrop = {
							[WEAPONSLOTS.PRIMARY.ID] = "slot_primary",
							[WEAPONSLOTS.HOLSTER.ID] = "slot_holster",
							[WEAPONSLOTS.MELEE.ID] = "slot_melee",
							[WEAPONSLOTS.GRENADE.ID] = "slot_grenade",
							[WEAPONSLOTS.CONSUMABLE.ID] = "slot_consumable"
						}

						if slotDrop[item.Slot] then item:Droppable(slotDrop[item.Slot]) end
					end

					local borderColor = COLORS.itemBackgroundColor

					surface.SetFont("PuristaBold14")
					local nameSize = surface.GetTextSize(i.displayName)
					local nameFont = "PuristaBold14"
					local tagFont = "PuristaBold10"
					local tagH = EFGM.MenuScale(10)

					if nameSize < item:GetWide() - EFGM.MenuScale(17) then
						nameFont = "PuristaBold18"
						tagFont = "PuristaBold14"
						tagH = EFGM.MenuScale(12)
					end

					local countText = isAmmo and count or isConsumable and v.data.durability .. "/" .. i.consumableValue or nil
					local countSize = nil
					local countSizeY = nil
					local countFont = nil

					if isConsumable or isAmmo then
						countSize = surface.GetTextSize(isAmmo and count or isConsumable and i.consumableValue .. "/" .. i.consumableValue)
						countSizeY = EFGM.MenuScale(16)
						countFont = "PuristaBold14"

						if countSize < item:GetWide() - EFGM.MenuScale(17) then
							countSizeY = EFGM.MenuScale(20)
							countFont = "PuristaBold18"
						end
					end

					function item:Paint(w, h)
						surface.SetDrawColor(borderColor)
						surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
						surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
						surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
						surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

						surface.SetDrawColor(i.iconColor or COLORS.itemColor)
						surface.DrawRect(0, 0, w, h)

						surface.SetDrawColor(COLORS.pureWhiteColor)
						surface.SetMaterial(i.icon)
						surface.DrawTexturedRect(0, 0, w, h)

						if self.PaintingDragging then return end

						draw.SimpleTextOutlined(i.displayName, nameFont, w - EFGM.MenuScale(3), EFGM.MenuScale(-1), COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

						if isConsumable or isAmmo then
							draw.SimpleTextOutlined(countText, countFont, w - EFGM.MenuScale(3), h - countSizeY, COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
						end

						if i.caliber then
							draw.SimpleTextOutlined(i.caliber, "PuristaBold18", EFGM.MenuScale(3), h - EFGM.MenuScale(19), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
						end

						if v.data.tag then
							draw.SimpleTextOutlined(v.data.tag, tagFont, w - EFGM.MenuScale(3), tagH, COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
						end
					end

					function item:OnCursorEntered()
						surface.PlaySound("ui/inv_item_hover_" .. math.random(1, 3) .. ".wav")

						borderColor = COLORS.itemBackgroundColorHovered

						surface.SetFont("PuristaBold18")
						local tipItemName = i.fullName .. " (" .. i.displayName .. ")"
						if count > 1 and isAmmo then
							tipItemName = count .. "x " .. tipItemName
						elseif isConsumable then
							tipItemName = tipItemName .. " [" .. countText .. "]"
						end
						local tipItemNameSize = surface.GetTextSize(tipItemName)
						surface.SetFont("Purista14")
						local canPurchase = i.canPurchase == true or i.canPurchase == nil
						local tipDesc = i.displayType .. " / " .. v.weight .. "kg / ₽" .. string.FormatComma(v.value)
						if canPurchase then tipDesc = tipDesc .. " / LVL " .. i.levelReq else tipDesc = tipDesc .. " / FIR only" end
						local tipDescSize = surface.GetTextSize(tipDesc)

						local paint = function()
							local w, h = EFGM.MENU.Tooltip:GetSize()

							surface.SetDrawColor(i.iconColor or COLORS.itemColor)
							surface.DrawRect(0, 0, w, h)

							surface.SetDrawColor(COLORS.tooltipBackgroundColorTransparent)
							surface.DrawRect(0, 0, w, h)

							local headerColor = i.iconColor and i.iconColor:Copy() or COLORS.tooltipHeaderColor
							if i.iconColor then
								headerColor.r = headerColor.r + 30
								headerColor.g = headerColor.g + 30
								headerColor.b = headerColor.b + 30
							end

							surface.SetDrawColor(headerColor)
							surface.DrawRect(0, 0, w, EFGM.MenuScale(5))

							surface.SetDrawColor(COLORS.transparentWhiteColor)
							surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
							surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
							surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
							surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

							draw.SimpleTextOutlined(tipItemName, "PuristaBold18", EFGM.MenuScale(5), EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
							draw.SimpleTextOutlined(tipDesc, "Purista14", EFGM.MenuScale(5), EFGM.MenuScale(20), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
						end

						EFGM.MENU.Tooltip:DisplayTip(self, paint, math.max(tipItemNameSize, tipDescSize) + EFGM.MenuScale(10), EFGM.MenuScale(40), 0.4)
					end

					function item:OnCursorExited()
						borderColor = COLORS.itemBackgroundColor

						EFGM.MENU.Tooltip:RemoveTip()
					end

					function item:DoClick()
						if input.IsKeyDown(KEY_LSHIFT) then
							if !EFGM.MENU.Player:Alive() then return end
							surface.PlaySound("ui/inv_item_toinv_" .. math.random(1, 7) .. ".wav")
							table.remove(container.items, v.id)

							net.Start("PlayerInventoryLootItemFromContainer", false)
								net.WriteEntity(container.entity)
								net.WriteUInt(v.id, 16)
							net.SendToServer()

							EFGM.MENU:ReloadContainer()
						end

						if input.IsKeyDown(KEY_LALT) and (i.equipType == EQUIPTYPE.Weapon or i.equipType == EQUIPTYPE.Consumable) then
							if !EFGM.MENU.Player:Alive() then return end

							surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")

							local conItem = container.items[v.id]
							if conItem == nil then return end

							if AmountInInventory(EFGM.CLIENT.EQUIPPED[item.Slot], conItem.name) != 0 then return end

							for slotKey, slotItem in ipairs(EFGM.CLIENT.EQUIPPED[item.Slot]) do
								if table.IsEmpty(slotItem) then
									EFGM.CLIENT.EQUIPPED[item.Slot][slotKey] = conItem

									table.remove(container.items, v.id)

									net.Start("PlayerInventoryEquipItemFromContainer", false)
										net.WriteEntity(container.entity)
										net.WriteUInt(v.id, 16)
										net.WriteUInt(item.Slot, 4)
										net.WriteUInt(slotKey, 4)
									net.SendToServer()

									EFGM.MENU:ReloadContainer()
									return
								end
							end
						end
					end

					function item:DoDoubleClick()
						EFGM.MENU.InspectItem(v.name, v.data)
						surface.PlaySound("ui/element_select.wav")
					end

					function item:DoRightClick()
						local x, y = containerHolder:LocalCursorPos()
						local sideH, sideV

						surface.PlaySound("ui/context.wav")

						if x <= (containerHolder:GetWide() / 2) then sideH = true else sideH = false end
						if y <= (containerHolder:GetTall() / 2) then sideV = true else sideV = false end

						if IsValid(EFGM.MENU.ELEMENTS.ContextMenu) then EFGM.MENU.ELEMENTS.ContextMenu:Remove() end
						local contextMenu = vgui.Create("EContextMenu", containerHolder)
						contextMenu:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(10))
						contextMenu:DockPadding(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5))
						contextMenu:SetAlpha(0)
						contextMenu:AlphaTo(255, 0.1, 0, nil)
						contextMenu:RequestFocus()
						EFGM.MENU.ELEMENTS.ContextMenu = contextMenu

						local inspectButton = vgui.Create("EContextButton", contextMenu)
						inspectButton:SetText("INSPECT")
						inspectButton.OnClickEvent = function()
							EFGM.MENU.InspectItem(v.name, v.data)
						end

						-- actions that can be performed on this specific item
						-- default
						local actions = {
							lootable = true,
							equipable = false
						}

						actions.equipable = i.equipType == EQUIPTYPE.Weapon

						if actions.lootable then
							local lootButton = vgui.Create("EContextButton", contextMenu)
							lootButton:SetText("LOOT")
							lootButton.OnClickSound = "ui/inv_item_toinv_" .. math.random(1, 7) .. ".wav"
							lootButton.OnClickEvent = function()
								if !EFGM.MENU.Player:Alive() then return end
								table.remove(container.items, v.id)

								net.Start("PlayerInventoryLootItemFromContainer", false)
									net.WriteEntity(container.entity)
									net.WriteUInt(v.id, 16)
								net.SendToServer()

								EFGM.MENU:ReloadContainer()
							end
						end

						if actions.equipable then
							local equipButton = vgui.Create("EContextButton", contextMenu)
							equipButton:SetText("EQUIP")
							equipButton.OnClickSound = "ui/equip_" .. math.random(1, 6) .. ".wav"
							equipButton.OnClickEvent = function()
								if !EFGM.MENU.Player:Alive() then return end

								local conItem = container.items[v.id]
								if conItem == nil then return end

								if AmountInInventory(EFGM.CLIENT.EQUIPPED[item.Slot], conItem.name) != 0 then return end

								for slotKey, slotItem in ipairs(EFGM.CLIENT.EQUIPPED[item.Slot]) do
									if table.IsEmpty(slotItem) then
										EFGM.CLIENT.EQUIPPED[item.Slot][slotKey] = conItem

										table.remove(container.items, v.id)

										net.Start("PlayerInventoryEquipItemFromContainer", false)
											net.WriteEntity(container.entity)
											net.WriteUInt(v.id, 16)
											net.WriteUInt(item.Slot, 4)
											net.WriteUInt(slotKey, 4)
										net.SendToServer()

										EFGM.MENU:ReloadContainer()
										return
									end
								end
							end
						end

						contextMenu:SetTallAfterCTX()

						if sideH == true then
							contextMenu:SetX(math.Clamp(x + EFGM.MenuScale(5), EFGM.MenuScale(5), itemsHolder:GetWide() - contextMenu:GetWide() - EFGM.MenuScale(5)))
						else
							contextMenu:SetX(math.Clamp(x - contextMenu:GetWide() - EFGM.MenuScale(5), EFGM.MenuScale(5), itemsHolder:GetWide() - contextMenu:GetWide() - EFGM.MenuScale(5)))
						end

						if sideV == true then
							contextMenu:SetY(math.Clamp(y + EFGM.MenuScale(5), EFGM.MenuScale(5), itemsHolder:GetTall() - contextMenu:GetTall() - EFGM.MenuScale(5)))
						else
							contextMenu:SetY(math.Clamp(y - contextMenu:GetTall() + EFGM.MenuScale(5), EFGM.MenuScale(5), itemsHolder:GetTall() - contextMenu:GetTall() - EFGM.MenuScale(5)))
						end
					end

					coroutine.yield()
				end
			end)

			while true do
				if coroutine.status(co) == "dead" then return end
				coroutine.resume(co)
			end
		end

		EFGM.MENU:ReloadContainer()

		return
	end

	-- dont show stash when player is in a raid
	if !EFGM.MENU.Player:IsInHideout() and table.IsEmpty(container) then return end

	local stashPanel = vgui.Create("DPanel", contents)
	stashPanel:Dock(LEFT)
	stashPanel:DockMargin(EFGM.MenuScale(13), 0, 0, 0)
	stashPanel:SetSize(EFGM.MenuScale(613), 0)

	function stashPanel:Paint(w, h)
		BlurPanel(self, 5)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(6))
	end

	local maxStash = EFGM.MENU.Player:GetNWInt("StashMax", 0)

	local stashText = vgui.Create("DPanel", stashPanel)
	stashText:Dock(TOP)
	stashText:SetSize(0, EFGM.MenuScale(36))

	function stashText:Paint(w, h)
		surface.SetDrawColor(COLORS.containerHeaderColor)
		surface.DrawRect(0, 0, w, h)

		draw.SimpleTextOutlined("STASH", "PuristaBold32", EFGM.MenuScale(5), EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		draw.SimpleTextOutlined(EFGM.MENU.Player:GetNWInt("StashCount", 0) .. "/" .. maxStash, "PuristaBold18", EFGM.MenuScale(95), EFGM.MenuScale(13), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local stashHolder = vgui.Create("DPanel", stashPanel)
	stashHolder:Dock(FILL)
	stashHolder:DockMargin(EFGM.MenuScale(10), EFGM.MenuScale(5), EFGM.MenuScale(10), EFGM.MenuScale(5))
	stashHolder:SetSize(0, 0)
	stashHolder:SetPaintBackground(false)

	local stashTopBar = vgui.Create("DPanel", stashPanel)
	stashTopBar:Dock(TOP)
	stashTopBar:DockMargin(EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10), 0)
	stashTopBar:SetSize(0, EFGM.MenuScale(28))
	stashTopBar:SetPaintBackground(false)

	surface.SetFont("PuristaBold24")
	local valueText = "EST. VALUE: ₽0"
	local valueTextSize = surface.GetTextSize(valueText) + EFGM.MenuScale(10)

	local stashInfoText = vgui.Create("DPanel", stashTopBar)
	stashInfoText:Dock(LEFT)
	stashInfoText:SetSize(valueTextSize, 0)
	surface.SetFont("PuristaBold24")

	function stashInfoText:Paint(w, h)
		BlurPanel(self, 3)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(2))

		draw.SimpleTextOutlined(valueText, "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	function StashValueChanged(value)
		if !IsValid(stashInfoText) then return end

		surface.SetFont("PuristaBold24")
		valueText = "EST. VALUE: ₽" .. string.FormatComma(value)
		valueTextSize = surface.GetTextSize(valueText) + EFGM.MenuScale(10)
		stashInfoText:SetSize(valueTextSize, 0)
	end

	local stashSearchButton = vgui.Create("DButton", stashTopBar)
	stashSearchButton:Dock(LEFT)
	stashSearchButton:DockMargin(EFGM.MenuScale(5), 0, 0, 0)
	stashSearchButton:SetSize(EFGM.MenuScale(85), EFGM.MenuScale(28))
	stashSearchButton:SetText("")

	function stashSearchButton:Paint(w, h)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w + EFGM.MenuScale(10), h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, w + EFGM.MenuScale(10), EFGM.MenuScale(2))

		draw.SimpleTextOutlined("SEARCH", "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local stashSearchOpen = false
	local stashItemSearchText = ""
	EFGM.MENU.StashFilter = 1
	EFGM.MENU.StashSort = 1

	local stashSearchBox = vgui.Create("DTextEntry", stashTopBar)
	stashSearchBox:Dock(FILL)
	stashSearchBox:SetDrawLanguageID(false)
	stashSearchBox:SetPlaceholderText("search...")
	stashSearchBox:SetUpdateOnType(true)
	stashSearchBox:SetTextColor(COLORS.whiteColor)
	stashSearchBox:SetCursorColor(COLORS.whiteColor)
	stashSearchBox:SetAlpha(0)
	stashSearchBox:SetEditable(false)
	stashSearchBox:Hide()

	function stashSearchBox:AllowInput(char)
		if char == "[" or char == "]" then return true end
	end

	function stashSearchBox:OnChange()
		local value = self:GetValue():lower()

		if value:match("^%s+") then
			self:SetText(value:match("^%s*(.-)$"))
			return
		end

		if !GetConVar("efgm_menu_search_automatic"):GetBool() then return end

		stashItemSearchText = value
		EFGM.MENU:ReloadStash()
	end

	function stashSearchBox:OnEnter()
		if GetConVar("efgm_menu_search_automatic"):GetBool() then return end
		stashItemSearchText = self:GetValue():lower()
		EFGM.MENU:ReloadStash()
	end

	function stashSearchButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function stashSearchButton:DoClick()
		surface.PlaySound("ui/element_select.wav")

		if stashSearchOpen == false then
			stashSearchBox:Show()
			stashSearchBox:AlphaTo(255, 0.1, 0)
			stashSearchBox:SetEditable(true)
			stashSearchBox:RequestFocus()
			stashSearchOpen = true
		else
			stashSearchBox:AlphaTo(0, 0.1, 0, function() stashSearchBox:Hide() end)
			stashSearchBox:SetEditable(false)
			stashSearchBox:SetValue("")
			stashItemSearchText = ""
			stashSearchOpen = false
			EFGM.MENU:ReloadStash()
		end
	end

	local stashHolderDocker = vgui.Create("DPanel", stashHolder)
	stashHolderDocker:Dock(FILL)
	stashHolderDocker:SetSize(EFGM.MenuScale(593), EFGM.MenuScale(872))
	stashHolderDocker:SetPaintBackground(false)

	local stashItemsHolder = vgui.Create("DScrollPanel", stashHolderDocker)
	stashItemsHolder:SetPos(EFGM.MenuScale(18), 0)
	stashItemsHolder:SetSize(stashHolderDocker:GetWide() - EFGM.MenuScale(18), stashHolderDocker:GetTall())

	function stashItemsHolder:Paint(w, h)
		BlurPanel(self, 3)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)
	end

	function stashItemsHolder:OnVScroll(offset)
		self.pnlCanvas:SetPos(0, offset)
		if !IsValid(contextMenu) then return end
		contextMenu:AlphaTo(0, 0.05, 0, function() contextMenu:Remove() end)
	end

	stashItemsHolder:Receiver("items", function(self, panels, dropped, _, x, y)
		if !dropped then return end

		if panels[1].Origin == "inventory" then
			surface.PlaySound("ui/inv_item_tostash_" .. math.random(1, 7) .. ".wav")
			StashItemFromInventory(panels[1].ID)
		end

		if panels[1].Origin == "equipped" then
			surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
			StashItemFromEquipped(panels[1].SlotID, panels[1].Slot)
		end
	end)

	local stashItems = vgui.Create("DIconLayout", stashItemsHolder)
	stashItems:Dock(TOP)
	stashItems:SetSpaceX(0)
	stashItems:SetSpaceY(0)

	local stashItemsBar = stashItemsHolder:GetVBar()
	stashItemsBar:SetHideButtons(true)
	stashItemsBar:SetSize(EFGM.MenuScale(5), 0)

	function stashItemsBar:Paint(w, h)
		surface.SetDrawColor(COLORS.scrollerColor)
		surface.DrawRect(0, 0, EFGM.MenuScale(5), h)
	end

	function stashItemsBar.btnGrip:Paint(w, h)
		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, EFGM.MenuScale(5), h)
	end

	local stashFilterHolder = vgui.Create("DPanel", stashHolderDocker)
	stashFilterHolder:SetSize(EFGM.MenuScale(19), stashHolderDocker:GetTall())
	stashFilterHolder:DockPadding(EFGM.MenuScale(1), EFGM.MenuScale(1), EFGM.MenuScale(1), EFGM.MenuScale(1))

	function stashFilterHolder:Paint(w, h)
		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
	end

	for id, filter in ipairs(filters) do
		local stashFilterButton = vgui.Create("DButton", stashFilterHolder)
		stashFilterButton:SetSize(EFGM.MenuScale(17), EFGM.MenuScale(25))
		stashFilterButton:Dock(TOP)
		stashFilterButton:SetText("")

		local bgColor = COLORS.containerBackgroundColor

		function stashFilterButton:Paint(w, h)
			surface.SetDrawColor(bgColor)
			surface.DrawRect(0, 0, w, h)

			surface.SetDrawColor(COLORS.pureWhiteColor)
			surface.SetMaterial(filter.icon)
			surface.DrawTexturedRect(EFGM.MenuScale(1), EFGM.MenuScale(5), EFGM.MenuScale(15), EFGM.MenuScale(15))

			surface.SetDrawColor(COLORS.weaponSilhouetteColor)
			surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		end

		function stashFilterButton:OnCursorEntered()
			surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")

			bgColor = COLORS.marketItemValueColor

			surface.SetFont("PuristaBold18")
			local tipName = string.upper(filter.name) .. " [" .. (tostring(filter.count) or 0) .. "]"
			local tipNameSize = surface.GetTextSize(tipName)

			local paint = function()
				local w, h = EFGM.MENU.Tooltip:GetSize()

				surface.SetDrawColor(COLORS.tooltipBackgroundColor)
				surface.DrawRect(0, 0, w, h)

				surface.SetDrawColor(COLORS.tooltipBackgroundColorTransparent)
				surface.DrawRect(0, 0, w, h)

				surface.SetDrawColor(COLORS.tooltipHeaderColor)
				surface.DrawRect(0, 0, w, EFGM.MenuScale(5))

				surface.SetDrawColor(COLORS.transparentWhiteColor)
				surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
				surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
				surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
				surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

				draw.SimpleTextOutlined(tipName, "PuristaBold18", EFGM.MenuScale(5), EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			end

			EFGM.MENU.Tooltip:DisplayTip(self, paint, tipNameSize + EFGM.MenuScale(10), EFGM.MenuScale(28))
		end

		function stashFilterButton:OnCursorExited()
			bgColor = COLORS.containerBackgroundColor

			-- EFGM.MENU.Tooltip:RemoveTip()
		end

		function stashFilterButton:DoClick()
			if EFGM.MENU.StashFilter == id then surface.PlaySound("ui/element_deselect.wav") return end
			if filter.count == 0 then surface.PlaySound("ui/element_deselect.wav") return end

			surface.PlaySound("ui/element_select.wav")
			EFGM.MENU.StashFilter = id
			EFGM.MENU:ReloadStash()
			stashItemsHolder:GetVBar():AnimateTo(0, 0.1, 0, 0)
		end
	end

	for id, sort in Reverseipairs(sorts) do
		local stashSortButton = vgui.Create("DButton", stashFilterHolder)
		stashSortButton:SetSize(EFGM.MenuScale(17), EFGM.MenuScale(25))
		stashSortButton:Dock(BOTTOM)
		stashSortButton:SetText("")

		local bgColor = COLORS.containerBackgroundColor

		function stashSortButton:Paint(w, h)
			surface.SetDrawColor(bgColor)
			surface.DrawRect(0, 0, w, h)

			surface.SetDrawColor(COLORS.pureWhiteColor)
			surface.SetMaterial(sort.icon)
			surface.DrawTexturedRect(EFGM.MenuScale(1), EFGM.MenuScale(5), EFGM.MenuScale(15), EFGM.MenuScale(15))

			surface.SetDrawColor(COLORS.weaponSilhouetteColor)
			surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		end

		function stashSortButton:OnCursorEntered()
			surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")

			bgColor = COLORS.marketItemValueColor

			surface.SetFont("PuristaBold18")
			local tipName = string.upper(sort.name)
			local tipNameSize = surface.GetTextSize(tipName)

			local paint = function()
				local w, h = EFGM.MENU.Tooltip:GetSize()

				surface.SetDrawColor(COLORS.tooltipBackgroundColor)
				surface.DrawRect(0, 0, w, h)

				surface.SetDrawColor(COLORS.tooltipBackgroundColorTransparent)
				surface.DrawRect(0, 0, w, h)

				surface.SetDrawColor(COLORS.tooltipHeaderColor)
				surface.DrawRect(0, 0, w, EFGM.MenuScale(5))

				surface.SetDrawColor(COLORS.transparentWhiteColor)
				surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
				surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
				surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
				surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

				draw.SimpleTextOutlined(tipName, "PuristaBold18", EFGM.MenuScale(5), EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			end

			EFGM.MENU.Tooltip:DisplayTip(self, paint, tipNameSize + EFGM.MenuScale(10), EFGM.MenuScale(28))
		end

		function stashSortButton:OnCursorExited()
			bgColor = COLORS.containerBackgroundColor

			-- EFGM.MENU.Tooltip:RemoveTip()
		end

		function stashSortButton:DoClick()
			if EFGM.MENU.StashSort == id then
				EFGM.MENU.StashSortOrder = !EFGM.MENU.StashSortOrder
			else
				EFGM.MENU.StashSortOrder = false
			end

			surface.PlaySound("ui/element_select.wav")
			EFGM.MENU.StashSort = id
			EFGM.MENU:ReloadStash()
			stashItemsHolder:GetVBar():AnimateTo(0, 0.1, 0, 1)
		end
	end

	function EFGM.MENU:ReloadStash()
		stashItems:Clear()
		EFGM.MENU.StashValue = 0
		plyStashItems = {}

		for id, filter in ipairs(filters) do
			filter.count = 0
		end

		for k, v in ipairs(EFGM.CLIENT.STASH) do
			local def = EFGM.ITEMS[v.name]
			if def == nil then continue end

			local count = math.min(math.max(v.data.count or 1, 1), def.stashStackSize or def.stackSize)
			local baseValue = def.value
			local isConsumable = (def.consumableType == "heal" or def.consumableType == "key")

			local value
			if !isConsumable then
				value = baseValue * count
			else
				value = math.floor(baseValue * ((v.data.durability or def.consumableValue) / def.consumableValue)) * count
			end

			plyStashItems[k] = {
				name = v.name,
				id = k,
				data = v.data,
				value = value,
				weight = (def.weight or 0.1) * count,
				atts = 0,
				def = def
			}

			EFGM.MENU.StashValue = EFGM.MENU.StashValue + value

			if v.data.att then
				local atts = GetPrefixedAttachmentListFromCode(v.data.att)
				if !atts then continue end

				for _, a in ipairs(atts) do
					local att = EFGM.ITEMS[a]
					if att == nil then continue end

					plyStashItems[k].value = plyStashItems[k].value + att.value
					plyStashItems[k].weight = plyStashItems[k].weight + (att.weight or 0.1)
					plyStashItems[k].atts = plyStashItems[k].atts + 1
					EFGM.MENU.StashValue = EFGM.MENU.StashValue + att.value
				end
			end

			for id, filter in ipairs(filters) do
				if filter.def == "equipType" and def.equipType == filter.value then
					filter.count = filter.count + 1
				end
			end
		end

		StashValueChanged(EFGM.MENU.StashValue)

		filters[1].count = #plyStashItems

		if plyStashItems[1] == nil then return end

		local order = EFGM.MENU.StashSortOrder
		table.sort(plyStashItems, function(a, b)
			if a == nil and b == nil then return false end
			if a == nil then return false end
			if b == nil then return true end

			local a_def = a.def or EFGM.ITEMS[a.name]
			local b_def = b.def or EFGM.ITEMS[b.name]

			if a_def == nil and b_def == nil then return false end
			if a_def == nil then return false end
			if b_def == nil then return true end

			if EFGM.MENU.StashSort == 2 then
				local a_name = a_def.displayName or ""
				local b_name = b_def.displayName or ""
				if a_name != b_name then
					if order then
						return string.upper(a_name) > string.upper(b_name)
					else
						return string.upper(a_name) < string.upper(b_name)
					end
				end

				local a_fullName = a_def.fullName or ""
				local b_fullName = b_def.fullName or ""
				if a_fullName != b_fullName then
					if order then
						return string.upper(a_fullName) > string.upper(b_fullName)
					else
						return string.upper(a_fullName) < string.upper(b_fullName)
					end
				end
			elseif EFGM.MENU.StashSort == 3 then
				local a_value = a.value or 0
				local b_value = b.value or 0
				if a_value != b_value then
					if order then
						return a_value < b_value
					else
						return a_value > b_value
					end
				end
			elseif EFGM.MENU.StashSort == 4 then
				local a_lvl = a_def.levelReq or 1
				local b_lvl = b_def.levelReq or 1
				if a_lvl != b_lvl then
					if order then
						return a_lvl < b_lvl
					else
						return a_lvl > b_lvl
					end
				end
			elseif EFGM.MENU.StashSort == 5 then
				local a_time = a.data.timestamp or 0
				local b_time = b.data.timestamp or 0
				if a_time > 0 and b_time > 0 and a_time != b_time then
					if order then
						return a_time < b_time
					else
						return a_time > b_time
					end
				end
			elseif EFGM.MENU.StashSort == 6 then
				local a_atts = a.atts or 0
				local b_atts = b.atts or 0
				if a_atts > 0 and b_atts > 0 and a_atts != b_atts then
					if order then
						return a_atts < b_atts
					else
						return a_atts > b_atts
					end
				end
			elseif EFGM.MENU.StashSort == 7 then
				local a_tag = a.data.tag
				local b_tag = b.data.tag
				if a_tag != b_tag then
					if !a_tag then return false end
					if !b_tag then return true end
					if order then
						return string.upper(a_tag) > string.upper(b_tag)
					else
						return string.upper(a_tag) < string.upper(b_tag)
					end
				end
			end

			local a_pin = a.data.pin or 0
			local b_pin = b.data.pin or 0
			if a_pin != b_pin then return a_pin > b_pin end

			local a_size = (a_def.sizeX * a_def.sizeY) or 1
			local b_size = (b_def.sizeX * b_def.sizeY) or 1
			if a_size != b_size then return a_size > b_size end

			local a_type = a_def.equipType or EQUIPTYPE.None
			local b_type = b_def.equipType or EQUIPTYPE.None
			if a_type != b_type then return a_type < b_type end

			local a_name = a_def.displayName or ""
			local b_name = b_def.displayName or ""
			if a_name != b_name then return string.upper(a_name) < string.upper(b_name) end

			local a_fullName = a_def.fullName or ""
			local b_fullName = b_def.fullName or ""
			if a_fullName != b_fullName then return string.upper(a_fullName) < string.upper(b_fullName) end

			local a_tag = a.data.tag
			local b_tag = b.data.tag
			if a_tag != b_tag then
				if !a_tag then return false end
				if !b_tag then return true end
				return string.upper(a_tag) < string.upper(b_tag)
			end

			local a_durability = a.data.durability or 0
			local b_durability = b.data.durability or 0
			if a_durability != b_durability then return a_durability > b_durability end

			local a_count = a.data.count or 1
			local b_count = b.data.count or 1
			if a_count != b_count then return a_count > b_count end

			local a_value = a.value or 0
			local b_value = b.value or 0
			if a_value != b_value then return a_value > b_value end

			return false
		end)

		-- stash item entry
		local co = coroutine.create(function()
			for k, v in ipairs(plyStashItems) do
				local i = v.def or EFGM.ITEMS[v.name]
				if i == nil then continue end

				local ownerName = nil
				if v.data.owner then
					ownerName = SteamNameFromID64(v.data.owner)
				end

				local filter = filters[EFGM.MENU.StashFilter]
				if filter and EFGM.MENU.StashFilter > 1 then
					local filterDef = filter.def
					local filterValue = filter.value

					if filterDef == "equipType" and i.equipType != filterValue then continue end
				end

				local searchFor = (stashItemSearchText and stashItemSearchText:lower()) or ""

				if searchFor != "" and
					!string.find((i.fullName):lower(), searchFor, 1, true) and
					!string.find((i.displayName):lower(), searchFor, 1, true) and
					!string.find((i.displayType):lower(), searchFor, 1, true) and
					!string.find((tostring(v.data.tag) or ""):lower(), searchFor, 1, true) and
					!string.find((ownerName or ""):lower(), searchFor, 1, true) then continue
				end

				local count = v.data.count
				local isConsumable = (i.consumableType == "heal" or i.consumableType == "key")
				local isPinned = v.data.pin == 1

				local item = stashItems:Add("EItemStash")
				item:SetSize(EFGM.MenuScale(57 * i.sizeX), EFGM.MenuScale(57 * i.sizeY))
				item:Droppable("items")
				item.ID = v.id
				item.Slot = i.equipSlot
				item.Origin = "stash"

				if i.equipType == EQUIPTYPE.Weapon or i.equipType == EQUIPTYPE.Consumable then
					local slotDrop = {
						[WEAPONSLOTS.PRIMARY.ID] = "slot_primary",
						[WEAPONSLOTS.HOLSTER.ID] = "slot_holster",
						[WEAPONSLOTS.MELEE.ID] = "slot_melee",
						[WEAPONSLOTS.GRENADE.ID] = "slot_grenade",
						[WEAPONSLOTS.CONSUMABLE.ID] = "slot_consumable"
					}

					if slotDrop[item.Slot] then item:Droppable(slotDrop[item.Slot]) end
				end

				local borderColor = COLORS.itemBackgroundColor

				surface.SetFont("PuristaBold14")
				local nameSize = surface.GetTextSize(i.displayName)
				local nameFont = "PuristaBold14"
				local tagFont = "PuristaBold10"
				local tagH = EFGM.MenuScale(10)

				if nameSize < item:GetWide() - EFGM.MenuScale(17) then
					nameFont = "PuristaBold18"
					tagFont = "PuristaBold14"
					tagH = EFGM.MenuScale(12)
				end

				local countText = count .. "x"
				local countSize = nil
				local countSizeY = 0
				local countFont = nil

				local duraText = ""
				local duraSize = nil
				local duraSizeY = 0
				local duraFont = nil

				if count > 1 then
					countSize = surface.GetTextSize(countText)

					local padding = 0
					if isConsumable then padding = EFGM.MenuScale(10) end

					countSizeY = EFGM.MenuScale(16) + padding
					countFont = "PuristaBold14"

					if countSize < item:GetWide() - EFGM.MenuScale(17) then
						countSizeY = EFGM.MenuScale(20) + padding
						countFont = "PuristaBold18"
					end
				end

				if isConsumable then
					duraText = v.data.durability .. "/" .. i.consumableValue
					duraSize = surface.GetTextSize(duraText)
					duraSizeY = EFGM.MenuScale(16)
					duraFont = "PuristaBold14"

					if duraSize < item:GetWide() - EFGM.MenuScale(17) then
						if count > 1 then countSizeY = countSizeY + EFGM.MenuScale(4) end
						duraSizeY = EFGM.MenuScale(20)
						duraFont = "PuristaBold18"
					end
				end

				local iconHeight = EFGM.MenuScale(17)

				if (count > 1 and !isConsumable) or (isConsumable and count > 1) then
					iconHeight = iconHeight + countSizeY - EFGM.MenuScale(5)
				elseif isConsumable and count <= 1 then
					iconHeight = iconHeight + duraSizeY - EFGM.MenuScale(5)
				end

				function item:Paint(w, h)
					surface.SetDrawColor(borderColor)
					surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
					surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
					surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
					surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

					surface.SetDrawColor(i.iconColor or COLORS.itemColor)
					surface.DrawRect(0, 0, w, h)

					surface.SetDrawColor(COLORS.pureWhiteColor)
					surface.SetMaterial(i.icon)
					surface.DrawTexturedRect(0, 0, w, h)

					if self.PaintingDragging then return end

					draw.SimpleTextOutlined(i.displayName, nameFont, w - EFGM.MenuScale(3), EFGM.MenuScale(-1), COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

					if count > 1 then
						draw.SimpleTextOutlined(countText, countFont, w - EFGM.MenuScale(3), h - countSizeY, COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
					end

					if isConsumable then
						draw.SimpleTextOutlined(duraText, duraFont, w - EFGM.MenuScale(3), h - duraSizeY, COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
					end

					if i.caliber then
						draw.SimpleTextOutlined(i.caliber, "PuristaBold18", EFGM.MenuScale(3), h - EFGM.MenuScale(19), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
					end

					if v.data.tag then
						draw.SimpleTextOutlined(v.data.tag, tagFont, w - EFGM.MenuScale(3), tagH, COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
					end

					if isPinned then
						surface.SetDrawColor(COLORS.pureWhiteColor)
						surface.SetMaterial(MATS.pinIcon)
						surface.DrawTexturedRect(w - EFGM.MenuScale(14), h - iconHeight - EFGM.MenuScale(1), EFGM.MenuScale(15), EFGM.MenuScale(15))
					end
				end

				function item:OnCursorEntered()
					surface.PlaySound("ui/inv_item_hover_" .. math.random(1, 3) .. ".wav")

					borderColor = COLORS.itemBackgroundColorHovered

					surface.SetFont("PuristaBold18")
					local tipItemName = ""
					if count > 1 then
						tipItemName = tipItemName .. count .. "x "
					end
					if isConsumable then
						tipItemName = tipItemName .. "[" .. duraText .. "] "
					end
					tipItemName = tipItemName ..  i.fullName .. " (" .. i.displayName .. ")"
					local tipItemNameSize = surface.GetTextSize(tipItemName)
					surface.SetFont("Purista14")
					local canPurchase = i.canPurchase == true or i.canPurchase == nil
					local tipDesc = i.displayType .. " / " .. v.weight .. "kg / ₽" .. string.FormatComma(v.value)
					if canPurchase then tipDesc = tipDesc .. " / LVL " .. i.levelReq else tipDesc = tipDesc .. " / FIR only" end
					local tipDescSize = surface.GetTextSize(tipDesc)

					local paint = function()
						local w, h = EFGM.MENU.Tooltip:GetSize()

						surface.SetDrawColor(i.iconColor or COLORS.itemColor)
						surface.DrawRect(0, 0, w, h)

						surface.SetDrawColor(COLORS.tooltipBackgroundColorTransparent)
						surface.DrawRect(0, 0, w, h)

						local headerColor = i.iconColor and i.iconColor:Copy() or COLORS.tooltipHeaderColor
						if i.iconColor then
							headerColor.r = headerColor.r + 30
							headerColor.g = headerColor.g + 30
							headerColor.b = headerColor.b + 30
						end

						surface.SetDrawColor(headerColor)
						surface.DrawRect(0, 0, w, EFGM.MenuScale(5))

						surface.SetDrawColor(COLORS.transparentWhiteColor)
						surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
						surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
						surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
						surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

						draw.SimpleTextOutlined(tipItemName, "PuristaBold18", EFGM.MenuScale(5), EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
						draw.SimpleTextOutlined(tipDesc, "Purista14", EFGM.MenuScale(5), EFGM.MenuScale(20), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
					end

					EFGM.MENU.Tooltip:DisplayTip(self, paint, math.max(tipItemNameSize, tipDescSize) + EFGM.MenuScale(10), EFGM.MenuScale(40), 0.4)
				end

				function item:OnCursorExited()
					borderColor = COLORS.itemBackgroundColor

					EFGM.MENU.Tooltip:RemoveTip()
				end

				function item:DoClick()
					if input.IsKeyDown(KEY_LSHIFT) then
						surface.PlaySound("ui/inv_item_toinv_" .. math.random(1, 7) .. ".wav")
						TakeFromStashToInventory(v.id)
					end

					if input.IsKeyDown(KEY_LALT) and (i.equipType == EQUIPTYPE.Weapon or i.equipType == EQUIPTYPE.Consumable) then
						if !EFGM.MENU.Player:Alive() then return end
						surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
						EquipItemFromStash(v.id, i.equipSlot)
					end
				end

				function item:DoDoubleClick()
					EFGM.MENU.InspectItem(v.name, v.data)
					surface.PlaySound("ui/element_select.wav")
				end

				function item:DoRightClick()
					local x, y = stashHolder:LocalCursorPos()
					local sideH, sideV

					surface.PlaySound("ui/context.wav")

					if x <= (stashHolder:GetWide() / 2) then sideH = true else sideH = false end
					if y <= (stashHolder:GetTall() / 2) then sideV = true else sideV = false end

					if IsValid(EFGM.MENU.ELEMENTS.ContextMenu) then EFGM.MENU.ELEMENTS.ContextMenu:Remove() end
					local contextMenu = vgui.Create("EContextMenu", stashHolder)
					contextMenu:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(10))
					contextMenu:DockPadding(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5))
					contextMenu:SetAlpha(0)
					contextMenu:AlphaTo(255, 0.1, 0, nil)
					contextMenu:RequestFocus()
					EFGM.MENU.ELEMENTS.ContextMenu = contextMenu

					local inspectButton = vgui.Create("EContextButton", contextMenu)
					inspectButton:SetText("INSPECT")
					inspectButton.OnClickEvent = function()
						EFGM.MENU.InspectItem(v.name, v.data)
					end

					local takeButton = vgui.Create("EContextButton", contextMenu)
					takeButton:SetText("TAKE")
					takeButton.OnClickSound = "ui/inv_item_toinv_" .. math.random(1, 7) .. ".wav"
					takeButton.OnClickEvent = function()
						TakeFromStashToInventory(v.id)
					end

					-- actions that can be performed on this specific item
					-- default
					local actions = {
						equipable = false,
						consumable = false,
						splittable = false,
						deletable = true
					}

					actions.equipable = i.equipType == EQUIPTYPE.Weapon
					actions.splittable = (i.stashStackSize or i.stackSize) > 1 and count > 1
					actions.consumable = i.equipType == EQUIPTYPE.Consumable
					actions.ammoBuyable = EFGM.MENU.Player:IsInHideout() and i.ammoID
					actions.taggable = EFGM.MENU.Player:IsInHideout() and v.data.tag == nil and (actions.ammoBuyable or i.equipSlot == WEAPONSLOTS.MELEE.ID) and count <= 1

					if actions.equipable then
						local equipButton = vgui.Create("EContextButton", contextMenu)
						equipButton:SetText("EQUIP")
						equipButton.OnClickSound = "ui/equip_" .. math.random(1, 6) .. ".wav"
						equipButton.OnClickEvent = function()
							if !EFGM.MENU.Player:Alive() then return end
							EquipItemFromStash(v.id, i.equipSlot)
						end
					end

					if actions.ammoBuyable then
						local buyAmmoButton = vgui.Create("EContextButton", contextMenu)
						buyAmmoButton:SetText("BUY AMMO")
						buyAmmoButton.OnClickSound = "nil"
						buyAmmoButton.OnClickEvent = function()
							EFGM.MENU.ConfirmPurchase(i.ammoID, "stash", false)
						end
					end

					if actions.taggable then
						local tagButton = vgui.Create("EContextButton", contextMenu)
						tagButton:SetText("SET TAG")
						tagButton.OnClickEvent = function()
							EFGM.MENU.ConfirmTag(v.name, v.id, "stash", 0, 0)
						end
					end

					if actions.splittable then
						local splitButton = vgui.Create("EContextButton", contextMenu)
						splitButton:SetText("SPLIT")
						splitButton.OnClickSound = "nil"
						splitButton.OnClickEvent = function()
							EFGM.MENU.ConfirmSplit(v.name, v.data, v.id, "stash")
						end
					end

					local pinButton = vgui.Create("EContextButton", contextMenu)
					if v.data.pin == 1 then
						pinButton:SetText("UNPIN")
						pinButton.OnClickSound = "ui/element_unpinned.wav"
					else
						pinButton:SetText("PIN")
						pinButton.OnClickSound = "ui/element_pin.wav"
					end
					pinButton.OnClickEvent = function()
						PinItemFromStash(v.id)
					end

					if actions.deletable then
						local deleteButton = vgui.Create("EContextButton", contextMenu)
						deleteButton:SetText("DELETE")
						deleteButton.OnClickSound = "nil"
						deleteButton.OnClickEvent = function()
							EFGM.MENU.ConfirmDelete(v.name, v.id, "stash", 0, 0)
						end
					end

					contextMenu:SetTallAfterCTX()

					if sideH == true then
						contextMenu:SetX(math.Clamp(x + EFGM.MenuScale(5), EFGM.MenuScale(5), stashHolder:GetWide() - contextMenu:GetWide() - EFGM.MenuScale(5)))
					else
						contextMenu:SetX(math.Clamp(x - contextMenu:GetWide() - EFGM.MenuScale(5), EFGM.MenuScale(5), stashHolder:GetWide() - contextMenu:GetWide() - EFGM.MenuScale(5)))
					end

					if sideV == true then
						contextMenu:SetY(math.Clamp(y + EFGM.MenuScale(5), EFGM.MenuScale(5), stashHolder:GetTall() - contextMenu:GetTall() - EFGM.MenuScale(5)))
					else
						contextMenu:SetY(math.Clamp(y - contextMenu:GetTall() + EFGM.MenuScale(5), EFGM.MenuScale(5), stashHolder:GetTall() - contextMenu:GetTall() - EFGM.MenuScale(5)))
					end
				end

				coroutine.yield()
			end
		end)

		while true do
			if coroutine.status(co) == "dead" then return end
			coroutine.resume(co)
		end
	end

	EFGM.MENU:ReloadStash()
end

function EFGM.MENU.OpenTab.Market()
	local contents = vgui.Create("DPanel", EFGM.MENU.MenuFrame.LowerPanel)
	contents:Dock(FILL)
	contents:DockPadding(EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10))
	contents:SetAlpha(0)
	contents:SetPaintBackground(false)

	EFGM.MENU.MenuFrame.LowerPanel.Contents = contents

	local marketStashPanel = vgui.Create("DPanel", contents)
	marketStashPanel:Dock(LEFT)
	marketStashPanel:SetSize(EFGM.MenuScale(613), 0)

	function marketStashPanel:Paint(w, h)
		BlurPanel(self, 5)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(6))
	end

	local maxStash = EFGM.MENU.Player:GetNWInt("StashMax", 0)

	local marketStashText = vgui.Create("DPanel", marketStashPanel)
	marketStashText:Dock(TOP)
	marketStashText:SetSize(0, EFGM.MenuScale(36))

	function marketStashText:Paint(w, h)
		surface.SetDrawColor(COLORS.containerHeaderColor)
		surface.DrawRect(0, 0, w, h)

		draw.SimpleTextOutlined("STASH", "PuristaBold32", EFGM.MenuScale(5), EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		draw.SimpleTextOutlined(EFGM.MENU.Player:GetNWInt("StashCount", 0) .. "/" .. maxStash, "PuristaBold18", EFGM.MenuScale(95), EFGM.MenuScale(13), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local marketStashHolder = vgui.Create("DPanel", marketStashPanel)
	marketStashHolder:Dock(FILL)
	marketStashHolder:DockMargin(EFGM.MenuScale(10), EFGM.MenuScale(5), EFGM.MenuScale(10), EFGM.MenuScale(5))
	marketStashHolder:SetSize(0, 0)
	marketStashHolder:SetPaintBackground(false)

	local marketStashTopBar = vgui.Create("DPanel", marketStashPanel)
	marketStashTopBar:Dock(TOP)
	marketStashTopBar:DockMargin(EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10), 0)
	marketStashTopBar:SetSize(0, EFGM.MenuScale(28))
	marketStashTopBar:SetPaintBackground(false)

	surface.SetFont("PuristaBold24")
	local valueText = "EST. VALUE: ₽0"
	local valueTextSize = surface.GetTextSize(valueText) + EFGM.MenuScale(10)

	local marketStashInfoText = vgui.Create("DPanel", marketStashTopBar)
	marketStashInfoText:Dock(LEFT)
	marketStashInfoText:SetSize(valueTextSize, 0)
	surface.SetFont("PuristaBold24")

	function marketStashInfoText:Paint(w, h)
		BlurPanel(self, 3)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(2))

		draw.SimpleTextOutlined(valueText, "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	function MarketStashValueChanged(value)
		if !IsValid(marketStashInfoText) then return end

		surface.SetFont("PuristaBold24")
		valueText = "EST. VALUE: ₽" .. string.FormatComma(value)
		valueTextSize = surface.GetTextSize(valueText) + EFGM.MenuScale(10)
		marketStashInfoText:SetSize(valueTextSize, 0)
	end

	local marketStashSearchButton = vgui.Create("DButton", marketStashTopBar)
	marketStashSearchButton:Dock(LEFT)
	marketStashSearchButton:DockMargin(EFGM.MenuScale(5), 0, 0, 0)
	marketStashSearchButton:SetSize(EFGM.MenuScale(85), EFGM.MenuScale(28))
	marketStashSearchButton:SetText("")

	function marketStashSearchButton:Paint(w, h)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w + EFGM.MenuScale(10), h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, w + EFGM.MenuScale(10), EFGM.MenuScale(2))

		draw.SimpleTextOutlined("SEARCH", "PuristaBold24", w / 2, EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local marketStashSearchOpen = false
	local marketStashItemSearchText = ""
	EFGM.MENU.MarketStashFilter = 1
	EFGM.MENU.MarketStashSort = 1

	local marketStashSearchBox = vgui.Create("DTextEntry", marketStashTopBar)
	marketStashSearchBox:Dock(FILL)
	marketStashSearchBox:SetDrawLanguageID(false)
	marketStashSearchBox:SetPlaceholderText("search...")
	marketStashSearchBox:SetUpdateOnType(true)
	marketStashSearchBox:SetTextColor(COLORS.whiteColor)
	marketStashSearchBox:SetCursorColor(COLORS.whiteColor)
	marketStashSearchBox:SetAlpha(0)
	marketStashSearchBox:SetEditable(false)
	marketStashSearchBox:Hide()

	function marketStashSearchBox:AllowInput(char)
		if char == "[" or char == "]" then return true end
	end

	function marketStashSearchBox:OnChange()
		local value = self:GetValue():lower()

		if value:match("^%s+") then
			self:SetText(value:match("^%s*(.-)$"))
			return
		end

		if !GetConVar("efgm_menu_search_automatic"):GetBool() then return end

		marketStashItemSearchText = value
		EFGM.MENU:ReloadMarketStash()
	end

	function marketStashSearchBox:OnEnter()
		if GetConVar("efgm_menu_search_automatic"):GetBool() then return end
		marketStashItemSearchText = self:GetValue():lower()
		EFGM.MENU:ReloadMarketStash()
	end

	function marketStashSearchButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	function marketStashSearchButton:DoClick()
		surface.PlaySound("ui/element_select.wav")

		if marketStashSearchOpen == false then
			marketStashSearchBox:Show()
			marketStashSearchBox:AlphaTo(255, 0.1, 0)
			marketStashSearchBox:SetEditable(true)
			marketStashSearchBox:RequestFocus()
			marketStashSearchOpen = true
		else
			marketStashSearchBox:AlphaTo(0, 0.1, 0, function() marketStashSearchBox:Hide() end)
			marketStashSearchBox:SetEditable(false)
			marketStashSearchBox:SetValue("")
			marketStashItemSearchText = ""
			marketStashSearchOpen = false
			EFGM.MENU:ReloadMarketStash()
		end
	end

	local marketStashItemsDocker = vgui.Create("DPanel", marketStashHolder)
	marketStashItemsDocker:Dock(FILL)
	marketStashItemsDocker:SetSize(EFGM.MenuScale(593), EFGM.MenuScale(872))
	marketStashItemsDocker:SetPaintBackground(false)

	local marketStashItemsHolder = vgui.Create("DScrollPanel", marketStashItemsDocker)
	marketStashItemsHolder:SetPos(EFGM.MenuScale(18), 0)
	marketStashItemsHolder:SetSize(marketStashItemsDocker:GetWide() - EFGM.MenuScale(18), marketStashItemsDocker:GetTall())

	function marketStashItemsHolder:Paint(w, h)
		BlurPanel(self, 3)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)
	end

	function marketStashItemsHolder:OnVScroll(offset)
		self.pnlCanvas:SetPos(0, offset)
		if !IsValid(contextMenu) then return end
		contextMenu:AlphaTo(0, 0.05, 0, function() contextMenu:Remove() end)
	end

	local marketStashItems = vgui.Create("DIconLayout", marketStashItemsHolder)
	marketStashItems:Dock(TOP)
	marketStashItems:SetSpaceX(0)
	marketStashItems:SetSpaceY(0)

	local marketStashItemsBar = marketStashItemsHolder:GetVBar()
	marketStashItemsBar:SetHideButtons(true)
	marketStashItemsBar:SetSize(EFGM.MenuScale(5), 0)

	function marketStashItemsBar:Paint(w, h)
		surface.SetDrawColor(COLORS.scrollerColor)
		surface.DrawRect(0, 0, EFGM.MenuScale(5), h)
	end

	function marketStashItemsBar.btnGrip:Paint(w, h)
		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, EFGM.MenuScale(5), h)
	end

	local marketStashFilterHolder = vgui.Create("DPanel", marketStashItemsDocker)
	marketStashFilterHolder:SetSize(EFGM.MenuScale(19), marketStashItemsDocker:GetTall())
	marketStashFilterHolder:DockPadding(EFGM.MenuScale(1), EFGM.MenuScale(1), EFGM.MenuScale(1), EFGM.MenuScale(1))

	function marketStashFilterHolder:Paint(w, h)
		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
	end

	for id, filter in ipairs(filters) do
		local marketStashFilterButton = vgui.Create("DButton", marketStashFilterHolder)
		marketStashFilterButton:SetSize(EFGM.MenuScale(17), EFGM.MenuScale(25))
		marketStashFilterButton:Dock(TOP)
		marketStashFilterButton:SetText("")

		local bgColor = COLORS.containerBackgroundColor

		function marketStashFilterButton:Paint(w, h)
			surface.SetDrawColor(bgColor)
			surface.DrawRect(0, 0, w, h)

			surface.SetDrawColor(COLORS.pureWhiteColor)
			surface.SetMaterial(filter.icon)
			surface.DrawTexturedRect(EFGM.MenuScale(1), EFGM.MenuScale(5), EFGM.MenuScale(15), EFGM.MenuScale(15))

			surface.SetDrawColor(COLORS.weaponSilhouetteColor)
			surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		end

		function marketStashFilterButton:OnCursorEntered()
			surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")

			bgColor = COLORS.marketItemValueColor

			surface.SetFont("PuristaBold18")
			local tipName = string.upper(filter.name) .. " [" .. (tostring(filter.count) or 0) .. "]"
			local tipNameSize = surface.GetTextSize(tipName)

			local paint = function()
				local w, h = EFGM.MENU.Tooltip:GetSize()

				surface.SetDrawColor(COLORS.tooltipBackgroundColor)
				surface.DrawRect(0, 0, w, h)

				surface.SetDrawColor(COLORS.tooltipBackgroundColorTransparent)
				surface.DrawRect(0, 0, w, h)

				surface.SetDrawColor(COLORS.tooltipHeaderColor)
				surface.DrawRect(0, 0, w, EFGM.MenuScale(5))

				surface.SetDrawColor(COLORS.transparentWhiteColor)
				surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
				surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
				surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
				surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

				draw.SimpleTextOutlined(tipName, "PuristaBold18", EFGM.MenuScale(5), EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			end

			EFGM.MENU.Tooltip:DisplayTip(self, paint, tipNameSize + EFGM.MenuScale(10), EFGM.MenuScale(28))
		end

		function marketStashFilterButton:OnCursorExited()
			bgColor = COLORS.containerBackgroundColor

			-- EFGM.MENU.Tooltip:RemoveTip()
		end

		function marketStashFilterButton:DoClick()
			if EFGM.MENU.MarketStashFilter == id then surface.PlaySound("ui/element_deselect.wav") return end
			if filter.count == 0 then surface.PlaySound("ui/element_deselect.wav") return end

			surface.PlaySound("ui/element_select.wav")
			EFGM.MENU.MarketStashFilter = id
			EFGM.MENU:ReloadMarketStash()
			marketStashItemsHolder:GetVBar():AnimateTo(0, 0.1, 0, 1)
		end
	end

	for id, sort in Reverseipairs(sorts) do
		local marketStashSortButton = vgui.Create("DButton", marketStashFilterHolder)
		marketStashSortButton:SetSize(EFGM.MenuScale(17), EFGM.MenuScale(25))
		marketStashSortButton:Dock(BOTTOM)
		marketStashSortButton:SetText("")

		local bgColor = COLORS.containerBackgroundColor

		function marketStashSortButton:Paint(w, h)
			surface.SetDrawColor(bgColor)
			surface.DrawRect(0, 0, w, h)

			surface.SetDrawColor(COLORS.pureWhiteColor)
			surface.SetMaterial(sort.icon)
			surface.DrawTexturedRect(EFGM.MenuScale(1), EFGM.MenuScale(5), EFGM.MenuScale(15), EFGM.MenuScale(15))

			surface.SetDrawColor(COLORS.weaponSilhouetteColor)
			surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		end

		function marketStashSortButton:OnCursorEntered()
			surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")

			bgColor = COLORS.marketItemValueColor

			surface.SetFont("PuristaBold18")
			local tipName = string.upper(sort.name)
			local tipNameSize = surface.GetTextSize(tipName)

			local paint = function()
				local w, h = EFGM.MENU.Tooltip:GetSize()

				surface.SetDrawColor(COLORS.tooltipBackgroundColor)
				surface.DrawRect(0, 0, w, h)

				surface.SetDrawColor(COLORS.tooltipBackgroundColorTransparent)
				surface.DrawRect(0, 0, w, h)

				surface.SetDrawColor(COLORS.tooltipHeaderColor)
				surface.DrawRect(0, 0, w, EFGM.MenuScale(5))

				surface.SetDrawColor(COLORS.transparentWhiteColor)
				surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
				surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
				surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
				surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

				draw.SimpleTextOutlined(tipName, "PuristaBold18", EFGM.MenuScale(5), EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			end

			EFGM.MENU.Tooltip:DisplayTip(self, paint, tipNameSize + EFGM.MenuScale(10), EFGM.MenuScale(28))
		end

		function marketStashSortButton:OnCursorExited()
			bgColor = COLORS.containerBackgroundColor

			-- EFGM.MENU.Tooltip:RemoveTip()
		end

		function marketStashSortButton:DoClick()
			if EFGM.MENU.MarketStashSort == id then
				EFGM.MENU.MarketStashSortOrder = !EFGM.MENU.MarketStashSortOrder
			else
				EFGM.MENU.MarketStashSortOrder = false
			end

			surface.PlaySound("ui/element_select.wav")
			EFGM.MENU.MarketStashSort = id
			EFGM.MENU:ReloadMarketStash()
			marketStashItemsHolder:GetVBar():AnimateTo(0, 0.1, 0, 1)
		end
	end

	function EFGM.MENU:ReloadMarketStash()
		marketStashItems:Clear()
		EFGM.MENU.StashValue = 0
		marketPlyStashItems = {}

		for id, filter in ipairs(filters) do
			filter.count = 0
		end

		for k, v in ipairs(EFGM.CLIENT.STASH) do
			local def = EFGM.ITEMS[v.name]
			if def == nil then continue end

			local count = math.min(math.max(v.data.count, 1), def.stashStackSize or def.stackSize)
			local baseValue = def.value
			local isConsumable = (def.consumableType == "heal" or def.consumableType == "key")

			local value, rawValue
			if !isConsumable then
				value = math.floor(baseValue * EFGM.CONFIG.MARKET.SELLMULTIPLIER) * count
				rawValue = baseValue * count
			else
				value = math.floor((baseValue * EFGM.CONFIG.MARKET.SELLMULTIPLIER) * ((v.data.durability or def.consumableValue) / def.consumableValue)) * count
				rawValue = math.floor(baseValue * ((v.data.durability or def.consumableValue) / def.consumableValue)) * count
			end

			marketPlyStashItems[k] = {
				name = v.name,
				id = k,
				data = v.data,
				value = value,
				weight = (def.weight or 0.1) * count,
				atts = 0,
				def = def
			}

			EFGM.MENU.StashValue = EFGM.MENU.StashValue + rawValue

			if v.data.att then
				local atts = GetPrefixedAttachmentListFromCode(v.data.att)
				if !atts then return end

				for _, a in ipairs(atts) do
					local att = EFGM.ITEMS[a]
					if att == nil then continue end

					marketPlyStashItems[k].value = marketPlyStashItems[k].value + math.floor(att.value * EFGM.CONFIG.MARKET.SELLMULTIPLIER)
					marketPlyStashItems[k].weight = marketPlyStashItems[k].weight + (att.weight or 0.1)
					marketPlyStashItems[k].atts = marketPlyStashItems[k].atts + 1
					EFGM.MENU.StashValue = EFGM.MENU.StashValue + att.value
				end
			end

			for id, filter in ipairs(filters) do
				if filter.def == "equipType" and def.equipType == filter.value then
					filter.count = filter.count + 1
				end
			end
		end

		MarketStashValueChanged(EFGM.MENU.StashValue)

		filters[1].count = #marketPlyStashItems

		if marketPlyStashItems[1] == nil then return end

		local order = EFGM.MENU.MarketStashSortOrder
		table.sort(marketPlyStashItems, function(a, b)
			if a == nil and b == nil then return false end
			if a == nil then return false end
			if b == nil then return true end

			local a_def = a.def or EFGM.ITEMS[a.name]
			local b_def = b.def or EFGM.ITEMS[b.name]

			if a_def == nil and b_def == nil then return false end
			if a_def == nil then return false end
			if b_def == nil then return true end

			if EFGM.MENU.MarketStashSort == 2 then
				local a_name = a_def.displayName or ""
				local b_name = b_def.displayName or ""
				if a_name != b_name then
					if order then
						return string.upper(a_name) > string.upper(b_name)
					else
						return string.upper(a_name) < string.upper(b_name)
					end
				end

				local a_fullName = a_def.fullName or ""
				local b_fullName = b_def.fullName or ""
				if a_fullName != b_fullName then
					if order then
						return string.upper(a_fullName) > string.upper(b_fullName)
					else
						return string.upper(a_fullName) < string.upper(b_fullName)
					end
				end
			elseif EFGM.MENU.MarketStashSort == 3 then
				local a_value = a.value or 0
				local b_value = b.value or 0
				if a_value != b_value then
					if order then
						return a_value < b_value
					else
						return a_value > b_value
					end
				end
			elseif EFGM.MENU.MarketStashSort == 4 then
				local a_lvl = a_def.levelReq or 1
				local b_lvl = b_def.levelReq or 1
				if a_lvl != b_lvl then
					if order then
						return a_lvl < b_lvl
					else
						return a_lvl > b_lvl
					end
				end
			elseif EFGM.MENU.MarketStashSort == 5 then
				local a_time = a.data.timestamp or 0
				local b_time = b.data.timestamp or 0
				if a_time > 0 and b_time > 0 and a_time != b_time then
					if order then
						return a_time < b_time
					else
						return a_time > b_time
					end
				end
			elseif EFGM.MENU.MarketStashSort == 6 then
				local a_atts = a.atts or 0
				local b_atts = b.atts or 0
				if a_atts > 0 and b_atts > 0 and a_atts != b_atts then
					if order then
						return a_atts < b_atts
					else
						return a_atts > b_atts
					end
				end
			elseif EFGM.MENU.MarketStashSort == 7 then
				local a_tag = a.data.tag
				local b_tag = b.data.tag
				if a_tag != b_tag then
					if !a_tag then return false end
					if !b_tag then return true end
					if order then
						return string.upper(a_tag) > string.upper(b_tag)
					else
						return string.upper(a_tag) < string.upper(b_tag)
					end
				end
			end

			local a_pin = a.data.pin or 0
			local b_pin = b.data.pin or 0
			if a_pin != b_pin then return a_pin > b_pin end

			local a_size = (a_def.sizeX * a_def.sizeY) or 1
			local b_size = (b_def.sizeX * b_def.sizeY) or 1
			if a_size != b_size then return a_size > b_size end

			local a_type = a_def.equipType or EQUIPTYPE.None
			local b_type = b_def.equipType or EQUIPTYPE.None
			if a_type != b_type then return a_type < b_type end

			local a_name = a_def.displayName or ""
			local b_name = b_def.displayName or ""
			if a_name != b_name then return string.upper(a_name) < string.upper(b_name) end

			local a_fullName = a_def.fullName or ""
			local b_fullName = b_def.fullName or ""
			if a_fullName != b_fullName then return string.upper(a_fullName) < string.upper(b_fullName) end

			local a_tag = a.data.tag
			local b_tag = b.data.tag
			if a_tag != b_tag then
				if !a_tag then return false end
				if !b_tag then return true end
				return string.upper(a_tag) < string.upper(b_tag)
			end

			local a_durability = a.data.durability or 0
			local b_durability = b.data.durability or 0
			if a_durability != b_durability then return a_durability > b_durability end

			local a_count = a.data.count or 1
			local b_count = b.data.count or 1
			if a_count != b_count then return a_count > b_count end

			local a_value = a.value or 0
			local b_value = b.value or 0
			if a_value != b_value then return a_value > b_value end

			return false
		end)

		-- stash item entry
		local co = coroutine.create(function()
			for k, v in ipairs(marketPlyStashItems) do
				local i = v.def or EFGM.ITEMS[v.name]
				if i == nil then continue end

				local ownerName = nil
				if v.data.owner then
					ownerName = SteamNameFromID64(v.data.owner)
				end

				local filter = filters[EFGM.MENU.MarketStashFilter]
				if filter and EFGM.MENU.MarketStashFilter > 1 then
					local filterDef = filter.def
					local filterValue = filter.value

					if filterDef == "equipType" and i.equipType != filterValue then continue end
				end

				local searchFor = (marketStashItemSearchText and marketStashItemSearchText:lower()) or ""

				if searchFor != "" and
					!string.find((i.fullName):lower(), searchFor, 1, true) and
					!string.find((i.displayName):lower(), searchFor, 1, true) and
					!string.find((i.displayType):lower(), searchFor, 1, true) and
					!string.find((tostring(v.data.tag) or ""):lower(), searchFor, 1, true) and
					!string.find((ownerName or ""):lower(), searchFor, 1, true) then continue
				end

				local count = v.data.count
				local isConsumable = i.consumableType == "heal" or i.consumableType == "key"
				local isPinned = v.data.pin == 1

				local item = marketStashItems:Add("EItemMarketStash")
				item:SetSize(EFGM.MenuScale(57 * i.sizeX), EFGM.MenuScale(57 * i.sizeY))
				item.ID = v.id

				local borderColor = COLORS.itemBackgroundColor

				surface.SetFont("PuristaBold14")
				local nameSize = surface.GetTextSize(i.displayName)
				local nameFont = "PuristaBold14"
				local tagFont = "PuristaBold10"
				local tagH = EFGM.MenuScale(10)

				if nameSize < item:GetWide() - EFGM.MenuScale(17) then
					nameFont = "PuristaBold18"
					tagFont = "PuristaBold14"
					tagH = EFGM.MenuScale(12)
				end

				local countText = count .. "x"
				local countSize = nil
				local countSizeY = 0
				local countFont = nil

				local duraText = ""
				local duraSize = nil
				local duraSizeY = 0
				local duraFont = nil

				if count > 1 then
					countSize = surface.GetTextSize(countText)

					local padding = 0
					if isConsumable then padding = EFGM.MenuScale(10) end

					countSizeY = EFGM.MenuScale(16) + padding
					countFont = "PuristaBold14"

					if countSize < item:GetWide() - EFGM.MenuScale(17) then
						countSizeY = EFGM.MenuScale(20) + padding
						countFont = "PuristaBold18"
					end
				end

				if isConsumable then
					duraText = v.data.durability .. "/" .. i.consumableValue
					duraSize = surface.GetTextSize(duraText)
					duraSizeY = EFGM.MenuScale(16)
					duraFont = "PuristaBold14"

					if duraSize < item:GetWide() - EFGM.MenuScale(17) then
						if count > 1 then countSizeY = countSizeY + EFGM.MenuScale(4) end
						duraSizeY = EFGM.MenuScale(20)
						duraFont = "PuristaBold18"
					end
				end

				local iconHeight = EFGM.MenuScale(17)

				if (count > 1 and !isConsumable) or (isConsumable and count > 1) then
					iconHeight = iconHeight + countSizeY - EFGM.MenuScale(5)
				elseif isConsumable and count <= 1 then
					iconHeight = iconHeight + duraSizeY - EFGM.MenuScale(5)
				end

				function item:Paint(w, h)
					surface.SetDrawColor(borderColor)
					surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
					surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
					surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
					surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

					surface.SetDrawColor(i.iconColor or COLORS.itemColor)
					surface.DrawRect(0, 0, w, h)

					surface.SetDrawColor(COLORS.pureWhiteColor)
					surface.SetMaterial(i.icon)
					surface.DrawTexturedRect(0, 0, w, h)

					draw.SimpleTextOutlined(i.displayName, nameFont, w - EFGM.MenuScale(3), EFGM.MenuScale(-1), COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

					if count > 1 then
						draw.SimpleTextOutlined(countText, countFont, w - EFGM.MenuScale(3), h - countSizeY, COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
					end

					if isConsumable then
						draw.SimpleTextOutlined(duraText, duraFont, w - EFGM.MenuScale(3), h - duraSizeY, COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
					end

					if i.caliber then
						draw.SimpleTextOutlined(i.caliber, "PuristaBold18", EFGM.MenuScale(3), h - EFGM.MenuScale(19), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
					end

					if v.data.tag then
						draw.SimpleTextOutlined(v.data.tag, tagFont, w - EFGM.MenuScale(3), tagH, COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
					end

					if isPinned then
						surface.SetDrawColor(COLORS.pureWhiteColor)
						surface.SetMaterial(MATS.pinIcon)
						surface.DrawTexturedRect(w - EFGM.MenuScale(14), h - iconHeight - EFGM.MenuScale(1), EFGM.MenuScale(15), EFGM.MenuScale(15))
					end

					if i.sizeX > 1 then
						draw.SimpleTextOutlined("₽" .. string.FormatComma(v.value), "PuristaBold18", w / 2, h / 2 - EFGM.MenuScale(9), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
					else
						draw.SimpleTextOutlined("₽" .. string.FormatComma(v.value), "PuristaBold14", w / 2, h / 2 - EFGM.MenuScale(7), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
					end
				end

				function item:OnCursorEntered()
					surface.PlaySound("ui/inv_item_hover_" .. math.random(1, 3) .. ".wav")

					borderColor = COLORS.itemBackgroundColorHovered

					surface.SetFont("PuristaBold18")
					local tipItemName = ""
					if count > 1 then
						tipItemName = tipItemName .. count .. "x "
					end
					if isConsumable then
						tipItemName = tipItemName .. "[" .. duraText .. "] "
					end
					tipItemName = tipItemName ..  i.fullName .. " (" .. i.displayName .. ")"
					local tipItemNameSize = surface.GetTextSize(tipItemName)
					surface.SetFont("Purista14")
					local canPurchase = i.canPurchase == true or i.canPurchase == nil
					local tipDesc = i.displayType .. " / " .. v.weight .. "kg / ₽" .. string.FormatComma(v.value)
					if canPurchase then tipDesc = tipDesc .. " / LVL " .. i.levelReq else tipDesc = tipDesc .. " / FIR only" end
					local tipDescSize = surface.GetTextSize(tipDesc)

					local paint = function()
						local w, h = EFGM.MENU.Tooltip:GetSize()

						surface.SetDrawColor(i.iconColor or COLORS.itemColor)
						surface.DrawRect(0, 0, w, h)

						surface.SetDrawColor(COLORS.tooltipBackgroundColorTransparent)
						surface.DrawRect(0, 0, w, h)

						local headerColor = i.iconColor and i.iconColor:Copy() or COLORS.tooltipHeaderColor
						if i.iconColor then
							headerColor.r = headerColor.r + 30
							headerColor.g = headerColor.g + 30
							headerColor.b = headerColor.b + 30
						end

						surface.SetDrawColor(headerColor)
						surface.DrawRect(0, 0, w, EFGM.MenuScale(5))

						surface.SetDrawColor(COLORS.transparentWhiteColor)
						surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
						surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
						surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
						surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

						draw.SimpleTextOutlined(tipItemName, "PuristaBold18", EFGM.MenuScale(5), EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
						draw.SimpleTextOutlined(tipDesc, "Purista14", EFGM.MenuScale(5), EFGM.MenuScale(20), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
					end

					EFGM.MENU.Tooltip:DisplayTip(self, paint, math.max(tipItemNameSize, tipDescSize) + EFGM.MenuScale(10), EFGM.MenuScale(40), 0.4)
				end

				function item:OnCursorExited()
					borderColor = COLORS.itemBackgroundColor

					EFGM.MENU.Tooltip:RemoveTip()
				end

				function item:DoClick()
					EFGM.MENU.ConfirmSell(v.name, v.data, v.id)
				end

				function item:DoRightClick()
					local x, y = marketStashHolder:LocalCursorPos()
					local sideH, sideV

					surface.PlaySound("ui/context.wav")

					if x <= (marketStashHolder:GetWide() / 2) then sideH = true else sideH = false end
					if y <= (marketStashHolder:GetTall() / 2) then sideV = true else sideV = false end

					if IsValid(EFGM.MENU.ELEMENTS.ContextMenu) then EFGM.MENU.ELEMENTS.ContextMenu:Remove() end
					local contextMenu = vgui.Create("EContextMenu", marketStashHolder)
					contextMenu:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(10))
					contextMenu:DockPadding(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5))
					contextMenu:SetAlpha(0)
					contextMenu:AlphaTo(255, 0.1, 0, nil)
					contextMenu:RequestFocus()
					EFGM.MENU.ELEMENTS.ContextMenu = contextMenu

					local inspectButton = vgui.Create("EContextButton", contextMenu)
					inspectButton:SetText("INSPECT")
					inspectButton.OnClickEvent = function()
						EFGM.MENU.InspectItem(v.name, v.data)
					end

					local sellButton = vgui.Create("EContextButton", contextMenu)
					sellButton:SetText("SELL")
					sellButton.OnClickEvent = function()
						EFGM.MENU.ConfirmSell(v.name, v.data, v.id)
					end

					contextMenu:SetTallAfterCTX()

					if sideH == true then
						contextMenu:SetX(math.Clamp(x + EFGM.MenuScale(5), EFGM.MenuScale(5), marketStashHolder:GetWide() - contextMenu:GetWide() - EFGM.MenuScale(5)))
					else
						contextMenu:SetX(math.Clamp(x - contextMenu:GetWide() - EFGM.MenuScale(5), EFGM.MenuScale(5), marketStashHolder:GetWide() - contextMenu:GetWide() - EFGM.MenuScale(5)))
					end

					if sideV == true then
						contextMenu:SetY(math.Clamp(y + EFGM.MenuScale(5), EFGM.MenuScale(5), marketStashHolder:GetTall() - contextMenu:GetTall() - EFGM.MenuScale(5)))
					else
						contextMenu:SetY(math.Clamp(y - contextMenu:GetTall() + EFGM.MenuScale(5), EFGM.MenuScale(5), marketStashHolder:GetTall() - contextMenu:GetTall() - EFGM.MenuScale(5)))
					end
				end

				coroutine.yield()
			end
		end)

		while true do
			if coroutine.status(co) == "dead" then return end
			coroutine.resume(co)
		end
	end

	EFGM.MENU:ReloadMarketStash()

	local marketPanel = vgui.Create("DPanel", contents)
	marketPanel:Dock(LEFT)
	marketPanel:DockMargin(EFGM.MenuScale(13), 0, 0, 0)
	marketPanel:SetSize(EFGM.MenuScale(1239), 0)

	function marketPanel:Paint(w, h)
		BlurPanel(self, 5)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(6))
	end

	local marketText = vgui.Create("DPanel", marketPanel)
	marketText:Dock(TOP)
	marketText:SetSize(0, EFGM.MenuScale(36))

	function marketText:Paint(w, h)
		surface.SetDrawColor(COLORS.containerHeaderColor)
		surface.DrawRect(0, 0, w, h)

		draw.SimpleTextOutlined("MARKET", "PuristaBold32", EFGM.MenuScale(5), EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local marketHolder = vgui.Create("DPanel", marketPanel)
	marketHolder:Dock(FILL)
	marketHolder:DockMargin(EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(9))
	marketHolder:SetSize(0, 0)
	marketHolder:SetPaintBackground(false)

	local marketPageText = vgui.Create("DPanel", marketHolder)
	marketPageText:Dock(TOP)
	marketPageText:SetSize(0, EFGM.MenuScale(28))

	local currentPage = 1
	local totalPages = 1
	local pageTextSize = 0

	function marketPageText:Paint(w, h)
		surface.SetFont("PuristaBold24")
		local pageText = "PAGE " .. currentPage .. "/" .. totalPages
		pageTextSize = surface.GetTextSize(pageText)

		BlurPanel(self, 3)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, pageTextSize + EFGM.MenuScale(54), h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, pageTextSize + EFGM.MenuScale(54), EFGM.MenuScale(2))

		draw.SimpleTextOutlined(pageText, "PuristaBold24", EFGM.MenuScale(26), EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local lastPageButton = vgui.Create("DButton", marketPageText)
	lastPageButton:SetPos(0, EFGM.MenuScale(2))
	lastPageButton:SetSize(EFGM.MenuScale(26), EFGM.MenuScale(26))
	lastPageButton:SetText("")

	function lastPageButton:Paint(w, h)
		surface.SetDrawColor(COLORS.pureWhiteColor)
		surface.SetMaterial(MATS.arrowBackIcon)
		surface.DrawTexturedRect(EFGM.MenuScale(3), EFGM.MenuScale(3), EFGM.MenuScale(20), EFGM.MenuScale(20))
	end

	function lastPageButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	local nextPageButton = vgui.Create("DButton", marketPageText)
	nextPageButton:SetPos(pageTextSize + EFGM.MenuScale(29), EFGM.MenuScale(2))
	nextPageButton:SetSize(EFGM.MenuScale(26), EFGM.MenuScale(26))
	nextPageButton:SetText("")

	function nextPageButton:Paint(w, h)
		self:SetX(pageTextSize + EFGM.MenuScale(29))

		surface.SetDrawColor(COLORS.pureWhiteColor)
		surface.SetMaterial(MATS.arrowForwardIcon)
		surface.DrawTexturedRect(EFGM.MenuScale(3), EFGM.MenuScale(3), EFGM.MenuScale(20), EFGM.MenuScale(20))
	end

	function nextPageButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	local marketEntryHolder = vgui.Create("DPanel", marketHolder)
	marketEntryHolder:SetPos(0, EFGM.MenuScale(32))
	marketEntryHolder:SetSize(EFGM.MenuScale(1219), EFGM.MenuScale(872))

	function marketEntryHolder:Paint(w, h)
		BlurPanel(self, 3)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)
	end

	local marketTab = "All Items"
	local marketSearchText = ""

	local marketCategoryHolder = vgui.Create("DPanel", marketEntryHolder)
	marketCategoryHolder:SetSize(EFGM.MenuScale(219), EFGM.MenuScale(872))
	marketCategoryHolder:Dock(LEFT)
	marketCategoryHolder:DockPadding(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5))

	function marketCategoryHolder:Paint(w, h)
		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.whiteBorderColor)
		surface.DrawRect(w - 1, 0, 1, h)
	end

	local marketSearchBox = vgui.Create("DTextEntry", marketCategoryHolder)
	marketSearchBox:Dock(TOP)
	marketSearchBox:DockMargin(0, 0, 0, EFGM.MenuScale(5))
	marketSearchBox:SetPlaceholderText("search for items...")
	marketSearchBox:SetDrawLanguageID(false)
	marketSearchBox:SetUpdateOnType(true)
	marketSearchBox:SetTextColor(COLORS.whiteColor)
	marketSearchBox:SetCursorColor(COLORS.whiteColor)

	function marketSearchBox:AllowInput(char)
		if char == "[" or char == "]" then return true end
	end

	local sortBy = "name"

	local marketSortByButton = vgui.Create("DButton", marketCategoryHolder)
	marketSortByButton:Dock(TOP)
	marketSortByButton:SetSize(0, EFGM.MenuScale(20))
	marketSortByButton:DockMargin(0, 0, 0, EFGM.MenuScale(5))
	marketSortByButton:SetText("SORT BY NAME")

	function marketSortByButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	local sortWith = "ascending"

	local marketSortWithButton = vgui.Create("DButton", marketCategoryHolder)
	marketSortWithButton:Dock(TOP)
	marketSortWithButton:SetSize(0, EFGM.MenuScale(20))
	marketSortWithButton:DockMargin(0, 0, 0, EFGM.MenuScale(5))
	marketSortWithButton:SetText("ASCENDING ORDER")

	function marketSortWithButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	local showBasedOnLevel = "all"

	local marketShowUnlockButton = vgui.Create("DButton", marketCategoryHolder)
	marketShowUnlockButton:Dock(TOP)
	marketShowUnlockButton:SetSize(0, EFGM.MenuScale(20))
	marketShowUnlockButton:DockMargin(0, 0, 0, EFGM.MenuScale(5))
	marketShowUnlockButton:SetText("SHOW EVERYTHING")

	function marketShowUnlockButton:OnCursorEntered()
		surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
	end

	local marketCategoryEntryList = vgui.Create("DCategoryList", marketCategoryHolder)
	marketCategoryEntryList:Dock(FILL)
	marketCategoryEntryList:SetBackgroundColor(COLORS.transparent)

	local categoryBar = marketCategoryEntryList:GetVBar()
	categoryBar:SetHideButtons(true)
	categoryBar:SetSize(EFGM.MenuScale(5), 0)

	function categoryBar:Paint(w, h)
		surface.SetDrawColor(COLORS.scrollerColor)
		surface.DrawRect(0, 0, EFGM.MenuScale(5), h)
	end

	function categoryBar.btnGrip:Paint(w, h)
		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, EFGM.MenuScale(5), h)
	end

	-- market categories
	-- will load items based on the items "displayType" in it's item def.
	MarketCat = {}

	MarketCat[1] = {
		name = "★ Favorite Items",
		items = {"Assault Carbine", "Assault Rifle", "Light Machine Gun", "Pistol", "Shotgun", "Sniper Rifle", "Marksman Rifle", "Submachine Gun", "Launcher", "Melee", "Frag Grenade", "Smoke Grenade", "Flashbang", "Impact Grenade", "Incendiary Grenade", "Flare", "Special", "Ammunition", "Auxiliary", "Barrel", "Charging Handle", "Chassis", "Foregrip", "Gas Block", "Handguard", "Magazine", "Mount", "Muzzle", "Optic", "Pistol Grip", "Receiver", "Sight", "Stock", "Tactical", "Medical", "Belmont Key", "Concrete Key", "Factory Key", "Barter", "Building", "Electronic", "Energy", "Flammable", "Household", "Information", "Medicine", "Other", "Tool", "Valuable"},
		children = {}
	}

	MarketCat[2] = {
		name = "All Items",
		items = {"Assault Carbine", "Assault Rifle", "Light Machine Gun", "Pistol", "Shotgun", "Sniper Rifle", "Marksman Rifle", "Submachine Gun", "Launcher", "Melee", "Frag Grenade", "Smoke Grenade", "Flashbang", "Impact Grenade", "Incendiary Grenade", "Flare", "Special", "Ammunition", "Auxiliary", "Barrel", "Charging Handle", "Chassis", "Foregrip", "Gas Block", "Handguard", "Magazine", "Mount", "Muzzle", "Optic", "Pistol Grip", "Receiver", "Sight", "Stock", "Tactical", "Medical", "Belmont Key", "Concrete Key", "Factory Key", "Barter", "Building", "Electronic", "Energy", "Flammable", "Household", "Information", "Medicine", "Other", "Tool", "Valuable"},
		children = {}
	}

	MarketCat[3] = {
		name = "Weapons",
		items = {"Assault Carbine", "Assault Rifle", "Light Machine Gun", "Pistol", "Shotgun", "Sniper Rifle", "Marksman Rifle", "Submachine Gun", "Launcher", "Melee", "Frag Grenade", "Smoke Grenade", "Flashbang", "Impact Grenade", "Incendiary Grenade", "Flare", "Special"},
		children = {
			[1] = {
				name = "Assault Rifles",
				items = {"Assault Rifle"}
			},
			[2] = {
				name = "Assault Carbines",
				items = {"Assault Carbine"}
			},
			[3] = {
				name = "Submachine Guns",
				items = {"Submachine Gun"}
			},
			[4] = {
				name = "Light Machine Guns",
				items = {"Light Machine Gun"}
			},
			[5] = {
				name = "Shotguns",
				items = {"Shotgun"}
			},
			[6] = {
				name = "Marksman Rifles",
				items = {"Marksman Rifle"}
			},
			[7] = {
				name = "Sniper Rifles",
				items = {"Sniper Rifle"}
			},
			[8] = {
				name = "Pistols",
				items = {"Pistol"}
			},
			[9] = {
				name = "Grenades",
				items = {"Frag Grenade", "Smoke Grenade", "Flashbang", "Impact Grenade", "Incendiary Grenade", "Flare"}
			},
			[10] = {
				name = "Launchers",
				items = {"Launcher"}
			},
			[11] = {
				name = "Melee",
				items = {"Melee"}
			},
			[12] = {
				name = "Special",
				items = {"Special"}
			},
		}
	}

	MarketCat[4] = {
		name = "Ammunition",
		items = {"Ammunition"},
		children = {}
	}

	MarketCat[5] = {
		name = "Medical",
		items = {"Medical"},
		children = {}
	}

	MarketCat[6] = {
		name = "Attachments",
		items = {"Auxiliary", "Barrel", "Charging Handle", "Chassis", "Foregrip", "Gas Block", "Handguard", "Magazine", "Mount", "Muzzle", "Optic", "Pistol Grip", "Receiver", "Sight", "Stock", "Tactical"},
		children = {
			[1] = {
				name = "Auxiliary",
				items = {"Auxiliary"}
			},
			[2] = {
				name = "Barrels",
				items = {"Barrel"}
			},
			[3] = {
				name = "Charging Handles",
				items = {"Charging Handle"}
			},
			[4] = {
				name = "Chassis",
				items = {"Chassis"}
			},
			[5] = {
				name = "Foregrips",
				items = {"Foregrip"}
			},
			[6] = {
				name = "Gas Blocks",
				items = {"Gas Block"}
			},
			[7] = {
				name = "Handguards",
				items = {"Handguard"}
			},
			[8] = {
				name = "Magazines",
				items = {"Magazine"}
			},
			[9] = {
				name = "Mounts",
				items = {"Mount"}
			},
			[10] = {
				name = "Muzzles",
				items = {"Muzzle"}
			},
			[11] = {
				name = "Optics",
				items = {"Optic"}
			},
			[12] = {
				name = "Pistol Grips",
				items = {"Pistol Grip"}
			},
			[13] = {
				name = "Receivers",
				items = {"Receiver"}
			},
			[14] = {
				name = "Sights",
				items = {"Sight"}
			},
			[15] = {
				name = "Stocks",
				items = {"Stock"}
			},
			[16] = {
				name = "Tacticals",
				items = {"Tactical"}
			}
		}
	}

	MarketCat[7] = {
		name = "Keys",
		items = {"Belmont Key", "Concrete Key", "Factory Key"},
		children = {
			[1] = {
				name = "Belmont",
				items = {"Belmont Key"}
			},
			[2] = {
				name = "Concrete",
				items = {"Concrete Key"}
			},
			[3] = {
				name = "Factory",
				items = {"Factory Key"}
			}
		}
	}

	MarketCat[8] = {
		name = "Barter",
		items = {"Barter", "Building", "Electronic", "Energy", "Flammable", "Household", "Information", "Medicine", "Other", "Tool", "Valuable"},
		children = {
			[1] = {
				name = "Building",
				items = {"Building"}
			},
			[2] = {
				name = "Electronics",
				items = {"Electronic"}
			},
			[3] = {
				name = "Energy",
				items = {"Energy"}
			},
			[4] = {
				name = "Flammables",
				items = {"Flammable"}
			},
			[5] = {
				name = "Household",
				items = {"Household"}
			},
			[6] = {
				name = "Information",
				items = {"Information"}
			},
			[7] = {
				name = "Medicine",
				items = {"Medicine"}
			},
			[8] = {
				name = "Tools",
				items = {"Tool"}
			},
			[9] = {
				name = "Valuables",
				items = {"Valuable"}
			},
			[10] = {
				name = "Others",
				items = {"Other"}
			}
		}
	}

	local marketTbl = {}

	local marketItemHolder = vgui.Create("DPanel", marketEntryHolder)
	marketItemHolder:Dock(FILL)
	marketItemHolder:DockPadding(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5))
	marketItemHolder:SetPaintBackground(false)

	local marketItems = vgui.Create("DIconLayout", marketItemHolder)
	marketItems:Dock(TOP)
	marketItems:SetSpaceX(0)
	marketItems:SetSpaceY(0)

	local function ReloadMarket()
		marketItems:Clear()

		for k, v in ipairs(marketTbl) do
			if k >= ((currentPage * 20) - 19) and k <= (currentPage * 20) then
				local item = marketItems:Add("DButton")
				item:SetText("")
				item:SetSize(EFGM.MenuScale(198), EFGM.MenuScale(215))

				local borderColor = COLORS.itemBackgroundColor

				surface.SetFont("PuristaBold18")
				local levelText = "LEVEL " .. v.level
				local levelTextSize = surface.GetTextSize(levelText)

				local caliberText = v.caliber or ""
				local caliberTextSize = surface.GetTextSize(caliberText)

				local value = v.value
				local plyLevel = EFGM.MENU.Player:GetNWInt("Level", 1)

				function item:Paint(w, h)
					surface.SetDrawColor(COLORS.itemColor)
					surface.DrawRect(0, 0, w, h)

					surface.SetDrawColor(borderColor)

					surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
					surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
					surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
					surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

					surface.SetDrawColor(COLORS.pureWhiteColor)
					surface.SetMaterial(v.icon)

					local originalWidth, originalHeight = EFGM.MenuScale(57 * v.sizeX), EFGM.MenuScale(57 * v.sizeY)
					local scaleFactor
					local targetMaxDimension = EFGM.MenuScale(158)

					if originalWidth > originalHeight then
						scaleFactor = targetMaxDimension / originalWidth
					else
						scaleFactor = targetMaxDimension / originalHeight
					end

					local newWidth = math.Round(originalWidth * scaleFactor)
					local newHeight = math.Round(originalHeight * scaleFactor)

					local x = (EFGM.MenuScale(198) / 2) - (newWidth / 2)
					local y = (EFGM.MenuScale(216) / 2) - (newHeight / 2)

					surface.DrawTexturedRect(x, y - EFGM.MenuScale(20), newWidth, newHeight)

					if EFGM.CLIENT.MARKETLIMITS[v.id] != 0 then surface.SetDrawColor(COLORS.transparentBlackColor) else surface.SetDrawColor(COLORS.marketItemOutOfStockColor) end
					surface.DrawRect(EFGM.MenuScale(1), h - EFGM.MenuScale(31), w - EFGM.MenuScale(2), EFGM.MenuScale(30))

					local countText = ""
					surface.SetFont("PuristaBold18")
					if v.consumableValue then countText = v.consumableValue .. "/" .. v.consumableValue end
					if EFGM.CLIENT.MARKETLIMITS[v.id] then
						countText = !v.consumableValue and EFGM.CLIENT.MARKETLIMITS[v.id] .. "x" or EFGM.CLIENT.MARKETLIMITS[v.id] .. "x" .. " " .. v.consumableValue .. "/" .. v.consumableValue
					end

					local countTextSize = surface.GetTextSize(countText)
					if EFGM.CLIENT.MARKETLIMITS[v.id] then countTextSize = countTextSize + EFGM.MenuScale(10) end

					surface.SetFont("PuristaBold22")
					local itemValueText
					if EFGM.CLIENT.MARKETLIMITS[v.id] != 0 then itemValueText = string.FormatComma(value) else itemValueText = "SOLD OUT" end
					local itemValueTextSize = surface.GetTextSize(itemValueText)

					if v.canPurchase then
						surface.SetDrawColor(COLORS.marketItemValueColor)

						if countText != "" then
							surface.DrawRect(EFGM.MenuScale(1), EFGM.MenuScale(32), countTextSize + EFGM.MenuScale(10), EFGM.MenuScale(15))
							draw.SimpleTextOutlined(countText, "PuristaBold18", EFGM.MenuScale(17), EFGM.MenuScale(29), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
						end

						surface.DrawRect(EFGM.MenuScale(1), EFGM.MenuScale(17), levelTextSize + EFGM.MenuScale(8), EFGM.MenuScale(15))
						draw.SimpleTextOutlined(levelText, "PuristaBold18", EFGM.MenuScale(5), EFGM.MenuScale(14), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
					end

					if v.caliber then
						surface.SetDrawColor(COLORS.marketItemValueColor)
						surface.DrawRect(EFGM.MenuScale(1), h - EFGM.MenuScale(46), caliberTextSize + EFGM.MenuScale(10), EFGM.MenuScale(15))
						draw.SimpleTextOutlined(caliberText, "PuristaBold18", EFGM.MenuScale(5), h - EFGM.MenuScale(49), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
					end

					draw.SimpleTextOutlined(v.name, "PuristaBold18", EFGM.MenuScale(5), 0, COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
					draw.SimpleTextOutlined(itemValueText, "PuristaBold22", (w / 2) + EFGM.MenuScale(12), h - EFGM.MenuScale(29), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

					if EFGM.CLIENT.MARKETFAVORITES[v.id] then
						surface.SetDrawColor(COLORS.pureWhiteColor)
						surface.SetMaterial(MATS.favoriteIcon)
						surface.DrawTexturedRect(w - EFGM.MenuScale(31), EFGM.MenuScale(1), EFGM.MenuScale(30), EFGM.MenuScale(30))
					end

					if EFGM.CLIENT.MARKETLIMITS[v.id] then
						surface.SetDrawColor(COLORS.pureWhiteColor)
						surface.SetMaterial(MATS.restartIcon)
						surface.DrawTexturedRect(EFGM.MenuScale(1), EFGM.MenuScale(31), EFGM.MenuScale(16), EFGM.MenuScale(16))
					end

					surface.SetDrawColor(COLORS.pureWhiteColor)

					if !v.canPurchase then
						surface.SetMaterial(MATS.sellIcon)
					elseif plyLevel < v.level then
						surface.SetMaterial(MATS.lockIcon)
					elseif EFGM.CLIENT.MARKETLIMITS[v.id] == 0 then
						surface.SetMaterial(MATS.noStockIcon)
					else
						surface.SetMaterial(MATS.roubleIcon)
					end

					surface.DrawTexturedRect((w / 2) - EFGM.MenuScale(12) - (itemValueTextSize / 2), h - EFGM.MenuScale(27), EFGM.MenuScale(20), EFGM.MenuScale(20))
				end

				function item:OnCursorEntered()
					surface.PlaySound("ui/inv_item_hover_" .. math.random(1, 3) .. ".wav")

					borderColor = COLORS.itemBackgroundColorHovered
				end

				function item:OnCursorExited()
					borderColor = COLORS.itemBackgroundColor
				end

				function item:DoClick()
					if !v.canPurchase then return end
					EFGM.MENU.ConfirmPurchase(v.id, nil, false)
				end

				function item:DoRightClick()
					local x, y = marketItemHolder:LocalCursorPos()
					local sideH, sideV

					surface.PlaySound("ui/context.wav")

					if x <= (marketItemHolder:GetWide() / 2) then sideH = true else sideH = false end
					if y <= (marketItemHolder:GetTall() / 2) then sideV = true else sideV = false end

					if IsValid(EFGM.MENU.ELEMENTS.ContextMenu) then EFGM.MENU.ELEMENTS.ContextMenu:Remove() end
					local contextMenu = vgui.Create("EContextMenu", marketItemHolder)
					contextMenu:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(10))
					contextMenu:DockPadding(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5))
					contextMenu:SetAlpha(0)
					contextMenu:AlphaTo(255, 0.1, 0, nil)
					contextMenu:RequestFocus()
					EFGM.MENU.ELEMENTS.ContextMenu = contextMenu

					local inspectButton = vgui.Create("EContextButton", contextMenu)
					inspectButton:SetText("INSPECT")
					inspectButton.OnClickEvent = function()
						local data = {
							att = v.defAtts
						}
						EFGM.MENU.InspectItem(v.id, data)
					end

					local favoriteButton = vgui.Create("EContextButton", contextMenu)
					favoriteButton:SetText("FAVORITE")
					favoriteButton.OnClickSound = "nil"
					favoriteButton.OnClickEvent = function()
						EFGM:ToggleFavorite(v.id)
					end

					favoriteButton.Think = function(s)
						favoriteButton:SetText((EFGM.CLIENT.MARKETFAVORITES[v.id] and "UNFAVORITE") or "FAVORITE")
					end

					if v.canPurchase and plyLevel >= v.level and EFGM.CLIENT.MARKETLIMITS[v.id] != 0 then
						local buyButton = vgui.Create("EContextButton", contextMenu)
						buyButton:SetText("BUY")
						buyButton.OnClickSound = "nil"
						buyButton.OnClickEvent = function()
							EFGM.MENU.ConfirmPurchase(v.id, nil, false)
						end
					end

					contextMenu:SetTallAfterCTX()

					if sideH == true then
						contextMenu:SetX(math.Clamp(x + EFGM.MenuScale(5), EFGM.MenuScale(5), marketItemHolder:GetWide() - contextMenu:GetWide() - EFGM.MenuScale(5)))
					else
						contextMenu:SetX(math.Clamp(x - contextMenu:GetWide(), EFGM.MenuScale(5), marketItemHolder:GetWide() - contextMenu:GetWide() - EFGM.MenuScale(5)))
					end

					if sideV == true then
						contextMenu:SetY(math.Clamp(y + EFGM.MenuScale(5), EFGM.MenuScale(5), marketItemHolder:GetTall() - contextMenu:GetTall() - EFGM.MenuScale(5)))
					else
						contextMenu:SetY(math.Clamp(y - contextMenu:GetTall() + EFGM.MenuScale(5), EFGM.MenuScale(5), marketItemHolder:GetTall() - contextMenu:GetTall() - EFGM.MenuScale(5)))
					end
				end
			end
		end
	end

	local curItems = MarketCat[1]
	local function UpdateMarketList(items)
		if items == nil then items = curItems end

		local plyLevel = EFGM.MENU.Player:GetNWInt("Level", 1)
		marketTbl = {}
		local numOfItems = 0
		currentPage = 1
		totalPages = 0
		curItems = items

		for k1, v1 in ipairs(items) do
			for k2, v2 in pairs(EFGM.ITEMS) do
				if marketSearchText != "" and !(string.find((v2.fullName and v2.fullName or v2.displayName):lower(), marketSearchText) or string.find((k2):lower(), marketSearchText)) then continue end
				if showBasedOnLevel == "unlocked" and plyLevel < (v2.levelReq or 1) then continue end
				if showBasedOnLevel == "unlocked" and !(v2.canPurchase or v2.canPurchase == nil) then continue end
				if marketTab == "★ Favorite Items" and !EFGM.CLIENT.MARKETFAVORITES[k2] then continue end

				if v2.displayType == v1 then
					numOfItems = numOfItems + 1

					local purchasable
					if v2.canPurchase or v2.canPurchase == nil then purchasable = true else purchasable = false end

					local entry = {}
					entry.name = v2.displayName
					entry.fullName = v2.fullName
					entry.displayType = v2.displayType
					entry.id = k2
					entry.icon = v2.icon
					entry.value = v2.value or 1000
					entry.weight = v2.weight or 0.1
					entry.level = v2.levelReq or 1
					entry.equipType = v2.equipType
					entry.consumableValue = v2.consumableValue
					entry.stack = v2.stackSize
					entry.sizeX = v2.sizeX or 1
					entry.sizeY = v2.sizeY or 1
					entry.defAtts = v2.defAtts
					entry.caliber = v2.caliber
					entry.canPurchase = purchasable

					if EFGM.CLIENT.MARKETFAVORITES[k2] then entry.sortWeight = 9999 else entry.sortWeight = 0 end

					if entry.equipType == EQUIPTYPE.Weapon and entry.defAtts then
						local atts = GetPrefixedAttachmentListFromCode(entry.defAtts)
						if !atts then return end

						for _, a in ipairs(atts) do
							local att = EFGM.ITEMS[a]
							if att == nil then continue end

							entry.value = entry.value + att.value
							entry.weight = entry.weight + att.weight
						end
					end

					table.insert(marketTbl, entry)
				end
			end
		end

		if sortBy == "name" then
			if sortWith == "ascending" then
				table.sort(marketTbl, function(a, b)
					if a.sortWeight != b.sortWeight then
						return a.sortWeight > b.sortWeight
					elseif a.name != b.name then
						return a.name < b.name
					end

					return false
				end)
			else
				table.sort(marketTbl, function(a, b)
					if a.sortWeight != b.sortWeight then
						return a.sortWeight > b.sortWeight
					elseif a.name != b.name then
						return a.name > b.name
					end

					return false
				end)
			end
		elseif sortBy == "value" then
			if sortWith == "ascending" then
				table.sort(marketTbl, function(a, b)
					if a.sortWeight != b.sortWeight then
						return a.sortWeight > b.sortWeight
					elseif a.value != b.value then
						return a.value < b.value
					end

					return false
				end)
			else
				table.sort(marketTbl, function(a, b)
					if a.sortWeight != b.sortWeight then
						return a.sortWeight > b.sortWeight
					elseif a.value != b.value then
						return a.value > b.value
					end

					return false
				end)
			end
		elseif sortBy == "level" then
			if sortWith == "ascending" then
				table.sort(marketTbl, function(a, b)
					if a.sortWeight != b.sortWeight then
						return a.sortWeight > b.sortWeight
					elseif a.level != b.level then
						return a.level < b.level
					end

					return false
				end)
			else
				table.sort(marketTbl, function(a, b)
					if a.sortWeight != b.sortWeight then
						return a.sortWeight > b.sortWeight
					elseif a.level != b.level then
						return a.level > b.level
					end

					return false
				end)
			end
		end

		totalPages = math.ceil(numOfItems / 20)
		ReloadMarket()
	end

	function nextPageButton:DoClick()
		if currentPage >= totalPages then surface.PlaySound("ui/element_deselect.wav") return end

		surface.PlaySound("ui/element_select.wav")
		currentPage = currentPage + 1
		ReloadMarket()
	end

	function lastPageButton:DoClick()
		if currentPage <= 1 then surface.PlaySound("ui/element_deselect.wav") return end

		surface.PlaySound("ui/element_select.wav")
		currentPage = currentPage - 1
		ReloadMarket()
	end

	function marketSearchBox:OnChange()
		local value = self:GetValue():lower()

		if value:match("^%s+") then
			self:SetText(value:match("^%s*(.-)$"))
			return
		end

		if !GetConVar("efgm_menu_search_automatic"):GetBool() then return end

		marketSearchText = value
		UpdateMarketList()
	end

	function marketSearchBox:OnEnter()
		if GetConVar("efgm_menu_search_automatic"):GetBool() then return end
		marketSearchText = self:GetValue():lower()
		UpdateMarketList()
	end

	function marketSortByButton:DoClick()
		surface.PlaySound("ui/element_select.wav")

		if sortBy == "name" then
			sortBy = "value"
			marketSortByButton:SetText("SORT BY VALUE")
		elseif sortBy == "value" then
			sortBy = "level"
			marketSortByButton:SetText("SORT BY LEVEL")
		elseif sortBy == "level" then
			sortBy = "name"
			marketSortByButton:SetText("SORT BY NAME")
		end

		UpdateMarketList()
	end

	function marketSortWithButton:DoClick()
		surface.PlaySound("ui/element_select.wav")

		if sortWith == "ascending" then
			sortWith = "descending"
			marketSortWithButton:SetText("DESCENDING ORDER")
		else
			sortWith = "ascending"
			marketSortWithButton:SetText("ASCENDING ORDER")
		end

		UpdateMarketList()
	end

	function marketShowUnlockButton:DoClick()
		surface.PlaySound("ui/element_select.wav")

		if showBasedOnLevel == "all" then
			showBasedOnLevel = "unlocked"
			marketShowUnlockButton:SetText("SHOW UNLOCKED")
		else
			showBasedOnLevel = "all"
			marketShowUnlockButton:SetText("SHOW EVERYTHING")
		end

		UpdateMarketList()
	end

	-- default to the all items tab
	UpdateMarketList(MarketCat[1].items)

	for k1, v1 in ipairs(MarketCat) do
		local category = marketCategoryEntryList:Add(string.upper(v1.name))
		category:SetExpanded(true)
		category:SetHeaderHeight(EFGM.MenuScale(30))

		function category:OnCursorEntered()
			surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
		end

		function category:Toggle()
			marketCategoryEntryList:UnselectAll()

			if marketTab == v1.name then return end

			surface.PlaySound("ui/element_select.wav")
			marketTab = v1.name
			marketSearchText = ""
			marketSearchBox:SetValue("")
			UpdateMarketList(v1.items)
		end

		for k2, v2 in ipairs(v1.children) do
			local entry = category:Add(string.upper(v2.name))

			function entry:DoClick()
				if marketTab == v2.name then return end

				surface.PlaySound("ui/element_select.wav")
				marketTab = v2.name
				marketSearchText = ""
				marketSearchBox:SetValue("")
				UpdateMarketList(v2.items)
			end
		end
	end
end

function EFGM.MENU.OpenTab.Tasks()
	local contents = vgui.Create("DPanel", EFGM.MENU.MenuFrame.LowerPanel)
	contents:Dock(FILL)
	contents:DockPadding(EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10))
	contents:SetAlpha(0)
	contents:SetPaintBackground(false)

	EFGM.MENU.MenuFrame.LowerPanel.Contents = contents

	local taskList = vgui.Create("DPanel", contents)
	taskList:Dock(LEFT)
	taskList:SetSize(EFGM.MenuScale(550), 0)

	function taskList:Paint(w, h)
		BlurPanel(self, 5)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(6))
	end

	function DrawTaskList()
		taskList:Clear()

		local taskListHeader = vgui.Create("DPanel", taskList)
		taskListHeader:Dock(TOP)
		taskListHeader:SetSize(0, EFGM.MenuScale(36))

		function taskListHeader:Paint(w, h)
			surface.SetDrawColor(COLORS.containerHeaderColor)
			surface.DrawRect(0, 0, w, h)

			draw.SimpleTextOutlined("TASKS", "PuristaBold32", EFGM.MenuScale(5), EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		end

		local taskListScroller = vgui.Create("DScrollPanel", taskList)
		taskListScroller:Dock(FILL)

		local taskListBar = taskListScroller:GetVBar()
		taskListBar:SetHideButtons(true)
		taskListBar:SetSize(EFGM.MenuScale(15), 0)

		function taskListBar:Paint(w, h)
			surface.SetDrawColor(COLORS.scrollerColor)
			surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(8), EFGM.MenuScale(5), h - EFGM.MenuScale(16))
		end

		function taskListBar.btnGrip:Paint(w, h)
			surface.SetDrawColor(COLORS.transparentWhiteColor)
			surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(8), EFGM.MenuScale(5), h - EFGM.MenuScale(16))
		end

		if !table.IsEmpty(EFGM.CLIENT.TASKS) then
			for taskName, taskInstance in pairs(EFGM.CLIENT.TASKS) do
				local taskInfo = EFGMTASKS[taskName]

				local taskButton = taskListScroller:Add("DButton")
				taskButton:SetHeight(EFGM.MenuScale(110))
				taskButton:SetText("")
				taskButton:Dock(TOP)
				taskButton:DockMargin(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), 0)

				local genericTaskBG = Material("taskbg/concrete/general.jpg", "smooth")

				function taskButton:Paint(w, h)
					surface.SetMaterial(taskInfo.uibackground or genericTaskBG)
					surface.SetDrawColor(COLORS.pureWhiteColor)
					surface.DrawTexturedRect(0, 0, w, h)
				end

				function taskButton:PaintOver(w, h)
					surface.SetDrawColor(Color(0, 0, 0, 155))
					surface.DrawRect(0, 0, w, EFGM.MenuScale(36))

					surface.SetDrawColor(COLORS.transparentWhiteColor)
					surface.DrawRect(0, 0, w, EFGM.MenuScale(6))

					surface.SetDrawColor(COLORS.whiteBorderColor)
					surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
					surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
					surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
					surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

					draw.SimpleTextOutlined(string.upper(taskInfo.name), "PuristaBold24", EFGM.MenuScale(5), EFGM.MenuScale(7), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

					draw.SimpleTextOutlined("[" .. string.upper(TASKSTATUSSTRING[EFGM.CLIENT.TASKS[taskName].status]) .. "]", "PuristaBold24", w - EFGM.MenuScale(5), EFGM.MenuScale(7), COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
				end

				function taskButton:OnCursorEntered()
					surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
				end

				function taskButton:DoClick()
					surface.PlaySound("ui/element_select.wav")
					DrawTaskDisplay(taskName)
				end
			end
		end
	end

	DrawTaskList()

	local taskDisplay = vgui.Create("DPanel", contents)
	taskDisplay:Dock(LEFT)
	taskDisplay:SetSize(EFGM.MenuScale(1305), 0)
	taskDisplay:DockMargin(EFGM.MenuScale(13), 0, 0, 0)

	function taskDisplay:Paint(w, h)
		BlurPanel(self, 5)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(6))
	end

	taskDisplay:SetVisible(false)

	function DrawTaskDisplay(taskName)
		taskDisplay:Clear()
		taskDisplay:SetVisible(true)

		local taskInfo = EFGMTASKS[taskName]

		local taskDisplayHeader = vgui.Create("DPanel", taskDisplay)
		taskDisplayHeader:Dock(TOP)
		taskDisplayHeader:SetSize(0, EFGM.MenuScale(36))

		function taskDisplayHeader:Paint(w, h)
			surface.SetDrawColor(COLORS.containerHeaderColor)
			surface.DrawRect(0, 0, w, h)

			draw.SimpleTextOutlined(string.upper(taskInfo.name), "PuristaBold32", EFGM.MenuScale(5), EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		end

		if EFGM.CLIENT.TASKS[taskName].status == TASKSTATUS.AcceptPending and EFGM.MENU.Player:IsInHideout() then
			local acceptButton = vgui.Create("DButton", taskDisplay)
			acceptButton:Dock(TOP)
			acceptButton:DockMargin(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), 0)
			acceptButton:SetSize(0, EFGM.MenuScale(50))
			acceptButton:SetText("")

			function acceptButton:Paint(w, h)
				surface.SetDrawColor(COLORS.containerBackgroundColor)
				surface.DrawRect(0, 0, w, h)

				surface.SetDrawColor(COLORS.transparentWhiteColor)
				surface.DrawRect(0, 0, acceptButton:GetWide(), EFGM.MenuScale(2))

				draw.SimpleTextOutlined("ACCEPT", "PuristaBold32", w / 2, EFGM.MenuScale(7), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			end

			function acceptButton:OnCursorEntered()
				surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
			end

			function acceptButton:DoClick()
				surface.PlaySound("ui/element_select.wav")
				RunConsoleCommand("efgm_task_accept", taskName)
				RunConsoleCommand("efgm_task_requestall")
				taskDisplay:Clear()

				timer.Simple(0.1, function()
					DrawTaskDisplay(taskName)
					DrawTaskList()
				end)
			end
		end

		if EFGM.CLIENT.TASKS[taskName].status == TASKSTATUS.CompletePending and EFGM.MENU.Player:IsInHideout() then
			local completeButton = vgui.Create("DButton", taskDisplay)
			completeButton:Dock(TOP)
			completeButton:DockMargin(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), 0)
			completeButton:SetHeight(EFGM.MenuScale(50))
			completeButton:SetText("")

			function completeButton:Paint(w, h)
				surface.SetDrawColor(COLORS.containerBackgroundColor)
				surface.DrawRect(0, 0, w, h)

				surface.SetDrawColor(COLORS.transparentWhiteColor)
				surface.DrawRect(0, 0, completeButton:GetWide(), EFGM.MenuScale(2))

				draw.SimpleTextOutlined("COMPLETE", "PuristaBold32", w / 2, EFGM.MenuScale(7), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			end

			function completeButton:OnCursorEntered()
				surface.PlaySound("ui/element_hover_" .. math.random(1, 3) .. ".wav")
			end

			function completeButton:DoClick()
				surface.PlaySound("ui/element_select.wav")
				RunConsoleCommand("efgm_task_complete", taskName)
				RunConsoleCommand("efgm_task_requestall")
				taskDisplay:Clear()

				timer.Simple(0.1, function()
					DrawTaskDisplay(taskName)
					DrawTaskList()
				end)
			end
		end

		local genericTraderIcon = Material("traders/generic.png", "smooth")
		local messageMarkup = markup.Parse("<font=PuristaBold24>" .. taskInfo.description .. "</font>", EFGM.MenuScale(1025))

		local messagePanel = vgui.Create("DPanel", taskDisplay)
		messagePanel:Dock(TOP)
		messagePanel:DockMargin(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), 0)
		messagePanel:SetSize(0, EFGM.MenuScale(246))

		local messagePanelHeader = vgui.Create("DPanel", messagePanel)
		messagePanelHeader:Dock(TOP)
		messagePanelHeader:SetSize(0, EFGM.MenuScale(36))

		function messagePanelHeader:Paint(w, h)
			surface.SetDrawColor(COLORS.containerHeaderColor)
			surface.DrawRect(0, 0, w, h)

			surface.SetDrawColor(COLORS.transparentWhiteColor)
			surface.DrawRect(0, 0, w, EFGM.MenuScale(6))

			draw.SimpleTextOutlined(taskInfo.messageOverride or ("INCOMING TRANSMISSION FROM " .. string.upper(taskInfo.traderName)), "PuristaBold32", EFGM.MenuScale(5), EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		end

		local messageIcon = vgui.Create("DPanel", messagePanel)
		messageIcon:Dock(LEFT)
		messageIcon:SetSize(EFGM.MenuScale(200), EFGM.MenuScale(200))
		messageIcon:DockMargin(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), 0)

		function messageIcon:Paint(w, h)
			surface.SetMaterial(taskInfo.traderIcon or genericTraderIcon)
			surface.SetDrawColor(COLORS.pureWhiteColor)
			surface.DrawTexturedRect(0, 0, EFGM.MenuScale(200), EFGM.MenuScale(200))
		end

		function messageIcon:PaintOver(w, h)
			surface.SetDrawColor(COLORS.whiteBorderColor)
			surface.DrawRect(0, 0, EFGM.MenuScale(200), EFGM.MenuScale(1))
			surface.DrawRect(0, EFGM.MenuScale(200) - 1, EFGM.MenuScale(200), EFGM.MenuScale(1))
			surface.DrawRect(0, 0, EFGM.MenuScale(1), EFGM.MenuScale(200))
			surface.DrawRect(EFGM.MenuScale(200) - 1, 0, EFGM.MenuScale(1), EFGM.MenuScale(200))
		end

		local messageScroller = vgui.Create("DScrollPanel", messagePanel)
		messageScroller:Dock(LEFT)
		messageScroller:SetSize(EFGM.MenuScale(1075), 0)
		messageScroller:DockMargin(0, EFGM.MenuScale(5), EFGM.MenuScale(5), 0)

		local messageBar = messageScroller:GetVBar()
		messageBar:SetHideButtons(true)
		messageBar:SetSize(EFGM.MenuScale(15), 0)

		function messageBar:Paint(w, h)
			surface.SetDrawColor(COLORS.scrollerColor)
			surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(8), EFGM.MenuScale(5), h - EFGM.MenuScale(16))
		end

		function messageBar.btnGrip:Paint(w, h)
			surface.SetDrawColor(COLORS.transparentWhiteColor)
			surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(8), EFGM.MenuScale(5), h - EFGM.MenuScale(16))
		end

		local messageTextPanel = vgui.Create("DPanel", messageScroller)
		messageTextPanel:SetSize(messageMarkup:GetWidth(), messageMarkup:GetHeight())
		messageTextPanel:SetPos(EFGM.MenuScale(5), 0)

		function messageTextPanel:Paint(w, h)
			messageMarkup:Draw(0, EFGM.MenuScale(-5), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
		end

		local objectivePanel = vgui.Create("DPanel", taskDisplay)
		objectivePanel:Dock(TOP)
		objectivePanel:DockMargin(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5))
		objectivePanel:SetSize(0, EFGM.MenuScale(41))

		local objectivePanelHeader = vgui.Create("DPanel", objectivePanel)
		objectivePanelHeader:Dock(TOP)
		objectivePanelHeader:SetSize(0, EFGM.MenuScale(36))

		function objectivePanelHeader:Paint(w, h)
			surface.SetDrawColor(COLORS.containerHeaderColor)
			surface.DrawRect(0, 0, w, h)

			surface.SetDrawColor(COLORS.transparentWhiteColor)
			surface.DrawRect(0, 0, w, EFGM.MenuScale(6))

			draw.SimpleTextOutlined("OBJECTIVES", "PuristaBold32", EFGM.MenuScale(5), EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		end

		local objectiveScroller = vgui.Create("DScrollPanel", objectivePanel)
		objectiveScroller:Dock(FILL)
		objectiveScroller:DockMargin(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), 0)

		local objectiveBar = objectiveScroller:GetVBar()
		objectiveBar:SetHideButtons(true)
		objectiveBar:SetSize(EFGM.MenuScale(15), 0)

		function objectiveBar:Paint(w, h)
			surface.SetDrawColor(COLORS.scrollerColor)
			surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(8), EFGM.MenuScale(5), h - EFGM.MenuScale(16))
		end

		function objectiveBar.btnGrip:Paint(w, h)
			surface.SetDrawColor(COLORS.transparentWhiteColor)
			surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(8), EFGM.MenuScale(5), h - EFGM.MenuScale(16))
		end

		for objIndex, objInfo in ipairs(taskInfo.objectives) do
			local curProgress = EFGM.CLIENT.TASKS[taskName].progress[objIndex]
			local curTempProgress = EFGM.CLIENT.TASKS[taskName].tempProgress[objIndex]
			local curProgressTotal = curProgress + curTempProgress
			local maxProgress = objInfo.count or 1

			objectivePanel:SetTall(objectivePanel:GetTall() + EFGM.MenuScale(45))

			local objective = objectiveScroller:Add("DPanel")
			objective:Dock(TOP)
			objective:DockMargin(0, 0, 0, EFGM.MenuScale(5))
			objective:SetSize(0, EFGM.MenuScale(40))

			local progressText
			local progressTextSize

			local objText = GetObjectiveText(objInfo)

			function objective:Paint(w, h)
				surface.SetDrawColor(COLORS.containerHeaderColor)
				surface.DrawRect(0, 0, w, h)

				draw.SimpleTextOutlined(objText, "PuristaBold24", EFGM.MenuScale(5), EFGM.MenuScale(6), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

				if EFGM.CLIENT.TASKS[taskName].status == TASKSTATUS.AcceptPending then
					surface.SetFont("PuristaBold24")
					progressText = "0/" .. string.FormatComma(maxProgress)
					progressTextSize = surface.GetTextSize(progressText)
					draw.SimpleTextOutlined(progressText, "PuristaBold24", w - EFGM.MenuScale(5), EFGM.MenuScale(6), COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
				else
					surface.SetFont("PuristaBold24")
					progressText = string.FormatComma(curProgressTotal) .. "/" .. string.FormatComma(maxProgress)
					progressTextSize = surface.GetTextSize(progressText)

					if curTempProgress > 0 then
						surface.SetDrawColor(Color(202, 20, 20, 255))
						surface.DrawRect(w - EFGM.MenuScale(410), EFGM.MenuScale(5), math.Remap(curProgressTotal, 0, maxProgress, 0, EFGM.MenuScale(400) - progressTextSize), h - EFGM.MenuScale(10))
					end

					surface.SetDrawColor(Color(80, 80, 80, 255))
					surface.DrawRect(w - EFGM.MenuScale(410), EFGM.MenuScale(5), math.Remap(curProgress, 0, maxProgress, 0, EFGM.MenuScale(400) - progressTextSize), h - EFGM.MenuScale(10))

					draw.SimpleTextOutlined(progressText, "PuristaBold24", w - EFGM.MenuScale(5), EFGM.MenuScale(6), COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
				end

				surface.SetDrawColor(Color(205, 205, 205, 255))
				surface.DrawOutlinedRect(w - EFGM.MenuScale(410), EFGM.MenuScale(5), EFGM.MenuScale(400) - progressTextSize, h - EFGM.MenuScale(10), EFGM.MenuScaleRounded(1))
			end

			function objective:PaintOver(w, h)
				surface.SetDrawColor(COLORS.whiteBorderColor)
				surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
				surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
				surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
				surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)
			end

			if curProgress != maxProgress and objInfo.type == OBJECTIVE.Pay and EFGM.CLIENT.TASKS[taskName].status == TASKSTATUS.InProgress and EFGM.MENU.Player:IsInHideout() then
				local payAmount = math.Clamp(maxProgress - curProgress, 0, EFGM.MENU.Player:GetNWInt("Money", 0))

				local payButton = vgui.Create("DButton", objective)
				payButton:SetSize(EFGM.MenuScale(120), EFGM.MenuScale(25))
				payButton:Center()
				payButton:AlignLeft(EFGM.MenuScale(520))
				payButton:SetText("Pay ₽" .. payAmount)
				function payButton:DoClick()
					RunConsoleCommand("efgm_task_pay", taskName, payAmount)
					RunConsoleCommand("efgm_task_requestall")
					taskDisplay:Clear()

					timer.Simple(0.1, function()
						DrawTaskDisplay(taskName)
						DrawTaskList()
					end)
				end
			end
		end

		local rewardPanel = vgui.Create("DPanel", taskDisplay)
		rewardPanel:Dock(TOP)
		rewardPanel:DockMargin(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5))
		rewardPanel:SetSize(0, EFGM.MenuScale(41))

		local rewardPanelHeader = vgui.Create("DPanel", rewardPanel)
		rewardPanelHeader:Dock(TOP)
		rewardPanelHeader:SetSize(0, EFGM.MenuScale(36))

		function rewardPanelHeader:Paint(w, h)
			surface.SetDrawColor(COLORS.containerHeaderColor)
			surface.DrawRect(0, 0, w, h)

			surface.SetDrawColor(COLORS.transparentWhiteColor)
			surface.DrawRect(0, 0, w, EFGM.MenuScale(6))

			draw.SimpleTextOutlined("REWARDS", "PuristaBold32", EFGM.MenuScale(5), EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		end

		local rewardScroller = vgui.Create("DScrollPanel", rewardPanel)
		rewardScroller:Dock(FILL)
		rewardScroller:DockMargin(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), 0)

		local rewardBar = rewardScroller:GetVBar()
		rewardBar:SetHideButtons(true)
		rewardBar:SetSize(EFGM.MenuScale(15), 0)

		function rewardBar:Paint(w, h)
			surface.SetDrawColor(COLORS.scrollerColor)
			surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(8), EFGM.MenuScale(5), h - EFGM.MenuScale(16))
		end

		function rewardBar.btnGrip:Paint(w, h)
			surface.SetDrawColor(COLORS.transparentWhiteColor)
			surface.DrawRect(EFGM.MenuScale(5), EFGM.MenuScale(8), EFGM.MenuScale(5), h - EFGM.MenuScale(16))
		end

		for rewardIndex, rewardInfo in ipairs(taskInfo.rewards) do
			local amount = rewardInfo.count .. "x" or "1x"
			if amount == "1x" then amount = "" end

			rewardPanel:SetTall(rewardPanel:GetTall() + EFGM.MenuScale(45))

			local reward = rewardScroller:Add("DPanel")
			reward:Dock(TOP)
			reward:DockMargin(0, 0, 0, EFGM.MenuScale(5))
			reward:SetSize(0, EFGM.MenuScale(40))

			local rewardText = GetRewardText(rewardInfo)

			function reward:Paint(w, h)
				surface.SetDrawColor(COLORS.containerHeaderColor)
				surface.DrawRect(0, 0, w, h)

				draw.SimpleTextOutlined(rewardText, "PuristaBold24", EFGM.MenuScale(5), EFGM.MenuScale(6), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			end

			function reward:PaintOver(w, h)
				surface.SetDrawColor(COLORS.whiteBorderColor)
				surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
				surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
				surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
				surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)
			end
		end
	end
end

function EFGM.MENU.OpenTab.Skills()
	local contents = vgui.Create("DPanel", EFGM.MENU.MenuFrame.LowerPanel)
	contents:Dock(FILL)
	contents:DockPadding(EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10))
	contents:SetAlpha(0)
	contents:SetPaintBackground(false)

	EFGM.MENU.MenuFrame.LowerPanel.Contents = contents
end

function EFGM.MENU.OpenTab.Codex()
	local contents = vgui.Create("DPanel", EFGM.MENU.MenuFrame.LowerPanel)
	contents:Dock(FILL)
	contents:DockPadding(EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10))
	contents:SetAlpha(0)
	contents:SetPaintBackground(false)

	EFGM.MENU.MenuFrame.LowerPanel.Contents = contents

	local categoryList = vgui.Create("DPanel", contents)
	categoryList:Dock(LEFT)
	categoryList:SetSize(EFGM.MenuScale(200), 0)

	function categoryList:Paint(w, h)
		BlurPanel(self, 5)

		surface.SetDrawColor(COLORS.containerBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(COLORS.transparentWhiteColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(6))
	end

	local categoryListHeader = vgui.Create("DPanel", categoryList)
	categoryListHeader:Dock(TOP)
	categoryListHeader:SetSize(0, EFGM.MenuScale(36))

	function categoryListHeader:Paint(w, h)
		surface.SetDrawColor(COLORS.containerHeaderColor)
		surface.DrawRect(0, 0, w, h)

		draw.SimpleTextOutlined("CODEX", "PuristaBold32", EFGM.MenuScale(5), EFGM.MenuScale(2), COLORS.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	CodexCat = {}

	CodexCat._ALL = {
		name = "All Entries",
		items = {},
		children = {}
	}

	CodexCat.CAREER = {
		name = "Career",
		items = {"Career"},
		children = {}
	}

	CodexCat.WORLD = {
		name = "World",
		items = {"Belmont", "Concrete", "Factory"},
		children = {
			["Belmont"] = {"Belmont"},
			["Concrete"] = {"Concrete"},
			["Factory"] = {"Factory"}
		}
	}

	CodexCat.COMBAT = {
		name = "Combat",
		items = {"Combat"},
		children = {}
	}

	CodexCat.REPUTATION = {
		name = "Reputation",
		items = {"Wealth"},
		children = {
			["Wealth"] = {"Wealth"}
		}
	}
end

function EFGM.MENU.OpenTab.Locker()
	local contents = vgui.Create("DPanel", EFGM.MENU.MenuFrame.LowerPanel)
	contents:Dock(FILL)
	contents:DockPadding(EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10))
	contents:SetAlpha(0)
	contents:SetPaintBackground(false)

	EFGM.MENU.MenuFrame.LowerPanel.Contents = contents
end

function EFGM.MENU.OpenTab.Settings()
	local contents = vgui.Create("DPanel", EFGM.MENU.MenuFrame.LowerPanel)
	contents:Dock(FILL)
	contents:DockPadding(EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10), EFGM.MenuScale(10))
	contents:SetAlpha(0)
	contents:SetPaintBackground(false)

	EFGM.MENU.MenuFrame.LowerPanel.Contents = contents

	local gameplayHolder = vgui.Create("DPanel", contents)
	gameplayHolder:Dock(LEFT)
	gameplayHolder:SetSize(EFGM.MenuScale(320), 0)
	gameplayHolder:SetPaintBackground(false)

	local gameplayTitle = vgui.Create("DPanel", gameplayHolder)
	gameplayTitle:Dock(TOP)
	gameplayTitle:SetSize(0, EFGM.MenuScale(32))

	function gameplayTitle:Paint(w, h)
		draw.SimpleTextOutlined("GAMEPLAY", "PuristaBold32", w / 2, 0, COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local gameplay = vgui.Create("DScrollPanel", gameplayHolder)
	gameplay:Dock(LEFT)
	gameplay:SetSize(EFGM.MenuScale(320), 0)
	gameplay:SetPaintBackground(false)

	local gameplayBar = gameplay:GetVBar()
	gameplayBar:SetHideButtons(true)
	gameplayBar:SetSize(EFGM.MenuScale(1), 0)

	local controlsHolder = vgui.Create("DPanel", contents)
	controlsHolder:Dock(LEFT)
	controlsHolder:SetSize(EFGM.MenuScale(320), 0)
	controlsHolder:SetPaintBackground(false)

	local controlsTitle = vgui.Create("DPanel", controlsHolder)
	controlsTitle:Dock(TOP)
	controlsTitle:SetSize(0, EFGM.MenuScale(32))

	function controlsTitle:Paint(w, h)
		draw.SimpleTextOutlined("CONTROLS", "PuristaBold32", w / 2, 0, COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local controls = vgui.Create("DScrollPanel", controlsHolder)
	controls:Dock(LEFT)
	controls:SetSize(EFGM.MenuScale(320), 0)
	controls:SetPaintBackground(false)

	local controlsBar = controls:GetVBar()
	controlsBar:SetHideButtons(true)
	controlsBar:SetSize(EFGM.MenuScale(1), 0)

	local interfaceHolder = vgui.Create("DPanel", contents)
	interfaceHolder:Dock(LEFT)
	interfaceHolder:SetSize(EFGM.MenuScale(320), 0)
	interfaceHolder:SetPaintBackground(false)

	local interfaceTitle = vgui.Create("DPanel", interfaceHolder)
	interfaceTitle:Dock(TOP)
	interfaceTitle:SetSize(0, EFGM.MenuScale(32))

	function interfaceTitle:Paint(w, h)
		draw.SimpleTextOutlined("INTERFACE", "PuristaBold32", w / 2, 0, COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local interface = vgui.Create("DScrollPanel", interfaceHolder)
	interface:Dock(LEFT)
	interface:SetSize(EFGM.MenuScale(320), 0)
	interface:SetPaintBackground(false)

	local interfaceBar = interface:GetVBar()
	interfaceBar:SetHideButtons(true)
	interfaceBar:SetSize(EFGM.MenuScale(1), 0)

	local visualsHolder = vgui.Create("DPanel", contents)
	visualsHolder:Dock(LEFT)
	visualsHolder:SetSize(EFGM.MenuScale(320), 0)
	visualsHolder:SetPaintBackground(false)

	local visualsTitle = vgui.Create("DPanel", visualsHolder)
	visualsTitle:Dock(TOP)
	visualsTitle:SetSize(0, EFGM.MenuScale(32))

	function visualsTitle:Paint(w, h)
		draw.SimpleTextOutlined("VISUALS", "PuristaBold32", w / 2, 0, COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local visuals = vgui.Create("DScrollPanel", visualsHolder)
	visuals:Dock(LEFT)
	visuals:SetSize(EFGM.MenuScale(320), 0)
	visuals:SetPaintBackground(false)

	local visualsBar = visuals:GetVBar()
	visualsBar:SetHideButtons(true)
	visualsBar:SetSize(EFGM.MenuScale(1), 0)

	local accountHolder = vgui.Create("DPanel", contents)
	accountHolder:Dock(LEFT)
	accountHolder:SetSize(EFGM.MenuScale(320), 0)
	accountHolder:SetPaintBackground(false)

	local accountTitle = vgui.Create("DPanel", accountHolder)
	accountTitle:Dock(TOP)
	accountTitle:SetSize(0, EFGM.MenuScale(32))

	function accountTitle:Paint(w, h)
		draw.SimpleTextOutlined("ACCOUNT", "PuristaBold32", w / 2, 0, COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local account = vgui.Create("DScrollPanel", accountHolder)
	account:Dock(LEFT)
	account:SetSize(EFGM.MenuScale(320), 0)
	account:SetPaintBackground(false)

	local accountBar = account:GetVBar()
	accountBar:SetHideButtons(true)
	accountBar:SetSize(EFGM.MenuScale(1), 0)

	local miscHolder = vgui.Create("DPanel", contents)
	miscHolder:Dock(LEFT)
	miscHolder:SetSize(EFGM.MenuScale(260), EFGM.MenuScale(353))
	miscHolder:SetPaintBackground(false)

	local miscTitle = vgui.Create("DPanel", miscHolder)
	miscTitle:Dock(TOP)
	miscTitle:SetSize(0, EFGM.MenuScale(32))

	function miscTitle:Paint(w, h)
		draw.SimpleTextOutlined("MISC.", "PuristaBold32", w / 2, 0, COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local misc = vgui.Create("DScrollPanel", miscHolder)
	misc:Dock(LEFT)
	misc:SetSize(EFGM.MenuScale(260), EFGM.MenuScale(353))
	misc:SetPaintBackground(false)

	local miscBar = misc:GetVBar()
	miscBar:SetHideButtons(true)
	miscBar:SetSize(EFGM.MenuScale(1), 0)

	-- gameplay
	local toggleCrouchPanel = vgui.Create("DPanel", gameplay)
	toggleCrouchPanel:Dock(TOP)
	toggleCrouchPanel:SetSize(0, EFGM.MenuScale(50))

	function toggleCrouchPanel:Paint(w, h)
		draw.SimpleTextOutlined("Toggle Crouch", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local toggleCrouch = vgui.Create("DCheckBox", toggleCrouchPanel)
	toggleCrouch:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	toggleCrouch:SetConVar("efgm_controls_toggleduck")
	toggleCrouch:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	local toggleADSPanel = vgui.Create("DPanel", gameplay)
	toggleADSPanel:Dock(TOP)
	toggleADSPanel:SetSize(0, EFGM.MenuScale(50))

	function toggleADSPanel:Paint(w, h)
		draw.SimpleTextOutlined("Toggle Aim Down Sights", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local toggleADS = vgui.Create("DCheckBox", toggleADSPanel)
	toggleADS:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	toggleADS:SetConVar("arc9_toggleads")
	toggleADS:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	local toggleLeanPanel = vgui.Create("DPanel", gameplay)
	toggleLeanPanel:Dock(TOP)
	toggleLeanPanel:SetSize(0, EFGM.MenuScale(50))

	function toggleLeanPanel:Paint(w, h)
		draw.SimpleTextOutlined("Toggle Lean", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local toggleLean = vgui.Create("DCheckBox", toggleLeanPanel)
	toggleLean:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	toggleLean:SetConVar("efgm_controls_togglelean")
	toggleLean:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	local musicPanel = vgui.Create("DPanel", gameplay)
	musicPanel:Dock(TOP)
	musicPanel:SetSize(0, EFGM.MenuScale(50))

	function musicPanel:Paint(w, h)
		draw.SimpleTextOutlined("Music", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local music = vgui.Create("DCheckBox", musicPanel)
	music:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	music:SetConVar("efgm_music")
	music:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	local musicVolumePanel = vgui.Create("DPanel", gameplay)
	musicVolumePanel:Dock(TOP)
	musicVolumePanel:SetSize(0, EFGM.MenuScale(50))

	function musicVolumePanel:Paint(w, h)
		draw.SimpleTextOutlined("Music Volume", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local musicVolume = vgui.Create("DNumSlider", musicVolumePanel)
	musicVolume:SetPos(EFGM.MenuScale(35), EFGM.MenuScale(30))
	musicVolume:SetSize(EFGM.MenuScale(200), EFGM.MenuScale(15))
	musicVolume:SetConVar("efgm_musicvolume")
	musicVolume:SetMin(0)
	musicVolume:SetMax(2)
	musicVolume:SetDecimals(2)

	local infilNearEndPanel = vgui.Create("DPanel", gameplay)
	infilNearEndPanel:Dock(TOP)
	infilNearEndPanel:SetSize(0, EFGM.MenuScale(50))

	function infilNearEndPanel:Paint(w, h)
		draw.SimpleTextOutlined("Block Raid Infil Near Raid End", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local infilNearEnd = vgui.Create("DCheckBox", infilNearEndPanel)
	infilNearEnd:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	infilNearEnd:SetConVar("efgm_infil_nearend_block")
	infilNearEnd:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	local infilNearEndThresholdPanel = vgui.Create("DPanel", gameplay)
	infilNearEndThresholdPanel:Dock(TOP)
	infilNearEndThresholdPanel:SetSize(0, EFGM.MenuScale(50))

	function infilNearEndThresholdPanel:Paint(w, h)
		draw.SimpleTextOutlined("Block Raid Infil Near Raid End Threshold", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local infilNearEndThreshold = vgui.Create("DNumSlider", infilNearEndThresholdPanel)
	infilNearEndThreshold:SetPos(EFGM.MenuScale(35), EFGM.MenuScale(30))
	infilNearEndThreshold:SetSize(EFGM.MenuScale(200), EFGM.MenuScale(15))
	infilNearEndThreshold:SetConVar("efgm_infil_nearend_limit")
	infilNearEndThreshold:SetMin(30)
	infilNearEndThreshold:SetMax(180)
	infilNearEndThreshold:SetDecimals(0)

	-- controls
	local adsSensPanel = vgui.Create("DPanel", controls)
	adsSensPanel:Dock(TOP)
	adsSensPanel:SetSize(0, EFGM.MenuScale(50))

	function adsSensPanel:Paint(w, h)
		draw.SimpleTextOutlined("Aim Down Sights Sensitivity", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local adsSens = vgui.Create("DNumSlider", adsSensPanel)
	adsSens:SetPos(EFGM.MenuScale(33), EFGM.MenuScale(30))
	adsSens:SetSize(EFGM.MenuScale(200), EFGM.MenuScale(15))
	adsSens:SetConVar("arc9_mult_sens")
	adsSens:SetMin(0)
	adsSens:SetMax(2)
	adsSens:SetDecimals(2)

	local gradualADSPanel = vgui.Create("DPanel", controls)
	gradualADSPanel:Dock(TOP)
	gradualADSPanel:SetSize(0, EFGM.MenuScale(50))

	function gradualADSPanel:Paint(w, h)
		draw.SimpleTextOutlined("Gradual Aim Down Sights Sensitivity", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local gradualADS = vgui.Create("DCheckBox", gradualADSPanel)
	gradualADS:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	gradualADS:SetConVar("arc9_gradual_sens")
	gradualADS:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	local magnificationCompensationPanel = vgui.Create("DPanel", controls)
	magnificationCompensationPanel:Dock(TOP)
	magnificationCompensationPanel:SetSize(0, EFGM.MenuScale(50))

	function magnificationCompensationPanel:Paint(w, h)
		draw.SimpleTextOutlined("Scale Sensitivity With Magnification", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local bindsControlsTitle = vgui.Create("DPanel", controls)
	bindsControlsTitle:Dock(TOP)
	bindsControlsTitle:SetSize(0, EFGM.MenuScale(32))

	function bindsControlsTitle:Paint(w, h)
		draw.SimpleTextOutlined("KEYBINDS", "PuristaBold32", w / 2, 0, COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local magnificationCompensation = vgui.Create("DCheckBox", magnificationCompensationPanel)
	magnificationCompensation:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	magnificationCompensation:SetConVar("arc9_compensate_sens")
	magnificationCompensation:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	local gameMenuPanel = vgui.Create("DPanel", controls)
	gameMenuPanel:Dock(TOP)
	gameMenuPanel:SetSize(0, EFGM.MenuScale(55))

	function gameMenuPanel:Paint(w, h)
		draw.SimpleTextOutlined("Game Menu", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local gameMenu = vgui.Create("DBinder", gameMenuPanel)
	gameMenu:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	gameMenu:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	gameMenu:SetSelectedNumber(GetConVar("efgm_bind_menu"):GetInt())

	function gameMenu:OnChange()
		RunConsoleCommand("efgm_bind_menu", gameMenu:GetSelectedNumber())
	end

	local showMapPanel = vgui.Create("DPanel", controls)
	showMapPanel:Dock(TOP)
	showMapPanel:SetSize(0, EFGM.MenuScale(55))

	function showMapPanel:Paint(w, h)
		draw.SimpleTextOutlined("Map Menu", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local showMap = vgui.Create("DBinder", showMapPanel)
	showMap:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	showMap:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	showMap:SetSelectedNumber(GetConVar("efgm_bind_map"):GetInt())
	function showMap:OnChange()
		RunConsoleCommand("efgm_bind_map", showMap:GetSelectedNumber())
	end

	local showRaidInfoPanel = vgui.Create("DPanel", controls)
	showRaidInfoPanel:Dock(TOP)
	showRaidInfoPanel:SetSize(0, EFGM.MenuScale(55))

	function showRaidInfoPanel:Paint(w, h)
		draw.SimpleTextOutlined("Show Extracts", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local showRaidInfo = vgui.Create("DBinder", showRaidInfoPanel)
	showRaidInfo:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	showRaidInfo:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	showRaidInfo:SetSelectedNumber(GetConVar("efgm_bind_raidinfo"):GetInt())

	function showRaidInfo:OnChange()
		RunConsoleCommand("efgm_bind_raidinfo", showRaidInfo:GetSelectedNumber())
	end

	local leanLeftPanel = vgui.Create("DPanel", controls)
	leanLeftPanel:Dock(TOP)
	leanLeftPanel:SetSize(0, EFGM.MenuScale(55))

	function leanLeftPanel:Paint(w, h)
		draw.SimpleTextOutlined("Lean Left", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local leanLeft = vgui.Create("DBinder", leanLeftPanel)
	leanLeft:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	leanLeft:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	leanLeft:SetSelectedNumber(GetConVar("efgm_bind_leanleft"):GetInt())

	function leanLeft:OnChange()
		RunConsoleCommand("efgm_bind_leanleft", leanLeft:GetSelectedNumber())
	end

	local leanRightPanel = vgui.Create("DPanel", controls)
	leanRightPanel:Dock(TOP)
	leanRightPanel:SetSize(0, EFGM.MenuScale(55))

	function leanRightPanel:Paint(w, h)
		draw.SimpleTextOutlined("Lean Right", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local leanRight = vgui.Create("DBinder", leanRightPanel)
	leanRight:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	leanRight:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	leanRight:SetSelectedNumber(GetConVar("efgm_bind_leanright"):GetInt())

	function leanRight:OnChange()
		RunConsoleCommand("efgm_bind_leanright", leanRight:GetSelectedNumber())
	end

	local freeLookPanel = vgui.Create("DPanel", controls)
	freeLookPanel:Dock(TOP)
	freeLookPanel:SetSize(0, EFGM.MenuScale(55))

	function freeLookPanel:Paint(w, h)
		draw.SimpleTextOutlined("Free Look", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local freeLook = vgui.Create("DBinder", freeLookPanel)
	freeLook:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	freeLook:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	freeLook:SetSelectedNumber(GetConVar("efgm_bind_freelook"):GetInt())

	function freeLook:OnChange()
		RunConsoleCommand("efgm_bind_freelook", freeLook:GetSelectedNumber())
	end

	local toggleFireModePanel = vgui.Create("DPanel", controls)
	toggleFireModePanel:Dock(TOP)
	toggleFireModePanel:SetSize(0, EFGM.MenuScale(55))

	function toggleFireModePanel:Paint(w, h)
		draw.SimpleTextOutlined("Toggle Fire Mode", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local toggleFireMode = vgui.Create("DBinder", toggleFireModePanel)
	toggleFireMode:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	toggleFireMode:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	toggleFireMode:SetSelectedNumber(GetConVar("efgm_bind_changefiremode"):GetInt())

	function toggleFireMode:OnChange()
		RunConsoleCommand("efgm_bind_changefiremode", toggleFireMode:GetSelectedNumber())
	end

	local changeSightPanel = vgui.Create("DPanel", controls)
	changeSightPanel:Dock(TOP)
	changeSightPanel:SetSize(0, EFGM.MenuScale(55))

	function changeSightPanel:Paint(w, h)
		draw.SimpleTextOutlined("Change Sight Zoom/Reticle", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local changeSight = vgui.Create("DBinder", changeSightPanel)
	changeSight:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	changeSight:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	changeSight:SetSelectedNumber(GetConVar("efgm_bind_changesight"):GetInt())

	function changeSight:OnChange()
		RunConsoleCommand("efgm_bind_changesight", changeSight:GetSelectedNumber())
	end

	local toggleUBGLPanel = vgui.Create("DPanel", controls)
	toggleUBGLPanel:Dock(TOP)
	toggleUBGLPanel:SetSize(0, EFGM.MenuScale(55))

	function toggleUBGLPanel:Paint(w, h)
		draw.SimpleTextOutlined("Toggle UBGL (Under Barrel Launcher)", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local toggleUBGL = vgui.Create("DBinder", toggleUBGLPanel)
	toggleUBGL:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	toggleUBGL:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	toggleUBGL:SetSelectedNumber(GetConVar("efgm_bind_toggleubgl"):GetInt())

	function toggleUBGL:OnChange()
		RunConsoleCommand("efgm_bind_toggleubgl", toggleUBGL:GetSelectedNumber())
	end

	local inspectWeaponPanel = vgui.Create("DPanel", controls)
	inspectWeaponPanel:Dock(TOP)
	inspectWeaponPanel:SetSize(0, EFGM.MenuScale(55))

	function inspectWeaponPanel:Paint(w, h)
		draw.SimpleTextOutlined("Inspect Weapon", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local inspectWeapon = vgui.Create("DBinder", inspectWeaponPanel)
	inspectWeapon:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	inspectWeapon:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	inspectWeapon:SetSelectedNumber(GetConVar("efgm_bind_inspectweapon"):GetInt())

	function inspectWeapon:OnChange()
		RunConsoleCommand("efgm_bind_inspectweapon", inspectWeapon:GetSelectedNumber())
	end

	local teamInvitePanel = vgui.Create("DPanel", controls)
	teamInvitePanel:Dock(TOP)
	teamInvitePanel:SetSize(0, EFGM.MenuScale(55))

	function teamInvitePanel:Paint(w, h)
		draw.SimpleTextOutlined("Invite Player To Squad", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local teamInvite = vgui.Create("DBinder", teamInvitePanel)
	teamInvite:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	teamInvite:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	teamInvite:SetSelectedNumber(GetConVar("efgm_bind_teaminvite"):GetInt())

	function teamInvite:OnChange()
		RunConsoleCommand("efgm_bind_teaminvite", teamInvite:GetSelectedNumber())
	end

	local duelInvitePanel = vgui.Create("DPanel", controls)
	duelInvitePanel:Dock(TOP)
	duelInvitePanel:SetSize(0, EFGM.MenuScale(55))

	function duelInvitePanel:Paint(w, h)
		draw.SimpleTextOutlined("Invite Player To Duel", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local duelInvite = vgui.Create("DBinder", duelInvitePanel)
	duelInvite:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	duelInvite:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	duelInvite:SetSelectedNumber(GetConVar("efgm_bind_duelinvite"):GetInt())

	function duelInvite:OnChange()
		RunConsoleCommand("efgm_bind_duelinvite", duelInvite:GetSelectedNumber())
	end

	local acceptInvitePanel = vgui.Create("DPanel", controls)
	acceptInvitePanel:Dock(TOP)
	acceptInvitePanel:SetSize(0, EFGM.MenuScale(55))

	function acceptInvitePanel:Paint(w, h)
		draw.SimpleTextOutlined("Accept Invite", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local acceptInvite = vgui.Create("DBinder", acceptInvitePanel)
	acceptInvite:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	acceptInvite:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	acceptInvite:SetSelectedNumber(GetConVar("efgm_bind_invites_accept"):GetInt())

	function acceptInvite:OnChange()
		RunConsoleCommand("efgm_bind_invites_accept", acceptInvite:GetSelectedNumber())
	end

	local declineInvitePanel = vgui.Create("DPanel", controls)
	declineInvitePanel:Dock(TOP)
	declineInvitePanel:SetSize(0, EFGM.MenuScale(55))

	function declineInvitePanel:Paint(w, h)
		draw.SimpleTextOutlined("Ignore Invite", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local declineInvite = vgui.Create("DBinder", declineInvitePanel)
	declineInvite:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	declineInvite:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	declineInvite:SetSelectedNumber(GetConVar("efgm_bind_invites_decline"):GetInt())

	function declineInvite:OnChange()
		RunConsoleCommand("efgm_bind_invites_decline", declineInvite:GetSelectedNumber())
	end

	local primaryWeaponPanel = vgui.Create("DPanel", controls)
	primaryWeaponPanel:Dock(TOP)
	primaryWeaponPanel:SetSize(0, EFGM.MenuScale(55))

	function primaryWeaponPanel:Paint(w, h)
		draw.SimpleTextOutlined("Primary Weapon", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local primaryWeapon = vgui.Create("DBinder", primaryWeaponPanel)
	primaryWeapon:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	primaryWeapon:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	primaryWeapon:SetSelectedNumber(GetConVar("efgm_bind_equip_primary1"):GetInt())

	function primaryWeapon:OnChange()
		RunConsoleCommand("efgm_bind_equip_primary1", primaryWeapon:GetSelectedNumber())
	end

	local primaryWeaponTwoPanel = vgui.Create("DPanel", controls)
	primaryWeaponTwoPanel:Dock(TOP)
	primaryWeaponTwoPanel:SetSize(0, EFGM.MenuScale(55))

	function primaryWeaponTwoPanel:Paint(w, h)
		draw.SimpleTextOutlined("Secondary Weapon", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local primaryWeaponTwo = vgui.Create("DBinder", primaryWeaponTwoPanel)
	primaryWeaponTwo:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	primaryWeaponTwo:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	primaryWeaponTwo:SetSelectedNumber(GetConVar("efgm_bind_equip_primary2"):GetInt())

	function primaryWeaponTwo:OnChange()
		RunConsoleCommand("efgm_bind_equip_primary2", primaryWeaponTwo:GetSelectedNumber())
	end

	local secondaryWeaponPanel = vgui.Create("DPanel", controls)
	secondaryWeaponPanel:Dock(TOP)
	secondaryWeaponPanel:SetSize(0, EFGM.MenuScale(55))

	function secondaryWeaponPanel:Paint(w, h)
		draw.SimpleTextOutlined("Holster Weapon", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local secondaryWeapon = vgui.Create("DBinder", secondaryWeaponPanel)
	secondaryWeapon:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	secondaryWeapon:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	secondaryWeapon:SetSelectedNumber(GetConVar("efgm_bind_equip_secondary"):GetInt())

	function secondaryWeapon:OnChange()
		RunConsoleCommand("efgm_bind_equip_secondary", secondaryWeapon:GetSelectedNumber())
	end

	local meleeWeaponPanel = vgui.Create("DPanel", controls)
	meleeWeaponPanel:Dock(TOP)
	meleeWeaponPanel:SetSize(0, EFGM.MenuScale(55))

	function meleeWeaponPanel:Paint(w, h)
		draw.SimpleTextOutlined("Melee Weapon", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local meleeWeapon = vgui.Create("DBinder", meleeWeaponPanel)
	meleeWeapon:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	meleeWeapon:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	meleeWeapon:SetSelectedNumber(GetConVar("efgm_bind_equip_melee"):GetInt())

	function meleeWeapon:OnChange()
		RunConsoleCommand("efgm_bind_equip_melee", meleeWeapon:GetSelectedNumber())
	end

	local utilityThrowablePanel = vgui.Create("DPanel", controls)
	utilityThrowablePanel:Dock(TOP)
	utilityThrowablePanel:SetSize(0, EFGM.MenuScale(55))

	function utilityThrowablePanel:Paint(w, h)
		draw.SimpleTextOutlined("Throwable Weapon", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local utilityThrowable = vgui.Create("DBinder", utilityThrowablePanel)
	utilityThrowable:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	utilityThrowable:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	utilityThrowable:SetSelectedNumber(GetConVar("efgm_bind_equip_utility"):GetInt())

	function utilityThrowable:OnChange()
		RunConsoleCommand("efgm_bind_equip_utility", utilityThrowable:GetSelectedNumber())
	end

	local consumableItemBindPanel = vgui.Create("DPanel", controls)
	consumableItemBindPanel:Dock(TOP)
	consumableItemBindPanel:SetSize(0, EFGM.MenuScale(55))

	function consumableItemBindPanel:Paint(w, h)
		draw.SimpleTextOutlined("Consumable Item", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local consumableItemBind = vgui.Create("DBinder", consumableItemBindPanel)
	consumableItemBind:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	consumableItemBind:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	consumableItemBind:SetSelectedNumber(GetConVar("efgm_bind_equip_consumable"):GetInt())

	function consumableItemBind:OnChange()
		RunConsoleCommand("efgm_bind_equip_consumable", consumableItemBind:GetSelectedNumber())
	end

	local menuPreviousTabBindPanel = vgui.Create("DPanel", controls)
	menuPreviousTabBindPanel:Dock(TOP)
	menuPreviousTabBindPanel:SetSize(0, EFGM.MenuScale(55))

	function menuPreviousTabBindPanel:Paint(w, h)
		draw.SimpleTextOutlined("Menu: Previous Tab", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local menuPreviousTabBind = vgui.Create("DBinder", menuPreviousTabBindPanel)
	menuPreviousTabBind:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	menuPreviousTabBind:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	menuPreviousTabBind:SetSelectedNumber(GetConVar("efgm_bind_menu_tab_previous"):GetInt())

	function menuPreviousTabBind:OnChange()
		RunConsoleCommand("efgm_bind_menu_tab_previous", menuPreviousTabBind:GetSelectedNumber())
	end

	local menuNextTabBindPanel = vgui.Create("DPanel", controls)
	menuNextTabBindPanel:Dock(TOP)
	menuNextTabBindPanel:SetSize(0, EFGM.MenuScale(55))

	function menuNextTabBindPanel:Paint(w, h)
		draw.SimpleTextOutlined("Menu: Next Tab", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local menuNextTabBind = vgui.Create("DBinder", menuNextTabBindPanel)
	menuNextTabBind:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	menuNextTabBind:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	menuNextTabBind:SetSelectedNumber(GetConVar("efgm_bind_menu_tab_next"):GetInt())

	function menuNextTabBind:OnChange()
		RunConsoleCommand("efgm_bind_menu_tab_next", menuNextTabBind:GetSelectedNumber())
	end

	local menuPreviousPageBindPanel = vgui.Create("DPanel", controls)
	menuPreviousPageBindPanel:Dock(TOP)
	menuPreviousPageBindPanel:SetSize(0, EFGM.MenuScale(55))

	function menuPreviousPageBindPanel:Paint(w, h)
		draw.SimpleTextOutlined("Menu: Previous Page", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local menuPreviousPageBind = vgui.Create("DBinder", menuPreviousPageBindPanel)
	menuPreviousPageBind:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	menuPreviousPageBind:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	menuPreviousPageBind:SetSelectedNumber(GetConVar("efgm_bind_menu_page_previous"):GetInt())

	function menuPreviousPageBind:OnChange()
		RunConsoleCommand("efgm_bind_menu_page_previous", menuPreviousPageBind:GetSelectedNumber())
	end

	local menuNextPageBindPanel = vgui.Create("DPanel", controls)
	menuNextPageBindPanel:Dock(TOP)
	menuNextPageBindPanel:SetSize(0, EFGM.MenuScale(55))

	function menuNextPageBindPanel:Paint(w, h)
		draw.SimpleTextOutlined("Menu: Next Page", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local menuNextPageBind = vgui.Create("DBinder", menuNextPageBindPanel)
	menuNextPageBind:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(30))
	menuNextPageBind:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	menuNextPageBind:SetSelectedNumber(GetConVar("efgm_bind_menu_page_next"):GetInt())

	function menuNextPageBind:OnChange()
		RunConsoleCommand("efgm_bind_menu_page_next", menuNextPageBind:GetSelectedNumber())
	end

	local gmodControlsTitle = vgui.Create("DPanel", controls)
	gmodControlsTitle:Dock(TOP)
	gmodControlsTitle:SetSize(0, EFGM.MenuScale(54))

	function gmodControlsTitle:Paint(w, h)
		draw.SimpleTextOutlined("GARRY'S MOD KEYBINDS", "PuristaBold32", w / 2, 0, COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		draw.SimpleTextOutlined("[MUST BE CHANGED IN YOUR GAME OPTIONS]", "PuristaBold18", w / 2, EFGM.MenuScale(30), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local customizeWeaponPanel = vgui.Create("DPanel", controls)
	customizeWeaponPanel:Dock(TOP)
	customizeWeaponPanel:SetSize(0, EFGM.MenuScale(65))

	function customizeWeaponPanel:Paint(w, h)
		draw.SimpleTextOutlined("Customize Weapon", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		draw.SimpleTextOutlined("Keyboard > Garry's Mod > Open context menu", "Purista14", w / 2, EFGM.MenuScale(20), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local customizeWeapon = vgui.Create("DBinder", customizeWeaponPanel)
	customizeWeapon:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(40))
	customizeWeapon:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	customizeWeapon:SetSelectedNumber(input.GetKeyCode(input.LookupBinding("+menu_context") or 0))
	customizeWeapon:SetEnabled(false)
	customizeWeapon:SetTooltip(nil)

	local buyAttPanel = vgui.Create("DPanel", controls)
	buyAttPanel:Dock(TOP)
	buyAttPanel:SetSize(0, EFGM.MenuScale(65))

	function buyAttPanel:Paint(w, h)
		draw.SimpleTextOutlined("Purchase Hovered Attachment", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		draw.SimpleTextOutlined("Keyboard > Combat > Reload weapon", "Purista14", w / 2, EFGM.MenuScale(20), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local buyAtt = vgui.Create("DBinder", buyAttPanel)
	buyAtt:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(40))
	buyAtt:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	buyAtt:SetSelectedNumber(input.GetKeyCode(input.LookupBinding("+reload") or 0))
	buyAtt:SetEnabled(false)
	buyAtt:SetTooltip(nil)

	local toggleTacticalPanel = vgui.Create("DPanel", controls)
	toggleTacticalPanel:Dock(TOP)
	toggleTacticalPanel:SetSize(0, EFGM.MenuScale(65))

	function toggleTacticalPanel:Paint(w, h)
		draw.SimpleTextOutlined("Toggle Tactical Devices (lasers/lights)", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		draw.SimpleTextOutlined("Keyboard > Combat > Flashlight", "Purista14", w / 2, EFGM.MenuScale(20), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local toggleTactical = vgui.Create("DBinder", toggleTacticalPanel)
	toggleTactical:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(40))
	toggleTactical:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	toggleTactical:SetSelectedNumber(input.GetKeyCode(input.LookupBinding("impulse 100") or 0))
	toggleTactical:SetEnabled(false)
	toggleTactical:SetTooltip(nil)

	local graduallyZoomInScopePanel = vgui.Create("DPanel", controls)
	graduallyZoomInScopePanel:Dock(TOP)
	graduallyZoomInScopePanel:SetSize(0, EFGM.MenuScale(65))

	function graduallyZoomInScopePanel:Paint(w, h)
		draw.SimpleTextOutlined("Gradually Zoom In Scope Magnification", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		draw.SimpleTextOutlined("Keyboard > Combat > Previous weapon", "Purista14", w / 2, EFGM.MenuScale(20), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local graduallyZoomInScope = vgui.Create("DBinder", graduallyZoomInScopePanel)
	graduallyZoomInScope:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(40))
	graduallyZoomInScope:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	graduallyZoomInScope:SetSelectedNumber(input.GetKeyCode(input.LookupBinding("invprev") or 0))
	graduallyZoomInScope:SetEnabled(false)
	graduallyZoomInScope:SetTooltip(nil)

	local graduallyZoomOutScopePanel = vgui.Create("DPanel", controls)
	graduallyZoomOutScopePanel:Dock(TOP)
	graduallyZoomOutScopePanel:SetSize(0, EFGM.MenuScale(65))

	function graduallyZoomOutScopePanel:Paint(w, h)
		draw.SimpleTextOutlined("Gradually Zoom Out Scope Magnification", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		draw.SimpleTextOutlined("Keyboard > Combat > Next weapon", "Purista14", w / 2, EFGM.MenuScale(20), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local graduallyZoomOutScope = vgui.Create("DBinder", graduallyZoomOutScopePanel)
	graduallyZoomOutScope:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(40))
	graduallyZoomOutScope:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	graduallyZoomOutScope:SetSelectedNumber(input.GetKeyCode(input.LookupBinding("invnext") or 0))
	graduallyZoomOutScope:SetEnabled(false)
	graduallyZoomOutScope:SetTooltip(nil)

	local transmitVoicePanel = vgui.Create("DPanel", controls)
	transmitVoicePanel:Dock(TOP)
	transmitVoicePanel:SetSize(0, EFGM.MenuScale(65))

	function transmitVoicePanel:Paint(w, h)
		draw.SimpleTextOutlined("Transmit Voice Over Proximity Chat", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		draw.SimpleTextOutlined("Keyboard > Communication > Use voice communication", "Purista14", w / 2, EFGM.MenuScale(20), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local transmitVoice = vgui.Create("DBinder", transmitVoicePanel)
	transmitVoice:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(40))
	transmitVoice:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	transmitVoice:SetSelectedNumber(input.GetKeyCode(input.LookupBinding("+voicerecord") or 0))
	transmitVoice:SetEnabled(false)
	transmitVoice:SetTooltip(nil)

	local sendTextAllPanel = vgui.Create("DPanel", controls)
	sendTextAllPanel:Dock(TOP)
	sendTextAllPanel:SetSize(0, EFGM.MenuScale(65))

	function sendTextAllPanel:Paint(w, h)
		draw.SimpleTextOutlined("Send Message To All Chat", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		draw.SimpleTextOutlined("Keyboard > Communication > Chat message", "Purista14", w / 2, EFGM.MenuScale(20), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local sendTextAll = vgui.Create("DBinder", sendTextAllPanel)
	sendTextAll:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(40))
	sendTextAll:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	sendTextAll:SetSelectedNumber(input.GetKeyCode(input.LookupBinding("messagemode") or 0))
	sendTextAll:SetEnabled(false)
	sendTextAll:SetTooltip(nil)

	local sendTextSquadPanel = vgui.Create("DPanel", controls)
	sendTextSquadPanel:Dock(TOP)
	sendTextSquadPanel:SetSize(0, EFGM.MenuScale(65))

	function sendTextSquadPanel:Paint(w, h)
		draw.SimpleTextOutlined("Send Message To Squad Chat", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		draw.SimpleTextOutlined("Keyboard > Communication > Team message", "Purista14", w / 2, EFGM.MenuScale(20), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local sendTextSquad = vgui.Create("DBinder", sendTextSquadPanel)
	sendTextSquad:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(40))
	sendTextSquad:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	sendTextSquad:SetSelectedNumber(input.GetKeyCode(input.LookupBinding("messagemode2") or 0))
	sendTextSquad:SetEnabled(false)
	sendTextSquad:SetTooltip(nil)

	local applySprayPanel = vgui.Create("DPanel", controls)
	applySprayPanel:Dock(TOP)
	applySprayPanel:SetSize(0, EFGM.MenuScale(65))

	function applySprayPanel:Paint(w, h)
		draw.SimpleTextOutlined("Apply Spray Paint", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		draw.SimpleTextOutlined("Keyboard > Communication > Spray logo", "Purista14", w / 2, EFGM.MenuScale(20), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local applySpray = vgui.Create("DBinder", applySprayPanel)
	applySpray:SetPos(EFGM.MenuScale(110), EFGM.MenuScale(40))
	applySpray:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(20))
	applySpray:SetSelectedNumber(input.GetKeyCode(input.LookupBinding("impulse 201") or 0))
	applySpray:SetEnabled(false)
	applySpray:SetTooltip(nil)

	-- interface
	local hudEnablePanel = vgui.Create("DPanel", interface)
	hudEnablePanel:Dock(TOP)
	hudEnablePanel:SetSize(0, EFGM.MenuScale(50))

	function hudEnablePanel:Paint(w, h)
		draw.SimpleTextOutlined("Enable HUD", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local hudEnable = vgui.Create("DCheckBox", hudEnablePanel)
	hudEnable:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	hudEnable:SetConVar("efgm_hud_enable")
	hudEnable:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	local hudScalePanel = vgui.Create("DPanel", interface)
	hudScalePanel:Dock(TOP)
	hudScalePanel:SetSize(0, EFGM.MenuScale(50))

	function hudScalePanel:Paint(w, h)
		draw.SimpleTextOutlined("HUD Scale", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local hudScale = vgui.Create("DNumSlider", hudScalePanel)
	hudScale:SetPos(EFGM.MenuScale(35), EFGM.MenuScale(30))
	hudScale:SetSize(EFGM.MenuScale(200), EFGM.MenuScale(15))
	hudScale:SetConVar("efgm_hud_scale")
	hudScale:SetMin(0.5)
	hudScale:SetMax(2)
	hudScale:SetDecimals(2)

	local hudPaddingPanel = vgui.Create("DPanel", interface)
	hudPaddingPanel:Dock(TOP)
	hudPaddingPanel:SetSize(0, EFGM.MenuScale(50))

	function hudPaddingPanel:Paint(w, h)
		draw.SimpleTextOutlined("HUD Padding", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local hudPadding = vgui.Create("DNumSlider", hudPaddingPanel)
	hudPadding:SetPos(EFGM.MenuScale(35), EFGM.MenuScale(30))
	hudPadding:SetSize(EFGM.MenuScale(200), EFGM.MenuScale(15))
	hudPadding:SetConVar("efgm_hud_padding")
	hudPadding:SetMin(0)
	hudPadding:SetMax(100)
	hudPadding:SetDecimals(0)

	local menuAutoClosePanel = vgui.Create("DPanel", interface)
	menuAutoClosePanel:Dock(TOP)
	menuAutoClosePanel:SetSize(0, EFGM.MenuScale(50))

	function menuAutoClosePanel:Paint(w, h)
		draw.SimpleTextOutlined("Close Menu When Taking Damage", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local menuAutoClose = vgui.Create("DCheckBox", menuAutoClosePanel)
	menuAutoClose:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	menuAutoClose:SetConVar("efgm_menu_closeonhit")
	menuAutoClose:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	local menuParallaxPanel = vgui.Create("DPanel", interface)
	menuParallaxPanel:Dock(TOP)
	menuParallaxPanel:SetSize(0, EFGM.MenuScale(50))

	function menuParallaxPanel:Paint(w, h)
		draw.SimpleTextOutlined("Menu Parallax", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local menuParallax = vgui.Create("DCheckBox", menuParallaxPanel)
	menuParallax:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	menuParallax:SetConVar("efgm_menu_parallax")
	menuParallax:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	local menuScalingMethodPanel = vgui.Create("DPanel", interface)
	menuScalingMethodPanel:Dock(TOP)
	menuScalingMethodPanel:SetSize(0, EFGM.MenuScale(55))

	function menuScalingMethodPanel:Paint(w, h)
		draw.SimpleTextOutlined("Menu Scaling Method", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local menuScalingMethod = vgui.Create("DComboBox", menuScalingMethodPanel)
	menuScalingMethod:SetPos(EFGM.MenuScale(100), EFGM.MenuScale(30))
	menuScalingMethod:SetSize(EFGM.MenuScale(120), EFGM.MenuScale(20))

	if GetConVar("efgm_menu_scalingmethod"):GetInt() == 0 then
		menuScalingMethod:SetValue("Dock")
	elseif GetConVar("efgm_menu_scalingmethod"):GetInt() == 1 then
		menuScalingMethod:SetValue("Center")
	end

	menuScalingMethod:AddChoice("Dock")
	menuScalingMethod:AddChoice("Center")
	menuScalingMethod:SetSortItems(false)

	function menuScalingMethod:OnSelect(value)
		RunConsoleCommand("efgm_menu_scalingmethod", value - 1)
	end

	local menuSaveTabHideoutPanel = vgui.Create("DPanel", interface)
	menuSaveTabHideoutPanel:Dock(TOP)
	menuSaveTabHideoutPanel:SetSize(0, EFGM.MenuScale(50))

	function menuSaveTabHideoutPanel:Paint(w, h)
		draw.SimpleTextOutlined("Save Previous Menu Tab In Hideout", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local menuSaveTabHideout = vgui.Create("DCheckBox", menuSaveTabHideoutPanel)
	menuSaveTabHideout:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	menuSaveTabHideout:SetConVar("efgm_menu_savetab_hideout")
	menuSaveTabHideout:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	local menuSaveTabRaidPanel = vgui.Create("DPanel", interface)
	menuSaveTabRaidPanel:Dock(TOP)
	menuSaveTabRaidPanel:SetSize(0, EFGM.MenuScale(50))

	function menuSaveTabRaidPanel:Paint(w, h)
		draw.SimpleTextOutlined("Save Previous Menu Tab In Raid", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local menuSaveTabRaid = vgui.Create("DCheckBox", menuSaveTabRaidPanel)
	menuSaveTabRaid:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	menuSaveTabRaid:SetConVar("efgm_menu_savetab_raid")
	menuSaveTabRaid:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	local menuDeletePromptPanel = vgui.Create("DPanel", interface)
	menuDeletePromptPanel:Dock(TOP)
	menuDeletePromptPanel:SetSize(0, EFGM.MenuScale(50))

	function menuDeletePromptPanel:Paint(w, h)
		draw.SimpleTextOutlined("Show Confirmation On Item Deletion", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local menuDeletePrompt = vgui.Create("DCheckBox", menuDeletePromptPanel)
	menuDeletePrompt:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	menuDeletePrompt:SetConVar("efgm_menu_deleteprompt")
	menuDeletePrompt:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	local menuSellPromptPanel = vgui.Create("DPanel", interface)
	menuSellPromptPanel:Dock(TOP)
	menuSellPromptPanel:SetSize(0, EFGM.MenuScale(50))

	function menuSellPromptPanel:Paint(w, h)
		draw.SimpleTextOutlined("Show Confirmation On Single Item Sell", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local menuSellPrompt = vgui.Create("DCheckBox", menuSellPromptPanel)
	menuSellPrompt:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	menuSellPrompt:SetConVar("efgm_menu_sellprompt_single")
	menuSellPrompt:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	local menuSellStackedPromptPanel = vgui.Create("DPanel", interface)
	menuSellStackedPromptPanel:Dock(TOP)
	menuSellStackedPromptPanel:SetSize(0, EFGM.MenuScale(50))

	function menuSellStackedPromptPanel:Paint(w, h)
		draw.SimpleTextOutlined("Show Confirmation On Stacked Item Sell", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local menuSellStackedPrompt = vgui.Create("DCheckBox", menuSellStackedPromptPanel)
	menuSellStackedPrompt:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	menuSellStackedPrompt:SetConVar("efgm_menu_sellprompt_stacked")
	menuSellStackedPrompt:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	local menuSearchModePanel = vgui.Create("DPanel", interface)
	menuSearchModePanel:Dock(TOP)
	menuSearchModePanel:SetSize(0, EFGM.MenuScale(50))

	function menuSearchModePanel:Paint(w, h)
		draw.SimpleTextOutlined("Auto Search On Search Box Text Change", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local menuSearchMode = vgui.Create("DCheckBox", menuSearchModePanel)
	menuSearchMode:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	menuSearchMode:SetConVar("efgm_menu_search_automatic")
	menuSearchMode:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	-- visuals
	local adsFOVPanel = vgui.Create("DPanel", visuals)
	adsFOVPanel:Dock(TOP)
	adsFOVPanel:SetSize(0, EFGM.MenuScale(50))

	function adsFOVPanel:Paint(w, h)
		draw.SimpleTextOutlined("Aim Down Sights FOV Scaling", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local adsFOV = vgui.Create("DCheckBox", adsFOVPanel)
	adsFOV:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	adsFOV:SetConVar("efgm_visuals_adsfov")
	adsFOV:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	local vmFOVPanel = vgui.Create("DPanel", visuals)
	vmFOVPanel:Dock(TOP)
	vmFOVPanel:SetSize(0, EFGM.MenuScale(50))

	function vmFOVPanel:Paint(w, h)
		draw.SimpleTextOutlined("Viewmodel FOV Scale", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local vmFOV = vgui.Create("DNumSlider", vmFOVPanel)
	vmFOV:SetPos(EFGM.MenuScale(35), EFGM.MenuScale(30))
	vmFOV:SetSize(EFGM.MenuScale(200), EFGM.MenuScale(15))
	vmFOV:SetConVar("arc9_fov")
	vmFOV:SetMin(-10)
	vmFOV:SetMax(30)
	vmFOV:SetDecimals(0)

	local lensFlarePanel = vgui.Create("DPanel", visuals)
	lensFlarePanel:Dock(TOP)
	lensFlarePanel:SetSize(0, EFGM.MenuScale(50))

	function lensFlarePanel:Paint(w, h)
		draw.SimpleTextOutlined("Lens Flare", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local lensFlare = vgui.Create("DCheckBox", lensFlarePanel)
	lensFlare:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	lensFlare:SetConVar("efgm_visuals_lensflare")
	lensFlare:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	local pmShadowPanel = vgui.Create("DPanel", visuals)
	pmShadowPanel:Dock(TOP)
	pmShadowPanel:SetSize(0, EFGM.MenuScale(50))

	function pmShadowPanel:Paint(w, h)
		draw.SimpleTextOutlined("Render Own Player Model Shadow", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local pmShadow = vgui.Create("DCheckBox", pmShadowPanel)
	pmShadow:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	pmShadow:SetConVar("efgm_visuals_selfshadow")
	pmShadow:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	local vmLightingPanel = vgui.Create("DPanel", visuals)
	vmLightingPanel:Dock(TOP)
	vmLightingPanel:SetSize(0, EFGM.MenuScale(50))

	function vmLightingPanel:Paint(w, h)
		draw.SimpleTextOutlined("High Quality Viewmodel Lighting", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local vmLighting = vgui.Create("DCheckBox", vmLightingPanel)
	vmLighting:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	vmLighting:SetConVar("arc9_drawprojectedlights")
	vmLighting:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	local impactFXPanel = vgui.Create("DPanel", visuals)
	impactFXPanel:Dock(TOP)
	impactFXPanel:SetSize(0, EFGM.MenuScale(50))

	function impactFXPanel:Paint(w, h)
		draw.SimpleTextOutlined("High Quality Bullet Impact FX", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local impactFX = vgui.Create("DCheckBox", impactFXPanel)
	impactFX:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	impactFX:SetConVar("efgm_visuals_highqualimpactfx")
	impactFX:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	local flashlightFXPanel = vgui.Create("DPanel", visuals)
	flashlightFXPanel:Dock(TOP)
	flashlightFXPanel:SetSize(0, EFGM.MenuScale(50))

	function flashlightFXPanel:Paint(w, h)
		draw.SimpleTextOutlined("High Quality Flashlights", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local flashlightFX = vgui.Create("DCheckBox", flashlightFXPanel)
	flashlightFX:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	flashlightFX:SetConVar("efgm_visuals_highqualflashlight")
	flashlightFX:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	local ejectedShellLifePanel = vgui.Create("DPanel", visuals)
	ejectedShellLifePanel:Dock(TOP)
	ejectedShellLifePanel:SetSize(0, EFGM.MenuScale(50))

	function ejectedShellLifePanel:Paint(w, h)
		draw.SimpleTextOutlined("Ejected Bullet Casing Life Time", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local ejectedShellLife = vgui.Create("DNumSlider", ejectedShellLifePanel)
	ejectedShellLife:SetPos(EFGM.MenuScale(35), EFGM.MenuScale(30))
	ejectedShellLife:SetSize(EFGM.MenuScale(200), EFGM.MenuScale(15))
	ejectedShellLife:SetConVar("arc9_eject_time")
	ejectedShellLife:SetMin(0)
	ejectedShellLife:SetMax(10)
	ejectedShellLife:SetDecimals(0)

	local lodDistancePanel = vgui.Create("DPanel", visuals)
	lodDistancePanel:Dock(TOP)
	lodDistancePanel:SetSize(0, EFGM.MenuScale(50))

	function lodDistancePanel:Paint(w, h)
		draw.SimpleTextOutlined("LOD (Level Of Detail) Distance Multiplier", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local lodDistance = vgui.Create("DNumSlider", lodDistancePanel)
	lodDistance:SetPos(EFGM.MenuScale(35), EFGM.MenuScale(30))
	lodDistance:SetSize(EFGM.MenuScale(200), EFGM.MenuScale(15))
	lodDistance:SetConVar("arc9_lod_distance")
	lodDistance:SetMin(0.3)
	lodDistance:SetMax(3)
	lodDistance:SetDecimals(1)

	local interactableGlowPanel = vgui.Create("DPanel", visuals)
	interactableGlowPanel:Dock(TOP)
	interactableGlowPanel:SetSize(0, EFGM.MenuScale(50))

	function interactableGlowPanel:Paint(w, h)
		draw.SimpleTextOutlined("Interactable Object Outline Glow", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local interactableGlow = vgui.Create("DCheckBox", interactableGlowPanel)
	interactableGlow:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	interactableGlow:SetConVar("efgm_visuals_interactableglow")
	interactableGlow:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	-- account
	local factionPreferencePanel = vgui.Create("DPanel", account)
	factionPreferencePanel:Dock(TOP)
	factionPreferencePanel:SetSize(0, EFGM.MenuScale(55))

	function factionPreferencePanel:Paint(w, h)
		draw.SimpleTextOutlined("Faction Preference", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local factionPreference = vgui.Create("DComboBox", factionPreferencePanel)
	factionPreference:SetPos(EFGM.MenuScale(100), EFGM.MenuScale(30))
	factionPreference:SetSize(EFGM.MenuScale(120), EFGM.MenuScale(20))

	if GetConVar("efgm_faction_preference"):GetInt() == 0 then
		factionPreference:SetValue("None")
	elseif GetConVar("efgm_faction_preference"):GetInt() == 1 then
		factionPreference:SetValue("USEC")
	elseif GetConVar("efgm_faction_preference"):GetInt() == 2  then
		factionPreference:SetValue("BEAR")
	end

	factionPreference:AddChoice("None")
	factionPreference:AddChoice("USEC")
	factionPreference:AddChoice("BEAR")
	factionPreference:SetSortItems(false)

	function factionPreference:OnSelect(value)
		RunConsoleCommand("efgm_faction_preference", value - 1)
	end

	local invitePrivacyPanel = vgui.Create("DPanel", account)
	invitePrivacyPanel:Dock(TOP)
	invitePrivacyPanel:SetSize(0, EFGM.MenuScale(55))

	function invitePrivacyPanel:Paint(w, h)
		draw.SimpleTextOutlined("Receive Squad Invites From", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local invitePrivacy = vgui.Create("DComboBox", invitePrivacyPanel)
	invitePrivacy:SetPos(EFGM.MenuScale(100), EFGM.MenuScale(30))
	invitePrivacy:SetSize(EFGM.MenuScale(120), EFGM.MenuScale(20))

	if GetConVar("efgm_privacy_invites_squad"):GetInt() == 0 then
		invitePrivacy:SetValue("Nobody")
	elseif GetConVar("efgm_privacy_invites_squad"):GetInt() == 1 then
		invitePrivacy:SetValue("Steam Friends")
	elseif GetConVar("efgm_privacy_invites_squad"):GetInt() == 2  then
		invitePrivacy:SetValue("Everyone")
	end

	invitePrivacy:AddChoice("Nobody")
	invitePrivacy:AddChoice("Steam Friends")
	invitePrivacy:AddChoice("Everyone")
	invitePrivacy:SetSortItems(false)

	function invitePrivacy:OnSelect(value)
		RunConsoleCommand("efgm_privacy_invites_squad", value - 1)
	end

	local duelPrivacyPanel = vgui.Create("DPanel", account)
	duelPrivacyPanel:Dock(TOP)
	duelPrivacyPanel:SetSize(0, EFGM.MenuScale(55))

	function duelPrivacyPanel:Paint(w, h)
		draw.SimpleTextOutlined("Receive Duel Invites From", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local duelPrivacy = vgui.Create("DComboBox", duelPrivacyPanel)
	duelPrivacy:SetPos(EFGM.MenuScale(100), EFGM.MenuScale(30))
	duelPrivacy:SetSize(EFGM.MenuScale(120), EFGM.MenuScale(20))

	if GetConVar("efgm_privacy_invites_duel"):GetInt() == 0 then
		duelPrivacy:SetValue("Nobody")
	elseif GetConVar("efgm_privacy_invites_duel"):GetInt() == 1 then
		duelPrivacy:SetValue("Steam Friends")
	elseif GetConVar("efgm_privacy_invites_duel"):GetInt() == 2  then
		duelPrivacy:SetValue("Everyone")
	end

	duelPrivacy:AddChoice("Nobody")
	duelPrivacy:AddChoice("Steam Friends")
	duelPrivacy:AddChoice("Everyone")
	duelPrivacy:SetSortItems(false)

	function duelPrivacy:OnSelect(value)
		RunConsoleCommand("efgm_privacy_invites_duel", value - 1)
	end

	local invitesBlockedPanel = vgui.Create("DPanel", account)
	invitesBlockedPanel:Dock(TOP)
	invitesBlockedPanel:SetSize(0, EFGM.MenuScale(50))

	function invitesBlockedPanel:Paint(w, h)
		draw.SimpleTextOutlined("Receive Invites From Blocked Players", "Purista18", w / 2, EFGM.MenuScale(5), COLORS.whiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
	end

	local invitesBlocked = vgui.Create("DCheckBox", invitesBlockedPanel)
	invitesBlocked:SetPos(EFGM.MenuScale(152), EFGM.MenuScale(30))
	invitesBlocked:SetConVar("efgm_privacy_invites_blocked")
	invitesBlocked:SetSize(EFGM.MenuScale(15), EFGM.MenuScale(15))

	-- misc
	local clearDecals = vgui.Create("DButton", misc)
	clearDecals:Dock(TOP)
	clearDecals:DockMargin(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), 0)
	clearDecals:SetSize(0, EFGM.MenuScale(25))
	clearDecals:SetText("CLEAR ALL DECALS")

	function clearDecals:DoClick()
		surface.PlaySound("ui/element_select.wav")
		RunConsoleCommand("r_cleardecals")
	end

	local flushAudio = vgui.Create("DButton", misc)
	flushAudio:Dock(TOP)
	flushAudio:DockMargin(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), 0)
	flushAudio:SetSize(0, EFGM.MenuScale(25))
	flushAudio:SetText("FLUSH AUDIO ENGINE")

	function flushAudio:DoClick()
		RunConsoleCommand("snd_restart")
		RunConsoleCommand("snd_async_flush")
	end

	local fixInvDesync = vgui.Create("DButton", misc)
	fixInvDesync:Dock(TOP)
	fixInvDesync:DockMargin(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), 0)
	fixInvDesync:SetSize(0, EFGM.MenuScale(25))
	fixInvDesync:SetText("FIX INVENTORY DESYNC")

	function fixInvDesync:DoClick()
		if timer.Exists(EFGM.MENU.Player:SteamID() .. "desyncCD") then surface.PlaySound("ui/element_deselect.wav") return end

		surface.PlaySound("ui/element_select.wav")
		net.Start("PlayerInventoryFixDesyncCL")
		net.SendToServer()

		timer.Create(EFGM.MENU.Player:SteamID() .. "desyncCD", 60, 1, function() end)
	end
end

function GetObjectiveText(obj)
	if obj.type == OBJECTIVE.Kill then
		if obj.areaName != nil then
			return "Eliminate PMC's across " .. MAPNAMES[obj.mapName] .. " at " .. obj.areaDisplayName or obj.areaName
		elseif obj.mapName != nil then
			return "Eliminate PMC's across " .. MAPNAMES[obj.mapName]
		else
			return "Eliminate PMC's across Garkov"
		end
	end

	if obj.type == OBJECTIVE.Extract then
		if obj.extractName != nil then
			return "Extract from " .. MAPNAMES[obj.mapName] .. " through " .. obj.extractDisplayName or obj.extractName
		elseif obj.mapName != nil then
			return "Extract from " .. MAPNAMES[obj.mapName]
		else
			return "Extract from any location across Garkov"
		end
	end

	if obj.type == OBJECTIVE.GiveItem then
		return "Hand over " .. EFGM.ITEMS[obj.itemName].fullName
	end

	if obj.type == OBJECTIVE.Pay then
		if obj.count != 1 then
			return "Pay " .. string.FormatComma(obj.count) .. " roubles"
		else
			return "Pay a singular rouble..."
		end
	end

	if obj.type == OBJECTIVE.QuestItem then
		return "Retrieve " .. EFGMQUESTITEM[obj.itemName].name
	end

	if obj.type == OBJECTIVE.VisitArea then
		return "Scout out " .. obj.areaDisplayName .. " at " .. MAPNAMES[obj.mapName]
	end

	return "Counting or not counting OBJECTIVE[" .. obj.type .. "]?"
end

function GetRewardText(reward)
	local amount = string.FormatComma(reward.count) .. "x" or "1x"
	if amount == "1x" then amount = "" end

	if reward.type == REWARD.PlayerStat then
		return amount .. " " .. reward.info
	end

	if reward.type == REWARD.Item then
		return amount .. " " .. reward.info
	end

	if reward.type == REWARD.MarketUnlock then
		return "Unlock " .. reward.info .. " on the market"
	end

	return "Counting or not counting REWARD[" .. reward.type .. "]?"
end

function GetProgressNumbers(progress, obj, objType)
	return progress, obj.count or 1
end

concommand.Add("efgm_gamemenu", function(ply, cmd, args)
	local tab = args[1]

	if !LocalPlayer():Alive() then return end
	if IsValid(EFGM.HUD.ELEMENTS.Transition) then return end

	EFGM.MENU:Open(tab)
end)

net.Receive("PlayerOpenContainer", function(len, ply)
	local tab = "Inventory"

	local container = {}
	container.entity = net.ReadEntity()
	container.name = net.ReadString()
	container.items = net.ReadTable(true)

	EFGM.MENU:Open(tab, container)
end)
