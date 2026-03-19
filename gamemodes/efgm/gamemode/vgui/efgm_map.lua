local PANEL = {}

PANEL.IsDragging = false

PANEL.DragPos = {x = 0, y = 0}
PANEL.PanOffset = {x = 0, y = 0}

function PANEL:ClampPanOffset()
	local panelW, panelH = self.MapHolderX, self.MapHolderY
	local zoom = self.Zoom
	local pan = self.PanOffset

	local contentScreenW = self.MapSizeX * zoom
	local contentScreenH = self.MapSizeY * zoom

	local minPanX, maxPanX
	local minPanY, maxPanY

	if contentScreenW > panelW then
		minPanX = panelW - contentScreenW
		maxPanX = 0
	else
		minPanX = (panelW - contentScreenW) / 2
		maxPanX = minPanX
	end

	if contentScreenH > panelH then
		minPanY = panelH - contentScreenH
		maxPanY = 0
	else
		minPanY = (panelH - contentScreenH) / 2
		maxPanY = minPanY
	end

	self.PanOffset.x = math.Clamp(pan.x, minPanX, maxPanX)
	self.PanOffset.y = math.Clamp(pan.y, minPanY, maxPanY)
end

-- most of this was vibe coded, and im genuinely scared how well it works
-- lmao bro vibe codes
function PANEL:OnMouseWheeled(delta)
	local oldZoom = self.Zoom
	local zoomSpeed = 0.1
	self.Zoom = math.Clamp(self.Zoom + delta * zoomSpeed, self.MinZoom, self.MaxZoom)

	local newZoom = self.Zoom
	if newZoom == oldZoom then return true end

	local mouseX, mouseY = self:CursorPos()

	self.PanOffset.x = mouseX - ((mouseX - self.PanOffset.x) / oldZoom) * newZoom
	self.PanOffset.y = mouseY - ((mouseY - self.PanOffset.y) / oldZoom) * newZoom

	self:ClampPanOffset()
end

function PANEL:OnMousePressed(mouseCode)
	if mouseCode == MOUSE_LEFT then
		self.IsDragging = true
		self.DragPos.x, self.DragPos.y = input.GetCursorPos()
		self:MouseCapture(true)
	end
end

function PANEL:OnMouseReleased(mouseCode)
	if mouseCode == MOUSE_LEFT then
		self.IsDragging = false
		self:MouseCapture(false)
	end
end

function PANEL:Think()
	if self.IsDragging then
		local mx, my = input.GetCursorPos()
		local dx = mx - self.DragPos.x
		local dy = my - self.DragPos.y

		self.PanOffset.x = self.PanOffset.x + dx / self.Zoom
		self.PanOffset.y = self.PanOffset.y + dy / self.Zoom
		self:ClampPanOffset()

		self.DragPos.x, self.DragPos.y = mx, my
	end
end

