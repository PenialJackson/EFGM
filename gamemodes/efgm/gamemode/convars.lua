local cvars = {}

-- server
cvars["player_hp_max"] = {
	default = 100,
	replicated = true
}

cvars["player_hp_regen"] = {
	default = 1,
	replicated = true,
	min = 0,
	max = 1
}

cvars["player_hp_regen_tick"] = {
	default = 1,
	replicated = true
}

cvars["player_hp_regen_amount"] = {
	default = 1,
	replicated = true
}

cvars["player_hp_regen_cooldown"] = {
	default = 20,
	replicated = true
}

cvars["player_gravity"] = {
	default = .72,
	replicated = true
}

cvars["player_speed_walk"] = {
	default = 135,
	replicated = true
}

cvars["player_speed_run"] = {
	default = 220,
	replicated = true
}

cvars["player_speed_slowwalk"] = {
	default = 95,
	replicated = true
}

cvars["player_speed_crouch"] = {
	default = 0.46,
	replicated = true
}

cvars["player_speed_climb"] = {
	default = 90,
	replicated = true
}

cvars["player_jump_height"] = {
	default = 140,
	replicated = true
}

cvars["player_crouch_time_enter"] = {
	default = 0.4,
	replicated = true
}

cvars["player_crouch_time_exit"] = {
	default = 0.46,
	replicated = true
}

cvars["player_weight_threshold"] = {
	default = 30,
	replicated = true
}

cvars["damage_pistol"] = {
	default = 1,
	replicated = true
}

cvars["damage_shotgun"] = {
	default = 1,
	replicated = true
}

cvars["damage_carbine"] = {
	default = 1,
	replicated = true
}

cvars["damage_rifle"] = {
	default = 1,
	replicated = true
}

cvars["damage_bigrifle"] = {
	default = 1,
	replicated = true
}

cvars["damage_heavy"] = {
	default = 1,
	replicated = true
}

cvars["damage_massive"] = {
	default = 1,
	replicated = true
}

cvars["damage_melee"] = {
	default = 1,
	replicated = true
}

cvars["damage_explosive"] = {
	default = 1,
	replicated = true
}

cvars["weapons_range"] = {
	default = 160,
	replicated = true
}

cvars["weapons_range_shotgun"] = {
	default = 40,
	replicated = true
}

cvars["weapons_ergonomics"] = {
	default = 1,
	replicated = true
}

cvars["weapons_flash_time"] = {
	default = 1,
	replicated = true
}

cvars["raid_players_min"] = {
	default = 3,
	replicated = true
}

cvars["squads_players_max"] = {
	default = 4,
	replicated = true
}

cvars["timers_respawn"] = {
	default = 7,
	replicated = true,
	max = 255
}

cvars["timers_respawn_hideout"] = {
	default = 3,
	replicated = true,
	max = 255
}

cvars["timers_invite"] = {
	default = 5,
	replicated = true,
	max = 255
}

cvars["market_sell_mult"] = {
	default = 0.5,
	replicated = true
}

-- client
cvars["music"] = {
	client = true,
	default = 1,
	min = 0,
	max = 1
}

cvars["music_volume"] = {
	client = true,
	default = 1,
	min = 0,
	max = 2
}

cvars["hud"] = {
	client = true,
	default = 1,
	min = 0,
	max = 1
}

cvars["hud_scale"] = {
	client = true,
	default = 1,
	min = 0.5,
	max = 2
}

cvars["hud_padding"] = {
	client = true,
	default = 0,
	min = 0,
	max = 100
}

cvars["menu_parallax"] = {
	client = true,
	default = 1,
	min = 0,
	max = 1
}

cvars["menu_scale_method"] = {
	client = true,
	default = 1,
	min = 0,
	max = 1
}

cvars["menu_prompts_delete"] = {
	client = true,
	default = 1,
	min = 0,
	max = 1
}

cvars["menu_search_auto"] = {
	client = true,
	default = 1,
	min = 0,
	max = 1
}

cvars["menu_close_on_hit"] = {
	client = true,
	default = 1,
	min = 0,
	max = 1
}

cvars["menu_tabs_save_hideout"] = {
	client = true,
	default = 1,
	min = 0,
	max = 1
}

cvars["menu_tabs_save_raid"] = {
	client = true,
	default = 0,
	min = 0,
	max = 1
}

cvars["visuals_ads_fov"] = {
	client = true,
	default = 1,
	min = 0,
	max = 1
}

cvars["visuals_hq_impacts"] = {
	client = true,
	default = 1,
	min = 0,
	max = 1
}

cvars["visuals_hq_flashlight"] = {
	client = true,
	default = 0,
	min = 0,
	max = 1
}

cvars["visuals_lens_flare"] = {
	client = true,
	default = 1,
	min = 0,
	max = 1
}

cvars["visuals_glow_interactables"] = {
	client = true,
	default = 1,
	min = 0,
	max = 1
}

cvars["controls_toggle_duck"] = {
	client = true,
	default = 0,
	min = 0,
	max = 1
}

cvars["controls_toggle_lean"] = {
	client = true,
	default = 1,
	userinfo = true,
	min = 0,
	max = 1
}

