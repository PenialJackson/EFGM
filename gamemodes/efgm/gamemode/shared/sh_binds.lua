-- self explanitory (erm actually its explanatory 🤓) (fuck off porty)
if CLIENT then
	CreateClientConVar("efgm_bind_menu", KEY_TAB, true, true, "Determines the keybind that will display the menu")
	CreateClientConVar("efgm_bind_map", KEY_M, true, true, "Determines the keybind that will display the map menu")
	CreateClientConVar("efgm_bind_raidinfo", KEY_O, true, true, "Determines the keybind that will display available extracts and time remaining in the raid")
	CreateClientConVar("efgm_bind_leanleft", KEY_Q, true, true, "Determines the keybind that will begin a left lean")
	CreateClientConVar("efgm_bind_leanright", KEY_E, true, true, "Determines the keybind that will begin a right lean")
	CreateClientConVar("efgm_bind_freelook", MOUSE_MIDDLE, true, true, "Determines the keybind that will begin a free look")
	CreateClientConVar("efgm_bind_changesight", MOUSE_MIDDLE, true, true, "Determines the keybind that adjusts the zoom/reticle of your weapons sight")
	CreateClientConVar("efgm_bind_changefiremode", KEY_B, true, true, "Determines the keybind that toggles between available fire modes for your weapon")
	CreateClientConVar("efgm_bind_inspectweapon", KEY_I, true, true, "Determines the keybind that inspects your weapon")
	CreateClientConVar("efgm_bind_toggleubgl", KEY_N, true, true, "Determines the keybind that toggles to and from your UBGL")
	CreateClientConVar("efgm_bind_teaminvite", KEY_F3, true, true, "Determines the keybind that invites someone to your team")
	CreateClientConVar("efgm_bind_duelinvite", KEY_F4, true, true, "Determines the keybind that invites someone to a duel")
	CreateClientConVar("efgm_bind_viewprofile", KEY_P, true, true, "Determines the keybind that opens another players profile while looking at them")
	CreateClientConVar("efgm_bind_invites_accept", KEY_F1, true, true, "Determines the keybind that accepts an invite")
	CreateClientConVar("efgm_bind_invites_decline", KEY_F2, true, true, "Determines the keybind that declines an invite")
	CreateClientConVar("efgm_bind_dropitem", KEY_DELETE, true, true, "Determines the keybind that drops the hovered item in the menu")
	CreateClientConVar("efgm_bind_deleteitem", KEY_DELETE, true, true, "Determines the keybind that deletes the hovered item in the menu")

	CreateClientConVar("efgm_bind_equip_primary1", KEY_1, true, true, "Determines the keybind that equips your first primary")
	CreateClientConVar("efgm_bind_equip_primary2", KEY_2, true, true, "Determines the keybind that equips your second primary")
	CreateClientConVar("efgm_bind_equip_secondary", KEY_3, true, true, "Determines the keybind that equips your secondary")
	CreateClientConVar("efgm_bind_equip_melee", KEY_4, true, true, "Determines the keybind that equips your melee")
	CreateClientConVar("efgm_bind_equip_utility", KEY_5, true, true, "Determines the keybind that equips your grenade")
	CreateClientConVar("efgm_bind_equip_consumable", KEY_H, true, true, "Determines the keybind that equips your consumable item")

	-- toggle crouch
	local toggleDuckCvar = GetConVar("efgm_controls_toggleduck")

	local function CreateToggleDuckHook()
		hook.Add("PlayerBindPress", "ToggleDuck", function(ply, bind, pressed)
			if !toggleDuckCvar:GetBool() then hook.Remove("PlayerBindPress", "ToggleDuck") return end

			if string.find(bind, "+duck") and ply:Crouching() == false then
				RunConsoleCommand("+duck")
			elseif string.find(bind, "+duck") and ply:Crouching() == true then
				RunConsoleCommand("-duck")
			end
		end)
	end

	CreateToggleDuckHook()

	cvars.AddChangeCallback("efgm_controls_toggleduck", function(convar_name, value_old, value_new)
		if value_new == "1" then
			CreateToggleDuckHook()
		else
			hook.Remove("PlayerBindPress", "ToggleDuck")
		end
	end)
end

local sp = game.SinglePlayer()

