local table = table
local timer = timer
local util = util

hook.Add("InitPostEntity", "ARC9_phystweak", function()
	if !physenv or !physenv.GetPerformanceSettings then return end

	timer.Simple(0, function()
		local v = physenv.GetPerformanceSettings().MaxVelocity or 10000
		if v < 10000 then
			physenv.SetPerformanceSettings({MaxVelocity = 10000})
		end
	end)
end)

function PruneUnnecessaryAttachmentDataRecursive(tbl)
	tbl.t = tbl.ToggleNum
	tbl.i = tbl.Installed
	tbl.s = tbl.SubAttachments

	for i, _ in pairs(tbl) do
		if i != "i" and i != "s" and i != "t" and i != "ToggleNum" then
			tbl[i] = nil
		end
	end

	if table.Count(tbl.s or {}) > 0 then
		for _, k in pairs(tbl.s) do
			PruneUnnecessaryAttachmentDataRecursive(k)
		end
	else
		tbl.s = nil
	end

	tbl.BaseClass = nil
end

function DecompressTableRecursive(tbl)
	for i, k in pairs(tbl) do
		if i == "i" then
			tbl["i"] = nil
			tbl["Installed"] = k
		elseif i == "s" then
			tbl["s"] = nil
			tbl["SubAttachments"] = k
		elseif i == "t" then
			tbl["t"] = nil
			tbl["ToggleNum"] = k
		end
	end

	if table.Count(tbl.SubAttachments or {}) > 0 then
		for _, k in pairs(tbl.SubAttachments) do
			DecompressTableRecursive(k)
		end
	end
end

function GenerateAttachString(tbl)
	for _, k in pairs(tbl) do PruneUnnecessaryAttachmentDataRecursive(k) end

	local str = util.TableToJSON(tbl)
	str = util.Compress(str)
	str = util.Base64Encode(str, true)

	return str
end

function ImportPresetCode(str)
	if !str then return end
	str = util.Base64Decode(str)
	str = util.Decompress(str)
	if !str then return end

	local tbl = util.JSONToTable(str)
	if tbl then
		for _, k in pairs(tbl) do
			DecompressTableRecursive(k)
		end
	end

	return tbl
end

function LoadPresetFromTable(wep, tbl)
	wep:SetNoPresets(true)
	wep.Attachments = baseclass.Get(wep:GetClass()).Attachments

	for _, slottbl in ipairs(wep.Attachments) do
		slottbl.Installed = nil
		slottbl.SubAttachments = nil
	end

	wep:PruneAttachments()
	wep:BuildSubAttachments(tbl)
	wep:PostModify()
	wep:SendWeapon()
end

function LoadPresetFromCode(wep, str)
	local tbl = ImportPresetCode(str)
	if !tbl then return false end

	LoadPresetFromTable(wep, tbl)
end

function AttTreeToList(tree, tbl)
	if !istable(tree) then return {} end
	local atts = {}
	atts = {tree}

	if tree.SubAttachments then
		for _, sub in ipairs(tree.SubAttachments) do
			table.Add(atts, AttTreeToList(sub, tbl))
		end
	end

	return atts
end

function GetSubSlotList(tbl)
	local atts = {}

	for _, i in ipairs(tbl or {}) do
		table.Add(atts, AttTreeToList(i, tbl))
	end

	return atts
end

function GetAttachmentList(tbl)
	local atts = {}

	for _, i in ipairs(GetSubSlotList(tbl)) do
		if i.Installed and EFGM.ITEMS["arc9_att_" .. i.Installed] then table.insert(atts, i.Installed) end
	end

	return atts
end

