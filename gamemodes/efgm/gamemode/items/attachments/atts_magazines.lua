local DISPLAYTYPE = "Magazine"
local ATTICONPATH = "items/attachments/magazines/"

local function AttMaterial(imgPath, paramOverride)
	if SERVER then return end
	return Material(ATTICONPATH .. imgPath, paramOverride or "smooth")
end

EFGM.ITEMS["arc9_att_eft_57_mag"] = {
	fullName = "FN Five-seveN 5.7x28 20-round magazine",
	displayName = "5-7",
	displayType = DISPLAYTYPE,
	description = "A standard 20-round 5.7x28 magazine for the FN Five-seveN pistol.",
	weight = 0.05,
	value = 2810,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("fiveseven.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aa12_mag_20"] = {
	fullName = "AA-12 12ga 20-round drum magazine",
	displayName = "AA-12 20",
	displayType = DISPLAYTYPE,
	description = "A 20-round 12-gauge drum magazine for the Auto Assault-12 shotgun.",
	weight = 1.1,
	value = 110000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aa12_20.png"),

	sizeX = 2,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aa12_mag_8"] = {
	fullName = "AA-12 12ga 8-round magazine",
	displayName = "AA-12 8",
	displayType = DISPLAYTYPE,
	description = "An 8-round 12-gauge box magazine for the Auto Assault-12 shotgun.",
	weight = 0.3,
	value = 6400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aa12_8.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aps_mag_20"] = {
	fullName = "APS 9x18PM 20-round magazine",
	displayName = "APS 20",
	displayType = DISPLAYTYPE,
	description = "A standard 20-round magazine for Molot-produced APS pistols. It features a side observation slot for faster capacity checking.",
	weight = 0.05,
	value = 425,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aps_20.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_mag_drum50"] = {
	fullName = "AR-10 7.62x51 X Products X-25 50-round drum magazine",
	displayName = "X-25 50",
	displayType = DISPLAYTYPE,
	description = "A 50-round 7.62x51 drum magazine for the AR-10 platform weapons. Manufactured by X Products.",
	weight = 0.7,
	value = 34990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("x25_50.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_mag_kac10"] = {
	fullName = "AR-10 7.62x51 KAC 10-round steel magazine",
	displayName = "KAC 10",
	displayType = DISPLAYTYPE,
	description = "A 10-round double-stack steel magazine for 7.62x51 NATO cartridges. Manufactured by Knight's Armament Company.",
	weight = 0.4,
	value = 3365,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("kac10.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_mag_kac20"] = {
	fullName = "AR-10 7.62x51 KAC 20-round steel magazine",
	displayName = "KAC 20",
	displayType = DISPLAYTYPE,
	description = "A 20-round double-stack steel magazine for 7.62x51 NATO cartridges. Manufactured by Knight's Armament Company.",
	weight = 0.5,
	value = 4350,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("kac20.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_mag_l7_20"] = {
	fullName = "AR-10 7.62x51 Lancer L7AWM 20-round magazine",
	displayName = "L7AWM 20",
	displayType = DISPLAYTYPE,
	description = "A 20-round double-stack L7AWM 20 magazine for 7.62x51 NATO ammunition. Manufactured by Lancer Systems.",
	weight = 0.3,
	value = 16730,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("l7_20.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_mag_l7_20_blk"] = {
	fullName = "AR-10 7.62x51 Lancer L7AWM 20-round magazine",
	displayName = "L7AWM 20",
	displayType = DISPLAYTYPE,
	description = "A 20-round double-stack L7AWM 20 magazine for 7.62x51 NATO ammunition. Manufactured by Lancer Systems.",
	weight = 0.3,
	value = 16730,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("l7_20_blk.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_mag_l7_25"] = {
	fullName = "AR-10 7.62x51 Lancer L7AWM 25-round magazine",
	displayName = "L7AWM 25",
	displayType = DISPLAYTYPE,
	description = "A 25-round double-stack L7AWM 25 magazine for 7.62x51 NATO ammunition. Manufactured by Lancer Systems.",
	weight = 0.3,
	value = 61990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("l7_25.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_mag_l7_25_blk"] = {
	fullName = "AR-10 7.62x51 Lancer L7AWM 25-round magazine",
	displayName = "L7AWM 25",
	displayType = DISPLAYTYPE,
	description = "A 25-round double-stack L7AWM 25 magazine for 7.62x51 NATO ammunition. Manufactured by Lancer Systems.",
	weight = 0.3,
	value = 61990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("l7_25_blk.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_mag_pmag20"] = {
	fullName = "AR-10 7.62x51 Magpul PMAG 20 SR-LR GEN M3 20-round magazine",
	displayName = "PMAG 20",
	displayType = DISPLAYTYPE,
	description = "A 20-round double-stack Magpul PMAG SR/LR GEN M3 20 magazine for 7.62x51 NATO ammunition.",
	weight = 0.35,
	value = 10820,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pmag_sr_20.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ash12_mag_10"] = {
	fullName = "ASh-12 12.7x55 10-round magazine",
	displayName = "ASh-12 10",
	displayType = DISPLAYTYPE,
	description = "10-round magazine for 12.7x55 ASh-12.",
	weight = 0.3,
	value = 7100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ash12_10.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ash12_mag_20"] = {
	fullName = "ASh-12 12.7x55 20-round magazine",
	displayName = "ASh-12 20",
	displayType = DISPLAYTYPE,
	description = "20-round magazine for 12.7x55 ASh-12.",
	weight = 0.5,
	value = 24010,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ash12_20.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aug_mag_10"] = {
	fullName = "Steyr AUG 5.56x45 10-round magazine",
	displayName = "AUG 10",
	displayType = DISPLAYTYPE,
	description = "A 10-round polymer Steyr AUG magazine, for 5.56x45 ammunition.",
	weight = 0.1,
	value = 1400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aug10.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aug_mag_10_blk"] = {
	fullName = "Steyr AUG 5.56x45 10-round magazine",
	displayName = "AUG 10",
	displayType = DISPLAYTYPE,
	description = "A 10-round polymer Steyr AUG magazine, for 5.56x45 ammunition.",
	weight = 0.1,
	value = 1400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aug10_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aug_mag_30"] = {
	fullName = "Steyr AUG 5.56x45 30-round magazine",
	displayName = "AUG 30",
	displayType = DISPLAYTYPE,
	description = "A 30-round polymer Steyr AUG magazine, for 5.56x45 ammunition.",
	weight = 0.1,
	value = 5010,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aug30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aug_mag_30_blk"] = {
	fullName = "Steyr AUG 5.56x45 30-round magazine",
	displayName = "AUG 30",
	displayType = DISPLAYTYPE,
	description = "A 30-round polymer Steyr AUG magazine, for 5.56x45 ammunition.",
	weight = 0.1,
	value = 5010,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aug30_blk.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aug_mag_42"] = {
	fullName = "Steyr AUG 5.56x45 42-round magazine",
	displayName = "AUG 42",
	displayType = DISPLAYTYPE,
	description = "A 42-round polymer Steyr AUG magazine, for 5.56x45 ammunition.",
	weight = 0.1,
	value = 11200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aug42.png"),

	sizeX = 1,
	sizeY = 3,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aug_mag_42_blk"] = {
	fullName = "Steyr AUG 5.56x45 42-round magazine",
	displayName = "AUG 42",
	displayType = DISPLAYTYPE,
	description = "A 42-round polymer Steyr AUG magazine, for 5.56x45 ammunition.",
	weight = 0.1,
	value = 11200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aug42_blk.png"),

	sizeX = 1,
	sizeY = 3,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_axmc_mag338"] = {
	fullName = "AI AXMC .338 LM 10-round magazine",
	displayName = "AXMC 338LM",
	displayType = DISPLAYTYPE,
	description = "A 10-round AXMC sniper rifle magazine by Accuracy International, for .338 Lapua Magnum cartridges.",
	weight = 0.4,
	value = 13730,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("axmc.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barret_mag10"] = {
	fullName = "M82A1 .50 BMG 10-round magazine",
	displayName = "M82 10",
	displayType = DISPLAYTYPE,
	description = "A 10-round .50 BMG magazine for the M82A1 sniper rifle, manufactured by Barrett Firearms.",
	weight = 0.6,
	value = 16775,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m82a1.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_dvl10_mag_10"] = {
	fullName = "DVL-10 7.62x51 10-round magazine",
	displayName = "DVL-10 10",
	displayType = DISPLAYTYPE,
	description = "A standard-issue DVL-10 sniper rifle magazine by Lobaev Arms, for 7.62x51 cartridges.",
	weight = 0.5,
	value = 5100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("dvl_10.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g28_mag_10"] = {
	fullName = "HK417/G28 7.62x51 10-round magazine",
	displayName = "G28 10",
	displayType = DISPLAYTYPE,
	description = "A 10-round double-stack HK417/G28 magazine for 7.62x51 ammunition. The floor plate can easily be removed for disassembly and cleaning.",
	weight = 0.1,
	value = 2205,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g28_10.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g28_mag_20"] = {
	fullName = "HK417/G28 7.62x51 20-round magazine",
	displayName = "G28 20",
	displayType = DISPLAYTYPE,
	description = "A 20-round double-stack HK417/G28 magazine for 7.62x51 ammunition. The floor plate can easily be removed for disassembly and cleaning.",
	weight = 0.2,
	value = 6330,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g28_20.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g28_mag_30"] = {
	fullName = "HK G36 5.56x45 30-round magazine",
	displayName = "G36 30",
	displayType = DISPLAYTYPE,
	description = "A 30-round 5.56x45 magazine designed for the HK G36.",
	weight = 0.1,
	value = 3105,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_kedr_mag_20"] = {
	fullName = 'PP-91 "Kedr" 9x18PM 20-round magazine',
	displayName = "Kedr 20",
	displayType = DISPLAYTYPE,
	description = "A standard 20-round capacity metal magazine for PP-91 Kedr-based 9x18PM SMGs, manufactured by ZMZ.",
	weight = 0.1,
	value = 1500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("kedr_20.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_kedr_mag_30"] = {
	fullName = 'PP-91 "Kedr" 9x18PM 30-round magazine',
	displayName = "Kedr 30",
	displayType = DISPLAYTYPE,
	description = "A standard 30-round capacity metal magazine for PP-91 Kedr-based 9x18PM SMGs, manufactured by ZMZ.",
	weight = 0.1,
	value = 3135,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("kedr_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ks23_mag_3"] = {
	fullName = "KS-23M 23x75 3-shell magazine cap",
	displayName = "KS-23Mx3",
	displayType = DISPLAYTYPE,
	description = "A 3-shell capacity magazine cap for KS-23M 23x75mm shells.",
	weight = 0.05,
	value = 1235,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ks23_3.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_mag_10"] = {
	fullName = "M1A 7.62x51 10-round magazine",
	displayName = "M1A 10",
	displayType = DISPLAYTYPE,
	description = "A 10-round double-stack 7.62x51 NATO magazine for the M1A rifle, produced by Springfield Armory.",
	weight = 0.1,
	value = 1400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1a_10.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_mag_20"] = {
	fullName = "M1A 7.62x51 20-round magazine",
	displayName = "M1A 20",
	displayType = DISPLAYTYPE,
	description = "A 20-round double-stack 7.62x51 NATO magazine for the M1A rifle, produced by Springfield Armory.",
	weight = 0.2,
	value = 3225,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1a_20.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_mag_30"] = {
	fullName = "M14 7.62x51 30-round magazine",
	displayName = "M1A 30",
	displayType = DISPLAYTYPE,
	description = "A 30-round double-stack 7.62x51 NATO magazine for the M1 rifle. Manufactured by Triple K.",
	weight = 0.3,
	value = 7700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1a_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_mag_50"] = {
	fullName = "M14 7.62x51 X Products X-14 50-round drum magazine",
	displayName = "M14 X-14 50",
	displayType = DISPLAYTYPE,
	description = "A 50 round 7.62x51 drum NATO magazine for the M14 rifle. Manufactured by X Products.",
	weight = 0.7,
	value = 19480,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1a_50.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m249_mag_100rnd"] = {
	fullName = "M249 5.56x45 Soft Pack 100-round Magazine",
	displayName = "M249 100rnd",
	displayType = DISPLAYTYPE,
	description = "A 100-round soft pack box magazine for the M249 5.56x45mm light machinegun.",
	weight = 0.9,
	value = 22500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m249_100.png"),

	sizeX = 2,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m249_mag_200rnd"] = {
	fullName = "M249 5.56x45 200-round Box Magazine",
	displayName = "M249 200rnd",
	displayType = DISPLAYTYPE,
	description = "Standard 200-round 5.56x45mm box magazine for the M249 light machinegun.",
	weight = 1.4,
	value = 38975,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m249_200.png"),

	sizeX = 2,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m32a1_mag_std"] = {
	fullName = "M32A1 40mm cylinder",
	displayName = "M32A1 cyl.",
	displayType = DISPLAYTYPE,
	description = "A standard-issue cylinder for the M32A1 MSGL revolver grenade launcher.",
	weight = 0.8,
	value = 31990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m32a1_cylinder.png"),

	sizeX = 2,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m3s90_mag_11"] = {
	fullName = "Benelli M3 Super 90 12ga Toni System 11-shell magazine",
	displayName = "M3x11",
	displayType = DISPLAYTYPE,
	description = "A 12ga 11-shell capacity tube magazine by Toni System for Benelli M3 S90 shotguns.",
	weight = 0.3,
	value = 3780,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m3_11.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m3s90_mag_13"] = {
	fullName = "Benelli M3 Super 90 12ga Toni System 13-shell magazine",
	displayName = "M3x13",
	displayType = DISPLAYTYPE,
	description = "A 12ga 13-shell capacity tube magazine by Toni System for Benelli M3 S90 shotguns.",
	weight = 0.3,
	value = 4985,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m3_13.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m3s90_mag_5"] = {
	fullName = "Benelli M3 Super 90 12ga 5-shell magazine cap",
	displayName = "M3x5",
	displayType = DISPLAYTYPE,
	description = "A 12ga 5-shell capacity tube magazine cap by Benelli, for M3 S90 shotguns.",
	weight = 0.1,
	value = 1110,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m3_5.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m3s90_mag_7"] = {
	fullName = "Benelli M3 Super 90 12ga 7-shell magazine",
	displayName = "M3x7",
	displayType = DISPLAYTYPE,
	description = "A 7-shell capacity tube magazine for Benelli M3 S90 12ga.",
	weight = 0.2,
	value = 2415,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m3_7.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m3s90_mag_9"] = {
	fullName = "Benelli M3 Super 90 12ga Toni System 9-shell magazine",
	displayName = "M3x9",
	displayType = DISPLAYTYPE,
	description = "A 12ga 9-shell capacity tube magazine by Toni System for Benelli M3 S90 shotguns.",
	weight = 0.2,
	value = 2625,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m3_9.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m590_mag_8"] = {
	fullName = "Mossberg 590A1 12ga 8-shell magazine cap",
	displayName = "590 cap",
	displayType = DISPLAYTYPE,
	description = "An 8-shell capacity magazine cap for Mossberg 590A1 12ga shells.",
	weight = 0.05,
	value = 850,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m590_8.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m60_mag_100"] = {
	fullName = "M60 7.62x51 Capco 100-round Assault Box",
	displayName = "M60 Capco 100",
	displayType = DISPLAYTYPE,
	description = "A 100-round 7.62x51 hard plastic ammo box for the M60 machine gun. Manufactured by Capco.",
	weight = 0.4,
	value = 20400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m60_box_100.png"),

	sizeX = 2,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_mag_a10"] = {
	fullName = "M700 7.62x51 AI AICS 10-round magazine",
	displayName = "M700 AICS 10",
	displayType = DISPLAYTYPE,
	description = "A 10-round Remington M700 sniper rifle magazine by Accuracy International, for 7.62x51 cartridges.",
	weight = 0.5,
	value = 3900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700_ai_10.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_mag_a12"] = {
	fullName = "M700 7.62x51 MDT AICS 12-round magazine",
	displayName = "M700 AICS 12",
	displayType = DISPLAYTYPE,
	description = "A 12-round Remington M700 sniper rifle magazine by Modular Driven Technologies LP., for 7.62x51 cartridges.",
	weight = 0.6,
	value = 5600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700_mdt_12.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_mag_a5"] = {
	fullName = "M700 7.62x51 AI AICS 5-round magazine",
	displayName = "M700 AICS 5",
	displayType = DISPLAYTYPE,
	description = "A 5-round Remington M700 sniper rifle magazine by Accuracy International, for 7.62x51 cartridges.",
	weight = 0.3,
	value = 2100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700_ai_5.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_mag_p10"] = {
	fullName = "M700 7.62x51 Magpul PMAG AC 10-round magazine",
	displayName = "M700 PMAG 10",
	displayType = DISPLAYTYPE,
	description = "A Remington M700 sniper rifle polymer magazine by Magpul, with a 10-round capacity for 7.62x51 cartridges.",
	weight = 0.1,
	value = 5750,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700_pmag_10.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_mag_p5"] = {
	fullName = "M700 7.62x51 Magpul PMAG AC 5-round magazine",
	displayName = "M700 PMAG 5",
	displayType = DISPLAYTYPE,
	description = "A Remington M700 sniper rifle 5-round polymer magazine by Magpul. It accepts 7.62x51 cartridges.",
	weight = 0.1,
	value = 3220,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700_pmag_5.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_mag_pro10"] = {
	fullName = "M700 7.62x51 ProMag AA-70 10-round magazine",
	displayName = "M700 ProMag 10",
	displayType = DISPLAYTYPE,
	description = "A Remington M700 sniper rifle magazine by ProMag, for the Archangel M700 stock. Accepts 7.62x51 cartridges and has a 10-round capacity.",
	weight = 0.5,
	value = 4340,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700_aa_10.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_mag_pro20"] = {
	fullName = "M700 7.62x51 ProMag AA-70 20-round magazine",
	displayName = "M700 ProMag 20",
	displayType = DISPLAYTYPE,
	description = "A Remington M700 sniper rifle magazine by ProMag, for the Archangel M700 stock. It accepts 7.62x51 cartridges and has a 20-round capacity.",
	weight = 0.5,
	value = 6240,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700_aa_20.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_mag_w10"] = {
	fullName = "M700 7.62x51 Wyatts Outdoor 10-round magazine",
	displayName = "M700 Wyatts 10",
	displayType = DISPLAYTYPE,
	description = "A Remington M700 sniper rifle 10-round magazine by Wyatts Outdoor, for 7.62x51 cartridges.",
	weight = 0.5,
	value = 3675,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700_w_10.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_mag_w5"] = {
	fullName = "M700 7.62x51 Wyatts Outdoor 5-round magazine",
	displayName = "M700 Wyatts 5",
	displayType = DISPLAYTYPE,
	description = "A Remington M700 sniper rifle 5-round magazine by Wyatts Outdoor, for 7.62x51 cartridges.",
	weight = 0.4,
	value = 1945,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700_w_5.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m870_mag_10"] = {
	fullName = "M870 12ga 10-shell magazine",
	displayName = "M870x10",
	displayType = DISPLAYTYPE,
	description = "A 170-shell capacity magazine cap by Remington, for Remington Model 870 12ga shells.",
	weight = 0.4,
	value = 2445,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m870_10.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m870_mag_4"] = {
	fullName = "M870 12ga 4-shell magazine cap",
	displayName = "M870x4",
	displayType = DISPLAYTYPE,
	description = "A 4-shell capacity magazine cap by Remington, for Remington Model 870 12ga shells.",
	weight = 0.05,
	value = 575,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m870_4.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m870_mag_7"] = {
	fullName = "M870 12ga 7-shell magazine",
	displayName = "M870x7",
	displayType = DISPLAYTYPE,
	description = "A 7-shell capacity magazine cap by Remington, for Remington Model 870 12ga shells.",
	weight = 0.2,
	value = 1680,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m870_7.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_1911_11"] = {
	fullName = "M1911A1 .45 ACP Mec-Gar 11-round magazine",
	displayName = "Mec-Gar 11",
	displayType = DISPLAYTYPE,
	description = "An 11-round .45 ACP magazine for the Colt M1911A1 pistol, manufactured by Mec-Gar.",
	weight = 0.2,
	value = 6100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mecgar11.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_1911_std"] = {
	fullName = "M1911A1 .45 ACP 7-round magazine",
	displayName = "1911 7",
	displayType = DISPLAYTYPE,
	description = "A standard-issue 7-round .45 ACP magazine for the Colt M1911-series pistols.",
	weight = 0.1,
	value = 900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1911.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_1911_tac"] = {
	fullName = "M1911A1 .45 ACP Wilson Combat 7-round magazine",
	displayName = "1911 Wilson 7",
	displayType = DISPLAYTYPE,
	description = "A 7-round .45 ACP magazine with a steel low-profile base pad for Colt M1911 pistols, manufactured by Wilson Combat. Comes as a standard-issue magazine for the M45A1 pistol.",
	weight = 0.1,
	value = 1170,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m45a1.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_545_20"] = {
	fullName = 'AK-74 "Saiga 545" 5.45x39 20-round magazine',
	displayName = "Saiga 20",
	displayType = DISPLAYTYPE,
	description = "A 20-round 5.45x39 Delta-Tech polymer magazine Saiga 545, for the AK-based civilian carbine of the same name.",
	weight = 0.1,
	value = 1700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("saiga_delta_20.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_55_762_30"] = {
	fullName = "AK 7.62x39 30-round magazine (issued '55 or later)",
	displayName = "AK55",
	displayType = DISPLAYTYPE,
	description = "A standard 30-round metal magazine for 7.62x39 AK and compatible weapons from 1955 onward. Can also be supplied with .366 TKM ammo for use with the corresponding caliber AK-compatible weapons.",
	weight = 0.4,
	value = 1925,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak55_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_6l10_762_30"] = {
	fullName = "AK 7.62x39 6L10 30-round magazine",
	displayName = "6L10",
	displayType = DISPLAYTYPE,
	description = "A 30-round 6L10 magazine made with an AG-4S moulding compound, for 7.62x39 AK and compatible weapons. Can also be supplied with .366 TKM ammo for use with the corresponding caliber AK-compatible weapons.",
	weight = 0.4,
	value = 2150,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("6l10_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_6l18_545_45"] = {
	fullName = "AK-74 5.45x39 6L18 45-round magazine",
	displayName = "6L18",
	displayType = DISPLAYTYPE,
	description = "45-round bakelite Izhmash 6L26 magazine for 5.45x39 ammo, for AK-74 and compatible systems. Also a standard issue RPK-74 magazine.",
	weight = 0.4,
	value = 4400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("6l18_45.png"),

	sizeX = 1,
	sizeY = 3,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_6l20_545_30"] = {
	fullName = "AK-74 5.45x39 6L20 30-round magazine",
	displayName = "6L20",
	displayType = DISPLAYTYPE,
	description = "A 30-round 5.45x39 6L20 Izhmash bakelite magazine, for AK-74 and compatible systems.",
	weight = 0.2,
	value = 2200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("6l20_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_6l23_545_30"] = {
	fullName = "AK-74 5.45x39 6L23 30-round magazine",
	displayName = "6L23",
	displayType = DISPLAYTYPE,
	description = "A 30-round polymer Izhmash 6L23 magazine for 5.45x39 ammo, for AK-74 and compatible systems.",
	weight = 0.2,
	value = 2180,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("6l23_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_6l23p_545_30"] = {
	fullName = 'AK-74 5.45x39 6L23 "Plum" 30-round magazine',
	displayName = "6L23",
	displayType = DISPLAYTYPE,
	description = 'A 30-round polymer Izhmash 6L23 magazine for 5.45x39 ammo, for AK-74 and compatible systems. Made out of plum-colored polymer, for which has earned the nickname "Sliva" ("Plum").',
	weight = 0.2,
	value = 2180,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("6l23_plum_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_6l26_545_45"] = {
	fullName = "AK-74 5.45x39 6L26 45-round magazine",
	displayName = "6L26",
	displayType = DISPLAYTYPE,
	description = "A 45-round 5.45x39 polymer Izhmash 6L26 magazine for AK-74 and compatible systems.",
	weight = 0.3,
	value = 4100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("6l26_45.png"),

	sizeX = 1,
	sizeY = 3,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_6l29_556_30"] = {
	fullName = "AK-101 5.56x45 6L29 30-round magazine",
	displayName = "6L29",
	displayType = DISPLAYTYPE,
	description = "A 30-round 5.56x45 Izhmash 6L29 polymer magazine for AK-101 and compatible systems.",
	weight = 0.2,
	value = 1805,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("6l29_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_6l31_545_60"] = {
	fullName = "AK-74 5.45x39 6L31 60-round magazine",
	displayName = "6L31",
	displayType = DISPLAYTYPE,
	description = "A 60-round 5.45x39 quad-stack polymer Izhmash 6L31 magazine for AK-74 and compatible systems. Produced in a small batch, never serialized.",
	weight = 0.3,
	value = 15400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("6l31_60.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_6p2bak_762_40"] = {
	fullName = "AK 7.62x39 bakelite 40-round magazine",
	displayName = "6P2 bak.",
	displayType = DISPLAYTYPE,
	description = "A standard 40-round bakelite magazine for the RPK. It fits into 7.62x39 AK and compatible weapons. Can also be supplied with .366 TKM ammo for use with the corresponding caliber AK-compatible weapons.",
	weight = 0.3,
	value = 3900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("bakelite_40.png"),

	sizeX = 1,
	sizeY = 3,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_6p2bak_762_40_blk"] = {
	fullName = "AK 7.62x39 bakelite 40-round magazine",
	displayName = "6P2 bak.",
	displayType = DISPLAYTYPE,
	description = "A standard 40-round bakelite magazine for the RPK. It fits into 7.62x39 AK and compatible weapons. Can also be supplied with .366 TKM ammo for use with the corresponding caliber AK-compatible weapons.",
	weight = 0.3,
	value = 3900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("bakelite_40_blk.png"),

	sizeX = 1,
	sizeY = 3,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_6p2sb11_762_40"] = {
	fullName = "AK 7.62x39 Molot 40-round magazine",
	displayName = "6P2.Sb-11",
	displayType = DISPLAYTYPE,
	description = "The 6P2 Sb-11 standard-issue 40-round 7.62x39 magazine for the RPK LMG from 1961 and onward, fits any AK-compatible weapon. Can also be supplied with .366 TKM ammo for use with the corresponding caliber AK-compatible weapons.",
	weight = 0.5,
	value = 2865,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_molot_40.png"),

	sizeX = 1,
	sizeY = 3,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_ak103_762_30"] = {
	fullName = "AK-103 7.62x39 30-round magazine",
	displayName = "AK-103",
	displayType = DISPLAYTYPE,
	description = "A 30-round bakelite Izhmash magazine for 7.62x39 ammo, for AK-103 and compatible systems. Can also be supplied with .366 TKM ammo for use with the corresponding caliber AK-compatible weapons.",
	weight = 0.2,
	value = 2640,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak103_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_ak12_545_30"] = {
	fullName = "AK-12 5.45x39 30-round magazine",
	displayName = "AK12",
	displayType = DISPLAYTYPE,
	description = "A 30-round 5.45x39 windowed, polymer Izhmash magazine for the AK-12 and compatible systems.",
	weight = 0.2,
	value = 3750,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak12_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_ak12_545_30_old"] = {
	fullName = "AK-12 5.45x39 early model 30-round magazine",
	displayName = "AK-12 old",
	displayType = DISPLAYTYPE,
	description = "An early model of 30-round polymer magazine with windows for ammunition control, for 5.45x39 cartridge for AK-12 and compatible rifles. Manufactured by Izhmash.",
	weight = 0.2,
	value = 3990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak12_old_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_ak30_762_30"] = {
	fullName = 'AK 7.62x39 US Palm "AK30" 30-round magazine',
	displayName = "AK30",
	displayType = DISPLAYTYPE,
	description = "A 30-round polymer US Palm AK30 magazine for 7.62x39 AK and compatible weapons. Can also be supplied with .366 TKM ammo for use with the corresponding caliber AK-compatible weapons.",
	weight = 0.2,
	value = 5880,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak30_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_ak30fde_762_30"] = {
	fullName = 'AK 7.62x39 US Palm "AK30" 30-round magazine (FDE)',
	displayName = "AK30 FDE",
	displayType = DISPLAYTYPE,
	description = "A 30-round polymer US Palm AK30 magazine for 7.62x39 AK and compatible weapons. Can also be supplied with .366 TKM ammo for use with the corresponding caliber AK-compatible weapons.",
	weight = 0.2,
	value = 5880,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak30_fde_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_akms_762_30"] = {
	fullName = "AKMS 7.62x39 aluminium 30-round magazine",
	displayName = "AKMS al.",
	displayType = DISPLAYTYPE,
	description = "A 30-round aluminum magazine for 7.62x39 AKMS and compatibles, nicknamed “Airborne”. Made of light aluminum alloy and reinforced by additional ribs. It's quite a rarity, as it was never in mass production. Can also be supplied with .366 TKM ammo for use with the corresponding caliber AK-compatible weapons.",
	weight = 0.2,
	value = 3600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("akms_al_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_alum_762_10"] = {
	fullName = "AK 7.62x39 aluminium 10-round magazine",
	displayName = "AK al.",
	displayType = DISPLAYTYPE,
	description = "A 10-round aluminum magazine for 7.62x39 AK and compatible weapons, made of light aluminum alloy and reinforced by additional ribs. This modification comes with a 10-round capacity limiter for the civilian market. Can also be supplied with .366 TKM ammo for use with the corresponding caliber AK-compatible weapons.",
	weight = 0.1,
	value = 700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_al_10.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_molot_556_45"] = {
	fullName = "AK 5.56x45 Molot Arms 45-round magazine",
	displayName = "Molot 45",
	displayType = DISPLAYTYPE,
	description = "A 45-round 5.56x45 polymer magazine for AK. Manufactured by Molot Arms.",
	weight = 0.4,
	value = 7455,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_molot_45.png"),

	sizeX = 1,
	sizeY = 3,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_molot_762_75"] = {
	fullName = "AK 7.62x39 Molot 75-round drum magazine",
	displayName = "Molot",
	displayType = DISPLAYTYPE,
	description = "A 75-round metal drum magazine for the RPK light machine gun. It fits in 7.62x39 AK and compatible weapon systems. Can also be supplied with .366 TKM ammo for use with the corresponding caliber AK-compatible weapons.",
	weight = 0.9,
	value = 31600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_molot_75.png"),

	sizeX = 2,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_pmag_545_30"] = {
	fullName = "AK-74 5.45x39 Magpul PMAG 30 GEN M3 30-round magazine",
	displayName = "PMAG",
	displayType = DISPLAYTYPE,
	description = "A 30-round polymer Magpul Pmag 30 AK74 GEN M3 magazine for 5.45x39 AK and compatible weapons.",
	weight = 0.2,
	value = 3800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak74_pmag_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_pmag_545_30_fde"] = {
	fullName = "AK-74 5.45x39 Magpul PMAG 30 GEN M3 30-round magazine FDE",
	displayName = "PMAG (F)",
	displayType = DISPLAYTYPE,
	description = "A 30-round polymer Magpul Pmag 30 AK74 GEN M3 magazine for 5.45x39 AK and compatible weapons. FDE",
	weight = 0.2,
	value = 3800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak74_pmag_fde_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_pmag_762_20"] = {
	fullName = "AK 7.62x39 Magpul PMAG 20 GEN M3 20-round magazine",
	displayName = "GEN M3 20",
	displayType = DISPLAYTYPE,
	description = "A 20-round polymer Magpul PMAG 20 AK/AKM GEN M3 magazine for 7.62x39 AK and compatible weapons. Can also be supplied with .366 TKM ammo for use with the corresponding caliber AK-compatible weapons.",
	weight = 0.1,
	value = 2745,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_pmag_20.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_pmag_762_30"] = {
	fullName = "AK 7.62x39 Magpul PMAG 30 GEN M3 30-round magazine",
	displayName = "GEN M3",
	displayType = DISPLAYTYPE,
	description = "A 30-round polymer Magpul Pmag 30 AK/AKM GEN M3 magazine for 7.62x39 AK and compatible weapons. Can also be supplied with .366 TKM ammo for use with the corresponding caliber AK-compatible weapons.",
	weight = 0.2,
	value = 4760,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_pmag_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_pmag_762_30_fde"] = {
	fullName = "AK 7.62x39 Magpul PMAG 30 GEN M3 30-round magazine FDE",
	displayName = "GEN M3 (F)",
	displayType = DISPLAYTYPE,
	description = "A 30-round polymer Magpul Pmag 30 AK/AKM GEN M3 magazine for 7.62x39 AK and compatible weapons. Can also be supplied with .366 TKM ammo for use with the corresponding caliber AK-compatible weapons. FDE",
	weight = 0.2,
	value = 4760,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_pmag_fde_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_pmag_banana_762_30"] = {
	fullName = "AK 7.62x39 Magpul PMAG 30 GEN M3 30-round magazine (Banana)",
	displayName = "GEN M3 Ban.",
	displayType = DISPLAYTYPE,
	description = "A 30-round polymer Magpul Pmag 30 AK/AKM GEN M3 magazine 7.62x39 AK and compatible weapons. Can also be supplied with .366 TKM ammo for use with the corresponding caliber AK-compatible weapons. The magazine is painted in a tactical banana yellow color.",
	weight = 0.2,
	value = 40000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_pmag_banana_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_promag_762_73"] = {
	fullName = "AK 7.62x39 ProMag AK-A-16 73-round drum magazine",
	displayName = "AK-A-16",
	displayType = DISPLAYTYPE,
	description = "A 73-round polymer ProMag magazine for 7.62x39 AKM and compatible systems.",
	weight = 0.7,
	value = 55300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_pmag_73.png"),

	sizeX = 2,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_ribbed_762_10"] = {
	fullName = "AK 7.62x39 ribbed metal 10-round magazine",
	displayName = "AK ribbed",
	displayType = DISPLAYTYPE,
	description = "A custom-cut ribbed metal 7.62x39mm 10-round magazine for AK-compatible systems. Made by sawing off a military magazine to comply with the Russian Federation's laws for use with civilian firearms. Can also be supplied with .366 TKM ammo for use with the corresponding caliber AK-compatible weapons.",
	weight = 0.2,
	value = 900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_metal_10.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_rpk16_545_95"] = {
	fullName = "RPK-16 5.45x39 95-round drum magazine",
	displayName = "RPK16",
	displayType = DISPLAYTYPE,
	description = "A 95-round 5.45x39 polymer Izhmash magazine, for the RPK-16 and compatible systems.",
	weight = 0.7,
	value = 47880,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rpk_95.png"),

	sizeX = 2,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_slr106_556_30"] = {
	fullName = "SLR-106/AK 5.56x45 Circle 10 30-round magazine",
	displayName = "C-10 AK",
	displayType = DISPLAYTYPE,
	description = 'A Bulgarian 30-round 5.56x45 "Waffle Pattern" magazine for the SLR-106 civilian AK-based rifles. Manufactured by Circle 10 and distributed by Arsenal Inc.',
	weight = 0.4,
	value = 4390,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("slr106_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_slr106_556_30_blk"] = {
	fullName = "SLR-106/AK 5.56x45 Circle 10 30-round magazine",
	displayName = "C-10 AK",
	displayType = DISPLAYTYPE,
	description = 'A Bulgarian 30-round 5.56x45 "Waffle Pattern" magazine for the SLR-106 civilian AK-based rifles. Manufactured by Circle 10 and distributed by Arsenal Inc.',
	weight = 0.4,
	value = 4390,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("slr106_30_blk.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_std_545_10"] = {
	fullName = 'AK-74 "Saiga 545" 5.45x39 10-round magazine',
	displayName = "Saiga",
	displayType = DISPLAYTYPE,
	description = "A 10-round 5.45x39 Izhmash polymer magazine Saiga 545, for the AK-based civilian carbine of the same name.",
	weight = 0.1,
	value = 1225,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("saiga_10.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_ultimag_762_30"] = {
	fullName = "AK 7.62x39 FAB Defense Ultimag 30R 30-round magazine",
	displayName = "Ultimag",
	displayType = DISPLAYTYPE,
	description = "A 30-round windowed polymer magazine for 7.62x39 AKs and compatible weapons, manufactured by FAB Defense. Can also be supplied with .366 TKM ammo for use with the corresponding caliber AK-compatible weapons.",
	weight = 0.2,
	value = 2655,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_fab_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ak_x47_762_50"] = {
	fullName = "AK 7.62x39 X Products X-47 50-round drum magazine",
	displayName = "X-47 7.62",
	displayType = DISPLAYTYPE,
	description = "The X-47 is a 50-round drum magazine for 7.62x39 AK family assault rifles. Manufactured by X Products. Can also be supplied with .366 TKM ammo for use with the corresponding caliber AK-compatible weapons.",
	weight = 0.7,
	value = 29700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_x47_50.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ar15_battlemag_30"] = {
	fullName = "5.56x45 TROY BattleMag STANAG 30-round magazine",
	displayName = "BattleMag",
	displayType = DISPLAYTYPE,
	description = "30-round polymer TROY Battlemag magazine, for 5.56x45 ammunition.",
	weight = 0.1,
	value = 7020,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("556_battlemag_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ar15_beta_100"] = {
	fullName = "5.56x45 Beta C-Mag 100-round drum magazine",
	displayName = "C-Mag 100",
	displayType = DISPLAYTYPE,
	description = "A 100-round double drum magazine for the AR-15 platform weapons. Manufactured by Beta Company.",
	weight = 1,
	value = 31440,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("556_cmag_100.png"),

	sizeX = 2,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ar15_hkpmgen2"] = {
	fullName = "5.56x45 HK PM Gen.2 STANAG 30-round magazine",
	displayName = "PM Gen.2",
	displayType = DISPLAYTYPE,
	description = "30-round polymer HK PM Gen.2 magazine, for 5.56x45 ammunition.",
	weight = 0.2,
	value = 4090,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("556_pm_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ar15_hkstanag"] = {
	fullName = "5.56x45 HK 30 STANAG polymer 30-round magazine",
	displayName = "Polymer mag",
	displayType = DISPLAYTYPE,
	description = "30-round polymer HK Polymer mag magazine, for 5.56x45 ammunition.",
	weight = 0.1,
	value = 4410,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hkpoly.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ar15_hkstanag_blk"] = {
	fullName = "5.56x45 HK 30 STANAG polymer 30-round magazine",
	displayName = "Polymer mag",
	displayType = DISPLAYTYPE,
	description = "30-round polymer HK Polymer mag magazine, for 5.56x45 ammunition.",
	weight = 0.1,
	value = 4410,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hkpoly_blk.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ar15_hksteel"] = {
	fullName = "5.56x45 HK Steel Maritime STANAG 30-round magazine",
	displayName = "HK Steel",
	displayType = DISPLAYTYPE,
	description = "30-round HK Steel Maritime magazine designed in compliance with STANAG 4179 standard for 5.56x45 ammo.",
	weight = 0.3,
	value = 3665,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("556_steel_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ar15_mk16_30"] = {
	fullName = "FN SCAR-L 5.56x45 30-round magazine",
	displayName = "Mk16",
	displayType = DISPLAYTYPE,
	description = "A 30-round 5.56x45 metal magazine designed for the SCAR-series weapons.",
	weight = 0.1,
	value = 3660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scarl_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ar15_mk16_30_f"] = {
	fullName = "FN SCAR-L 5.56x45 30-round magazine (FDE)",
	displayName = "Mk16",
	displayType = DISPLAYTYPE,
	description = "A 30-round 5.56x45 metal magazine designed for the SCAR-series weapons. Flat dark earth.",
	weight = 0.1,
	value = 3660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scarl_fde_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ar15_pmag_10"] = {
	fullName = "5.56x45 Magpul PMAG 10 GEN M3 STANAG 10-round magazine",
	displayName = "GEN M3 10",
	displayType = DISPLAYTYPE,
	description = "10-round polymer Magpul PMAG GEN M3 10 magazine, for 5.56x45 ammunition.",
	weight = 0.1,
	value = 2300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("556_gen_10.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ar15_pmag_20"] = {
	fullName = "5.56x45 Magpul PMAG 20 GEN M3 STANAG 20-round magazine",
	displayName = "GEN M3 20",
	displayType = DISPLAYTYPE,
	description = "20-round polymer Magpul PMAG GEN M3 20 magazine, for 5.56x45 ammunition.",
	weight = 0.1,
	value = 2820,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("556_gen_20.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ar15_pmag_30"] = {
	fullName = "5.56x45 Magpul PMAG 30 GEN M3 STANAG 30-round magazine",
	displayName = "GEN M3 30",
	displayType = DISPLAYTYPE,
	description = "30-round polymer Magpul PMAG GEN M3 30 magazine, for 5.56x45 ammunition.",
	weight = 0.1,
	value = 5640,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("556_gen_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ar15_pmag_30_f"] = {
	fullName = "5.56x45 Magpul PMAG 30 GEN M3 STANAG 30-round magazine (FDE)",
	displayName = "GEN M3 30",
	displayType = DISPLAYTYPE,
	description = "30-round polymer Magpul PMAG GEN M3 30 magazine, for 5.56x45 ammunition. Flat dark earth.",
	weight = 0.1,
	value = 5640,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("556_gen_fde_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ar15_pmag_30_w_f"] = {
	fullName = "5.56x45 Magpul PMAG 30 GEN M3 W STANAG 30-round magazine (FDE)",
	displayName = "GEN M3 30",
	displayType = DISPLAYTYPE,
	description = "30-round polymer Magpul PMAG GEN M3 30 magazine, for 5.56x45 ammunition, with an observation slot. Flat dark earth.",
	weight = 0.1,
	value = 5985,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("556_genw_fde_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ar15_pmag_40"] = {
	fullName = "5.56x45 Magpul PMAG 40 GEN M3 STANAG 40-round magazine",
	displayName = "GEN M3 40",
	displayType = DISPLAYTYPE,
	description = "40-round polymer Magpul PMAG GEN M3 40 magazine, for 5.56x45 ammunition.",
	weight = 0.2,
	value = 11985,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("556_gen_40.png"),

	sizeX = 1,
	sizeY = 3,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ar15_pmag_40_f"] = {
	fullName = "5.56x45 Magpul PMAG 40 GEN M3 STANAG 40-round magazine (FDE)",
	displayName = "GEN M3 40",
	displayType = DISPLAYTYPE,
	description = "40-round polymer Magpul PMAG GEN M3 40 magazine, for 5.56x45 ammunition. Flat dark earth.",
	weight = 0.2,
	value = 11985,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("556_gen_fde_40.png"),

	sizeX = 1,
	sizeY = 3,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ar15_pmag_60"] = {
	fullName = "5.56x45 Magpul PMAG D-60 STANAG 60-round magazine",
	displayName = "PMAG D60",
	displayType = DISPLAYTYPE,
	description = "The Magpul PMAG D-60 polymer 60-round magazine for 5.56x45 rounds.",
	weight = 0.6,
	value = 24995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("556_gen_60.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ar15_pmag_w_30"] = {
	fullName = "5.56x45 Magpul PMAG 30 GEN M3 W STANAG 30-round magazine",
	displayName = "GEN M3 30",
	displayType = DISPLAYTYPE,
	description = "30-round polymer Magpul PMAG GEN M3 30 magazine, for 5.56x45 ammunition, with an observation slot.",
	weight = 0.1,
	value = 5985,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("556_genw_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ar15_stanag_20"] = {
	fullName = "AR-15 5.56x45 Colt STANAG 20-round magazine",
	displayName = "STANAG 20",
	displayType = DISPLAYTYPE,
	description = "A classic 20-round 5.56x45 magazine for AR-15. Manufactured by Colt.",
	weight = 0.1,
	value = 2115,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("556_colt_20.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ar15_stanag_30"] = {
	fullName = "5.56x45 Colt AR-15 STANAG 30-round magazine",
	displayName = "STANAG",
	displayType = DISPLAYTYPE,
	description = "A 30-round metal Colt AR-15 magazine designed in compliance with the STANAG 4179 standard for 5.56x45 ammo. The STANAG 4179 standard was approved by NATO members in 1980 for the unification of allied personnel ammo and magazines.",
	weight = 0.1,
	value = 3800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("556_colt_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ar15_surefire_100"] = {
	fullName = "5.56x45 SureFire MAG5-100 STANAG 100-round magazine",
	displayName = "MAG5-100",
	displayType = DISPLAYTYPE,
	description = "A 100-round 5.56x45 SureFire MAG5-100 metal high capacity magazine.",
	weight = 0.3,
	value = 37765,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("556_surefire_100.png"),

	sizeX = 1,
	sizeY = 3,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_ar15_surefire_60"] = {
	fullName = "5.56x45 SureFire MAG5-60 STANAG 60-round magazine",
	displayName = "MAG5-60",
	displayType = DISPLAYTYPE,
	description = "A 60-round 5.56x45 SureFire MAG5-60 metal high capacity magazine.",
	weight = 0.2,
	value = 23980,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("556_surefire_60.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_bigstick24"] = {
	fullName = 'Glock 9x19 "Big Stick" 24-round magazine (Coyote)',
	displayName = "Big Stick",
	displayType = DISPLAYTYPE,
	description = "A factory-produced 24-round 9x19 magazine for Glock pistols.",
	weight = 0.1,
	value = 2875,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_coyote_24.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_bigstick31"] = {
	fullName = 'Glock 9x19 "Big Stick" 31-round magazine (Coyote)',
	displayName = "Big Stick",
	displayType = DISPLAYTYPE,
	description = "A factory-produced 31-round 9x19 magazine for Glock pistols.",
	weight = 0.1,
	value = 3400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_coyote_31.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_deagle_7"] = {
	fullName = "Desert Eagle .50 AE 7-round magazine",
	displayName = "DE .50 AE",
	displayType = DISPLAYTYPE,
	description = "A standard-issue 7-round .50 AE magazine for the Desert Eagle pistol. Manufactured by Magnum Research.",
	weight = 0.2,
	value = 1350,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("deagle50_7.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_deagle_9"] = {
	fullName = "Desert Eagle .357 9-round magazine",
	displayName = "DE .357",
	displayType = DISPLAYTYPE,
	description = "A standard-issue 9-round .357 Magnum magazine for the Desert Eagle L5 pistol. Manufactured by Magnum Research.",
	weight = 0.2,
	value = 1300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("deagle357_9.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_g17_bigstick_33"] = {
	fullName = 'Glock 9x19 "Big Stick" 33-round magazine',
	displayName = "Big Stick",
	displayType = DISPLAYTYPE,
	description = "A factory-produced 33-round 9x19 magazine for Glock pistols.",
	weight = 0.1,
	value = 4550,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_33.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_g17_gl9_21"] = {
	fullName = "Glock 9x19 Magpul PMAG GL9 21-round magazine",
	displayName = "GL9",
	displayType = DISPLAYTYPE,
	description = "A 21-round GL9 polymer magazine, manufactured by Magpul.",
	weight = 0.1,
	value = 2135,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_21.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_g17_sgmt_50"] = {
	fullName = "Glock 9x19 SGM Tactical 50-round drum magazine",
	displayName = "G SGMT",
	displayType = DISPLAYTYPE,
	description = "A high-capacity 50-round magazine for the Glock family pistols. Made in Korea and imported by SGM Tactical. Can hold even more than 50 rounds, but the manufacturer does not recommend loading more.",
	weight = 0.6,
	value = 12750,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_50.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_g17_std_17"] = {
	fullName = "Glock 9x19 17-round magazine",
	displayName = "Glock 9x19",
	displayType = DISPLAYTYPE,
	description = "A standard-issue 17-round 9x19 magazine for Glock pistols.",
	weight = 0.1,
	value = 1475,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_17.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_g19x"] = {
	fullName = "Glock 9x19 19-round magazine (Coyote)",
	displayName = "G19X",
	displayType = DISPLAYTYPE,
	description = "A 19-round 9x19 magazine for Glock 19X pistols. Coyote version..",
	weight = 0.1,
	value = 2070,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_coyote_19.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_m9a3_ext"] = {
	fullName = "M9A3 9x19 CX4 30-round magazine",
	displayName = "CX4 30",
	displayType = DISPLAYTYPE,
	description = "A 30-round 9x19 magazine for the Beretta M9A3 pistol",
	weight = 0.1,
	value = 4945,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m9a3_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_m9a3_std"] = {
	fullName = "M9A3 9x19 17-round magazine",
	displayName = "M9A3 17",
	displayType = DISPLAYTYPE,
	description = "A standard 17-round 9x19 magazine for the Beretta M9A3 pistol.",
	weight = 0.1,
	value = 2400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m9a3_17.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_mp443_std"] = {
	fullName = "MP-443 Grach 9x19 18-round magazine",
	displayName = "MP-443 18",
	displayType = DISPLAYTYPE,
	description = "Standard 18-round 9x19 magazine for MP-443 Grach.",
	weight = 0.1,
	value = 1670,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp443_18.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_p226_15"] = {
	fullName = "P226 9x19 15-round magazine",
	displayName = "P226 15",
	displayType = DISPLAYTYPE,
	description = "A standard 15-round 9x19 magazine for the SIG Sauer P226 pistol.",
	weight = 0.1,
	value = 2800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_15.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_p226_20"] = {
	fullName = "P226 9x19 20-round extended magazine",
	displayName = "P226 20",
	displayType = DISPLAYTYPE,
	description = "A 20-round 9x19 extended magazine for the SIG Sauer P226 pistol.",
	weight = 0.1,
	value = 3940,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_20.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_pl15_std"] = {
	fullName = "PL-15 9x19 16-round magazine",
	displayName = "PL-15 16",
	displayType = DISPLAYTYPE,
	description = "A standard-issue 16-round magazine for the PL-15 9x19 pistol.",
	weight = 0.1,
	value = 1500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pl15_16.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_sr1mp_std"] = {
	fullName = "SR-1MP 9x21 18-round magazine",
	displayName = "SR-1MP 18",
	displayType = DISPLAYTYPE,
	description = "A standard 18-round 9x21 magazine for the SR-1MP pistol.",
	weight = 0.1,
	value = 1640,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr1mp_18.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_toz106_2"] = {
	fullName = "TOZ-106 20ga MTs 20-01 Sb.3 2-shot magazine",
	displayName = "20-01 Sb.3x2",
	displayType = DISPLAYTYPE,
	description = "A 2-shot 20 gauge magazine for MTs 20-01 and TOZ-106 hunting shotguns.",
	weight = 0.1,
	value = 500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("toz_2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_toz106_4"] = {
	fullName = "TOZ-106 20ga MTs 20-01 Sb.3 4-shot magazine",
	displayName = "Sb.3x4",
	displayType = DISPLAYTYPE,
	description = "A 4-shot 20ga magazine for the MTs 20-01 and TOZ-106 hunting shotguns.",
	weight = 0.1,
	value = 1110,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("toz_4.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_toz106_5"] = {
	fullName = "TOZ-106 20ga MTs 20-01 Sb.3 5-shot magazine",
	displayName = "Sb.3x5",
	displayType = DISPLAYTYPE,
	description = "A 5-shot 20ga magazine for MTs 20-01 and TOZ-106 hunting shotguns.",
	weight = 0.1,
	value = 1480,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("toz_5.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_usp_std"] = {
	fullName = "HK USP .45 ACP 12-round magazine",
	displayName = "USP45",
	displayType = DISPLAYTYPE,
	description = "A standard-issue 12-round .45 ACP magazine for the USP45 pistol.",
	weight = 0.1,
	value = 2960,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp_12.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mag_usp_tac"] = {
	fullName = "HK USP Tactical .45 ACP 12-round magazine",
	displayName = "USP45T",
	displayType = DISPLAYTYPE,
	description = "A standard-issue 12-round .45 ACP magazine for the USP45 pistol.",
	weight = 0.1,
	value = 3010,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp_tac_12.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mk18_mag10"] = {
	fullName = "Mk-18 .338 LM 10-round magazine",
	displayName = "Mk-18",
	displayType = DISPLAYTYPE,
	description = "A 10-round Mk-18 magazine for .338 LM ammunition, manufactured by SWORD International.",
	weight = 0.6,
	value = 16860,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mk18_10.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_mag_10"] = {
	fullName = "Mosin Rifle 7.62x54R ProMag Archangel OPFOR 10-round magazine",
	displayName = "AA762R 02",
	displayType = DISPLAYTYPE,
	description = "A detachable 10-round magazine for the Archangel Mosin Rifle kit, manufactured by ProMag.",
	weight = 0.2,
	value = 6430,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_promag_10.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_mag_5"] = {
	fullName = "Mosin Rifle 7.62x54R 5-round magazine",
	displayName = "Mosin",
	displayType = DISPLAYTYPE,
	description = "A standard 7.62x54R 5-round magazine designed for the Mosin rifle. The magazine is installed into the rifle internally and cannot be ejected on the spot, so it's not recommended to take multiple of them into a raid.",
	weight = 0.4,
	value = 1000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_5.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp5_mag_20"] = {
	fullName = "HK MP5 9x19 20-round magazine",
	displayName = "MP5 20",
	displayType = DISPLAYTYPE,
	description = "A standard 20-round 9x19 magazine for the MP5 SMG, manufactured by Heckler & Koch.",
	weight = 0.1,
	value = 1035,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp5_20.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp5_mag_30"] = {
	fullName = "HK MP5 9x19 30-round magazine",
	displayName = "MP5 30",
	displayType = DISPLAYTYPE,
	description = "A standard 30-round 9x19 magazine for the MP5 SMG, manufactured by Heckler & Koch.",
	weight = 0.2,
	value = 4000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp5_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp5_mag_50"] = {
	fullName = "HK MP5 9x19 X Products X-5 50-round drum magazine",
	displayName = "MP5 X-5 50",
	displayType = DISPLAYTYPE,
	description = "A 50-round 9x19 drum magazine for the MP5 submachine gun. Manufactured by X Products.",
	weight = 0.6,
	value = 13400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp5_50.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp7_mag_20"] = {
	fullName = "HK MP7 4.6x30 20-round magazine",
	displayName = "MP7 20",
	displayType = DISPLAYTYPE,
	description = "A standard 20-round 4.6x30 magazine for the MP7 SMGs, manufactured by Heckler & Koch.",
	weight = 0.1,
	value = 2555,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp7_20.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp7_mag_30"] = {
	fullName = "HK MP7 4.6x30 30-round magazine",
	displayName = "MP7 30",
	displayType = DISPLAYTYPE,
	description = "A standard 30-round 4.6x30 magazine for the MP7 SMGs, manufactured by Heckler & Koch.",
	weight = 0.2,
	value = 7800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp7_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp7_mag_40"] = {
	fullName = "HK MP7 4.6x30 40-round magazine",
	displayName = "MP7 40",
	displayType = DISPLAYTYPE,
	description = "A standard 30-round 4.6x30 magazine for the MP7 SMGs, manufactured by Heckler & Koch.",
	weight = 0.2,
	value = 13590,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp7_40.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp9_mag_15"] = {
	fullName = "MP9 9x19 15-round magazine",
	displayName = "MP9 15",
	displayType = DISPLAYTYPE,
	description = "A standard 15-round capacity polymer magazine for MP9-based SMGs, manufactured by Brügger & Thomet.",
	weight = 0.05,
	value = 525,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp9_15.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp9_mag_20"] = {
	fullName = "MP9 9x19 20-round magazine",
	displayName = "MP9 20",
	displayType = DISPLAYTYPE,
	description = "A standard 20-round capacity polymer magazine for MP9-based SMGs, manufactured by Brügger & Thomet.",
	weight = 0.05,
	value = 2430,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp9_20.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp9_mag_25"] = {
	fullName = "MP9 9x19 25-round magazine",
	displayName = "MP9 25",
	displayType = DISPLAYTYPE,
	description = "A standard 25-round capacity polymer magazine for MP9-based SMGs, manufactured by Brügger & Thomet.",
	weight = 0.1,
	value = 3380,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp9_25.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp9_mag_30"] = {
	fullName = "MP9 9x19 30-round magazine",
	displayName = "MP9 30",
	displayType = DISPLAYTYPE,
	description = "A standard 30-round capacity polymer magazine for MP9-based SMGs, manufactured by Brügger & Thomet.",
	weight = 0.1,
	value = 6250,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp9_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_mag_20"] = {
	fullName = "MPX 9x19 20-round magazine",
	displayName = "MPX 20",
	displayType = DISPLAYTYPE,
	description = "A standard 20-round capacity 9x19mm MPX magazine, manufactured by SIG Sauer.",
	weight = 0.1,
	value = 1940,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_20.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_mag_30"] = {
	fullName = "MPX 9x19 30-round magazine",
	displayName = "MPX 30",
	displayType = DISPLAYTYPE,
	description = "A standard 30-round capacity semitransparent 9x19mm MPX magazine, manufactured by SIG Sauer.",
	weight = 0.2,
	value = 2800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_mag_41"] = {
	fullName = 'MPX 9x19 TTI "Base Pad +11" 41-round magazine',
	displayName = "MPX TTI 41",
	displayType = DISPLAYTYPE,
	description = "A standard 30-round 9x19 MPX magazine that comes with an attached +11-round base pad, produced by Taran Tactical Innovations. This brings the total magazine capacity to 41 rounds.",
	weight = 0.3,
	value = 5260,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_41.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_mag_50"] = {
	fullName = "MPX 9x19 F5 MFG 50-round drum magazine",
	displayName = "MPX Drum 50",
	displayType = DISPLAYTYPE,
	description = "An MPX 9x19 drum magazine with a 50-round capacity. Manufactured by F5 MFG.",
	weight = 0.6,
	value = 14100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_50.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr133_mag_6"] = {
	fullName = "MP-133 12ga 6-shell magazine",
	displayName = "MP-133 6",
	displayType = DISPLAYTYPE,
	description = "A 6-shell capacity 12 gauge tube magazine by Izhmekh, for MP-133 shotguns.",
	weight = 0.2,
	value = 1320,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp133_6.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr133_mag_8"] = {
	fullName = "MP-133 12ga 8-shell magazine",
	displayName = "MP-133 8",
	displayType = DISPLAYTYPE,
	description = "An 8-shell capacity 12 gauge tube magazine by Izhmekh, for MP-133 shotguns.",
	weight = 0.3,
	value = 2410,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp133_8.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr153_mag_4"] = {
	fullName = "MP-153 12ga 4-shell magazine cap",
	displayName = "MP-153 4",
	displayType = DISPLAYTYPE,
	description = "An MP-153 12ga 30x25 forend cap.",
	weight = 0.1,
	value = 400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp153_4.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr153_mag_5"] = {
	fullName = "MP-153 12ga 5-shell magazine",
	displayName = "MP-153 5",
	displayType = DISPLAYTYPE,
	description = "A 5-shell magazine extension tube for MP-153 12 gauge shotguns.",
	weight = 0.1,
	value = 940,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp153_5.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr153_mag_6"] = {
	fullName = "MP-153 12ga 6-shell magazine",
	displayName = "MP-153 6",
	displayType = DISPLAYTYPE,
	description = "A 6-shell magazine extension tube for MP-153 12 gauge shotguns.",
	weight = 0.1,
	value = 1285,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp153_6.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr153_mag_7"] = {
	fullName = "MP-153 12ga 7-shell magazine",
	displayName = "MP-153 7",
	displayType = DISPLAYTYPE,
	description = "A 7-shell magazine extension tube for MP-153 12 gauge shotguns.",
	weight = 0.1,
	value = 1745,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp153_7.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr153_mag_8"] = {
	fullName = "MP-153 12ga 8-shell magazine",
	displayName = "MP-153 8",
	displayType = DISPLAYTYPE,
	description = "An 8-shell magazine extension tube for MP-153 12 gauge shotguns.",
	weight = 0.3,
	value = 2225,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp153_8.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr155_mag_6"] = {
	fullName = "MP-155 12ga 6-shell magazine",
	displayName = "MP-155 6",
	displayType = DISPLAYTYPE,
	description = "A 6-shell magazine extension tube for MP-155 12 gauge shotguns.",
	weight = 0.1,
	value = 1280,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp155_6.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mts255_mag_std"] = {
	fullName = "MTs-255-12 12ga cylinder",
	displayName = "MTs-255 cyl.",
	displayType = DISPLAYTYPE,
	description = "A standard-issue cylinder for the MTs-255-12 revolver shotgun.",
	weight = 0.2,
	value = 840,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mts255.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_mag_5"] = {
	fullName = "MXLR .308 ME 5-round magazine",
	displayName = "MXLR",
	displayType = DISPLAYTYPE,
	description = "A 5-round .308 ME tube magazine for the Marlin MXLR rifle.",
	weight = 0.3,
	value = 1800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr_5.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_p90_mag_std"] = {
	fullName = "FN P90 5.7x28 50-round magazine",
	displayName = "P90",
	displayType = DISPLAYTYPE,
	description = "A 50-round polymer magazine for the 5.7x28mm FN P90 SMG.",
	weight = 0.4,
	value = 7325,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p90_50.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_pkm_mag_100"] = {
	fullName = "PK 7.62x54R 100-round box",
	displayName = "PK",
	displayType = DISPLAYTYPE,
	description = "A standard-issue 100-round ammunition box for 7.62x54R ammo for Kalashnikov Machine gun. Manufactured by V.A. Degtyarev Plant.",
	weight = 1.5,
	value = 17250,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pkm_100.png"),

	sizeX = 2,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_pkm_mag_100_blk"] = {
	fullName = "PK 7.62x54R 100-round box",
	displayName = "PK",
	displayType = DISPLAYTYPE,
	description = "A standard-issue 100-round ammunition box for 7.62x54R ammo for Kalashnikov Machine gun. Manufactured by V.A. Degtyarev Plant.",
	weight = 1.5,
	value = 17250,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pkm_100_blk.png"),

	sizeX = 2,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_pm_mag_8"] = {
	fullName = "PM 9x18PM 90-93 8-round magazine",
	displayName = "PM 8",
	displayType = DISPLAYTYPE,
	description = "A standard 8-round magazine for IzhMekh-produced Makarov PM pistols. It features a side observation slot for checking the magazine capacity.",
	weight = 0.05,
	value = 1000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pm_8.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_pm_mag_84"] = {
	fullName = "PM 9x18PM 84-round makeshift drum magazine",
	displayName = "PM drum 84",
	displayType = DISPLAYTYPE,
	description = "A makeshift 84-round PM magazine. First assembled by an unknown genius by combining PM and PPSH magazines into a single design for operations in narrow spaces with the aid of ballistic shields. Although it was never serialized even in the smallest number, it can be crafted pretty easily, provided you have the donor mags and skillful hands.",
	weight = 0.4,
	value = 9600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pm_84.png"),

	sizeX = 2,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ppsh41_mag_35"] = {
	fullName = "PPSh-41 7.62x25 35-round magazine",
	displayName = "PPSh 35",
	displayType = DISPLAYTYPE,
	description = "A 35-round 7.62x25 steel magazine for the PPSh-41.",
	weight = 0.4,
	value = 2860,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ppsh_35.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ppsh41_mag_71"] = {
	fullName = "PPSh-41 7.62x25 71-round drum magazine",
	displayName = "PPSh 71",
	displayType = DISPLAYTYPE,
	description = "A 71-round 7.62x25 steel drum magazine for the PPSh-41.",
	weight = 0.9,
	value = 16005,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ppsh_71.png"),

	sizeX = 2,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rhino_mag_std"] = {
	fullName = "Chiappa Rhino 6-round cylinder",
	displayName = "CR cyl.",
	displayType = DISPLAYTYPE,
	description = "6-round cylinder for Chiappa Rhino.",
	weight = 0.1,
	value = 610,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("chiappa_6.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rpd_mag_100"] = {
	fullName = 'RPD 7.62x39 "Buben" 100-round box',
	displayName = "Buben",
	displayType = DISPLAYTYPE,
	description = 'A standard-issue 100-round box for the RPD machine gun nicknamed "Buben" for its round shape. Manufactured by V.A. Degtyarev Plant.',
	weight = 0.8,
	value = 23400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rpd_100.png"),

	sizeX = 2,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rsh12_mag_std"] = {
	fullName = "RSh-12 12.7x55 5-round cylinder",
	displayName = "RSh12 cyl.",
	displayType = DISPLAYTYPE,
	description = "A 5-round 12.7x55 cylinder for the RSh-12 revolver.",
	weight = 0.2,
	value = 3580,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rsh12_5.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_mag_10"] = {
	fullName = "SA-58/FAL 7.62x51 10-round magazine",
	displayName = "SA58/FAL 10",
	displayType = DISPLAYTYPE,
	description = "A 10-round double-stack steel magazine for FAL/SA-58 7.62x51 NATO rounds.",
	weight = 0.2,
	value = 2340,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_10.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_mag_20"] = {
	fullName = "SA-58/FAL 7.62x51 20-round magazine",
	displayName = "SA58/FAL 20",
	displayType = DISPLAYTYPE,
	description = "A 20-round double-stack steel magazine for FAL/SA-58 7.62x51 NATO rounds.",
	weight = 0.3,
	value = 3775,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_20.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_mag_20mmw"] = {
	fullName = "SA-58/FAL 7.62x51 MMW polymer 20-round magazine",
	displayName = "SA58 MMW 20",
	displayType = DISPLAYTYPE,
	description = "A 20-round double-stack plastic magazine for FAL/SA-58 7.62x51 NATO rounds. Manufactured by Moses Machine Works.",
	weight = 0.3,
	value = 3490,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mmw_20.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_mag_20mmw_blk"] = {
	fullName = "SA-58/FAL 7.62x51 MMW polymer 20-round magazine",
	displayName = "SA58 MMW 20",
	displayType = DISPLAYTYPE,
	description = "A 20-round double-stack plastic magazine for FAL/SA-58 7.62x51 NATO rounds. Manufactured by Moses Machine Works.",
	weight = 0.3,
	value = 3490,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mmw_20_blk.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_mag_30"] = {
	fullName = "SA-58/FAL 7.62x51 30-round magazine",
	displayName = "SA58/FAL 30",
	displayType = DISPLAYTYPE,
	description = "A 30-round double-stack steel magazine for FAL/SA-58 7.62x51 NATO rounds.",
	weight = 0.5,
	value = 4455,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_mag_30l"] = {
	fullName = "SA-58/FAL 7.62x51 30-round magazine (SLR)",
	displayName = "L1A1 30",
	displayType = DISPLAYTYPE,
	description = "A 30-round double-stack steel 7.62x51 magazine for L1A1 Self-Loading Rifle (SLR), a British version of FN FAL.",
	weight = 0.5,
	value = 4880,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_slr_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_mag_50"] = {
	fullName = "SA-58/FAL 7.62x51 X Products X-FAL 50-round drum magazine",
	displayName = "X-FAL 50",
	displayType = DISPLAYTYPE,
	description = "X-FAL is a 50-round drum magazine for FAL/SA-58 7.62x51 NATO rounds. Manufactured by X Products.",
	weight = 0.7,
	value = 20395,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_50.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_saiga12_magazine_md20"] = {
	fullName = "SOK-12 12ga MD Arms 20-round drum magazine",
	displayName = "MD Arms",
	displayType = DISPLAYTYPE,
	description = "The MD Arms 20-shell drum magazine for SOK-12 and compatible weapons, intended for use with 12/76 or 12/70 shells.",
	weight = 0.6,
	value = 38880,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sok12_md_20.png"),

	sizeX = 2,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_saiga12_magazine_powermag"] = {
	fullName = "SOK-12 12/76 MaxRounds Powermag 20-round magazine",
	displayName = "Powermag",
	displayType = DISPLAYTYPE,
	description = "The MaxRounds Powermag 20-shell magazine for SOK-12 and compatible weapons, intended for use with 12/76 or 12/70 shells.",
	weight = 0.6,
	value = 44555,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sok12_max_20.png"),

	sizeX = 2,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_saiga12_magazine_promag"] = {
	fullName = "SOK-12 12/76 SAI-02 10-round magazine",
	displayName = "SAI-02",
	displayType = DISPLAYTYPE,
	description = "The SAI-02 is a 10-round polymer magazine for SOK-12 and compatible weapons, intended for use with 12/76 or 12/70 shells. Manufactured by ProMag.",
	weight = 0.2,
	value = 4440,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sok12_10.png"),

	sizeX = 1,
	sizeY = 3,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_saiga12_magazine_std"] = {
	fullName = "SOK-12 12/76 sb.5 5-round magazine",
	displayName = "Sb.5",
	displayType = DISPLAYTYPE,
	description = "A 5-round Sb.5 polymer plastic magazine for the SOK-12 and compatible weapons, intended for use with 12/76 or 12/70 shells.",
	weight = 0.2,
	value = 1780,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sok12_5.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sako_mag338"] = {
	fullName = "Sako TRG M10 .338 LM 8-round magazine",
	displayName = "M10 .338",
	displayType = DISPLAYTYPE,
	description = "An 8-round .338 Lapua Magnum magazine for the TRG M10 sniper rifle, manufactured by Sako.",
	weight = 0.2,
	value = 12820,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("trg_8.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_mag_h20"] = {
	fullName = "FN SCAR-H 7.62x51 20-round magazine",
	displayName = "Mk17",
	displayType = DISPLAYTYPE,
	description = "A 20-round magazine for the FN SCAR-H 7.62x51 battle rifle.",
	weight = 0.3,
	value = 5350,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scarh_20.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_mag_h20_f"] = {
	fullName = "FN SCAR-H 7.62x51 20-round magazine (FDE)",
	displayName = "Mk17 (F)",
	displayType = DISPLAYTYPE,
	description = "A 20-round magazine for the FN SCAR-H 7.62x51 battle rifle. Flat Dark Earth version.",
	weight = 0.3,
	value = 5350,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scarh_fde_20.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_mag_10"] = {
	fullName = "SKS 7.62x39 10-round internal box magazine",
	displayName = "SKS int.",
	displayType = DISPLAYTYPE,
	description = "A standard 7.62x39 10-round magazine designed for the SKS carbine. The magazine is installed into the rifle internally and cannot be ejected on the spot, so it's not recommended to take multiple of them into a raid.",
	weight = 0.2,
	value = 900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sks_10.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_mag_20"] = {
	fullName = "SKS 7.62x39 TAPCO 6610 20-round magazine",
	displayName = "6610 20",
	displayType = DISPLAYTYPE,
	description = "A 20-round polymer detachable SKS magazine for 7.62x39 cartridges.",
	weight = 0.1,
	value = 8050,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sks_20.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_mag_35"] = {
	fullName = "SKS 7.62x39 ProMag AALVX 35-round magazine",
	displayName = "SKS AALVX 35",
	displayType = DISPLAYTYPE,
	description = "A 35-round polymer detachable SKS magazine for 7.62x39 cartridges.",
	weight = 0.2,
	value = 13340,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sks_35.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_mag_75"] = {
	fullName = "SKS 7.62x39 KCI 75-round drum magazine",
	displayName = "KCI SKS 75",
	displayType = DISPLAYTYPE,
	description = "The KCI 75-round blued steel magazine is designed for use with the SKS carbines that accept external magazines. Two exterior latches open the rear of the drum, allowing the user to reload without fighting spring tension and store the drum long-term with zero tension on the spring.",
	weight = 1,
	value = 26950,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sks_75.png"),

	sizeX = 2,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sr2m_mag_20"] = {
	fullName = "SR-2M 9x21 20-round magazine",
	displayName = "SR-2M 20",
	displayType = DISPLAYTYPE,
	description = 'A standard 20-round capacity magazine for SR-2M "Veresk", manufactured by TsNIItochmash.',
	weight = 0.1,
	value = 3000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr2m_20.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sr2m_mag_30"] = {
	fullName = "SR-2M 9x21 30-round magazine",
	displayName = "SR-2M 30",
	displayType = DISPLAYTYPE,
	description = 'A standard 30-round capacity magazine for SR-2M "Veresk", manufactured by TsNIItochmash.',
	weight = 0.2,
	value = 4240,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr2m_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sv98_mag_10"] = {
	fullName = "SV-98 7.62x54R 10-round magazine",
	displayName = "SV-98 10",
	displayType = DISPLAYTYPE,
	description = "A standard Izhmash-produced polymer magazine for the SV-98 7.62x54R sniper rifle.",
	weight = 0.1,
	value = 4250,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sv98_10.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_svds_mag_10"] = {
	fullName = "SVD 7.62x54R 10-round magazine",
	displayName = "SVD 10",
	displayType = DISPLAYTYPE,
	description = "A 10-round 7.62x54R steel Izhmash magazine for SVD-based rifles.",
	weight = 0.1,
	value = 4080,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svd_10.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_svds_mag_20"] = {
	fullName = "SVD 7.62x54R 20-round magazine",
	displayName = "SVD 20",
	displayType = DISPLAYTYPE,
	description = "A 20-round 7.62x54R steel Izhmash magazine for SVD-based rifles.",
	weight = 0.2,
	value = 10700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svd_20.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_svt_mag_10"] = {
	fullName = "SVT-40 7.62x54R 10-round magazine",
	displayName = "SVT 10",
	displayType = DISPLAYTYPE,
	description = "A standard 7.62x54R 10-round magazine designed for the SVT rifle.",
	weight = 0.3,
	value = 6200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svt_10.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_svt_mag_15"] = {
	fullName = "AVT-40 7.62x54R 15-round magazine",
	displayName = "AVT 15",
	displayType = DISPLAYTYPE,
	description = "A standard 7.62x54R 15-round magazine designed for the AVT rifle.",
	weight = 0.3,
	value = 7315,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("avt_15.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_t5000_mag_5"] = {
	fullName = "ORSIS T-5000M 7.62x51 5-round magazine",
	displayName = "T-5000 5",
	displayType = DISPLAYTYPE,
	description = "A 5-round magazine for the T-5000M 7.62x51 sniper rifle, manufactured by ORSIS.",
	weight = 0.3,
	value = 2240,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("t5000_5.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tkpd_mag_10"] = {
	fullName = "TKPD 9.3x64 10-round magazine",
	displayName = "TKPD 10",
	displayType = DISPLAYTYPE,
	description = "A 10-round 9.3x64mm magazine for the TKPD assault carbine.",
	weight = 0.1,
	value = 13100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tkpd_10.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tt33_mag_8"] = {
	fullName = "TT 7.62x25 tt-105 8-round magazine",
	displayName = "tt-105 8",
	displayType = DISPLAYTYPE,
	description = "A standard late-issue 8-round magazine for the TT pistol. It comes without a lanyard ring.",
	weight = 0.1,
	value = 1200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tt_8.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ump_mag_25"] = {
	fullName = "HK UMP .45 ACP 25-round magazine",
	displayName = "UMP 25",
	displayType = DISPLAYTYPE,
	description = "A standard 25-round .45 ACP magazine for the UMP 45 SMG, manufactured by Heckler & Koch.",
	weight = 0.2,
	value = 3100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ump_25.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_mag_100"] = {
	fullName = "UZI 9x19 Beta C-Mag 100-round drum magazine",
	displayName = "UZI C-Mag 100",
	displayType = DISPLAYTYPE,
	description = "A 100-round double drum magazine for the UZI submachine gun. The magazine modification is equipped with a transparent plastic cover that allows to check the ammo count. Manufactured by Beta Company.",
	weight = 1,
	value = 22000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_100.png"),

	sizeX = 2,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_mag_20"] = {
	fullName = "UZI 9x19 20-round magazine",
	displayName = "UZI 20",
	displayType = DISPLAYTYPE,
	description = "A 20-round magazine for the UZI submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.2,
	value = 1275,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_20.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_mag_20pro"] = {
	fullName = "UZI PRO 9x19 20-round magazine",
	displayName = "UZI PRO 20",
	displayType = DISPLAYTYPE,
	description = "A 20-round magazine for the UZI PRO submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.2,
	value = 1420,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_pro_20.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_mag_25"] = {
	fullName = "UZI 9x19 25-round magazine",
	displayName = "UZI 25",
	displayType = DISPLAYTYPE,
	description = "A 25-round magazine for the UZI submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.2,
	value = 1550,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_25.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_mag_25pro"] = {
	fullName = "UZI PRO 9x19 25-round magazine",
	displayName = "UZI PRO 25",
	displayType = DISPLAYTYPE,
	description = "A 25-round magazine for the UZI PRO submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.2,
	value = 1700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_pro_25.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_mag_32"] = {
	fullName = "UZI 9x19 32-round magazine",
	displayName = "UZI 32",
	displayType = DISPLAYTYPE,
	description = "A 32-round magazine for the UZI submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.2,
	value = 1975,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_32.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_mag_32pro"] = {
	fullName = "UZI PRO 9x19 32-round magazine",
	displayName = "UZI PRO 32",
	displayType = DISPLAYTYPE,
	description = "A 32-round magazine for the UZI PRO submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.2,
	value = 2100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_pro_32.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_mag_40"] = {
	fullName = "UZI 9x19 40-round magazine",
	displayName = "UZI 40",
	displayType = DISPLAYTYPE,
	description = "A 40-round magazine for the UZI submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.2,
	value = 2200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_40.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_mag_50"] = {
	fullName = "UZI 9x19 50-round magazine",
	displayName = "UZI 50",
	displayType = DISPLAYTYPE,
	description = "A 50-round magazine for the UZI submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.3,
	value = 2700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_50.png"),

	sizeX = 1,
	sizeY = 3,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_val_mag_10"] = {
	fullName = "VSS/VAL 9x39 6L24 10-round magazine",
	displayName = "6L24 10",
	displayType = DISPLAYTYPE,
	description = "A 10-round polymer TsNIITochMash 6L24 9x39 magazine for the VSS sniper rifle.",
	weight = 0.1,
	value = 2425,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("val_10.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_val_mag_20"] = {
	fullName = "VSS/VAL 9x39 6L25 20-round magazine (Plum)",
	displayName = "6L25 20",
	displayType = DISPLAYTYPE,
	description = 'A 20-round polymer TsNIITochMash 6L25 9x39 magazine for the AS VAL special assault rifle. Made out of plum-colored polymer, earning the nickname "Sliva" (Plum).',
	weight = 0.1,
	value = 8820,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("6l25_20.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_val_mag_20_blk"] = {
	fullName = "VSS/VAL 9x39 6L25 20-round magazine",
	displayName = "6L25 20",
	displayType = DISPLAYTYPE,
	description = "A 20-round polymer TsNIITochMash 6L25 9x39 magazine for the AS VAL special assault rifle.",
	weight = 0.1,
	value = 8820,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("6l25_20_blk.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_val_mag_30"] = {
	fullName = "VSS/VAL 9x39 SR3M.130 30-round magazine",
	displayName = "SR3M 30",
	displayType = DISPLAYTYPE,
	description = "A 30-round steel TsNIITochMash SR3M.130 magazine for 9x39 caliber SR-3M, VSS, and AS VAL.",
	weight = 0.4,
	value = 23305,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr3m_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_val_mag_30s"] = {
	fullName = "VSS/VAL 9x39 30-round magazine",
	displayName = "VAL 30",
	displayType = DISPLAYTYPE,
	description = "A 30-round polymer TsNIITochMash 9x39 magazine for the AS VAL special assault rifle.",
	weight = 0.2,
	value = 26670,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("val_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vector_mag_13"] = {
	fullName = "Glock .45 ACP 13-round magazine",
	displayName = "Glock .45 13",
	displayType = DISPLAYTYPE,
	description = "A standard-issue 13-round magazine for the Glock 21, chambered in .45 ACP.",
	weight = 0.1,
	value = 1785,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vector45_13.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vector_mag_30"] = {
	fullName = "Glock .45 ACP KRISS G30 MagEx 30-round magazine",
	displayName = "G30 MagEx",
	displayType = DISPLAYTYPE,
	description = "A G30 MagEx 30-round magazine for .45 ACP rounds, made to fit Glock pistols and other weapons of the same caliber. Manufactured by KRISS.",
	weight = 0.2,
	value = 4100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vector45_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vityaz_mag_50"] = {
	fullName = "PP-19-01 9x19 F5 MFG 50-round drum magazine",
	displayName = "PP19 F5 50",
	displayType = DISPLAYTYPE,
	description = "A PP-19-01 Vityaz 9x19 drum magazine with a 50-round capacity. Manufactured by F5 MFG.",
	weight = 0.7,
	value = 24250,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pp19_50.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vityaz_mag_sb7"] = {
	fullName = "Saiga-9 9x19 sb.7 10-round magazine",
	displayName = "Sb.7",
	displayType = DISPLAYTYPE,
	description = "The Izh.9x19 Sb.7 magazine for Saiga-9 carbines with a 10-round capacity limiter.",
	weight = 0.2,
	value = 1500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pp19_10.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vityaz_mag_sg919_20"] = {
	fullName = 'PP-19-01 "Vityaz" 9x19 PUFGUN SG-919 20 20-round magazine',
	displayName = "SG-919 20",
	displayType = DISPLAYTYPE,
	description = "The PUFGUN SG-919 20 magazine for PP-19-01 Vityaz 9x19 with a 20-round ammo capacity. Tactical banana yellow camouflage.",
	weight = 0.1,
	value = 2120,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pufgun20.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vityaz_mag_sg919_20_blk"] = {
	fullName = 'PP-19-01 "Vityaz" 9x19 PUFGUN SG-919 20 20-round magazine',
	displayName = "SG-919 20",
	displayType = DISPLAYTYPE,
	description = "The PUFGUN SG-919 20 magazine for PP-19-01 Vityaz 9x19 with a 20-round ammo capacity. Tactical banana yellow camouflage.",
	weight = 0.1,
	value = 2120,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pufgun20_blk.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vityaz_mag_sg919_30"] = {
	fullName = 'PP-19-01 "Vityaz" 9x19 PUFGUN SG-919 30 30-round magazine',
	displayName = "SG-919 30",
	displayType = DISPLAYTYPE,
	description = "The PUFGUN SG-919 30 magazine for PP-19-01 Vityaz 9x19 with a 30-round ammo capacity. Tactical banana yellow camouflage.",
	weight = 0.1,
	value = 3850,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pufgun30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vityaz_mag_sg919_30_blk"] = {
	fullName = 'PP-19-01 "Vityaz" 9x19 PUFGUN SG-919 30 30-round magazine',
	displayName = "SG-919 30",
	displayType = DISPLAYTYPE,
	description = "The PUFGUN SG-919 30 magazine for PP-19-01 Vityaz 9x19 with a 30-round ammo capacity. Tactical banana yellow camouflage.",
	weight = 0.1,
	value = 3850,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pufgun30_blk.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vityaz_mag_std"] = {
	fullName = 'PP-19-01 "Vityaz" 9x19 30-round magazine',
	displayName = "PP-19-01",
	displayType = DISPLAYTYPE,
	description = "A standard 30-round capacity 9x19 magazine for PP-19-01 Vityaz SMG.",
	weight = 0.2,
	value = 2655,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pp19_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vpo101_mag_10"] = {
	fullName = "VPO-101 7.62x51 10-round magazine",
	displayName = "VPO-101 10",
	displayType = DISPLAYTYPE,
	description = "A 10-round magazine for VPO-101 carbines and compatible 7.62x51 systems, manufactured by Molot Arms.",
	weight = 0.2,
	value = 4040,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vpo101_10.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vpo101_mag_5"] = {
	fullName = "VPO-101 7.62x51 5-round magazine",
	displayName = "VPO-101 5",
	displayType = DISPLAYTYPE,
	description = "A 5-round magazine for VPO-101 carbines and compatible 7.62x51 systems, manufactured by Molot Arms.",
	weight = 0.2,
	value = 1380,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vpo101_5.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vpo215_mag_4"] = {
	fullName = "VPO-215 .366 TKM 4-round magazine",
	displayName = "VPO-215 4",
	displayType = DISPLAYTYPE,
	description = "A 4-round magazine for VPO-215 rifles and compatible .366 TKM systems, manufactured by Molot Arms.",
	weight = 0.2,
	value = 1260,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vpo215_4.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vsk_mag_20"] = {
	fullName = "9A-91 9x39 20-round magazine",
	displayName = "9A-91 20",
	displayType = DISPLAYTYPE,
	description = "A standard-issue 20-round magazine for the 9A-91 assault rifle and VSK-94 marksman rifle. Manufactured by Tula KPB Instrument Design Bureau.",
	weight = 0.3,
	value = 4905,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("9a91_20.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_mag_20"] = {
	fullName = "CZ Scorpion EVO 3 Plus 9x19 20-round polymer magazine",
	displayName = "3 Plus-20",
	displayType = DISPLAYTYPE,
	description = "A standard 20-round 9x19 magazine for the Scorpion EVO 3 and 3 Plus. Fits any scorpion model.",
	weight = 0.1,
	value = 3190,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_20.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_mag_20tr"] = {
	fullName = "CZ Scorpion EVO 3 A1 9x19 20-round polymer transparent magazine",
	displayName = "EVO 20",
	displayType = DISPLAYTYPE,
	description = "Standard 20-round 9x19 transparent magazine for the CZ Scorpion EVO 3 A1.",
	weight = 0.1,
	value = 3190,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_trans_20.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_mag_30"] = {
	fullName = "CZ Scorpion EVO 3 Plus 9x19 30-round polymer magazine",
	displayName = "3 Plus-30",
	displayType = DISPLAYTYPE,
	description = "A standard 30-round 9x19 magazine for the Scorpion EVO 3 and 3 Plus. Fits any scorpion model.",
	weight = 0.2,
	value = 3995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_30.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_mag_35"] = {
	fullName = "CZ Scorpion EVO 9x19 Magpul PMAG EV9 35-round magazine",
	displayName = "EV9",
	displayType = DISPLAYTYPE,
	description = "The PMAG 35 EV9 is a lightweight, 35-round, 9x19mm CZ Scorpion EVO 3 compatible magazine.",
	weight = 0.2,
	value = 5000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_35.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_mag_35t"] = {
	fullName = "CZ Scorpion EVO 9x19 Magpul PMAG EV9 35-round magazine (Taped)",
	displayName = "EV9-T",
	displayType = DISPLAYTYPE,
	description = "The PMAG 35 EV9 is a lightweight, 35-round, 9x19mm CZ Scorpion EVO 3 compatible magazine.",
	weight = 0.2,
	value = 5000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_taped_35.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_mag_50"] = {
	fullName = "CZ Scorpion EVO 9x19 50-round drum magazine",
	displayName = "EVO Drum 50",
	displayType = DISPLAYTYPE,
	description = "A 50-round 9x19 drum magazine designed for the CZ Scorpion EVO 3 A1 9x19 submachine gun.",
	weight = 0.6,
	value = 14990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_50.png"),

	sizeX = 1,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_57_mag_ext"] = {
	fullName = "FN Five-seveN 5.7x28 Pro-Mag 30-round magazine",
	displayName = "5-7 PM 30",
	displayType = DISPLAYTYPE,
	description = "A 30-round 5.7x28 magazine for the FN Five-seveN pistol. Manufactured by ProMag.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/6889f1c4f7a5d7de7b089550.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}
