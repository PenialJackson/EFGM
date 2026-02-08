AddCSLuaFile("shared.lua")
AddCSLuaFile("util.lua")
AddCSLuaFile("enums.lua")
AddCSLuaFile("config.lua")
AddCSLuaFile("items/items_init.lua")

include("shared.lua")
include("util.lua")
include("enums.lua")
include("config.lua")
include("items/items_init.lua")

for _, f in ipairs(file.Find("gamemodes/efgm/gamemode/shared/*.lua", "GAME", "nameasc")) do
	AddCSLuaFile("shared/" .. f)
	include("shared/" .. f)
end

for _, f in ipairs(file.Find("gamemodes/efgm/gamemode/server/*.lua", "GAME", "nameasc")) do
	include("server/" .. f)
end

AddCSLuaFile("cl_init.lua")

for _, f in ipairs(file.Find("gamemodes/efgm/gamemode/client/*.lua", "GAME", "nameasc")) do
	AddCSLuaFile("client/" .. f)
end

for _, f in ipairs(file.Find("gamemodes/efgm/gamemode/vgui/*.lua", "GAME", "nameasc")) do
	AddCSLuaFile("vgui/" .. f)
end

for _, f in ipairs(file.Find("gamemodes/efgm/gamemode/items/*.lua", "GAME", "nameasc")) do
	if f == "items_init.lua" then continue end

	AddCSLuaFile("items/" .. f)
	include("items/" .. f)
end

local math = math
local table = table
local net = net
local player = player
local timer = timer
local util = util

local msgs = {
	-- raid, gameplay, match and maps
	"DistantGunAudio",
	"NetworkBlood",
	"VoteableMaps",
	"SendVote",
	"SendExtractionStatus",
	"PlayerSwitchFactions",
	"GrabExtractList",
	"SendExtractList",

	-- inventory
	"PlayerReinstantiateInventory",
	"PlayerInventoryReload",
	"PlayerInventoryReloadForDuel",
	"PlayerSlotsReload",
	"PlayerOpenContainer",
	"PlayerInventoryAddItem",
	"PlayerInventoryUpdateItem",
	"PlayerInventoryDeleteItem",
	"PlayerInventoryDropItem",
	"PlayerInventoryEquipItem",
	"PlayerInventoryUnEquipItem",
	"PlayerInventoryUnEquipAll",
	"PlayerInventoryUnEquipAllCL",
	"PlayerInventoryUpdateEquipped",
	"PlayerInventoryDropEquippedItem",
	"PlayerInventoryDeleteEquippedItem",
	"PlayerInventoryLootItemFromContainer",
	"PlayerInventoryEquipItemFromContainer",
	"PlayerInventoryEquipItemFromEquipped",
	"PlayerInventorySplit",
	"PlayerInventoryDelete",
	"PlayerInventoryTag",
	"PlayerInventoryConsumeGrenade",
	"PlayerInventoryRemoveConsumable",
	"PlayerInventoryClearFIR",
	"PlayerInventoryFixDesyncCL",
	"PlayerInventorySendWeaponPreset",

	-- stash
	"PlayerStashReload",
	"PlayerStashAddItem",
	"PlayerStashUpdateItem",
	"PlayerStashDeleteItem",
	"PlayerStashEquipItem",
	"PlayerStashPinItem",
	"PlayerStashAddItemFromInventory",
	"PlayerStashAddItemFromEquipped",
	"PlayerStashAddAllFromInventory",
	"PlayerStashTakeItemToInventory",

	-- market
	"PlayerNetworkMarket",
	"PlayerMarketPurchaseItem",
	"PlayerMarketPurchaseItemToInventory",
	"PlayerMarketPurchasePresetToInventory",
	"PlayerMarketSellItem",
	"PlayerMarketSellBulk",

	-- tasks
	"TaskPay",
	"TaskGiveItem",
	"TaskAccept",
	"TaskTryComplete",
	"TaskRequestAll",
	"TaskSendAll",

	-- squads
	"AddPlayerSquadRF",
	"RemovePlayerSquadRF",
	"GrabSquadData",
	"SendSquadData",
	"PlayerSquadCreate",
	"PlayerSquadJoin",
	"PlayerSquadLeave",
	"PlayerSquadTransfer",
	"PlayerSquadKick",
	"PlayerSquadDisband",

	-- interface, menu and animations
	"SendNotification",
	"PlayerTransition",
	"PlayerRaidTransition",
	"PlayerDuelTransition",
	"RequestExtracts",
	"SendIntroCamera",
	"PlayerRequestRespawn",
	"CreateDeathInformation",
	"CreateExtractionInformation",

	-- invites
	"PlayerInviteSend",
	"PlayerInviteReceive",
	"PlayerInviteAccept",
	"PlayerInviteLock",

	-- saves and networking
	"PlayerNetworkStash",
	"PlayerNetworkInventory",
	"PlayerNetworkEquipped",

	-- leaderboards
	"GrabLeaderboardData",
	"SendLeaderboardData"
}

