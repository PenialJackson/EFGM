if CLIENT then
	-- toggle crouch
	local toggleDuckCvar = GetConVar("efgm_controls_toggle_duck")

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

	cvars.AddChangeCallback("efgm_controls_toggle_duck", function(name, old, new)
		if new == "1" then
			CreateToggleDuckHook()
		else
			hook.Remove("PlayerBindPress", "ToggleDuck")
		end
	end)
end

local sp = game.SinglePlayer()

hook.Add("PlayerButtonDown", "EFGMBinds", function(ply, button)
	if (CLIENT or sp) and IsFirstTimePredicted() then
		if !IsFirstTimePredicted() then return end

		-- toggle menu
		if button == ply:GetInfoNum("efgm_bind_menu", KEY_TAB) then
			RunConsoleCommand("efgm_gamemenu")
		end

		-- open menu to map
		if button == ply:GetInfoNum("efgm_bind_map", KEY_M) then
			RunConsoleCommand("efgm_gamemenu", "match")
		end

		-- show raid information
		if button == ply:GetInfoNum("efgm_bind_extracts", KEY_O) then
			if SERVER then return end
			RenderExtracts()
		end

		-- switching sights
		if button == ply:GetInfoNum("efgm_bind_switch_sight", MOUSE_MIDDLE) then
			RunConsoleCommand("+arc9_switchsights")
		end

		-- toggle fire modes
		if button == ply:GetInfoNum("efgm_bind_firemode", KEY_B) then
			RunConsoleCommand("+zoom")
		end

		-- free looking
		if button == ply:GetInfoNum("efgm_bind_free_look", MOUSE_MIDDLE) then
			RunConsoleCommand("+freelook")
		end

		-- weapon inspecting
		if button == ply:GetInfoNum("efgm_bind_inspect", KEY_I) then
			RunConsoleCommand("+arc9_inspect")
		end

		-- toggle ubgl
		if button == ply:GetInfoNum("efgm_bind_ubgl", KEY_N) then
			RunConsoleCommand("+arc9_ubgl")
		end

		-- team inviting
		if button == ply:GetInfoNum("efgm_bind_invite_team", KEY_F3) then
			if !ply:Alive() or !ply:IsInHideout() then return end

			local ent = ply:GetEyeTrace().Entity
			if !IsValid(ent) then return end
			if !ent:IsPlayer() then return end
			if ent:IsInRaid() then return end

			InvitePlayerToSquad(ent)
		end

		-- duel inviting
		if button == ply:GetInfoNum("efgm_bind_invite_duel", KEY_F4) then
			if !ply:Alive() or !ply:IsInHideout() then return end

			local ent = ply:GetEyeTrace().Entity
			if !IsValid(ent) then return end
			if !ent:IsPlayer() then return end
			if ent:IsInRaid() then return end

			InvitePlayerToDuel(ent)
		end

		-- view profile
		if button == ply:GetInfoNum("efgm_bind_profile", KEY_P) then
			if !ply:Alive() or !ply:IsInHideout() then return end

			local ent = ply:GetEyeTrace().Entity
			if !IsValid(ent) then return end
			if !ent:IsPlayer() then return end
			if ent:IsInRaid() then return end

			CreateNotification("I do not work yet LOL!", MATS.dontEvenAsk, "ui/boo.wav")
		end

		-- accept invite
		if button == ply:GetInfoNum("efgm_bind_invite_accept", KEY_F3) then
			if !ply:Alive() or !ply:IsInHideout() then return end

			AcceptInvite()
		end

		-- decline invite
		if button == ply:GetInfoNum("efgm_bind_invite_decline", KEY_F4) then
			if !ply:Alive() or !ply:IsInHideout() then return end

			DeclineInvite()
		end

		-- equip primary
		if button == ply:GetInfoNum("efgm_bind_equip_primary", KEY_1) then
			RunConsoleCommand("efgm_inventory_equip", tostring(WEAPONSLOTS.PRIMARY.ID), "1")
		end

		-- equip secondary
		if button == ply:GetInfoNum("efgm_bind_equip_secondary", KEY_2) then
			RunConsoleCommand("efgm_inventory_equip", tostring(WEAPONSLOTS.PRIMARY.ID), "2")
		end

		-- equip holster
		if button == ply:GetInfoNum("efgm_bind_equip_holster", KEY_3) then
			RunConsoleCommand("efgm_inventory_equip", tostring(WEAPONSLOTS.HOLSTER.ID))
		end

		-- equip melee
		if button == ply:GetInfoNum("efgm_bind_equip_melee", KEY_4) then
			RunConsoleCommand("efgm_inventory_equip", tostring(WEAPONSLOTS.MELEE.ID))
		end

		-- equip grenade
		if button == ply:GetInfoNum("efgm_bind_equip_throwable", KEY_5) then
			RunConsoleCommand("efgm_inventory_equip", tostring(WEAPONSLOTS.GRENADE.ID))
		end

		-- equip consumable
		if button == ply:GetInfoNum("efgm_bind_equip_consumable", KEY_H) then
			RunConsoleCommand("efgm_inventory_equip", tostring(WEAPONSLOTS.CONSUMABLE.ID))
		end
	end

	-- lean left
	if button == ply:GetInfoNum("efgm_bind_lean_left", KEY_Q) then
		if ply:GetInfoNum("efgm_controls_toggle_lean", 1) == 0 then
			ply:SetNW2Var("leaning_left", true)
		else
			local state = !ply:GetNW2Var("leaning_left", false)
			ply:SetNW2Var("leaning_left", state)
			ply:SetNW2Var("leaning_right", false)
		end
	end

	-- lean right
	if button == ply:GetInfoNum("efgm_bind_lean_right", KEY_E) then
		if ply:GetInfoNum("efgm_controls_toggle_lean", 1) == 0 then
			ply:SetNW2Var("leaning_right", true)
		else
			local state = !ply:GetNW2Var("leaning_right", false)
			ply:SetNW2Var("leaning_right", state)
			ply:SetNW2Var("leaning_left", false)
		end
	end
end)

hook.Add("PlayerButtonUp", "EFGMBindsUp", function(ply, button)
	if (CLIENT or sp) and IsFirstTimePredicted() then
		-- switching sights
		if button == ply:GetInfoNum("efgm_bind_switch_sight", MOUSE_MIDDLE) then
			RunConsoleCommand("-arc9_switchsights")
		end

		-- toggle fire modes
		if button == ply:GetInfoNum("efgm_bind_firemode", KEY_B) then
			RunConsoleCommand("-zoom")
		end

		-- free looking
		if button == ply:GetInfoNum("efgm_bind_free_look", MOUSE_MIDDLE) then
			RunConsoleCommand("-freelook")
		end

		-- weapon inspecting
		if button == ply:GetInfoNum("efgm_bind_inspect", KEY_I) then
			RunConsoleCommand("-arc9_inspect")
		end

		-- toggle ubgl
		if button == ply:GetInfoNum("efgm_bind_ubgl", KEY_N) then
			RunConsoleCommand("-arc9_ubgl")
		end
	end

	-- unlean left
	if button == ply:GetInfoNum("efgm_bind_lean_left", KEY_Q) then
		if ply:GetInfoNum("efgm_controls_toggle_lean", 1) == 1 then return end
		ply:SetNW2Var("leaning_left", false)
	end

	-- unlean right
	if button == ply:GetInfoNum("efgm_bind_lean_right", KEY_E) then
		if ply:GetInfoNum("efgm_controls_toggle_lean", 1) == 1 then return end
		ply:SetNW2Var("leaning_right", false)
	end
end)
