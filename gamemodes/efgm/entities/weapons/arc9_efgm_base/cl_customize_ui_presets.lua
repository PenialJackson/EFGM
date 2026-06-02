local ARC9ScreenScale = ARC9.ScreenScale

local clicksound = "arc9/newui/uimouse_click_return.ogg"
local removesound = "arc9/newui/presets/preset_sound1-delete.ogg"
local savesound = "arc9/newui/presets/preset_sound3-save.ogg"
local applysound = "arc9/newui/presets/preset_sound2-apply.ogg"

local mat_default = Material("arc9/arc9_logo.png", "mips smooth")
local mat_random = Material("arc9/ui/random.png", "mips smooth")
local nextpreset = 0

local deadzonex = GetConVar("arc9_hud_deadzonex")

function SWEP:CreatePresetMenu(reload)
	if GetConVar("arc9_atts_nocustomize"):GetBool() then return end
	if reload and self.CustomizeHUD and self.CustomizeHUD.presetpanel then self.CustomizeHUD.presetpanel:Remove() end
	if !reload and self.CustomizeHUD and self.CustomizeHUD.presetpanel then self:ClosePresetMenu() return end

	-- self.CustomizeButtons[self.CustomizeTab + 1].func(self)
	if !self.CustomizeButtons[self.CustomizeTab + 1].inspect then
		self.CustomizeButtons[1].func(self)
		self.CustomizeTab = 0
	end

	local scrw, scrh = ScrW(), ScrH()
	local bg = self.CustomizeHUD

	local presetpanel = vgui.Create("DFrame", bg)
	self.CustomizeHUD.presetpanel = presetpanel
	presetpanel:SetPos(scrw - ARC9ScreenScale(130+19) - deadzonex:GetInt(), ARC9ScreenScale(45))
	presetpanel:SetSize(ARC9ScreenScale(130), scrh-ARC9ScreenScale(145))
	presetpanel:SetTitle("")
	-- presetpanel:SetDraggable(false)
	presetpanel:ShowCloseButton(false)
	presetpanel:SetAlpha(0)
	presetpanel:AlphaTo(255, 0.1, 0, nil)

	local cornercut = ARC9ScreenScale(3.5)
	presetpanel.Paint = function(self2, w, h)
		draw.NoTexture()
		surface.SetDrawColor(ARC9.GetHUDColor("bg"))
		surface.DrawPoly({{x = cornercut, y = h},{x = 0, y = h-cornercut}, {x = 0, y = cornercut},{x = cornercut, y = 0}, {x = w-cornercut, y = 0},{x = w, y = cornercut}, {x = w, y = h-cornercut}, {x = w-cornercut, y = h}})
		-- thingy at bottom
		surface.SetDrawColor(ARC9.GetHUDColor("hi"))
		surface.DrawPoly({{x = cornercut, y = h}, {x = 0, y = h-cornercut}, {x = cornercut, y = h-cornercut*.5}})
		surface.DrawPoly({{x = w, y = h-cornercut}, {x = w-cornercut, y = h}, {x = w-cornercut, y = h-cornercut*.5}})
		surface.DrawPoly({{x = cornercut, y = h-cornercut*.5}, {x = w-cornercut, y = h-cornercut*.5}, {x = w-cornercut, y = h}, {x = cornercut, y = h}, })
		-- same thingy at top
		surface.DrawPoly({{x = 0, y = cornercut}, {x = cornercut, y = 0}, {x = cornercut, y = cornercut*.5}})
		surface.DrawPoly({{x = w-cornercut, y = 0}, {x = w, y = cornercut}, {x = w-cornercut, y = cornercut*.5}})
		surface.DrawPoly({{x = cornercut, y = 0}, {x = w-cornercut, y = 0}, {x = w-cornercut, y = cornercut*.5}, {x = cornercut, y = cornercut*.5}, })
	end

	local presetscroller = vgui.Create("ARC9ScrollPanel", presetpanel)
	presetscroller:SetSize(presetpanel:GetWide() - ARC9ScreenScale(4), presetpanel:GetTall()-ARC9ScreenScale(26))
	presetscroller:SetPos(ARC9ScreenScale(2), ARC9ScreenScale(4))
	-- presetscroller.Paint = function(self2, w, h)
	--     surface.SetDrawColor(ARC9.GetHUDColor("bg"))
	--     surface.DrawRect(0, 0, w, h)
	-- end

	local savebtn = vgui.Create("ARC9TopButton", presetpanel)
	surface.SetFont("ARC9_12")
	local savetxt = ARC9:GetPhrase("customize.presets.save")
	local importtxt = ARC9:GetPhrase("customize.presets.import")
	local tw = surface.GetTextSize(savetxt)
	local tw2 = surface.GetTextSize(importtxt)
	local ih8l18n = (presetpanel:GetWide() - tw - tw2) > ARC9ScreenScale(70) and ARC9ScreenScale(10) or 0

	savebtn:SetPos(ARC9ScreenScale(5)+ih8l18n, presetpanel:GetTall() - ARC9ScreenScale(20))
	savebtn:SetSize(ARC9ScreenScale(22)+tw, ARC9ScreenScale(21*0.75))
	savebtn:SetButtonText(savetxt, "ARC9_12")
	savebtn:SetIcon(Material("arc9/ui/save.png", "mips smooth"))
	savebtn.DoClick = function(self2)
		surface.PlaySound(savesound)
		if nextpreset > CurTime() then return end
		nextpreset = CurTime() + 1

		self:CreatePresetName()
	end
	savebtn.Think = function(self2)
		if !IsValid(self) then return end
		if self2:IsHovered() then
			self.CustomizeHints["customize.hint.select"] = "customize.hint.save"
			self.CustomizeHints["customize.hint.deselect"] = "customize.hint.quicksave"
		end
	end
	savebtn.DoRightClick = function(self2)
		if nextpreset > CurTime() then return end
		nextpreset = CurTime() + 1

		-- local txt = os.date( "%I.%M%p", os.time() )
		-- if txt:Left(1) == "0" then txt = txt:Right( #txt-1 ) end
		local txt = "Preset "
		local num = 0

		for _, preset in ipairs(self:GetPresets()) do
			local psname = self:GetPresetName(preset)
			if string.StartsWith(psname, txt) then
				local qsnum = tonumber(string.sub(psname, string.len(txt) + 1))

				-- print(string.sub(preset, string.len(txt) + 1))

				if qsnum and qsnum > num then
					num = qsnum
				end
			end
		end

		txt = txt .. tostring(num + 1)

		self:SavePreset( txt )
		surface.PlaySound("arc9/shutter.ogg")

		timer.Simple(0.5, function()
			if IsValid(self) and IsValid(self:GetOwner()) then
				self:GetOwner():ScreenFade(SCREENFADE.IN, Color(255, 255, 255, 127), 0.5, 0)
				if self:GetCustomize() then
					self:CreateHUD_Bottom()
					self:CreatePresetMenu(true)
				end
			end
		end)
	end

	local importbtn = vgui.Create("ARC9TopButton", presetpanel)
	importbtn:SetPos(presetpanel:GetWide()-(ARC9ScreenScale(22)+tw2) - ARC9ScreenScale(5) - ih8l18n , presetpanel:GetTall() - ARC9ScreenScale(20))
	importbtn:SetSize(ARC9ScreenScale(22)+tw2, ARC9ScreenScale(21*0.75))
	importbtn:SetButtonText(importtxt, "ARC9_12")
	importbtn:SetIcon(Material("arc9/ui/import.png", "mips smooth"))
	importbtn.DoClick = function(self2)
		self:CreateImportPreset()
		surface.PlaySound(clicksound)
	end
	importbtn.Think = function(self2)
		if !IsValid(self) then return end
		if self2:IsHovered() then
			self.CustomizeHints["customize.hint.select"] = "customize.hint.import"
		end
	end

	local function createpresetbtn(preset, undeletable)
		local filename = ARC9.PresetPath .. self:GetPresetBase() .. "/" .. preset .. "." .. ARC9.PresetIconFormat
		if preset != "random" and !file.Exists(filename, "DATA") then return end

		local presetName, presetCount = self:GetPresetData(preset)

		local presetAtts = self:GetAttsFromPreset(preset)
		local neededAtts = {}

		local oldcount = self:CountAttsInTree(self.Attachments or {})
		local newcount = self:CountAttsInTree(presetAtts or {})

		local efgmPresetCost = 0

		if !newcount then
			for att, attc in pairs(newcount) do
				local atttbl = ARC9.GetAttTable(att)

				if !atttbl then continue end -- doesnt exist, bc some default EFT presets have things that we remove in efgm
				if atttbl.Free then continue end
				if !EFGM.ITEMS["arc9_att_" .. att] then return end -- the item doesnt exist in EFGM, no preset for you!
				if AmountInInventory(EFGM.CLIENT.INVENTORY, "arc9_att_" .. att) > 0 then continue end -- we already have this in our inventory
				if !EFGM.ITEMS["arc9_att_" .. att].canPurchase then return end

				local has = oldcount[att] or 0
				local need = attc

				if has < need then
					local diff = need - has
					neededAtts["arc9_att_" .. att] = diff
					efgmPresetCost = efgmPresetCost + (EFGM.ITEMS["arc9_att_" .. att].value * diff)
				end
			end
		end

		local presetbtn = vgui.Create("DButton", presetscroller)
		presetbtn:SetTall(ARC9ScreenScale(36))
		presetbtn:Dock(TOP)
		presetbtn:DockMargin(0, 0, 5, 5)
		presetbtn:SetText("")
		presetbtn.DoClick = function(self2)
			if GetConVar("arc9_atts_nocustomize"):GetBool() then return end

			presetName, presetCount = self:GetPresetData(preset)

			presetAtts = self:GetAttsFromPreset(preset)
			neededAtts = {}

			oldcount = self:CountAttsInTree(self.Attachments or {})
			newcount = self:CountAttsInTree(presetAtts or {})

			efgmPresetCost = 0

			for att, attc in pairs(newcount) do
				local atttbl = ARC9.GetAttTable(att)

				if !atttbl then continue end -- doesnt exist, bc some default EFT presets have things that we remove in efgm
				if atttbl.Free then continue end
				if !EFGM.ITEMS["arc9_att_" .. att] then return end -- the item doesnt exist in EFGM, no preset for you!
				if AmountInInventory(EFGM.CLIENT.INVENTORY, "arc9_att_" .. att) > 0 then continue end -- we already have this in our inventory
				if !EFGM.ITEMS["arc9_att_" .. att].canPurchase then return end

				local has = oldcount[att] or 0
				local need = attc

				if has < need then
					local diff = need - has
					neededAtts["arc9_att_" .. att] = diff
					efgmPresetCost = efgmPresetCost + (EFGM.ITEMS["arc9_att_" .. att].value * diff)
				end
			end

			if table.IsEmpty(neededAtts) then self:LoadPreset(preset) surface.PlaySound(applysound) return end

			if !self:GetOwner():IsInHideout() then return end

			self:GetOwner():ConCommand("efgm_gamemenu inventory")
			timer.Simple(0.05, function() EFGM.MENU.ConfirmPreset(neededAtts, presetName, preset, true) end)

			-- self:LoadPreset(preset)
			-- surface.PlaySound(applysound)
		end

		if preset == "random" then
			presetbtn.name = ARC9:GetPhrase("customize.presets.random")
			presetbtn.attcount = "?"
			presetbtn.icon = mat_random
			presetbtn.def = true
			presetbtn.DoClick = function(self2)
				-- if GetConVar("arc9_atts_nocustomize"):GetBool() then return end
				-- self:NPC_Initialize()
				-- net.Start("arc9_randomizeatts")
				-- net.SendToServer()

				-- surface.PlaySound(randomizesound)

				-- timer.Simple(0.1, function() if IsValid(self) then self:CreateHUD_Bottom() end end)
			end
		else
			presetbtn.preset = preset
			presetbtn.name, presetbtn.attcount = self:GetPresetData(preset)
		end
		if presetbtn.name == "ignore" then presetbtn:Remove() return end

		if presetbtn.name == "default" then presetbtn.name = ARC9:GetPhrase("customize.presets.default") presetbtn.def = true end

		if file.Exists(filename, "DATA") then
			presetbtn.icon = Material("data/" .. filename, "smooth")
		end

		-- if presetbtn.name == "Default" then
		--     presetbtn.icon = Material("materials/arc9/arc9_sus.png")
		-- end

		presetbtn.Paint = function(self2, w, h)
			surface.SetDrawColor(ARC9.GetHUDColor("bg"))
			surface.DrawRect(0, 0, w, h)
			if self2:IsHovered() then
				if self2:IsDown() then
					surface.SetDrawColor(ARC9.GetHUDColor("hi", 100))
				end
				if !GetConVar("arc9_atts_nocustomize"):GetBool() then
					self.CustomizeHints["customize.hint.select"] = "customize.hint.install"
				end
				surface.DrawRect(0, 0, w, h)
			end
			surface.SetDrawColor(20, 20, 20, 120)
			surface.DrawRect(ARC9ScreenScale(1), ARC9ScreenScale(1), h*1.4, h - ARC9ScreenScale(2))

			surface.SetDrawColor(ARC9.GetHUDColor("fg"))
			surface.SetMaterial(presetbtn.icon or mat_default)
			surface.DrawTexturedRect(0, -h*0.2, h*1.4, h*1.4)
			-- surface.DrawTexturedRectUV(0, 0, h*1.4, h, 0, 0.2, 1, 0.8)

			surface.SetFont("ARC9_12")
			surface.SetTextColor(ARC9.GetHUDColor("fg"))
			surface.SetTextPos(h*1.4 + ARC9ScreenScale(5), 0)
			surface.DrawText(self2.name)
			surface.SetFont("ARC9_8")
			surface.SetTextPos(h*1.4 + ARC9ScreenScale(5), ARC9ScreenScale(12))
			surface.DrawText(tostring(self2.attcount) .. ARC9:GetPhrase("customize.presets.atts"))

			if self2.def or undeletable and !self2:IsHovered() and !(self2.delbutton and self2.delbutton:IsHovered()) then
				surface.SetTextColor(ARC9.GetHUDColor("fg", 75))
				surface.SetTextPos(h*1.4 + ARC9ScreenScale(5), ARC9ScreenScale(20))
				surface.DrawText(ARC9:GetPhrase("customize.presets.default.long"))
			end

			if efgmPresetCost > 0 then
				surface.SetTextColor(ARC9.GetHUDColor("fg", 75))
				surface.SetTextPos(ARC9ScreenScale(2), ARC9ScreenScale(1))
				surface.DrawText("₽" .. efgmPresetCost)
			end
		end

		-- local preset_apply = vgui.Create("ARC9TopButton", presetbtn)
		-- surface.SetFont("ARC9_10")
		-- local tw3 = surface.GetTextSize("Install")
		-- preset_apply:SetPos(presetpanel:GetWide() - ARC9ScreenScale(22) - tw3 - ARC9ScreenScale(4), presetbtn:GetTall() - ARC9ScreenScale(15))
		-- preset_apply:SetSize(ARC9ScreenScale(17) + tw3, ARC9ScreenScale(21*0.625))
		-- preset_apply:SetButtonText("Install", "ARC9_10")
		-- preset_apply:SetIcon(Material("arc9/ui/apply.png", "mips smooth"))
		-- preset_apply.DoClick = function(self2)
		--     self:LoadPreset(preset)
		--     surface.PlaySound(clicksound)
		-- end
		-- preset_apply.Think = function(self2)
		--     if !IsValid(self) then return end
		--     if self2:IsHovered() then
		--         self.CustomizeHints["customize.hint.select"] = "Install"
		--     end
		-- end

		if !undeletable and !presetbtn.def  then
			local preset_share = vgui.Create("ARC9TopButton", presetbtn)
			preset_share:SetPos(ARC9ScreenScale(69), presetbtn:GetTall() - ARC9ScreenScale(15))
			preset_share:SetSize(ARC9ScreenScale(21*0.625), ARC9ScreenScale(21*0.625))
			preset_share:SetIcon(Material("arc9/ui/share.png", "mips smooth"))
			preset_share.DoClick = function(self2)
				surface.PlaySound(clicksound)

				local f = file.Open(ARC9.PresetPath .. self:GetPresetBase() .. "/" .. preset .. ".txt", "r", "DATA")
				if !f then return end
				local str = f:Read()

				local strs = string.Split(str, "\n")

				self:CreateExportPreset("["..string.Split(strs[1], "=")[2].."]"..strs[2])
				-- self:CreateExportPreset(self:GeneratePresetExportCode())
			end
			preset_share.Think = function(self2)
				if !IsValid(self) then return end
				if self2:IsHovered() then
					self.CustomizeHints["customize.hint.select"] = "customize.hint.export"
				end
			end
		end

		if !undeletable and !presetbtn.def or undeletable and !presetbtn.def then
			local preset_delete = vgui.Create("ARC9TopButton", presetbtn)
			presetbtn.delbutton = preset_delete
			preset_delete:SetPos(ARC9ScreenScale(54), presetbtn:GetTall() - ARC9ScreenScale(15))
			preset_delete:SetSize(ARC9ScreenScale(21*0.625), ARC9ScreenScale(21*0.625))
			preset_delete:SetIcon(Material("arc9/ui/delete.png", "mips smooth"))
			preset_delete.DoClick = function(self2)
				if undeletable then
					self:CreateDeleteDefPreset(preset)
				else
					self:DeletePreset(preset)
					presetbtn:Remove()
					presetbtn = nil
					-- self:CreatePresetMenu()
					surface.PlaySound(removesound)
				end
			end
			preset_delete.Think = function(self2)
				if !IsValid(self) then return end
				if self2:IsHovered() then
					self.CustomizeHints["customize.hint.select"] = "customize.hint.delete"
				end

				if undeletable then
					if presetbtn:IsHovered() or self2:IsHovered() then
						self2:SetSize(ARC9ScreenScale(21*0.625), ARC9ScreenScale(21*0.625))
					else
						self2:SetSize(0, 0)
					end
				end
			end
		end
	end

	createpresetbtn("default", true) -- i want not only one default preset
	local presetlist = self:GetPresets()

	for _, preset in ipairs(presetlist) do
		if preset == "autosave" or preset == "default" then continue end
		createpresetbtn(preset, !tonumber(preset)) -- if preset is a number then it's a user generated, if no - standard
	end

	if GetConVar("arc9_free_atts"):GetBool() then
		createpresetbtn("random", true)
	end
end
