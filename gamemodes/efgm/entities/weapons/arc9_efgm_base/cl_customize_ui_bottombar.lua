local modesicon = Material("arc9/ui/modes.png", "mips smooth")
local camosicon = Material("arc9/ui/paint.png", "mips smooth")
local favsound = "arc9/newui/ui_part_favourite1.ogg"

function SWEP:CreateHUD_AttInfo()
	local lowerpanel = self.CustomizeHUD.lowerpanel
	-- if true then return end
	local atttbl = ARC9.GetAttTable(self.AttInfoBarAtt)

	self:ClearAttInfoBar()

	if !atttbl then return end

	local infopanel = vgui.Create("DPanel", lowerpanel)
	infopanel:SetSize(lowerpanel:GetWide(), ARC9ScreenScale(70))
	infopanel:SetPos(0, ARC9ScreenScale(75.5))
	infopanel.title = ARC9:GetPhraseForAtt(self.AttInfoBarAtt, "PrintName") or atttbl.PrintName
	infopanel.Paint = function(self2, w, h)
		if !IsValid(self) then return end
		-- surface.SetFont("ARC9_10")
		-- surface.SetTextPos(0, 0)
		-- surface.SetTextColor(ARC9.GetHUDColor("fg"))
		-- ARC9.DrawTextRot(self2, self2.title, 0, 0, ARC9ScreenScale(6), ARC9ScreenScale(3), w, true)

		markup.Parse("<font=ARC9_10>" .. self2.title):Draw(ARC9ScreenScale(6), ARC9ScreenScale(3), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
	end

	self.AttInfoBar = infopanel

	local descscroller = vgui.Create("ARC9ScrollPanel", infopanel)
	descscroller:SetSize(lowerpanel:GetWide() / 2 - ARC9ScreenScale(5), infopanel:GetTall() - ARC9ScreenScale(16))
	descscroller:SetPos(ARC9ScreenScale(4), ARC9ScreenScale(14))

	local multiline = {}
	local desc = ARC9:GetPhraseForAtt(self.AttInfoBarAtt, "Description") or atttbl.Description

	if atttbl.AdvancedCamoSupport and !self.AdvancedCamoCache then
		desc = desc .. (ARC9:GetPhrase("customize.camoslot.nosupport") or "")
		if self.EFTErgo then desc = desc .. (ARC9:GetPhrase("customize.camoslot.eftextra") or "") end
	end

	multiline = ARC9MultiLineText(desc, descscroller:GetWide() - (ARC9ScreenScale(3.5)), "ARC9_9_Slim")

	for i, text in ipairs(multiline) do
		local desc_line = vgui.Create("DPanel", descscroller)
		desc_line:SetSize(descscroller:GetWide(), ARC9ScreenScale(9))
		desc_line:Dock(TOP)
		desc_line.Paint = function(self2, w, h)
			-- surface.SetFont("ARC9_9_Slim")
			-- surface.SetTextColor(ARC9.GetHUDColor("fg"))
			-- surface.SetTextPos(ARC9ScreenScale(2), 0)
			-- surface.DrawText(text)
			markup.Parse("<font=ARC9_9_Slim>" .. text):Draw(ARC9ScreenScale(2), 0, TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
		end
	end

	local slot = self.AttInfoBarAttSlot

	local camotoggle = atttbl.AdvancedCamoSupport and self.AdvancedCamoCache

	if slot and ((atttbl.ToggleStats and !atttbl.AdvancedCamoSupport) or camotoggle) then
		local mode_toggle = vgui.Create("ARC9TopButton", infopanel)
		mode_toggle.addr = slot.Address
		surface.SetFont("ARC9_12")
		local curmode = "Togglable"
		local tw = surface.GetTextSize(curmode)
		mode_toggle:SetPos(descscroller:GetWide()/2-(ARC9ScreenScale(24)+tw)/2, ARC9ScreenScale(50))
		mode_toggle:SetSize(0, 0) -- ARC9ScreenScale(24)+tw, ARC9ScreenScale(21*0.75)
		mode_toggle:SetButtonText(curmode, "ARC9_12")
		mode_toggle:SetIcon(camotoggle and camosicon or modesicon)
		mode_toggle.DoClick = function(self2)
			-- surface.PlaySound(clicksound)
			-- self:PlayAnimation("toggle")
			self:EmitSound(camotoggle and favsound or self:RandomChoice(self:GetProcessedValue("ToggleAttSound", true)), 75, 100, 1, CHAN_ITEM)
			self:ToggleStat(self2.addr)
			self:PostModify()
		end

		mode_toggle.DoRightClick = function(self2)
			-- surface.PlaySound(clicksound)
			-- self:PlayAnimation("toggle")
			self:EmitSound(camotoggle and favsound or self:RandomChoice(self:GetProcessedValue("ToggleAttSound", true)), 75, 100, 1, CHAN_ITEM)
			self:ToggleStat(self2.addr, -1)
			self:PostModify()
		end

		mode_toggle.Think = function(self2)
			if !IsValid(self) then return end
			if self.AdvancedCamoCache == false then self2:Remove() return end

			slot = self:LocateSlotFromAddress(self2.addr)

			if !slot then return end

			if slot.Installed == self.AttInfoBarAtt then
				curmode = atttbl.ToggleStats[slot.ToggleNum] and ARC9:GetPhrase(atttbl.ToggleStats[slot.ToggleNum].PrintName) or atttbl.ToggleStats[slot.ToggleNum].PrintName or "Toggle"

				surface.SetFont("ARC9_12")
				tw = surface.GetTextSize(curmode)
				mode_toggle:SetPos(descscroller:GetWide() / 2-(ARC9ScreenScale(24) + tw) / 2, ARC9ScreenScale(50))
				mode_toggle:SetSize(ARC9ScreenScale(21) + tw, ARC9ScreenScale(21 * 0.75))
				mode_toggle:SetButtonText(curmode, "ARC9_12")
				if atttbl.ToggleStats[slot.ToggleNum].ToggleIcon then
					mode_toggle:SetIcon(atttbl.ToggleStats[slot.ToggleNum].ToggleIcon)
				end
			else
				mode_toggle:SetSize(0, 0)
			end

			if self2:IsHovered() then
				self.CustomizeHints["customize.hint.select"] = "customize.hint.nextmode"
				self.CustomizeHints["customize.hint.deselect"] = "customize.hint.lastmode"
			end

		end
		descscroller:SetSize(lowerpanel:GetWide()/2 - ARC9ScreenScale(5), infopanel:GetTall() - ARC9ScreenScale(38)) -- making desc smaller
	end


	local prosscroller = vgui.Create("ARC9ScrollPanel", infopanel)
	prosscroller:SetSize(lowerpanel:GetWide()*0.25 - ARC9ScreenScale(3), infopanel:GetTall() - ARC9ScreenScale(4))
	prosscroller:SetPos(lowerpanel:GetWide()*0.5 + ARC9ScreenScale(3), ARC9ScreenScale(3))

	local consscroller = vgui.Create("ARC9ScrollPanel", infopanel)
	consscroller:SetSize(lowerpanel:GetWide()*0.25 - ARC9ScreenScale(3), infopanel:GetTall() - ARC9ScreenScale(4))
	consscroller:SetPos(lowerpanel:GetWide()*0.75 + ARC9ScreenScale(3), ARC9ScreenScale(3))

	local prosname, prosnum, consname, consnum = ARC9.GetProsAndCons(atttbl, self)

	if table.Count(prosname) > 0 then
		lowerpanel.HasPros = true
		for k, stat in ipairs(prosname) do
			local pro_stat = vgui.Create("DPanel", prosscroller)
			pro_stat:SetSize(prosscroller:GetWide(), ARC9ScreenScale(9))
			pro_stat:Dock(TOP)
			pro_stat.text = stat
			pro_stat.Paint = function(self2, w, h)
				if !IsValid(self) then return end
				surface.SetFont("ARC9_9")
				surface.SetTextColor(ARC9.GetHUDColor("fg"))
				surface.SetTextPos(ARC9ScreenScale(2), 0)
				local tw = surface.GetTextSize(self2.text)
				ARC9.DrawTextRot(self2, self2.text, ARC9ScreenScale(2), 0, ARC9ScreenScale(2), 0, ARC9ScreenScale(110), false)

				local tw = surface.GetTextSize(prosnum[k])
				ARC9.DrawTextRot(self2, prosnum[k], 0, 0, prosscroller:GetWide()-tw-ARC9ScreenScale(6), 0, w, true)
			end
		end
	else
		lowerpanel.HasPros = nil
	end

	if table.Count(consname) > 0 then
		lowerpanel.HasCons = true
		for k, stat in ipairs(consname) do
			local con_stat = vgui.Create("DPanel", consscroller)
			con_stat:SetSize(consscroller:GetWide(), ARC9ScreenScale(9))
			con_stat:Dock(TOP)
			con_stat.text = stat
			con_stat.Paint = function(self2, w, h)
				if !IsValid(self) then return end
				surface.SetFont("ARC9_9")
				surface.SetTextColor(ARC9.GetHUDColor("fg"))
				surface.SetTextPos(ARC9ScreenScale(2), 0)
				local tw = surface.GetTextSize(self2.text)
				ARC9.DrawTextRot(self2, self2.text, ARC9ScreenScale(2), 0, ARC9ScreenScale(2), 0, ARC9ScreenScale(110), false)

				local tw = surface.GetTextSize(consnum[k])
				ARC9.DrawTextRot(self2, consnum[k], 0, 0, consscroller:GetWide()-tw-ARC9ScreenScale(6), 0, w, true)
			end
		end
	else
		lowerpanel.HasCons = nil
	end
end