for _, msg in ipairs(msgs) do
	util.AddNetworkString(msg)
end

hook.Add("Initialize", "EFGMInitialized", function()
	print("Escape From Garry's Mod (EFGM) initialized, playing on " .. game.GetMap() .. " at Unix time " .. os.time())

	RunConsoleCommand("sv_airaccelerate", "3") -- what is a titanmod?
	RunConsoleCommand("mp_falldamage", "1") -- what is a titanmod? part two, electric boogaloo
	RunConsoleCommand("mp_show_voice_icons", "0")
	RunConsoleCommand("decalfrequency", "1")
end)

function GM:PlayerSpawn(ply)
	ply:SetRaidStatus(0, "") -- moving this in hopes that i wont 'fucking break the gamemode again goddamn it'
	ply:SetNWBool("InRange", false) -- just in case

	ply:SetMaxHealth(EFGM.CONFIG.PlayerHealthMax)
	ply:SetGravity(EFGM.CONFIG.PlayerGravity)
	ply:SetWalkSpeed(EFGM.CONFIG.PlayerWalkSpeed)
	ply:SetRunSpeed(EFGM.CONFIG.PlayerRunSpeed)
	ply:SetSlowWalkSpeed(EFGM.CONFIG.PlayerSlowWalkSpeed)
	ply:SetJumpPower(EFGM.CONFIG.PlayerJumpPower)
	ply:SetLadderClimbSpeed(EFGM.CONFIG.PlayerClimbSpeed)
	ply:SetCrouchedWalkSpeed(EFGM.CONFIG.PlayerCrouchedWalkSpeedMult)
	ply:SetDuckSpeed(EFGM.CONFIG.PlayerCrouchEnterTime)
	ply:SetUnDuckSpeed(EFGM.CONFIG.PlayerCrouchExitTime)

	local mdls = ply:IsPMC() and PLAYERMODELS[ply:GetInfoNum("efgm_faction_preference", 0) + 1] or PLAYERMODELS[4]
	ply:SetModel(table.SeqRandom(mdls))
	ply:SetBodygroup(0, math.random(0, 4)) -- head
	ply:SetBodygroup(1, math.random(0, 18)) -- body
	ply:SetBodygroup(2, math.random(0, 15)) -- legs
	ply:SetBodygroup(3, math.random(0, 14)) -- face
	hook.Call("PlayerSetModel", GAMEMODE, ply)

	ply:AddEFlags(EFL_NO_DAMAGE_FORCES) -- disables knockback being applied when damage is taken
	ply:SendLua("RunConsoleCommand('r_cleardecals')")
	ply:SetCrouched(false)
	ply:SetEnteringCrouch(false)
	ply:SetExitingCrouch(false)
	ply:SetNW2Var("leaning_left", false)
	ply:SetNW2Var("leaning_right", false)
	ply:SetNW2Bool("DoStep", false)

	if ply.LastDeathSound then ply:StopSound(ply.LastDeathSound) end

	CalculateInventoryWeight(ply)
	ply:SetupHands()
end