hook.Add("PlayerButtonDown", "EFGMBinds", function(ply, button)
	if !IsFirstTimePredicted() and !sp then return end

	if CLIENT or sp then
		-- toggle menu
		if button == ply:GetInfoNum("efgm_bind_menu", KEY_TAB) then
			RunConsoleCommand("efgm_gamemenu")
		end

		-- open menu to map
		if button == ply:GetInfoNum("efgm_bind_map", KEY_M) then
			RunConsoleCommand("efgm_gamemenu", "match")
		end

		-- show raid information
		if button == ply:GetInfoNum("efgm_bind_raidinfo", KEY_O) then
			RenderExtracts()
		end

		-- switching sights
		if button == ply:GetInfoNum("efgm_bind_changesight", MOUSE_MIDDLE) then
			RunConsoleCommand("+arc9_switchsights")
		end

		-- toggle fire modes
		if button == ply:GetInfoNum("efgm_bind_changefiremode", KEY_B) then
			RunConsoleCommand("+zoom")
		end

		-- free looking
		if button == ply:GetInfoNum("efgm_bind_freelook", MOUSE_MIDDLE) then
			RunConsoleCommand("+freelook")
		end

		-- weapon inspecting
		if button == ply:GetInfoNum("efgm_bind_inspectweapon", KEY_I) then
			RunConsoleCommand("+arc9_inspect")
		end

		-- toggle ubgl
		if button == ply:GetInfoNum("efgm_bind_toggleubgl", KEY_N) then
			RunConsoleCommand("+arc9_ubgl")
		end

		-- team inviting
		if button == ply:GetInfoNum("efgm_bind_teaminvite", KEY_F3) then
			if !ply:Alive() or !ply:IsInHideout() then return end

			local ent = ply:GetEyeTrace().Entity
			if !IsValid(ent) then return end
			if !ent:IsPlayer() then return end
			if ent:IsInRaid() then return end

			InvitePlayerToSquad(ent)
		end

		-- duel inviting
		if button == ply:GetInfoNum("efgm_bind_duelinvite", KEY_F4) then
			if !ply:Alive() or !ply:IsInHideout() then return end

			local ent = ply:GetEyeTrace().Entity
			if !IsValid(ent) then return end
			if !ent:IsPlayer() then return end
			if ent:IsInRaid() then return end

			InvitePlayerToDuel(ent)
		end

		-- view profile
		if button == ply:GetInfoNum("efgm_bind_viewprofile", KEY_P) then
			if !ply:Alive() or !ply:IsInHideout() then return end

			local ent = ply:GetEyeTrace().Entity
			if !IsValid(ent) then return end
			if !ent:IsPlayer() then return end
			if ent:IsInRaid() then return end

			CreateNotification("I do not work yet LOL!", Mats.dontEvenAsk, "ui/boo.wav")
		end

		-- accept invite
		if button == ply:GetInfoNum("efgm_bind_invites_accept", KEY_F3) then
			if !ply:Alive() or !ply:IsInHideout() then return end

			AcceptInvite()
		end

		-- decline invite
		if button == ply:GetInfoNum("efgm_bind_invites_decline", KEY_F4) then
			if !ply:Alive() or !ply:IsInHideout() then return end

			DeclineInvite()
		end

		-- equip primary
		if button == ply:GetInfoNum("efgm_bind_equip_primary1", KEY_1) then
			RunConsoleCommand("efgm_inventory_equip", tostring(WEAPONSLOTS.PRIMARY.ID), "1")
		end

		-- equip secondary
		if button == ply:GetInfoNum("efgm_bind_equip_primary2", KEY_2) then
			RunConsoleCommand("efgm_inventory_equip", tostring(WEAPONSLOTS.PRIMARY.ID), "2")
		end

		-- equip holster
		if button == ply:GetInfoNum("efgm_bind_equip_secondary", KEY_3) then
			RunConsoleCommand("efgm_inventory_equip", tostring(WEAPONSLOTS.HOLSTER.ID))
		end

		-- equip melee
		if button == ply:GetInfoNum("efgm_bind_equip_melee", KEY_4) then
			RunConsoleCommand("efgm_inventory_equip", tostring(WEAPONSLOTS.MELEE.ID))
		end

		-- equip grenade
		if button == ply:GetInfoNum("efgm_bind_equip_utility", KEY_5) then
			RunConsoleCommand("efgm_inventory_equip", tostring(WEAPONSLOTS.GRENADE.ID))
		end

		-- equip consumable
		if button == ply:GetInfoNum("efgm_bind_equip_consumable", KEY_H) then
			RunConsoleCommand("efgm_inventory_equip", tostring(WEAPONSLOTS.CONSUMABLE.ID))
		end
	end

	-- lean left
	if button == ply:GetInfoNum("efgm_bind_leanleft", KEY_Q) then
		if ply:GetInfoNum("efgm_controls_togglelean", 1) == 0 then
			ply:SetNW2Var("leaning_left", true)
		else
			local state = !ply:GetNW2Var("leaning_left", false)
			ply:SetNW2Var("leaning_left", state)
			ply:SetNW2Var("leaning_right", false)
		end
	end

	-- lean right
	if button == ply:GetInfoNum("efgm_bind_leanright", KEY_E) then
		if ply:GetInfoNum("efgm_controls_togglelean", 1) == 0 then
			ply:SetNW2Var("leaning_right", true)
		else
			local state = !ply:GetNW2Var("leaning_right", false)
			ply:SetNW2Var("leaning_right", state)
			ply:SetNW2Var("leaning_left", false)
		end
	end
end)

hook.Add("PlayerButtonUp", "EFGMBindsUp", function(ply, button)
	if !IsFirstTimePredicted() and !sp then return end

	if CLIENT or sp then
		-- switching sights
		if button == ply:GetInfoNum("efgm_bind_changesight", MOUSE_MIDDLE) then
			RunConsoleCommand("-arc9_switchsights")
		end

		-- toggle fire modes
		if button == ply:GetInfoNum("efgm_bind_changefiremode", KEY_B) then
			RunConsoleCommand("-zoom")
		end

		-- free looking
		if button == ply:GetInfoNum("efgm_bind_freelook", MOUSE_MIDDLE) then
			RunConsoleCommand("-freelook")
		end

		-- weapon inspecting
		if button == ply:GetInfoNum("efgm_bind_inspectweapon", KEY_I) then
			RunConsoleCommand("-arc9_inspect")
		end

		-- toggle ubgl
		if button == ply:GetInfoNum("efgm_bind_toggleubgl", KEY_N) then
			RunConsoleCommand("-arc9_ubgl")
		end
	end

	-- unlean left
	if button == ply:GetInfoNum("efgm_bind_leanleft", KEY_Q) then
		if ply:GetInfoNum("efgm_controls_togglelean", 1) == 1 then return end
		ply:SetNW2Var("leaning_left", false)
	end

	-- unlean right
	if button == ply:GetInfoNum("efgm_bind_leanright", KEY_E) then
		if ply:GetInfoNum("efgm_controls_togglelean", 1) == 1 then return end
		ply:SetNW2Var("leaning_right", false)
	end
end)