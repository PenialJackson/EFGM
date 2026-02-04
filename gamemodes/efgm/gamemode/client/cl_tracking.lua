local interval = 0.2

local raidPositions = {}
local killPositions = {}
local enterRaidTime = nil

Tracking = Tracking or {}

Tracking.inRaidLength = nil
Tracking.raidPositions = {}
Tracking.deathPosition = nil
Tracking.killPositions = {}

local function UpdateTrackedPosition(trackRegardless)
	if ((LocalPlayer():GetNWInt("PlayerRaidStatus", 0) == 0) and !trackRegardless) or MAPINFO[game.GetMap()] == nil then return end
	table.insert(raidPositions, WorldToMapSpace(LocalPlayer():GetPos()))
end

hook.Add("efgm_raid_enter", "efgm_tracker_start", function()
	if MAPINFO[game.GetMap()] == nil then return end

	UpdateTrackedPosition(false)

	Tracking.inRaidLength = nil
	Tracking.raidPositions = {}
	Tracking.deathPosition = nil
	Tracking.killPositions = {}

	enterRaidTime = SysTime()

	timer.Create("efgm_tracker", interval, 0, function()
		UpdateTrackedPosition(false)
	end)
end)

hook.Add("efgm_raid_exit", "efgm_tracker_stop", function(wasExtract)
	if MAPINFO[game.GetMap()] == nil then return end

	if enterRaidTime == nil then
		Tracking.inRaidLength = nil
		Tracking.raidPositions = {}
		Tracking.deathPosition = nil
		Tracking.killPositions = {}
		enterRaidTime = nil

		return
	end

	if !wasExtract then
		UpdateTrackedPosition(true)
		Tracking.deathPosition = WorldToMapSpace(LocalPlayer():GetPos())
	end

	timer.Remove("efgm_tracker")

	Tracking.raidPositions = raidPositions
	Tracking.killPositions = killPositions
	Tracking.inRaidLength = SysTime() - enterRaidTime

	killPositions = {}
	raidPositions = {}
	enterRaidTime = nil
end)

hook.Add("entity_killed", "efgm_tracker_kill", function(data)
	if MAPINFO[game.GetMap()] == nil then return end

	local attacker = data.entindex_attacker
	if attacker != LocalPlayer():EntIndex() then return end
	if !attacker:IsInRaid() then return end

	local pos = WorldToMapSpace(LocalPlayer():GetPos())

	local killTable = {x = pos.x, y = pos.y, time = #raidPositions}

	table.insert(killPositions, killTable)
end)