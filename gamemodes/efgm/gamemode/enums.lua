-- maps
MAPS = {
	["efgm_belmont"] = {name = "Belmont", time = 2400, spawnProt = 3200},
	["efgm_concrete"] = {name = "Concrete", time = 1800, spawnProt = 2304},
	["efgm_concrete_night"] = {name = "Concrete", time = 1800, spawnProt = 2304},
	["efgm_factory"] = {name = "Factory", time = 1200, spawnProt = 1536},
	["efgm_factory_night"] = {name = "Factory", time = 1200, spawnProt = 1536}
}

-- player status
-- the DUEL enum here is just not fucking working, i can print it here and it shows, i can print it anywhere else and its fucking nil, its 6am, i dont want to find out why, fuck my retarded Garry's Mod life - penial
playerStatus = {
	LOBBY = 0,
	PMC = 1,
	SCAV = 2,
	DUEL = 3
}

-- raid status
raidStatus = {
	PENDING = 0,
	ACTIVE = 1,
	ENDED = 2
}

-- duel status
duelStatus = {
	PENDING = 0,
	ACTIVE = 1
}

-- tried to make shit adjustable, that way you could say fuck it and let everyone carry 100 grenades or knives or both or neither and it'd let them
-- that could even be added with like convars and shit
-- max of 4 bits yada yada yada you surely get it by now
WEAPONSLOTS = {
	PRIMARY =       {ID = 1, COUNT = 2},
	HOLSTER =       {ID = 2, COUNT = 1},
	MELEE =         {ID = 3, COUNT = 1},
	GRENADE =       {ID = 4, COUNT = 1},
	CONSUMABLE =    {ID = 5, COUNT = 1}
}

CONSUMABLETYPES = {
	MEDKIT = 0,
}

HITGROUPS = {
	[1] = "HEAD, EYES",
	[2] = "CHEST",
	[3] = "STOMACH",
	[4] = "LEFT ARM",
	[5] = "RIGHT ARM",
	[6] = "LEFT LEG",
	[7] = "RIGHT LEG"
}

PLAYERMODELS = {
	[1] = {"models/eft/pmcs/usec_extended_pm.mdl", "models/eft/pmcs/bear_extended_pm.mdl"},
	[2] = {"models/eft/pmcs/usec_extended_pm.mdl"},
	[3] = {"models/eft/pmcs/bear_extended_pm.mdl"},
	[4] = {"models/player/Group01/male_01.mdl", "models/player/Group01/male_02.mdl", "models/player/Group01/male_03.mdl", "models/player/Group01/male_04.mdl", "models/player/Group01/male_05.mdl", "models/player/Group01/male_06.mdl", "models/player/Group01/male_07.mdl", "models/player/Group01/male_08.mdl", "models/player/Group01/male_09.mdl"}
}

QUOTES = {
	"nobody is sending any quotes so have this one! -penial",
}