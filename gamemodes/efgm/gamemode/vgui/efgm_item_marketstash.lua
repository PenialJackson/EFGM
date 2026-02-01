local PANEL = {}

function PANEL:Init()
	self:SetMouseInputEnabled(true)
	self:SetCursor("hand")
	self:SetTall(0)
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

function PANEL:OnCursorEntered()
end

function PANEL:OnCursorExited()
end

vgui.Register("EItemMarketStash", PANEL, "DLabel")