function GetAttachmentListFromCode(str)
	local tbl = ImportPresetCode(str)
	if !tbl then return false end

	local cleanAttTbl = GetAttachmentList(tbl)
	local cleanAttStr = ""

	table.sort(cleanAttTbl, function(a, b)
		local a_value = EFGM.ITEMS["arc9_att_" .. a].value or 0
		local b_value = EFGM.ITEMS["arc9_att_" .. b].value or 0

		if a_value and b_value then
			return a_value > b_value
		end

		return true
	end)

	for i = 1, #cleanAttTbl do
		if !cleanAttTbl[i] then continue end
		cleanAttStr = cleanAttStr .. i .. ": " .. "\t" .. EFGM.ITEMS["arc9_att_" .. cleanAttTbl[i]].fullName .. ", " .. EFGM.ITEMS["arc9_att_" .. cleanAttTbl[i]].weight .. "kg, ₽" .. string.FormatComma(EFGM.ITEMS["arc9_att_" .. cleanAttTbl[i]].value)
		if i != #cleanAttTbl then cleanAttStr = cleanAttStr .. "\n" end
	end

	return cleanAttStr
end

function GetPrefixedAttachmentListFromCode(str)
	local tbl = ImportPresetCode(str)
	if !tbl then return false end

	local cleanAttTbl = GetAttachmentList(tbl)
	local prefixAttTbl = {}

	for i = 0, #cleanAttTbl do
		if !cleanAttTbl[i] then continue end
		table.insert(prefixAttTbl, "arc9_att_" .. cleanAttTbl[i])
	end

	return prefixAttTbl
end

hook.Add("ARC9_PlayerGetAtts", "ARC9GetAtts", function(ply, att, wep)
	local inventory = {}

	if SERVER then
		inventory = ply.inventory
		if ply.givingPreset == true then return 999 end
	else
		inventory = EFGM.CLIENT.INVENTORY
	end

	return AmountInInventory(inventory, "arc9_att_" .. att)
end)

hook.Add("ARC9_PlayerGiveAtt", "ARC9GiveAtt", function(ply, att, amt)
	local data = {}
	data.count = amt

	if SERVER then
		FlowItemToInventory(ply, "arc9_att_" .. att, data)

		return
	end
end)

hook.Add("ARC9_PlayerTakeAtt", "ARC9TakeAtt", function(ply, att, amt)
	local i = DeflowItemsFromInventory(ply, "arc9_att_" .. att, amt)

	return i
end)

ARC9.KeyPressed_Menu = false