function GM:PlayerDeath(victim, inflictor, attacker)
	if victim:IsInRaid() then
		UnequipAll(victim) -- unload all equipped items into inventory, helps clean this all up

		local tagData = {}
		tagData.count = 1
		tagData.owner = victim:SteamID64()
		tagData.timestamp = os.time()
		tagData.tag = tostring(victim:GetNWInt("Level", 0))
		tagData.tagLevel = victim:GetNWInt("Level", 0)
		tagData.fir = true

		if !IsValid(attacker) or victim == attacker or !attacker:IsPlayer() then
			tagData.tagCauseOfDeath = "Suicide"
		else
			tagData.tagCauseOfDeath = attacker:GetActiveWeapon():GetClass() or "Unknown"
			tagData.tagWoundOrigin = victim:LastHitGroup()
			tagData.tagKiller = attacker:GetName()
		end

		local item = ITEM.Instantiate("efgm_tag_default", EQUIPTYPE.None, tagData)
		table.insert(victim.inventory, item)

		if victim.inventory[1] != nil then
			local backpack = ents.Create("efgm_backpack")
			backpack:SetPos(victim:GetPos() + Vector(0, 0, 64))
			backpack:Spawn()
			backpack:Activate()
			backpack:SetBagData(victim.inventory, victim:GetName() .. "'s Corpse")
		end

		ReinstantiateInventory(victim)
		net.Start("PlayerReinstantiateInventory", false)
		net.Send(victim)
	else
		-- to not show outdated information if suiciding in hideout
		ResetRaidStats(victim)
	end

	local victimHitgroup = victim:LastHitGroup()

	-- death sound
	if victimHitgroup == HITGROUP_HEAD then
		victim:EmitSound(Sound("deathsounds/head" .. math.random(1, 3) .. ".wav"), math.random(66, 76), math.random(90, 110))
	end

	local deathSound = Sound("deathsounds/head" .. math.random(1, 3) .. ".wav")

	victim:EmitSound(deathSound, math.random(80, 90), math.random(90, 110))
	victim.LastDeathSound = deathSound

	victim:SetNWInt("RaidTime", 0)

	-- when a player suicides
	if !IsValid(attacker) or victim == attacker or !attacker:IsPlayer() then
		local xpMult = (victim:IsInRaidScav() and 0.25) or 0.5

		net.Start("CreateDeathInformation")
			net.WriteFloat(xpMult)
			if !victim:IsInRaid() then net.WriteUInt(EFGM.CONFIG.HideoutRespawnTime, 8) else net.WriteUInt(EFGM.CONFIG.RespawnTime, 8) end
			net.WriteUInt(victim:GetNWInt("RaidTime", 0), 12)
			net.WriteUInt(math.Round(victim:GetNWFloat("ExperienceTime", 0)), 16)
			net.WriteUInt(victim:GetNWInt("ExperienceCombat", 0), 16)
			net.WriteUInt(victim:GetNWInt("ExperienceExploration", 0), 16)
			net.WriteUInt(victim:GetNWInt("ExperienceLooting", 0), 16)
			net.WriteUInt(victim:GetNWInt("ExperienceBonus", 0), 16)
			net.WritePlayer(victim)
			net.WriteUInt(0, 8)
			net.WriteTable({})
			net.WriteUInt(0, 16)
			net.WriteUInt(0, 4)
		net.Send(victim)

		UnequipAllFirearms(victim)
		ApplyPlayerExperience(victim, xpMult)

		return
	end

	local rawDistance = victim:GetPos():Distance(attacker:GetPos())
	local distance = math.UnitsToMeters(rawDistance)

	local xpMult = (victim:IsInRaidScav() and 0.25) or 0.5

	net.Start("CreateDeathInformation")
		net.WriteFloat(xpMult)
		if !victim:IsInRaid() then net.WriteUInt(EFGM.CONFIG.HideoutRespawnTime, 8) else net.WriteUInt(EFGM.CONFIG.RespawnTime, 8) end
		net.WriteUInt(victim:GetNWInt("RaidTime", 0), 12)
		net.WriteUInt(math.Round(victim:GetNWFloat("ExperienceTime", 0)), 16)
		net.WriteUInt(victim:GetNWInt("ExperienceCombat", 0), 16)
		net.WriteUInt(victim:GetNWInt("ExperienceExploration", 0), 16)
		net.WriteUInt(victim:GetNWInt("ExperienceLooting", 0), 16)
		net.WriteUInt(victim:GetNWInt("ExperienceBonus", 0), 16)
		net.WritePlayer(attacker)
		net.WriteUInt(math.Clamp(attacker:Health(), 0, attacker:GetMaxHealth()), 8)
		net.WriteTable(MatchClassWithEquipped(attacker, attacker:GetActiveWeapon():GetClass() or nil) or {})
		net.WriteUInt(distance, 16)
		net.WriteUInt(victimHitgroup, 4)
	net.Send(victim)

	if attacker:IsInRaid() then
		attacker:SetNWInt("ExperienceCombat", attacker:GetNWInt("ExperienceCombat") + 300)
		attacker:SetNWInt("RaidKills", attacker:GetNWInt("RaidKills") + 1)

		attacker:AddFrags(1)
		victim:AddDeaths(1)
	end

	UnequipAllFirearms(victim)
	ApplyPlayerExperience(victim, xpMult)
