EFGM.STATS = EFGM.STATS or {}

local plyMeta = FindMetaTable("Player")

EFGM.STATS["Level"] = {
	["name"] = "Level",
	["type"] = "integer",
	["default"] = 1,
	["trackAllTime"] = false,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["Experience"] = {
	["name"] = "Experience",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = false,

	["showProfile"] = false,
	["showLeaderboard"] = false
}

EFGM.STATS["StashMax"] = {
	["name"] = "Stash Space",
	["type"] = "integer",
	["default"] = 2400,
	["trackAllTime"] = false,

	["showProfile"] = false,
	["showLeaderboard"] = false
}

EFGM.STATS["Money"] = {
	["name"] = "Money",
	["type"] = "integer",
	["default"] = 100000000,
	["trackAllTime"] = false,

	["showProfile"] = false,
	["showLeaderboard"] = false
}

EFGM.STATS["MoneyEarned"] = {
	["name"] = "Money Earned",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["MoneySpent"] = {
	["name"] = "Money Spent",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["Time"] = {
	["name"] = "Time Played",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["TimeOnline"] = {
	["name"] = "Time Online",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["StashValue"] = {
	["name"] = "Stash Value",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = false,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["HighestStashValue"] = {
	["name"] = "Highest Stash Value",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["ItemsLooted"] = {
	["name"] = "Items Looted",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["ContainersLooted"] = {
	["name"] = "Containers Opened",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["KeysUsed"] = {
	["name"] = "Keys Used",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["Kills"] = {
	["name"] = "Kills",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["Deaths"] = {
	["name"] = "Deaths",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["Suicides"] = {
	["name"] = "Suicides",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["DamageDealt"] = {
	["name"] = "Damage Dealt",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["DamageRecieved"] = {
	["name"] = "Damage Recieved",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["HealthHealed"] = {
	["name"] = "Health Recieved",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["ShotsFired"] = {
	["name"] = "Shots Fired",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["ShotsHit"] = {
	["name"] = "Shots Hit",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["Headshots"] = {
	["name"] = "Headshots",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["FarthestKill"] = {
	["name"] = "Farthest Kill",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["Extractions"] = {
	["name"] = "Extractions",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["Quits"] = {
	["name"] = "Quits",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["RaidsPlayed"] = {
	["name"] = "Raids Played",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["DuelsPlayed"] = {
	["name"] = "Duels Played",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["DuelsWon"] = {
	["name"] = "Duels Won",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["CurrentKillStreak"] = {
	["name"] = "Current Kill Streak",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = false,

	["showProfile"] = true,
	["showLeaderboard"] = false
}

EFGM.STATS["BestKillStreak"] = {
	["name"] = "Best Kill Streak",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["CurrentExtractionStreak"] = {
	["name"] = "Current Extraction Streak",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = false,

	["showProfile"] = true,
	["showLeaderboard"] = false
}

EFGM.STATS["BestExtractionStreak"] = {
	["name"] = "Best Extraction Streak",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

EFGM.STATS["CurrentDuelWinStreak"] = {
	["name"] = "Current Duel Win Streak",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = false,

	["showProfile"] = true,
	["showLeaderboard"] = false
}

EFGM.STATS["BestDuelWinStreak"] = {
	["name"] = "Best Duel Win Streak",
	["type"] = "integer",
	["default"] = 0,
	["trackAllTime"] = true,

	["showProfile"] = true,
	["showLeaderboard"] = true
}

if CLIENT then return end

EFGM.SERVER.PLAYERTIMEJOINED = EFGM.SERVER.PLAYERTIMEJOINED or {}

function plyMeta:SetJoinTime()
	local id = self:SteamID64()
	local time = os.time()

	EFGM.SERVER.PLAYERTIMEJOINED[id] = time
end

hook.Add("PlayerInitialSpawn", "SetJoinTime", function(ply)
	ply:SetJoinTime()
end)

function plyMeta:CalculateTimeOnline()
	local id = self:SteamID64()
	local time = os.time()
	local timeJoined = EFGM.SERVER.PLAYERTIMEJOINED[id]

	if timeJoined == nil then return end

	local timeOnline = time - timeJoined

	self:AddToStat("TimeOnline", timeOnline)
	EFGM.SERVER.PLAYERTIMEJOINED[id] = nil
end

function plyMeta:AddToStat(stat, value)
	local data = EFGM.STATS[stat]
	if !data then return end

	local type = data.type
	local default = data.default
	local allTime = data.trackAllTime

	if type == "integer" then
		local newValue = self:GetNWInt(stat, default) + value
		local allValue = self:GetNWInt("ALL_" .. stat, default)

		self:SetNWInt(stat, newValue)

		if allTime and newValue > allValue then
			self:SetNWInt("ALL_" .. stat, newValue)
		end
	elseif type == "float" then
		local newValue = self:GetNWFloat(stat, default) + value
		local allValue = self:GetNWFloat("ALL_" .. stat, default)

		self:SetNWFloat(stat, newValue)

		if allTime and newValue > allValue then
			self:SetNWFloat("ALL_" .. stat, newValue)
		end
	end
end

function plyMeta:SetStat(stat, value)
	local data = EFGM.STATS[stat]
	if !data then return end

	local type = data.type
	local default = data.default
	local allTime = data.trackAllTime

	if type == "integer" then
		local allValue = self:GetNWInt("ALL_" .. stat, default)

		self:SetNWInt(stat, value)

		if allTime and value > allValue then
			self:SetNWInt("ALL_" .. stat, value)
		end
	elseif type == "float" then
		local allValue = self:GetNWFloat("ALL_" .. stat, default)

		self:SetNWFloat(stat, value)

		if allTime and value > allValue then
			self:SetNWFloat("ALL_" .. stat, value)
		end
	elseif type == "bool" then
		self:SetNWBool(stat, value)
	elseif type == "string" then
		self:SetNWString(stat, value)
	end
end

function plyMeta:GetStat(stat)
	local data = EFGM.STATS[stat]
	if !data then return end

	local type = data.type
	local default = data.default

	if type == "integer" then
		self:GetNWInt(stat, default)
	elseif type == "float" then
		self:GetNWFloat(stat, default)
	elseif type == "bool" then
		self:GetNWBool(stat, default)
	elseif type == "string" then
		self:GetNWString(stat, default)
	end
end

function plyMeta:ResetRaidStats()
	self:SetNWInt("RaidDamageDealt", 0)
	self:SetNWInt("RaidDamageRecievedPlayers", 0)
	self:SetNWInt("RaidDamageRecievedFalling", 0)
	self:SetNWInt("RaidDamageRecievedSelf", 0)
	self:SetNWInt("RaidHealthHealed", 0)
	self:SetNWInt("RaidItemsLooted", 0)
	self:SetNWInt("RaidContainersLooted", 0)
	self:SetNWInt("RaidKeysUsed", 0)
	self:SetNWInt("RaidKills", 0)
	self:SetNWInt("RaidFarthestKill", 0)
	self:SetNWInt("RaidShotsFired", 0)
	self:SetNWInt("RaidShotsHit", 0)
	self:SetNWInt("RaidGrenadesThrown", 0)
end

hook.Add("PlayerDeath", "DeathUpdateStats", function(victim, weapon, attacker)
	if !victim:IsInRaid() then return end -- this was counting suicides in the hideout for the longest time oh my god

	-- update victim's stats (cringe lootcel)
	victim:AddToStat("Deaths", 1)
	victim:SetStat("CurrentKillStreak", 0)
	victim:SetStat("CurrentExtractionStreak", 0)

	-- update attacker stats (based and alivepilled)
	if !IsValid(attacker) or victim == attacker or !attacker:IsPlayer() then
		victim:AddToStat("Suicides", 1)
		return
	end

	attacker:AddToStat("Kills", 1)
	attacker:AddToStat("CurrentKillStreak", 1)

	if attacker:GetNWInt("CurrentKillStreak", 0) >= attacker:GetNWInt("BestKillStreak", 0) then
		attacker:SetStat("BestKillStreak", attacker:GetNWInt("CurrentKillStreak", 0))
	end

	if victim:LastHitGroup() == HITGROUP_HEAD then
		attacker:AddToStat("Headshots", 1)
	end

	local rawDistance = victim:GetPos():Distance(attacker:GetPos())
	local distance = math.UnitsToMeters(rawDistance)

	if distance >= attacker:GetNWInt("FarthestKill", 0) then
		attacker:SetStat("FarthestKill", distance)
	end

	if distance >= attacker:GetNWInt("RaidFarthestKill", 0) then
		attacker:SetNWInt("RaidFarthestKill", distance)
	end
end)

hook.Add("EntityTakeDamage", "DamageUpdateStats", function(ply, damageInfo)
	if !ply:IsPlayer() then return end
	if !ply:IsInRaid() then return end

	local attacker = damageInfo:GetAttacker()

	if !attacker:IsPlayer() then return end

	local selfDamage = false
	if attacker == ply then selfDamage = true end

	local health = ply:Health() or 100
	local damageAmount = math.min(math.Round(damageInfo:GetDamage()), health)

	if damageAmount > 0 then
		ply:AddToStat("DamageRecieved", damageAmount)
		if !selfDamage then
			ply:SetNWInt("RaidDamageRecievedPlayers", ply:GetNWInt("RaidDamageRecievedPlayers") + damageAmount)
		else
			ply:SetNWInt("RaidDamageRecievedSelf", ply:GetNWInt("RaidDamageRecievedSelf") + damageAmount)
		end
	end

	if damageAmount > 0 and !selfDamage then
		attacker:AddToStat("DamageDealt", damageAmount)
		attacker:SetNWInt("RaidDamageDealt", attacker:GetNWInt("RaidDamageDealt") + damageAmount)
	end
end)

hook.Add("PlayerExtraction", "ExtractUpdateStats", function(ply, time, isGuranteed)
	ply:AddToStat("Extractions", 1)
	ply:AddToStat("CurrentExtractionStreak", 1)

	if ply:GetNWInt("CurrentExtractionStreak") >= ply:GetNWInt("BestExtractionStreak") then
		ply:SetStat("BestExtractionStreak", ply:GetNWInt("CurrentExtractionStreak"))
	end
end)

local LEADERBOARDSTRINGS = LEADERBOARDSTRINGS or {}

hook.Add("InitPostEntity", "LeaderboardInit", function()
	for id, data in pairs(EFGM.STATS) do
		if !data.showLeaderboard then continue end

		local str = util.TableToJSON(sql.Query("SELECT SteamID, Value FROM EFGMPlayerData64 WHERE Key = " .. SQLStr(id) .. " ORDER BY Value + 0 DESC LIMIT 100;") or {})

		str = util.Compress(str)
		str = util.Base64Encode(str, true)

		LEADERBOARDSTRINGS[id] = str
	end
end)

net.Receive("GrabLeaderboardData", function(len, ply)
	local key = net.ReadString()

	local str = LEADERBOARDSTRINGS[key] or ""

	net.Start("SendLeaderboardData", true)
		net.WriteString(str)
	net.Send(ply)
end)