hook.Add("PlayerBindPress", "ARC9_Binds", function(ply, bind, pressed, code)
	local wpn = ply:GetActiveWeapon()

	if !wpn or !IsValid(wpn) or !wpn.ARC9 then return end

	if bind == "+menu_context" then
		if LocalPlayer():IsInDuel() then return end
		if !wpn:GetInSights() and !LocalPlayer():KeyDown(IN_USE) then

			ARC9.KeyPressed_Menu = pressed

			return true
		elseif wpn:GetInSights() and !LocalPlayer():KeyDown(IN_USE) then
			return true
		end
	end

	if !pressed then return end

	local plususe = ((ARC9.ControllerMode() and bind == "+zoom" and !LocalPlayer():KeyDown(IN_ZOOM)) -- Gamepad
		or (!ARC9.ControllerMode() and bind == "+use" and !LocalPlayer():KeyDown(IN_USE)))

	if wpn:GetCustomize() then
		if bind == "+showscores" then
			if ply:KeyDown(IN_USE) then
				wpn:CycleSelectedAtt(-1)
			else
				wpn:CycleSelectedAtt(1)
			end
			return true
		end

		if bind == "impulse 100" then
			if wpn.CustomizeLastHovered and wpn.CustomizeLastHovered:IsHovered() then
				local att = wpn.CustomizeLastHovered.att
				ARC9:ToggleFavorite(att)
				if ARC9.Favorites[att] and wpn.BottomBarFolders["!favorites"] then
					wpn.BottomBarFolders["!favorites"][att] = true
				elseif wpn.BottomBarFolders["!favorites"] then
					wpn.BottomBarFolders["!favorites"][att] = nil
				end
			end
			return true
		end

		if bind == "+reload" then
			if !ply:IsInHideout() then return end

			if wpn.CustomizeLastHovered and wpn.CustomizeLastHovered:IsHovered() then
				local att = wpn.CustomizeLastHovered.att

				local efgmAtt = "arc9_att_" .. att
				local efgmItem = EFGM.ITEMS[efgmAtt]

				if efgmItem == nil then return end

				ply:ConCommand("efgm_gamemenu inventory")
				timer.Simple(0.05, function() EFGM.MENU.ConfirmPurchase(efgmAtt, "inv", true) end)
			end

			return true
		end

		if plususe then
			local attpnl = wpn.CustomizeLastHovered
			local addr

			local slotpnl2 = wpn.CustomizeLastHoveredSlot2

			if attpnl and attpnl:IsHovered() then
				addr = attpnl.address
			end

			if slotpnl2 and slotpnl2.fuckinghovered then
				addr = slotpnl2.Address
			end

			if addr then
				local atttbl = wpn:GetFinalAttTable(wpn:GetFilledMergeSlot(addr))

				if ((atttbl.ToggleStats and !atttbl.AdvancedCamoSupport) or (atttbl.AdvancedCamoSupport and wpn.AdvancedCamoCache)) then
					wpn:EmitSound(wpn:RandomChoice(wpn:GetProcessedValue("ToggleAttSound", true)), 75, 100, 1, CHAN_ITEM)
					wpn:ToggleStat(addr, input.IsKeyDown(KEY_LSHIFT) and -1 or 1)
					wpn:PostModify()
				end
			end

			return true
		end
	else
		if bind == "impulse 100" then
			if wpn:CanToggleAllStatsOnF() > 1 and !ARC9.DeferToggleAtts then
				return true
			else
				ARC9.DeferToggleAtts = false
			end
		end

		if plususe then
			return ARC9.AttemptGiveNPCWeapon()
		end
	end

	if wpn:GetInSights() then
		if bind == "invnext" then
			wpn:Scroll(1)
			wpn.Peeking = false

			return true
		elseif bind == "invprev" then
			wpn:Scroll(-1)
			wpn.Peeking = false

			return true
		end
	end
end)

