local cvars = {}

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

local prefixClient = "efgm_"
local prefixServer = "sv_efgm_"

local cvarsClient = {}
local cvarsServer = {}

for cvar, data in pairs(cvars) do
	if data.client and CLIENT then
		local name = prefixClient .. cvar
		table.insert(cvarsClient, name)
		CreateClientConVar(name, data.default, true, data.userinfo, data.helptext, data.min, data.max)
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
