local DISPLAYTYPE = "Chassis"
local ATTICONPATH = "items/attachments/chassis/"

local function AttMaterial(imgPath)
	if SERVER then return end
	return Material(ATTICONPATH .. imgPath, "smooth")
end

EFGM.ITEMS["arc9_att_eft_axmc_chassis"] = {
	fullName = "AI AXMC .338 LM chassis",
	displayName = "AXMC .338LM",
	displayType = DISPLAYTYPE,
	description = "The factory fitted .338 Lapua Magnum chassis for the AXMC sniper rifle, manufactured by Accuracy International.",
	weight = 0.3,
	value = 6640,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("axmc.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_stock_arch"] = {
	fullName = "M1A ProMag Archangel chassis",
	displayName = "Archangel",
	displayType = DISPLAYTYPE,
	description = "The Archangel polymer chassis for M1A rifles, manufactured by ProMag.",
	weight = 1.9,
	value = 24860,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("archangel_m1a.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_stock_arch_blk"] = {
	fullName = "M1A ProMag Archangel chassis",
	displayName = "Archangel",
	displayType = DISPLAYTYPE,
	description = "The Archangel polymer chassis for M1A rifles, manufactured by ProMag.",
	weight = 1.9,
	value = 24860,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("archangel_m1a_blk.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_stock_sage"] = {
	fullName = "M14 SAGE International M14ALCS chassis",
	displayName = "SAGE M14ALCS",
	displayType = DISPLAYTYPE,
	description = "The M14ALCS chassis for M14 rifles from the Enhanced Battle Rifle (EBR) kit. Manufactured by SAGE International.",
	weight = 1.9,
	value = 13400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m14_sage.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_stock_sass"] = {
	fullName = "M14 TROY S.A.S.S. Chassis stock",
	displayName = "S.A.S.S.",
	displayType = DISPLAYTYPE,
	description = "The TROY Semi-Automatic Sniper System chassis is designed to match the ergonomics of M16/M4 weapon systems. This modular quad-rail system allows unlimited mounting options and keeps all optics and sights mounted and undisturbed while field stripping.",
	weight = 2.1,
	value = 36580,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("miatroy.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_stock_sass_blk"] = {
	fullName = "M14 TROY S.A.S.S. Chassis stock",
	displayName = "S.A.S.S.",
	displayType = DISPLAYTYPE,
	description = "The TROY Semi-Automatic Sniper System chassis is designed to match the ergonomics of M16/M4 weapon systems. This modular quad-rail system allows unlimited mounting options and keeps all optics and sights mounted and undisturbed while field stripping.",
	weight = 2.1,
	value = 36580,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("miatroy_blk.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_stock_aics"] = {
	fullName = "M700 AI AT AICS polymer chassis",
	displayName = "AT AICS",
	displayType = DISPLAYTYPE,
	description = "The AT AICS polymer chassis for the Remington M700 sniper rifle. Manufactured by Accuracy International.",
	weight = 0.6,
	value = 26500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700_ai.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_stock_archangel"] = {
	fullName = "M700 ProMag Archangel chassis",
	displayName = "Archangel",
	displayType = DISPLAYTYPE,
	description = "The Archangel ergonomic polymer chassis for the Remington M700 sniper rifle. Manufactured by ProMag.",
	weight = 2.2,
	value = 21000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700_promag.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_stock_gen3"] = {
	fullName = "M700 AB Arms MOD*X GEN 3 chassis",
	displayName = "MOD*X GEN 3",
	displayType = DISPLAYTYPE,
	description = "The AB Arms MOD*X GEN III Modular Rifle System is a lightweight, ergonomic, drop-in chassis designed for the Remington Model 700 bolt-action sniper rifle.",
	weight = 0.9,
	value = 27100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700modx.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_stock_gen3_blk"] = {
	fullName = "M700 AB Arms MOD*X GEN 3 chassis",
	displayName = "MOD*X GEN 3",
	displayType = DISPLAYTYPE,
	description = "The AB Arms MOD*X GEN III Modular Rifle System is a lightweight, ergonomic, drop-in chassis designed for the Remington Model 700 bolt-action sniper rifle.",
	weight = 0.9,
	value = 27100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700modx_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_stock_pro700"] = {
	fullName = "M700 Magpul Pro 700 chassis",
	displayName = "Pro 700",
	displayType = DISPLAYTYPE,
	description = "Pro 700 is a lightweight ergonomic chassis designed for the Remington M700 sniper rifle. Manufactured by Magpul.",
	weight = 1.7,
	value = 20600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700_magpul.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_stock_ati"] = {
	fullName = "Mosin Rifle ATI Monte Carlo chassis",
	displayName = "Mosin MonteCarlo",
	displayType = DISPLAYTYPE,
	description = "Monte Carlo-style chassis for the Mosin rifle, transforms the weapon into a more modern-looking rifle. Manufactured by ATI.",
	weight = 1.2,
	value = 11295,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_monte.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_stock_opfor"] = {
	fullName = "Mosin Rifle ProMag Archangel OPFOR PRS chassis",
	displayName = "Archangel Mosin",
	displayType = DISPLAYTYPE,
	description = "The Archangel OPFOR PRS chassis for Mosin sniper rifle. The ergonomic gooseneck style grip with palm swells promotes maximum accuracy and comfort. Manufactured by ProMag.",
	weight = 2,
	value = 21600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("archangel_mosin.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_stock_opfor_blk"] = {
	fullName = "Mosin Rifle ProMag Archangel OPFOR PRS chassis",
	displayName = "Archangel Mosin",
	displayType = DISPLAYTYPE,
	description = "The Archangel OPFOR PRS chassis for Mosin sniper rifle. The ergonomic gooseneck style grip with palm swells promotes maximum accuracy and comfort. Manufactured by ProMag.",
	weight = 2,
	value = 21600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("archangel_mosin_blk.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sako_chassis"] = {
	fullName = "Sako TRG M10 chassis",
	displayName = "TRG M10",
	displayType = DISPLAYTYPE,
	description = "Standard chassis with a folding stock for the TRG M10 sniper rifle, manufactured by Sako.",
	weight = 1.2,
	value = 35100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m10.png"),

	sizeX = 3,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_stock_fab"] = {
	fullName = "SKS FAB Defense UAS chassis",
	displayName = "UAS SKS",
	displayType = DISPLAYTYPE,
	description = "Lightweight polymer chassis for SKS carbine, manufactured by FAB Defense. Features a quad Picatinny system for mounting various tactical devices, a folding buttstock and an integrated enhanced magazine release lever.",
	weight = 0.6,
	value = 23055,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sks_uas.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_stock_mc"] = {
	fullName = "SKS ATI Monte Carlo chassis",
	displayName = "SKS MC",
	displayType = DISPLAYTYPE,
	description = "A lightweight Monte Carlo-style stock for the SKS carbine, designed for sport shooting and hunting. Manufactured by ATI outdoors.",
	weight = 1.1,
	value = 13200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sks_monte.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_stock_tapco"] = {
	fullName = "SKS TAPCO Intrafuse chassis",
	displayName = "TAPCO Intrafuse",
	displayType = DISPLAYTYPE,
	description = "The Intrafuse SKS stock system equips the carbine with an upper handguard with Picatinny-style rail for optics, lights, laser sights, or other modern accessories. Manufactured by TAPCO.",
	weight = 0.7,
	value = 8650,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sks_tapco.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sv98_chassis_cnc"] = {
	fullName = "SV-98 CNC Guns OV-SV98 chassis",
	displayName = "OV-SV98",
	displayType = DISPLAYTYPE,
	description = "The OV-SV98 chassis for the SV-98 sniper rifle, manufactured by CNC Guns.",
	weight = 0.5,
	value = 30870,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sv98_cnc.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sv98_chassis_wood"] = {
	fullName = "SV-98 wooden stock",
	displayName = "SV-98",
	displayType = DISPLAYTYPE,
	description = "A standard-issue wooden stock for the SV-98, manufactured by Izhmash.",
	weight = 3,
	value = 3500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sv98_wood.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sv98_chassis_wood_blk"] = {
	fullName = "SV-98 wooden stock",
	displayName = "SV-98",
	displayType = DISPLAYTYPE,
	description = "A standard-issue wooden stock for the SV-98, manufactured by Izhmash.",
	weight = 3,
	value = 3500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sv98_wood_blk.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_t5000_chassis_std"] = {
	fullName = "ORSIS T-5000M aluminium body",
	displayName = "T-5000 body",
	displayType = DISPLAYTYPE,
	description = "A standard aluminum body for the T-5000M bolt-action sniper rifle, manufactured by ORSIS.",
	weight = 0.6,
	value = 6920,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("t5000.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ub_svds_sag"] = {
	fullName = "SVD SAG MK1 chassis",
	displayName = "SAG MK1",
	displayType = DISPLAYTYPE,
	description = "The MK1 Freefloat modular chassis with KeyMod slots designed for SVD rifles for installation of various optics and tactical devices. Requires a custom-cut dust cover to fit on to the weapon. Manufactured by Sureshot Armament Group.",
	weight = 0.9,
	value = 15900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svd_sag.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rpd_stock_ds"] = {
	fullName = "RPD DS Arms buttstock",
	displayName = "DSA RPD",
	displayType = DISPLAYTYPE,
	description = "A polymer buttstock for the RPD machine gun. Manufactured by DS Arms.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/683060403b1bb49282023611.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vpo215_stock_tac"] = {
	fullName = "VPO-215 tactical chassis",
	displayName = "VPO-215 tac.",
	displayType = DISPLAYTYPE,
	description = "A tactical chassis for the VPO-215 Gornostay hunting rifle.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/68b966e44b7f808d5609ac04.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}