if CLIENT then
	local ARC9ScreenScale = ARC9.ScreenScale
	local hoversound = "arc9/newui/uimouse_hover.ogg"

	local ARC9AttButton = {}
	ARC9AttButton.Color = ARC9.GetHUDColor("fg")
	ARC9AttButton.ColorBlock = ARC9.GetHUDColor("con")
	ARC9AttButton.Icon = Material("arc9/ui/settings.png", "mips")
	ARC9AttButton.MatIdle = Material("arc9/ui/att.png", "mips")
	ARC9AttButton.MatFolderBack = Material("arc9/ui/folder_back.png", "mips smooth")
	ARC9AttButton.MatFolderFront = Material("arc9/ui/folder_front.png", "mips smooth")
	ARC9AttButton.MatFolderFrontFav = Material("arc9/ui/folder_front_fav.png", "mips smooth")
	ARC9AttButton.MatFolderHeart = Material("arc9/ui/folder_heart.png", "mips smooth")
	ARC9AttButton.MatEmpty = Material("arc9/ui/att_empty.png", "mips")
	ARC9AttButton.MatBlock = Material("arc9/ui/att_block.png", "mips")
	ARC9AttButton.MatMarkerInstalled = Material("arc9/ui/mark_installed.png", "mips smooth")
	ARC9AttButton.MatMarkerLock = Material("arc9/ui/mark_lock.png", "mips smooth")
	ARC9AttButton.MatMarkerLinked = Material("arc9/ui/mark_linked.png", "mips smooth")
	ARC9AttButton.MatMarkerModes = Material("arc9/ui/mark_modes.png", "mips smooth")
	ARC9AttButton.MatMarkerPaint = Material("arc9/ui/paint.png", "mips smooth")
	ARC9AttButton.MatMarkerSlots = Material("arc9/ui/mark_slots.png", "mips smooth")
	ARC9AttButton.MatMarkerFavorite = Material("arc9/ui/mark_favorite.png", "mips smooth")

	local ARC9TopButton = {}
	ARC9TopButton.Color = ARC9.GetHUDColor("fg")
	ARC9TopButton.ColorClicked = ARC9.GetHUDColor("hi")
	ARC9TopButton.ColorNotif = Color(255, 50, 50)
	ARC9TopButton.Icon = Material("arc9/ui/settings.png", "mips")
	ARC9TopButton.MatIdle = Material("arc9/ui/topbutton.png", "mips")
	ARC9TopButton.MatHovered = Material("arc9/ui/topbutton_hover.png", "mips")
	ARC9TopButton.MatIdleL = Material("arc9/ui/topbutton_l.png", "mips")
	ARC9TopButton.MatHoveredL = Material("arc9/ui/topbutton_hover_l.png", "mips")
	ARC9TopButton.MatIdleM = Material("arc9/ui/topbutton_m.png", "mips")
	ARC9TopButton.MatHoveredM = Material("arc9/ui/topbutton_hover_m.png", "mips")
	ARC9TopButton.MatIdleR = Material("arc9/ui/topbutton_r.png", "mips")
	ARC9TopButton.MatHoveredR = Material("arc9/ui/topbutton_hover_r.png", "mips")
	ARC9TopButton.MatNotif = Material("arc9/ui/info.png", "mips")

	function ARC9AttButton:Init()
		self:SetText("")
		self:SetSize(ARC9ScreenScale(42.7), ARC9ScreenScale(42.7 + 14.6))
	end

	function ARC9AttButton:Paint(w, h)
		local color = self.Color
		local iconcolor = self.Color
		local textcolor = self.Color
		local markercolor = self.Color
		local icon = self.Icon or ARC9TopButton.MatIdle
		local text = self.ButtonText
		local colorclicked = ARC9.GetHUDColor("hi")
		local colorgrey = ARC9.GetHUDColor("unowned")
		local mat = self.MatIdle
		local matmarker = nil
		local favmarker = nil
		local att = self.att
		local efgmAtt = nil
		local efgmCanBuy = nil
		local efgmValue = nil
		local efgmLvl = nil
		local efgmWeight = nil

		if att != nil then

			local efgmAttStr = "arc9_att_" .. att
			if EFGM.ITEMS[efgmAttStr] then
				efgmAtt = efgmAttStr
				efgmCanBuy = EFGM.ITEMS[efgmAtt].canPurchase or false
				efgmValue = EFGM.ITEMS[efgmAtt].value
				efgmLvl = EFGM.ITEMS[efgmAtt].levelReq or 1
				efgmWeight = EFGM.ITEMS[efgmAtt].weight
			end

		end

		local qty = ARC9:PlayerGetAtts(LocalPlayer(), att, self.Weapon)
		local free_or_lock = false

		if self:IsHovered() or self.OverrideHovered then
			textcolor = colorclicked
		end

		if self.HasSlots then
			matmarker = self.MatMarkerSlots
		end

		if self.Empty then
			mat = self.MatEmpty
			if self.EmptyGreyOut then
				color = colorgrey
				iconcolor = colorgrey
			end
		elseif not self.CanAttach and not self.Installed then
			if self.MissingDependents then
				matmarker = self.MatMarkerLinked
			else
				matmarker = self.MatMarkerLock
			end
			mat = self.MatBlock
			textcolor = self.ColorBlock
			iconcolor = self.ColorBlock
			markercolor = self.ColorBlock
		elseif self:IsDown() or self.Installed then
			-- mat = self.MatHover
			color = colorclicked
			matmarker = self.MatMarkerInstalled
			markercolor = colorclicked
		elseif qty == 0 and not self.Installed and not self.SlotDisplay then
			color = (self:IsHovered() or self.OverrideHovered) and self.Color or colorgrey
			textcolor = color
			iconcolor = colorgrey
		end

		if ARC9.Favorites[att] then
			favmarker = self.MatMarkerFavorite
		end

		surface.SetDrawColor(color)
		surface.SetMaterial(mat)
		surface.DrawTexturedRect(0, 0, w, w)

		render.SuppressEngineLighting(true)
		surface.SetDrawColor(iconcolor)
		surface.SetMaterial(icon)
		render.SetAmbientLight(255, 255, 255)

		if not self.FullColorIcon then
			surface.DrawTexturedRect(ARC9ScreenScale(2), ARC9ScreenScale(2), w - ARC9ScreenScale(4), w - ARC9ScreenScale(4))
		else
			surface.DrawTexturedRect(ARC9ScreenScale(4), ARC9ScreenScale(4), w - ARC9ScreenScale(8), w - ARC9ScreenScale(8))
		end

		render.SuppressEngineLighting(false)
		render.SetLightingMode(0)

		if matmarker then
			surface.SetDrawColor(markercolor)
			surface.SetMaterial(matmarker)
			surface.DrawTexturedRect(ARC9ScreenScale(3), w - ARC9ScreenScale(11), ARC9ScreenScale(8), ARC9ScreenScale(8))
		end

		if favmarker then
			surface.SetDrawColor(markercolor)
			surface.SetMaterial(favmarker)
			surface.DrawTexturedRect(w - ARC9ScreenScale(11), ARC9ScreenScale(3), ARC9ScreenScale(8), ARC9ScreenScale(8))
		end

		if self.FolderContain then -- is folder
			surface.SetFont("ARC9_12")
			local tww = surface.GetTextSize(self.FolderContain)
			surface.SetTextColor(iconcolor)
			surface.SetTextPos((w - tww) / 2, h - ARC9ScreenScale(28))
			surface.DrawText(self.FolderContain)


			if self.FolderIcon1 and !self.FolderIcon2 then -- single icon
				surface.SetMaterial(self.FolderIcon1)
				surface.SetDrawColor(iconcolor) -- icon
				-- draw shadow here, idk how
				surface.DrawTexturedRectRotated(w/2, w/3.3, w/2*1.05, w/2*1.05, 0)
				surface.DrawTexturedRectRotated(w/2, w/3.3, w/2, w/2, 0)
			else
				if self.FolderIcon1 then
					surface.SetMaterial(self.FolderIcon1)
					surface.SetDrawColor(iconcolor) -- icon
					-- draw shadow here, idk how
					surface.DrawTexturedRectRotated(w/3.05, w/3.3, w/2.625*1.07, w/2.625*1.07, 20.4) -- 512/168, 512/155, 512/195
					surface.DrawTexturedRectRotated(w/3.05, w/3.3, w/2.625, w/2.625, 20.4) -- 512/168, 512/155, 512/195
				end

				if self.FolderIcon2 then
					surface.SetMaterial(self.FolderIcon2)
					surface.SetDrawColor(iconcolor)
					surface.DrawTexturedRectRotated(w/1.45, w/3.0, w/2.625*1.07, w/2.625*1.07, -18) -- 512/358, 512/155, 512/195
					surface.DrawTexturedRectRotated(w/1.45, w/3.0, w/2.625, w/2.625, -18) -- 512/358, 512/155, 512/195
				end
			end

			surface.SetDrawColor(color)
			surface.SetMaterial(self.FolderFav and self.MatFolderFrontFav or self.MatFolderFront)
			surface.DrawTexturedRect(0, 0, w, w)

			if self.FolderFav then
				surface.SetDrawColor(colorclicked)
				surface.SetMaterial(self.MatFolderHeart)
				surface.DrawTexturedRect(0, 0, w, w)
			end
		end

		-- text
		surface.SetFont("ARC9_9")
		local tw = surface.GetTextSize(text)
		surface.SetTextColor(textcolor)

		if tw > w then
			ARC9.DrawTextRot(self, text, 0, h - ARC9ScreenScale(13.5), 0, h - ARC9ScreenScale(13.5), w, false)
		else
			surface.SetTextPos((w - tw) / 2, h - ARC9ScreenScale(13.5))
			surface.DrawText(text)
		end

		if att then
			local atttbl = ARC9.GetAttTable(att)

			if atttbl.Free or GetConVar("arc9_free_atts"):GetBool() then
				free_or_lock = true
			end

			if GetConVar("arc9_atts_lock"):GetBool() then
				free_or_lock = true
			end

			if not free_or_lock and (qty > 0 or self.Installed) then
				local qtext = "x" .. tostring(qty)

				surface.SetFont("ARC9_9")
				local qtw = surface.GetTextSize(qtext)
				surface.SetTextColor(textcolor)

				surface.SetTextPos(w - qtw - ARC9ScreenScale(4), ARC9ScreenScale(1))
				surface.DrawText(qtext)
			end

			if self.Installed or qty > 0 then
			else
				surface.SetMaterial( ARC9AttButton.MatMarkerLock )
				surface.SetDrawColor( 255, 255, 255, 32 )

				local size = ARC9ScreenScale(12)
				surface.DrawTexturedRect(ARC9ScreenScale(8) - size/2, ARC9ScreenScale(8) - size/2, size, size )
			end

			if efgmCanBuy == false then return end

			if efgmValue != nil then
				local vtext = "₽" .. tostring(efgmValue)

				surface.SetFont("ARC9_6")
				local vtw = surface.GetTextSize(vtext)
				surface.SetTextColor(textcolor)

				surface.SetTextPos(w - vtw - ARC9ScreenScale(4), h - ARC9ScreenScale(22))
				surface.DrawText(vtext)
			end

			if efgmLvl != nil then
				local vtext = "Lvl " .. tostring(efgmLvl)

				surface.SetFont("ARC9_6")
				local vtw = surface.GetTextSize(vtext)
				surface.SetTextColor(textcolor)

				surface.SetTextPos(w - vtw - ARC9ScreenScale(4), h - ARC9ScreenScale(28))
				surface.DrawText(vtext)
			end

			if efgmWeight != nil then
				local vtext = efgmWeight .. "kg"

				surface.SetFont("ARC9_6")
				local vtw = surface.GetTextSize(vtext)
				surface.SetTextColor(textcolor)

				surface.SetTextPos(w - vtw - ARC9ScreenScale(4), h - ARC9ScreenScale(34))
				surface.DrawText(vtext)
			end
		end
	end

	function ARC9AttButton:OnCursorEntered()
		surface.PlaySound(hoversound)
	end

	function ARC9AttButton:SetIcon(mat)
		self.Icon = mat
	end

	function ARC9AttButton:SetButtonText(text)
		self.ButtonText = text
	end

	function ARC9AttButton:SetEmpty(bool)
		self.Empty = bool
	end

	function ARC9AttButton:SetEmptyGreyOut(bool)
		self.EmptyGreyOut = bool
	end

	function ARC9AttButton:SetOverrideHovered(bool)
		self.OverrideHovered = bool
	end

	function ARC9AttButton:SetInstalled(bool)
		self.Installed = bool
	end

	function ARC9AttButton:SetCanAttach(bool)
		self.CanAttach = bool
	end

	function ARC9AttButton:SetMissingDependents(bool)
		self.MissingDependents = bool
	end

	function ARC9AttButton:SetSlotDisplay(bool)
		self.SlotDisplay = bool
	end

	function ARC9AttButton:SetFolderContain(num)
		self.FolderContain = num
	end

	function ARC9AttButton:SetHasModes(bool)
		self.HasModes = bool
	end

	function ARC9AttButton:SetHasPaint(bool)
		self.HasPaint = bool
	end

	function ARC9AttButton:SetHasSlots(bool)
		self.HasSlots = bool
	end

	function ARC9AttButton:SetFullColorIcon(bool)
		self.FullColorIcon = bool
	end

	function ARC9AttButton:SetFolderIcon(id, mat, isfav)
		self.Icon = ARC9AttButton.MatFolderBack
		if id == 1 then self.FolderIcon1 = mat
		elseif id == 2 then self.FolderIcon2 = mat end

		if isfav then self.FolderFav = true end
	end

	vgui.Register("ARC9AttButton", ARC9AttButton, "DCheckBox")
end