function PANEL:Paint(w, h)
	if self.OverheadImage == nil then return end

	surface.SetDrawColor(COLORS.pureWhiteColor)
	surface.SetMaterial(self.OverheadImage)
	surface.DrawTexturedRect(0 + self.PanOffset.x, 0 + self.PanOffset.y, w * self.Zoom, h * self.Zoom)

	if self.MapInfo == nil then return end

	if self.DrawFullInfo then
		surface.SetDrawColor(COLORS.mapSpawn)
		for k, v in ipairs(self.MapInfo.spawns) do
			local posX = (v.pos.x * self.MapSizeX * self.Zoom) + self.PanOffset.x
			local posY = (v.pos.y * self.MapSizeY * self.Zoom) + self.PanOffset.y

			surface.SetDrawColor(COLORS.mapWhite)
			surface.SetMaterial(MATS.mapSpawn)
			surface.DrawTexturedRect(posX - EFGM.MenuScale(12), posY - EFGM.MenuScale(12), EFGM.MenuScale(24), EFGM.MenuScale(24))

			local text = "ANY"
			if v.type == 1 then text = "PMC" elseif v.type == 2 then text = "SCAV" end

			draw.SimpleTextOutlined(text, "PuristaBold12", posX, posY + EFGM.MenuScale(8), COLORS.pureWhiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		end

		surface.SetDrawColor(COLORS.mapExtract)
		for k, v in ipairs(self.MapInfo.extracts) do
			local posX = (v.pos.x * self.MapSizeX * self.Zoom) + self.PanOffset.x
			local posY = (v.pos.y * self.MapSizeY * self.Zoom) + self.PanOffset.y

			surface.SetDrawColor(COLORS.mapWhite)
			surface.SetMaterial(MATS.mapExtract)
			surface.DrawTexturedRect(posX - EFGM.MenuScale(16), posY - EFGM.MenuScale(16), EFGM.MenuScale(32), EFGM.MenuScale(32))

			local text = v.name
			draw.SimpleTextOutlined(text, "PuristaBold16", posX, posY - EFGM.MenuScale(36), COLORS.mapExtract, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)

			local factionText = "ANY"
			if v.accessibility == 1 then factionText = "PMC" elseif v.accessibility == 2 then factionText = "SCAV" end

			draw.SimpleTextOutlined(factionText, "PuristaBold12", posX, posY + EFGM.MenuScale(16), COLORS.pureWhiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		end

		surface.SetDrawColor(COLORS.mapLocation)
		for k, v in ipairs(self.MapInfo.locations) do
			local posX = (v.pos.x * self.MapSizeX * self.Zoom) + self.PanOffset.x
			local posY = (v.pos.y * self.MapSizeY * self.Zoom) + self.PanOffset.y

			surface.SetDrawColor(COLORS.mapWhite)
			surface.SetMaterial(MATS.mapLocation)
			surface.DrawTexturedRect(posX - EFGM.MenuScale(24), posY - EFGM.MenuScale(24), EFGM.MenuScale(48), EFGM.MenuScale(48))

			draw.SimpleTextOutlined(v.name, "PuristaBold16", posX, posY - EFGM.MenuScale(42), COLORS.mapLocation, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
			draw.SimpleTextOutlined("LOOT: " .. v.loot .. "/5", "PuristaBold12", posX, posY + EFGM.MenuScale(24), COLORS.pureWhiteColor, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		end

		surface.SetDrawColor(COLORS.mapKey)
		for k, v in ipairs(self.MapInfo.keys) do
			local posX = (v.pos.x * self.MapSizeX * self.Zoom) + self.PanOffset.x
			local posY = (v.pos.y * self.MapSizeY * self.Zoom) + self.PanOffset.y

			surface.SetDrawColor(COLORS.mapWhite)
			surface.SetMaterial(MATS.mapKey)
			surface.DrawTexturedRect(posX - EFGM.MenuScale(12), posY - EFGM.MenuScale(12), EFGM.MenuScale(24), EFGM.MenuScale(24))

			draw.SimpleTextOutlined(v.name, "PuristaBold16", posX, posY - EFGM.MenuScale(32), COLORS.mapKey, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, EFGM.MenuScaleRounded(1), COLORS.blackColor)
		end
	end

	if !self.DrawRaidInfo or EFGM.TRACKING.inRaidLength == nil then return end

	local timeToDraw = math.min(EFGM.TRACKING.inRaidLength / 4, 60)
	local progress = (SysTime() % timeToDraw) / timeToDraw

	local previousPos = {}
	local startPos = {}

	for k, v in ipairs(EFGM.TRACKING.raidPositions) do
		local posX = (v.x * self.MapSizeX * self.Zoom) + self.PanOffset.x
		local posY = (v.y * self.MapSizeY * self.Zoom) + self.PanOffset.y

		if !table.IsEmpty(previousPos) then
			local distance = math.sqrt((posX - previousPos.x) ^ 2 + (posY - previousPos.y) ^ 2)

			-- this line thickness thing took me like an hour to figure out with a pencil and paper, but shatgpt can lick my balls
			local normal = {x = (posX - previousPos.x) / distance * EFGM.MenuScale(1.5), y = (posY - previousPos.y) / distance * EFGM.MenuScale(1.5)}
			local perpNormal = {x = normal.y, y = -normal.x}

			local thickenedLine = {
				{x = posX + normal.x + perpNormal.x, y = posY + normal.y + perpNormal.y},
				{x = posX + normal.x - perpNormal.x, y = posY + normal.y - perpNormal.y},
				{x = previousPos.x - normal.x - perpNormal.x, y = previousPos.y - normal.y - perpNormal.y},
				{x = previousPos.x - normal.x + perpNormal.x, y = previousPos.y - normal.y + perpNormal.y}
			}

			if k / #EFGM.TRACKING.raidPositions <= progress then
				surface.SetDrawColor(COLORS.mapOverviewLine)
			else
				surface.SetDrawColor(COLORS.mapOverviewLoadedLine)
			end

			draw.NoTexture()
			surface.DrawPoly(thickenedLine)
		else
			startPos = {x = posX, y = posY}
		end

		previousPos = {x = posX, y = posY}
	end

	if EFGM.TRACKING.deathPosition then
		local posX = (EFGM.TRACKING.deathPosition.x * self.MapSizeX * self.Zoom) + self.PanOffset.x
		local posY = (EFGM.TRACKING.deathPosition.y * self.MapSizeY * self.Zoom) + self.PanOffset.y

		surface.SetDrawColor(COLORS.mapWhite)
		surface.SetMaterial(MATS.mapOverviewDeath)
		surface.DrawTexturedRect(posX - EFGM.MenuScale(16), posY - EFGM.MenuScale(16), EFGM.MenuScale(32), EFGM.MenuScale(32))
	elseif !table.IsEmpty(EFGM.TRACKING.raidPositions) then
		local posX = (EFGM.TRACKING.raidPositions[#EFGM.TRACKING.raidPositions].x * self.MapSizeX * self.Zoom) + self.PanOffset.x
		local posY = (EFGM.TRACKING.raidPositions[#EFGM.TRACKING.raidPositions].y * self.MapSizeY * self.Zoom) + self.PanOffset.y

		surface.SetDrawColor(COLORS.mapWhite)
		surface.SetMaterial(MATS.mapOverviewExtract)
		surface.DrawTexturedRect(posX - EFGM.MenuScale(16), posY - EFGM.MenuScale(16), EFGM.MenuScale(32), EFGM.MenuScale(32))
	end

	surface.SetDrawColor(COLORS.mapOverviewLine)
	for k, v in ipairs(EFGM.TRACKING.killPositions) do
		local posX = (v.x * self.MapSizeX * self.Zoom) + self.PanOffset.x
		local posY = (v.y * self.MapSizeY * self.Zoom) + self.PanOffset.y

		if v.time / #EFGM.TRACKING.raidPositions <= progress then
			surface.SetDrawColor(COLORS.mapWhite)
		else
			surface.SetDrawColor(COLORS.mapOverviewUnloadedKill)
		end

		surface.SetMaterial(MATS.mapOverviewKill)
		surface.DrawTexturedRect(posX - EFGM.MenuScale(16), posY - EFGM.MenuScale(16), EFGM.MenuScale(32), EFGM.MenuScale(32))
	end

	surface.SetDrawColor(COLORS.mapWhite)
	surface.SetMaterial(MATS.mapOverviewSpawn)
	surface.DrawTexturedRect(startPos.x - EFGM.MenuScale(16), startPos.y - EFGM.MenuScale(26), EFGM.MenuScale(32), EFGM.MenuScale(32))
end

vgui.Register("EMap", PANEL, "DPanel")