cvars["privacy_invites_squad"] = {
	client = true,
	default = 2,
	userinfo = true,
	min = 0,
	max = 2
}

cvars["privacy_invites_duel"] = {
	client = true,
	default = 2,
	userinfo = true,
	min = 0,
	max = 2
}

cvars["privacy_invites_blocked"] = {
	client = true,
	default = 0,
	userinfo = true,
	min = 0,
	max = 1
}

cvars["infil_near_end_block"] = {
	client = true,
	default = 1,
	userinfo = true,
	min = 0,
	max = 1
}

cvars["infil_near_end_block_limit"] = {
	client = true,
	default = 60,
	userinfo = true,
	min = 30,
	max = 180
}

-- binds
cvars["bind_menu"] = {
	client = true,
	default = KEY_TAB,
	userinfo = true
}

cvars["bind_map"] = {
	client = true,
	default = KEY_M,
	userinfo = true
}

cvars["bind_extracts"] = {
	client = true,
	default = KEY_O,
	userinfo = true
}

cvars["bind_lean_left"] = {
	client = true,
	default = KEY_Q,
	userinfo = true
}

cvars["bind_lean_right"] = {
	client = true,
	default = KEY_E,
	userinfo = true
}

cvars["bind_free_look"] = {
	client = true,
	default = MOUSE_MIDDLE,
	userinfo = true
}

cvars["bind_switch_sight"] = {
	client = true,
	default = MOUSE_MIDDLE,
	userinfo = true
}

cvars["bind_firemode"] = {
	client = true,
	default = KEY_B,
	userinfo = true
}

cvars["bind_inspect"] = {
	client = true,
	default = KEY_I,
	userinfo = true
}

cvars["bind_ubgl"] = {
	client = true,
	default = KEY_N,
	userinfo = true
}

cvars["bind_invite_team"] = {
	client = true,
	default = KEY_F3,
	userinfo = true
}

cvars["bind_invite_duel"] = {
	client = true,
	default = KEY_F4,
	userinfo = true
}

cvars["bind_invite_accept"] = {
	client = true,
	default = KEY_F1,
	userinfo = true
}

cvars["bind_invite_decline"] = {
	client = true,
	default = KEY_F2,
	userinfo = true
}

cvars["bind_profile"] = {
	client = true,
	default = KEY_P,
	userinfo = true
}

cvars["bind_equip_primary"] = {
	client = true,
	default = KEY_1,
	userinfo = true
}

cvars["bind_equip_secondary"] = {
	client = true,
	default = KEY_2,
	userinfo = true
}

cvars["bind_equip_holster"] = {
	client = true,
	default = KEY_3,
	userinfo = true
}

cvars["bind_equip_melee"] = {
	client = true,
	default = KEY_4,
	userinfo = true
}

cvars["bind_equip_throwable"] = {
	client = true,
	default = KEY_5,
	userinfo = true
}

cvars["bind_equip_consumable"] = {
	client = true,
	default = KEY_H,
	userinfo = true
}

cvars["bind_menu_tab_previous"] = {
	client = true,
	default = KEY_Q,
	userinfo = true
}

cvars["bind_menu_tab_next"] = {
	client = true,
	default = KEY_E,
	userinfo = true
}

cvars["bind_menu_page_previous"] = {
	client = true,
	default = KEY_A,
	userinfo = true
}

cvars["bind_menu_page_next"] = {
	client = true,
	default = KEY_D,
	userinfo = true
}

cvars["bind_menu_item_drop"] = {
	client = true,
	default = KEY_DELETE,
	userinfo = true
}

cvars["bind_menu_item_delete"] = {
	client = true,
	default = KEY_DELETE,
	userinfo = true
}

local prefixClient = "efgm_"
local prefixServer = "sv_efgm_"

local cvarsClient = {}
local cvarsServer = {}

for cvar, data in pairs(cvars) do
	if data.client and CLIENT then
		local name = prefixClient .. cvar
		table.insert(cvarsClient, name)
		CreateClientConVar(name, data.default, data.save != false, data.userinfo, data.helptext, data.min, data.max)
	else
		local name = prefixServer .. cvar
		local flags = FCVAR_NONE

		if data.save != false then flags = flags + FCVAR_ARCHIVE end
		if data.replicated then flags = flags + FCVAR_REPLICATED end
		if data.userinfo then flags = flags + FCVAR_USERINFO end

		table.insert(cvarsServer, name)
		CreateConVar(name, data.default, flags, data.helptext, data.min, data.max)
	end
end

if CLIENT then
	local function ResetSettingsClient()
		for _, cvar in pairs(cvarsClient) do
			RunConsoleCommand(cvar, GetConVar(cvar):GetDefault())
		end
	end
	concommand.Add("efgm_settings_reset", function(ply, cmd, args) ResetSettingsClient() end)
end

local function ResetSettingsServer()
	for _, cvar in pairs(cvarsServer) do
		GetConVar(cvar):Revert()
	end
end
concommand.Add("sv_efgm_settings_reset", function(ply, cmd, args) ResetSettingsServer() end)
