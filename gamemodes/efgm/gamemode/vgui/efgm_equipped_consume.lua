local PANEL = {}

PANEL.SlotID = nil
PANEL.Slot = nil
PANEL.Origin = nil
PANEL.CTXParent = nil

function PANEL:Init()
	self:Dock(FILL)
	self:SetMouseInputEnabled(true)
	self:SetCursor("hand")
	self:SetText("")
	self:SetPaintBackgroundEnabled(false)
	self:SetPaintBorderEnabled(false)
	self:SetPaintBackground(false)
end

function PANEL:Think()
end

function PANEL:InvalidateLayout()
end

function PANEL:PerformLayout()
end

local name, data, i, borderColor, nameSize, nameFont, countText, countSize, countSizeY, countFont, value, weight

function PANEL:CreateVar(argName, argData, argI)
	name = argName
	data = argData
	i = argI

	borderColor = COLORS.itemBackgroundColor

	surface.SetFont("PuristaBold14")
	nameSize = surface.GetTextSize(i.displayName)
	nameFont = "PuristaBold14"

	if nameSize < self:GetWide() - EFGM.MenuScale(17) then
		nameFont = "PuristaBold18"
	end

	countText = data.durability .. "/" .. i.consumableValue
	countSize = surface.GetTextSize(i.consumableValue .. "/" .. i.consumableValue)
	countSizeY = EFGM.MenuScale(16)
	countFont = "PuristaBold14"

	if countSize < (i.sizeX * EFGM.MenuScale(57)) - EFGM.MenuScale(17) then
		countSizeY = EFGM.MenuScale(20)
		countFont = "PuristaBold18"
	end

	value = math.floor(i.value * ((data.durability or i.consumableValue) / i.consumableValue))
	weight = i.weight or 0.1
end

function PANEL:Paint(w, h)
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

	draw.SimpleTextOutlined(countText, countFont, w - EFGM.MenuScale(3), h - countSizeY, COLORS.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
end

function PANEL:OnCursorEntered()
	surface.PlaySound("ui/inv_item_hover_" .. math.random(1, 3) .. ".wav")

	borderColor = COLORS.itemBackgroundColorHovered

	surface.SetFont("PuristaBold18")
	local tipItemName = "[" .. countText .. "] "
	tipItemName = tipItemName ..  i.fullName .. " (" .. i.displayName .. ")"
	local tipItemNameSize = surface.GetTextSize(tipItemName)
	surface.SetFont("Purista14")
	local canPurchase = i.canPurchase == true or i.canPurchase == nil
	local tipDesc = i.displayType .. " / " .. weight .. "kg / ₽" .. string.FormatComma(value)
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

function PANEL:OnCursorExited()
	borderColor = COLORS.itemBackgroundColor
	EFGM.MENU.Tooltip:RemoveTip()
end

function PANEL:DoClick()
	if input.IsKeyDown(KEY_LSHIFT) then
		if !EFGM.MENU.Player:Alive() then return end
		surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
		UnEquipItemFromInventory(self.SlotID, self.Slot)
	end
end

function PANEL:DoDoubleClick()
	EFGM.MENU.InspectItem(name, data)
	surface.PlaySound("ui/element_select.wav")
end

function PANEL:DoRightClick()
	local x, y = self.CTXParent:LocalCursorPos()
	local sideH, sideV

	surface.PlaySound("ui/context.wav")

	if x <= (self.CTXParent:GetWide() / 2) then sideH = true else sideH = false end
	if y <= (self.CTXParent:GetTall() / 2) then sideV = true else sideV = false end

	if IsValid(EFGM.MENU.ELEMENTS.ContextMenu) then EFGM.MENU.ELEMENTS.ContextMenu:Remove() end
	local contextMenu = vgui.Create("EContextMenu", self.CTXParent)
	contextMenu:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(10))
	contextMenu:DockPadding(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5))
	contextMenu:SetAlpha(0)
	contextMenu:AlphaTo(255, 0.1, 0, nil)
	contextMenu:RequestFocus()
	EFGM.MENU.ELEMENTS.ContextMenu = contextMenu

	local inspectButton = vgui.Create("EContextButton", contextMenu)
	inspectButton:SetText("INSPECT")
	inspectButton.OnClickEvent = function()
		EFGM.MENU.InspectItem(name, data)
	end

	if EFGM.MENU.Player:IsInHideout() and table.IsEmpty(EFGM.MENU.Container) then
		local stashButton = vgui.Create("EContextButton", contextMenu)
		stashButton:SetText("STASH")
		stashButton.OnClickSound = "ui/equip_" .. math.random(1, 6) .. ".wav"
		stashButton.OnClickEvent = function()
			StashItemFromEquipped(self.SlotID, self.Slot)
		end
	end

	local unequipButton = vgui.Create("EContextButton", contextMenu)
	unequipButton:SetText("UNEQUIP")
	unequipButton.OnClickSound = "ui/equip_" .. math.random(1, 6) .. ".wav"
	unequipButton.OnClickEvent = function()
		if !EFGM.MENU.Player:Alive() then return end
		UnEquipItemFromInventory(self.SlotID, self.Slot)
	end

	local dropButton = vgui.Create("EContextButton", contextMenu)
	dropButton:SetText("DROP")
	dropButton.OnClickEvent = function()
		DropEquippedItem(self.SlotID, self.Slot)
	end

	if EFGM.MENU.Player:IsInHideout() then
		local deleteButton = vgui.Create("EContextButton", contextMenu)
		deleteButton:SetText("DELETE")
		deleteButton.OnClickSound = "nil"
		deleteButton.OnClickEvent = function()
			EFGM.MENU.ConfirmDelete(name, 0, "equipped", self.SlotID, self.Slot)
		end
	end

	contextMenu:SetTallAfterCTX()

	if sideH == true then
		contextMenu:SetX(math.Clamp(x + EFGM.MenuScale(5), EFGM.MenuScale(5), self.CTXParent:GetWide() - contextMenu:GetWide() - EFGM.MenuScale(5)))
	else
		contextMenu:SetX(math.Clamp(x - contextMenu:GetWide(), EFGM.MenuScale(5), self.CTXParent:GetWide() - contextMenu:GetWide() - EFGM.MenuScale(5)))
	end

	if sideV == true then
		contextMenu:SetY(math.Clamp(y + EFGM.MenuScale(5), EFGM.MenuScale(5), self.CTXParent:GetTall() - contextMenu:GetTall() - EFGM.MenuScale(5)))
	else
		contextMenu:SetY(math.Clamp(y - contextMenu:GetTall() + EFGM.MenuScale(5), EFGM.MenuScale(5), self.CTXParent:GetTall() - contextMenu:GetTall() - EFGM.MenuScale(5)))
	end
end

vgui.Register("EEquippedConsume", PANEL, "DLabel")