end

hook.Add("RaidTimerTick", "RaidTimeExperience", function(ply)
	for k, v in player.Iterator() do
		if v:IsInRaid() then
			v:SetNWFloat("ExperienceTime", v:GetNWFloat("ExperienceTime") + 0.5)
			v:SetNWInt("RaidTime", v:GetNWInt("RaidTime", 0) + 1)
			v:SetNWInt("Time", v:GetNWInt("Time") + 1)
		end
	end
end)

hook.Add("PostPlayerDeath", "PlayerRemoveRaid", function(ply)
	local time = ply:IsInRaid() and EFGM.CONFIG.RespawnTime or EFGM.CONFIG.HideoutRespawnTime

	timer.Create(ply:SteamID() .. "respawnTime", time, 1, function() end)
end)

net.Receive("PlayerRequestRespawn", function(len, ply)
	if !timer.Exists(ply:SteamID() .. "respawnTime") then ply:Spawn() end
end)

hook.Add("PlayerDeathSound", "RemoveDefaultDeathSound", function()
	return true
end)

function GM:DoPlayerDeath(ply, attacker, dmginfo)
	if (!dmginfo:IsDamageType(DMG_REMOVENORAGDOLL)) then
		ply:CreateRagdoll()
	end
end

-- more lethal fall damage
hook.Add("GetFallDamage", "FallDmgCalc", function(ply, speed)
	local dmg = speed / 7

	ply:SetNWInt("RaidDamageRecievedFalling", ply:GetNWInt("RaidDamageRecievedFalling") + math.min(dmg, ply:Health() or 100))
	return dmg
end)

-- hit flinch
hook.Add("EntityTakeDamage", "HitFlinch", function(target, dmginfo)
	if IsValid(target) and target:IsPlayer() then
		util.ScreenShake(target:GetPos(), math.random(0.25, 0.35), 3, math.random(0.08, 0.12), 500)
	end
end)

-- players in the lobby cant take damage
hook.Add("PlayerShouldTakeDamage", "AntiLobbyKill", function(victim, attacker)
	return !victim:IsInHideout()
end)

-- prevent respawning if under a respawn timer
hook.Add("PlayerDeathThink", "SpawnLock", function(ply)
	if timer.Exists(ply:SteamID() .. "respawnTime") then return false end
end)

-- modifies voice chat to be proximity based
hook.Add("PlayerCanHearPlayersVoice", "ProxVOIP", function(listener,talker)
	if (tonumber(listener:GetPos():Distance(talker:GetPos())) > 1048) or !talker:Alive() then -- 20~ meter voice distance, not able to talk while dead but can still hear others
		return false, false
	else
		return true, true
	end
end)

hook.Add("PlayerSpray", "PlayerSpraying", function(ply)
	return false
end)

local plyMeta = FindMetaTable("Player")
if !plyMeta then Error("Could not find player table") return end

function plyMeta:SetLastTimeDamaged(time)
	self:SetNWFloat("PlayerLastDamaged", time or CurTime())
end

function plyMeta:GetLastTimeDamaged()
	return self:GetNWFloat("PlayerLastDamaged", 0)
end

