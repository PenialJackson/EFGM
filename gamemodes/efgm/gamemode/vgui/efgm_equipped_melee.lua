local PANEL = {}

PANEL.SlotID, PANEL.Slot, PANEL.Origin, PANEL.CTXParent = nil

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

local name, data, i, nameSize, nameFont, tagFont, tagH, value, weight

function PANEL:CreateVar(argName, argData, argI)
	name = argName
	data = argData
	i = argI

	borderColor = Colors.itemBackgroundColor

	surface.SetFont("PuristaBold14")
	nameSize = surface.GetTextSize(i.displayName)
	nameFont = "PuristaBold14"
	tagFont = "PuristaBold10"
	tagH = EFGM.MenuScale(10)

	if nameSize < (i.sizeX * EFGM.MenuScale(57)) - EFGM.MenuScale(17) then
		nameFont = "PuristaBold18"
		tagFont = "PuristaBold14"
		tagH = EFGM.MenuScale(12)
	end

	value = i.value
	weight = i.weight or 0.1

	if data.att then
		local atts = GetPrefixedAttachmentListFromCode(data.att)
		if !atts then return end

		for _, a in ipairs(atts) do
			local att = EFGMITEMS[a]
			if att == nil then continue end

			value = value + att.value
			weight = weight + (att.weight or 0.1)
		end
	end
end

function PANEL:Paint(w, h)
	surface.SetDrawColor(borderColor)
	surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
	surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
	surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
	surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

	surface.SetDrawColor(i.iconColor or Colors.itemColor)
	surface.DrawRect(0, 0, w, h)

	surface.SetDrawColor(Colors.pureWhiteColor)
	surface.SetMaterial(i.icon)
	surface.DrawTexturedRect(0, 0, w, h)

	draw.SimpleTextOutlined(i.displayName, nameFont, w - EFGM.MenuScale(3), EFGM.MenuScale(-1), Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)

	if data.tag then
		draw.SimpleTextOutlined(data.tag, tagFont, w - EFGM.MenuScale(3), tagH, Colors.whiteColor, TEXT_ALIGN_RIGHT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
	end

	if data.fir then
		surface.SetDrawColor(Colors.pureWhiteColor)
		surface.SetMaterial(Mats.firIcon)
		surface.DrawTexturedRect(w - EFGM.MenuScale(16), h - EFGM.MenuScale(16), EFGM.MenuScale(14), EFGM.MenuScale(14))
	end
end

function PANEL:OnCursorEntered()
	surface.PlaySound("ui/inv_item_hover_" .. math.random(1, 3) .. ".wav")

	borderColor = Colors.itemBackgroundColorHovered

	surface.SetFont("PuristaBold18")
	local tipItemName = i.fullName .. " (" .. i.displayName .. ")"
	local tipItemNameSize = surface.GetTextSize(tipItemName)
	surface.SetFont("Purista14")
	local canPurchase = i.canPurchase == true or i.canPurchase == nil
	local tipDesc = i.displayType .. " / " .. weight .. "kg / ₽" .. string.FormatComma(value)
	if canPurchase then tipDesc = tipDesc .. " / LVL " .. i.levelReq else tipDesc = tipDesc .. " / FIR only" end
	local tipDescSize = surface.GetTextSize(tipDesc)

	local paint = function()
		local w, h = Menu.Tooltip:GetSize()

		surface.SetDrawColor(Colors.tooltipBackgroundColor)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(Colors.tooltipBackgroundColorTransparent)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(Colors.tooltipHeaderColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(5))

		surface.SetDrawColor(Colors.transparentWhiteColor)
		surface.DrawRect(0, 0, w, EFGM.MenuScale(1))
		surface.DrawRect(0, h - 1, w, EFGM.MenuScale(1))
		surface.DrawRect(0, 0, EFGM.MenuScale(1), h)
		surface.DrawRect(w - 1, 0, EFGM.MenuScale(1), h)

		draw.SimpleTextOutlined(tipItemName, "PuristaBold18", EFGM.MenuScale(5), EFGM.MenuScale(5), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
		draw.SimpleTextOutlined(tipDesc, "Purista14", EFGM.MenuScale(5), EFGM.MenuScale(20), Colors.whiteColor, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), Colors.blackColor)
	end

	Menu.Tooltip:DisplayTip(self, paint, math.max(tipItemNameSize, tipDescSize) + EFGM.MenuScale(10), EFGM.MenuScale(40), 0.4)
end

function PANEL:OnCursorExited()
	borderColor = Colors.itemBackgroundColor
	Menu.Tooltip:RemoveTip()
end

function PANEL:DoClick()
	if input.IsKeyDown(KEY_LSHIFT) then
		if !Menu.Player:Alive() then return end
		surface.PlaySound("ui/equip_" .. math.random(1, 6) .. ".wav")
		UnEquipItemFromInventory(self.SlotID, self.Slot)
	end
end

function PANEL:DoDoubleClick()
	Menu.InspectItem(name, data)
	surface.PlaySound("ui/element_select.wav")
end

function PANEL:DoRightClick()
	local x, y = self.CTXParent:LocalCursorPos()
	local sideH, sideV

	surface.PlaySound("ui/context.wav")

	if x <= (self.CTXParent:GetWide() / 2) then sideH = true else sideH = false end
	if y <= (self.CTXParent:GetTall() / 2) then sideV = true else sideV = false end

	if IsValid(contextMenu) then contextMenu:Remove() end
	contextMenu = vgui.Create("EContextMenu", self.CTXParent)
	contextMenu:SetSize(EFGM.MenuScale(100), EFGM.MenuScale(10))
	contextMenu:DockPadding(EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5), EFGM.MenuScale(5))
	contextMenu:SetAlpha(0)
	contextMenu:AlphaTo(255, 0.1, 0, nil)
	contextMenu:RequestFocus()

	local inspectButton = vgui.Create("EContextButton", contextMenu)
	inspectButton:SetText("INSPECT")
	inspectButton.OnClickEvent = function()
		Menu.InspectItem(name, data)
	end

	if Menu.Player:IsInHideout() and table.IsEmpty(Menu.Container) then
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
		if !Menu.Player:Alive() then return end
		UnEquipItemFromInventory(self.SlotID, self.Slot)
	end

	if Menu.Player:IsInHideout() then
		if i.ammoID then
			local buyAmmoButton = vgui.Create("EContextButton", contextMenu)
			buyAmmoButton:SetText("BUY AMMO")
			buyAmmoButton.OnClickSound = "nil"
			buyAmmoButton.OnClickEvent = function()
				Menu.ConfirmPurchase(i.ammoID, "inv", false)
			end
		end

		if data.tag == nil then
			local tagButton = vgui.Create("EContextButton", contextMenu)
			tagButton:SetText("SET TAG")
			tagButton.OnClickEvent = function()
				Menu.ConfirmTag(name, 0, "equipped", self.SlotID, self.Slot)
			end
		end
	end

	local dropButton = vgui.Create("EContextButton", contextMenu)
	dropButton:SetText("DROP")
	dropButton.OnClickEvent = function()
		DropEquippedItem(self.SlotID, self.Slot)
	end

	if Menu.Player:IsInHideout() then
		local deleteButton = vgui.Create("EContextButton", contextMenu)
		deleteButton:SetText("DELETE")
		deleteButton.OnClickSound = "nil"
		deleteButton.OnClickEvent = function()
			Menu.ConfirmDelete(name, 0, "equipped", self.SlotID, self.Slot)
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

vgui.Register("EEquippedMelee", PANEL, "DLabel")