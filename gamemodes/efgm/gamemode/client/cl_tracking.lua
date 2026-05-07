local interval = 0.2

local raidPositions = {}
local killPositions = {}
local enterRaidTime = nil

EFGM.TRACKING = EFGM.TRACKING or {}

EFGM.TRACKING.inRaidLength = nil
EFGM.TRACKING.raidPositions = {}
EFGM.TRACKING.deathPosition = nil
EFGM.TRACKING.killPositions = {}

local function UpdateTrackedPosition(trackRegardless)
	if ((LocalPlayer():GetNWInt("PlayerRaidStatus", 0) == 0) and !trackRegardless) or MAPS[game.GetMap()].info == nil then return end
	table.insert(raidPositions, WorldToMapSpace(LocalPlayer():GetPos()))
end

hook.Add("efgm_raid_enter", "efgm_tracker_start", function()
	if MAPS[game.GetMap()].info == nil then return end

	UpdateTrackedPosition(false)

	EFGM.TRACKING.inRaidLength = nil
	EFGM.TRACKING.raidPositions = {}
	EFGM.TRACKING.deathPosition = nil
	EFGM.TRACKING.killPositions = {}

	enterRaidTime = SysTime()

	timer.Create("efgm_tracker", interval, 0, function()
		UpdateTrackedPosition(false)
	end)
end)

hook.Add("efgm_raid_exit", "efgm_tracker_stop", function(wasExtract)
	if MAPS[game.GetMap()].info == nil then return end

	if enterRaidTime == nil then
		EFGM.TRACKING.inRaidLength = nil
		EFGM.TRACKING.raidPositions = {}
		EFGM.TRACKING.deathPosition = nil
		EFGM.TRACKING.killPositions = {}
		enterRaidTime = nil

		return
	end

	if !wasExtract then
		UpdateTrackedPosition(true)
		EFGM.TRACKING.deathPosition = WorldToMapSpace(LocalPlayer():GetPos())
	end

	timer.Remove("efgm_tracker")

	EFGM.TRACKING.raidPositions = raidPositions
	EFGM.TRACKING.killPositions = killPositions
	EFGM.TRACKING.inRaidLength = SysTime() - enterRaidTime

	killPositions = {}
	raidPositions = {}
	enterRaidTime = nil
end)

hook.Add("entity_killed", "efgm_tracker_kill", function(data)
	if MAPS[game.GetMap()].info == nil then return end

	local attacker = data.entindex_attacker
	if attacker != LocalPlayer():EntIndex() then return end

	local pos = WorldToMapSpace(LocalPlayer():GetPos())

	local killTable = {x = pos.x, y = pos.y, time = #raidPositions}

	table.insert(killPositions, killTable)
end)