hook.Add("PostEntityTakeDamage", "PlayerRegenSetup", function(ent, dmginfo, wasDamageTaken)
	if ent:IsPlayer() and !ent:IsInHideout() and dmginfo:GetDamage() > 0 then
		ent:SetLastTimeDamaged(CurTime())
	end
end)

timer.Create("HealthRegenTick", EFGM.CONFIG.HealthRegenTick, 0, function()
	local ct = CurTime()

	for _, ply in player.Iterator() do
		if !ply:Alive() then continue end
		if ply:IsInHideout() then continue end

		if ct + EFGM.CONFIG.HealthRegenCD >= ply:GetLastTimeDamaged() then continue end

		local health = ply:Health()
		if health < EFGM.CONFIG.PlayerHealthMax then
			local amt = EFGM.CONFIG.HealthRegenAmount

			ply:SetHealth(math.min(health + amt, EFGM.CONFIG.PlayerHealthMax))
			ply:SetNWInt("HealthHealed", ply:GetNWInt("HealthHealed") + amt)
			ply:SetNWInt("RaidHealthHealed", ply:GetNWInt("RaidHealthHealed") + amt)
		end
	end
end)

function ApplyPlayerExperience(ply, mult)
	local exp = 0

	exp = exp + math.Round(ply:GetNWFloat("ExperienceTime", 0) * mult, 0)
	exp = exp + math.Round(ply:GetNWInt("ExperienceCombat", 0) * mult, 0)
	exp = exp + math.Round(ply:GetNWInt("ExperienceExploration", 0) * mult, 0)
	exp = exp + math.Round(ply:GetNWInt("ExperienceLooting", 0) * mult, 0)
	exp = exp + math.Round(ply:GetNWInt("ExperienceBonus", 0) * mult, 0)

	ply:SetNWInt("Experience", ply:GetNWInt("Experience", 0) + exp)

	local curExp = ply:GetNWInt("Experience")
	local curLvl = ply:GetNWInt("Level")

	while (curExp >= ply:GetNWInt("ExperienceToNextLevel")) do
		curExp = curExp - ply:GetNWInt("ExperienceToNextLevel")
		ply:SetNWInt("Level", curLvl + 1)
		ply:SetNWInt("Experience", curExp)

		for k, v in ipairs(levelArray) do
			if (curLvl + 1) == k then ply:SetNWInt("ExperienceToNextLevel", v) end
		end

		net.Start("SendNotification", false)
			net.WriteString("You have leveled up!")
			net.WriteString("icons/increase_icon.png")
			net.WriteString("achivement_earned.wav")
		net.Send(ply)
	end

	ply:SetNWFloat("ExperienceTime", 0)
	ply:SetNWInt("ExperienceCombat", 0)
	ply:SetNWInt("ExperienceExploration", 0)
	ply:SetNWInt("ExperienceLooting", 0)
	ply:SetNWInt("ExperienceBonus", 0)
end

-- disable prop pickups
hook.Add("AllowPlayerPickup", "DisablePickups", function(ply, ent)
	return false
end)

-- dropped weapons shouldn't be possible as all dropped items use our custom system, but just in case
hook.Add("PlayerCanPickupWeapon", "InventoryWeaponPickup", function(ply, weapon)
	if (ply:HasWeapon(weapon:GetClass())) then return false end
end)

-- should be sandbox derive only
hook.Add("PlayerGiveSWEP", "BlockPlayerSWEPs", function(ply, class, spawninfo)
	if GetConVar("efgm_derivesbox"):GetInt() == 0 then return false end

	local def = EFGMITEMS[class]
	if !def then return true end -- if sm1 wants a camera or something

	local data = {}
	data.att = EFGMITEMS[class].defAtts
	data.count = 1
	data.owner = ply:SteamID64()
	data.timestamp = os.time()

	if def.equipType == EQUIPTYPE.Consumable then
		data.durability = def.consumableValue
	end

	AddItemToInventory(ply, class, EQUIPTYPE.Weapon, data)
	ReloadInventory(ply)

	return false
end)

hook.Add("PlayerSpawnSWEP", "SpawnBlockSWEPOnGround", function(ply, class, info) return false end)