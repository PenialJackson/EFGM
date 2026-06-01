local DISPLAYTYPE = "Barrel"
local ATTICONPATH = "items/attachments/barrels/"

local function AttMaterial(imgPath, paramOverride)
	if SERVER then return end
	return Material(ATTICONPATH .. imgPath, paramOverride or "smooth")
end

EFGM.ITEMS["arc9_att_eft_57_barrel"] = {
	fullName = "FN Five-seveN 5.7x28 barrel",
	displayName = "5-7 barrel",
	displayType = DISPLAYTYPE,
	description = "A standard-issue barrel for the FN Five-seveN pistol, manufactured by Fabrique Nationale Herstal.",
	weight = 0.1,
	value = 1800,
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

EFGM.ITEMS["arc9_att_eft_57_barrel_threaded"] = {
	fullName = "FN Five-seveN 5.7x28 threaded barrel",
	displayName = "5-7 thr.",
	displayType = DISPLAYTYPE,
	description = "A regular threaded barrel for the FN Five-seveN pistol, manufacted by Fabrique Nationale Herstal.",
	weight = 0.1,
	value = 2700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("fiveseven_threaded.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aa12_barrel_330"] = {
	fullName = "AA-12 12ga 330mm barrel",
	displayName = "AA-12 330mm",
	displayType = DISPLAYTYPE,
	description = "A 330mm barrel for the Auto Assault-12 12-gauge shotgun.",
	weight = 1,
	value = 6850,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aa12_330.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aa12_barrel_342"] = {
	fullName = "AA-12 12ga 342mm threaded barrel",
	displayName = "AA-12 342mm",
	displayType = DISPLAYTYPE,
	description = "A 342mm threaded barrel for the Auto Assault-12 12-gauge shotgun.",
	weight = 1,
	value = 8100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aa12_342.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aa12_barrel_417"] = {
	fullName = "AA-12 12ga 417mm threaded barrel",
	displayName = "AA-12 417mm",
	displayType = DISPLAYTYPE,
	description = "A 417mm threaded barrel for the Auto Assault-12 12-gauge shotgun.",
	weight = 1,
	value = 8000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aa12_417.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aa12_barrel_457"] = {
	fullName = "AA-12 12ga 457mm barrel",
	displayName = "AA-12 457mm",
	displayType = DISPLAYTYPE,
	description = "A 457mm barrel for the Auto Assault-12 12-gauge shotgun.",
	weight = 1.1,
	value = 8750,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aa12_457.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ak50_barrel_std"] = {
	fullName = "AK-50 .50 BMG 24 inch barrel",
	displayName = 'AK-50 24"',
	displayType = DISPLAYTYPE,
	description = "A 24 inch (612mm) barrel for the AK-50, manufactured by The AK Guy LTD.",
	weight = 1.6,
	value = 38210,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak50.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aug_barrel_16"] = {
	fullName = "Steyr AUG A3 5.56x45 16 inch barrel",
	displayName = 'A3 16"',
	displayType = DISPLAYTYPE,
	description = "A barrel for Steyr AUG A3 designed for 5.56x45 NATO ammo, 16 inches (417mm) long.",
	weight = 0.5,
	value = 25100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("auga3_16.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aug_barrel_16a1"] = {
	fullName = "Steyr AUG A1 5.56x45 16 inch barrel",
	displayName = 'A1 16"',
	displayType = DISPLAYTYPE,
	description = "A barrel for Steyr AUG A1 designed for 5.56x45 NATO ammo, 16 inches (417mm) long.",
	weight = 0.5,
	value = 32090,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("auga1_16.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aug_barrel_20"] = {
	fullName = "Steyr AUG A1 5.56x45 20 inch barrel",
	displayName = 'A1 20"',
	displayType = DISPLAYTYPE,
	description = "A barrel for Steyr AUG A1 designed for 5.56x45 NATO ammo, 20 inches (508mm) long.",
	weight = 0.8,
	value = 32090,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("auga1_20.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_axmc_barrel338_28"] = {
	fullName = "AI AXMC .338 LM 28 inch barrel",
	displayName = '.338LM 28"',
	displayType = DISPLAYTYPE,
	description = "A 28 inch (686mm) barrel for the AI AXMC chambered in .338 Lapua Magnum ammo.",
	weight = 2,
	value = 69950,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("axmc_28.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_1911_nat"] = {
	fullName = "M1911A1 .45 ACP National Match barrel",
	displayName = "1911 Match",
	displayType = DISPLAYTYPE,
	description = "The National Match barrel for the M1911A1 .45 ACP pistol, manufactured by Colt.",
	weight = 0.1,
	value = 1150,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1911_nation.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_1911_std"] = {
	fullName = "M1911A1 .45 ACP 127mm barrel",
	displayName = "1911 127mm",
	displayType = DISPLAYTYPE,
	description = "A standard-issue 127mm .45 ACP barrel for M1911A1 pistols, manufactured by Colt.",
	weight = 0.05,
	value = 900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1911_127.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_1911_thr"] = {
	fullName = "M1911A1 .45 ACP threaded barrel",
	displayName = "1911 thr.",
	displayType = DISPLAYTYPE,
	description = "A standard-issue threaded barrel for the M1911A1 .45 ACP pistol, manufactured by Colt.",
	weight = 0.1,
	value = 2450,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1911_threaded.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_ar15_16i_mk12"] = {
	fullName = "AR-15 5.56x45 Centurion Arms Mk12 16 inch barrel",
	displayName = 'Mk12 16"',
	displayType = DISPLAYTYPE,
	description = "A 16 inch (406mm) barrel for AR-15 platform weapons for 5.56x45 NATO ammo. Manufactured by Centurion Arms.",
	weight = 46595,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_centurion_16.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_ar15_18i"] = {
	fullName = "AR-15 5.56x45 18 inch barrel",
	displayName = 'AR-15 18"',
	displayType = DISPLAYTYPE,
	description = "A barrel for AR-15 based weapons for 5.56x45 NATO ammo, 18 inch long.",
	weight = 0.8,
	value = 45515,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_18.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_ar15_18i_mk12"] = {
	fullName = "AR-15 5.56x45 Centurion Arms Mk12 18 inch barrel",
	displayName = 'Mk12 18"',
	displayType = DISPLAYTYPE,
	description = "An 18 inch (457mm) barrel for AR-15 platform weapons for 5.56x45 NATO ammo. Manufactured by Centurion Arms.",
	weight = 1.1,
	value = 50005,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_centurion_18.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_ar15_20i"] = {
	fullName = "AR-15 5.56x45 20 inch barrel",
	displayName = 'AR-15 20"',
	displayType = DISPLAYTYPE,
	description = "A barrel for AR-15 based weapons for 5.56x45 NATO ammo, 20 inches long.",
	weight = 0.9,
	value = 66300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_20.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_ar15_260mm"] = {
	fullName = 'AR-15 5.56x45 10.3" barrel',
	displayName = 'AR-15 10.3"',
	displayType = DISPLAYTYPE,
	description = "A 10.3\" (260mm) barrel for AR-15 based weapons for 5.56x45 NATO ammo. Corresponds with standard service M4 CQBR barrel.",
	weight = 0.4,
	value = 34100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_260.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_ar15_292mm"] = {
	fullName = "AR-15 5.56x45 11.5 inch barrel",
	displayName = 'AR-15 11.5"',
	displayType = DISPLAYTYPE,
	description = "An 11.5 inch (292mm) barrel for AR-15 platform weapons for 5.56x45 NATO ammo.",
	weight = 0.5,
	value = 28370,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_292.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_ar15_370mm"] = {
	fullName = "AR-15 5.56x45 370mm barrel",
	displayName = "AR-15 370mm",
	displayType = DISPLAYTYPE,
	description = "A 370mm barrel for AR-15 based weapons for 5.56x45 NATO ammo. Corresponds with standard service M4A1 barrel.",
	weight = 0.5,
	value = 32900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_370.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_ar15_406mm"] = {
	fullName = "AR-15 5.56x45 Molot Arms 406mm barrel",
	displayName = 'ADAR 16"',
	displayType = DISPLAYTYPE,
	description = "The Molot Arms 406mm barrel for AR-15 based weapons for 5.56x45 NATO ammo. A standard-issue barrel for ADAR 2-15.",
	weight = 0.6,
	value = 18630,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_406.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_ar15_hanson_137"] = {
	fullName = "AR-15 Hanson Carbine 5.56x45 13.7 inch barrel",
	displayName = 'Hanson 13.7"',
	displayType = DISPLAYTYPE,
	description = "The Hanson Carbine barrel for AR-15 based weapons for 5.56x45 NATO ammo, 13.7 inch long.",
	weight = 0.5,
	value = 28250,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hanson_13.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_ar15_hanson_16"] = {
	fullName = "AR-15 Hanson Carbine 5.56x45 16 inch barrel",
	displayName = 'Hanson 16"',
	displayType = DISPLAYTYPE,
	description = "The Hanson Carbine barrel for AR-15 based weapons for 5.56x45 NATO ammo, 16 inch long.",
	weight = 0.8,
	value = 36300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hanson_16.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_ar15_m16_20i"] = {
	fullName = "AR-15 5.56x45 A2 type 20 inch barrel",
	displayName = 'AR-15 A2 20"',
	displayType = DISPLAYTYPE,
	description = "A 20 inch (508mm) barrel for AR-15 platform weapons for 5.56x45 NATO ammo. Corresponds with standard service M16A2 barrel.",
	weight = 0.9,
	value = 45420,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m16_20.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_deagle_l5_357"] = {
	fullName = "Desert Eagle L5 .357 127mm barrel",
	displayName = "L5 .357",
	displayType = DISPLAYTYPE,
	description = "An L5 127mm .357 Magnum barrel for the Desert Eagle pistol, manufactured by Magnum Research.",
	weight = 0.3,
	value = 2055,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("deagle50_127.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_deagle_l6_50ae"] = {
	fullName = "Desert Eagle L6 .50 AE 152mm barrel",
	displayName = "L6 .50AE",
	displayType = DISPLAYTYPE,
	description = "An L6 152mm .50 AE barrel for the Desert Eagle pistol, manufactured by Magnum Research.",
	weight = 0.4,
	value = 2410,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("deagle50_152.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_deagle_l6_wts"] = {
	fullName = "Desert Eagle L6 .50 AE 152mm barrel (WTS)",
	displayName = "L6 .50AE (WTS)",
	displayType = DISPLAYTYPE,
	description = "An L6 152mm .50 AE barrel for the Desert Eagle pistol, manufactured by Magnum Research. White Tiger Stripes version.",
	weight = 0.4,
	value = 100000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("deaglewts_152.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_deagle_xix"] = {
	fullName = "Desert Eagle Mk XIX .50 AE 152mm barrel",
	displayName = "XIX .50AE",
	displayType = DISPLAYTYPE,
	description = "A Mark XIX 152mm .50 AE barrel for the Desert Eagle pistol, manufactured by Magnum Research.",
	weight = 0.4,
	value = 11920,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("deaglexix_152.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_g17_aw"] = {
	fullName = "Glock 9x19 Lone Wolf threaded barrel",
	displayName = "G AW",
	displayType = DISPLAYTYPE,
	description = "A threaded barrel for 9x19 pistols of the Glock family. Manufactured by Lone Wolf.",
	weight = 0.1,
	value = 10020,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_lw.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_g17_comp"] = {
	fullName = "Glock 17 9x19 barrel with a compensator",
	displayName = "G17 comp",
	displayType = DISPLAYTYPE,
	description = "A 114mm long barrel with a mounted compensator for Glock 17 pistols.",
	weight = 0.1,
	value = 2100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_comp.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_g17_dd_thr"] = {
	fullName = "Glock 9x19 Double Diamond threaded barrel",
	displayName = "G DD thr.",
	displayType = DISPLAYTYPE,
	description = "A threaded barrel for 9x19 pistols of Glock family. Manufactured by Double Diamond.",
	weight = 0.1,
	value = 7515,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_dd_thread.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_g17_sai"] = {
	fullName = "Glock 9x19 SAI threaded barrel",
	displayName = "G SAI",
	displayType = DISPLAYTYPE,
	description = "A threaded barrel for 9x19 pistols of Glock family. Manufactured by Salient Arms International.",
	weight = 0.1,
	value = 14365,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_sai.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_g17_std"] = {
	fullName = "Glock 17 9x19 barrel",
	displayName = "G17",
	displayType = DISPLAYTYPE,
	description = "A standard barrel for the Glock 17 9x19 pistol.",
	weight = 0.1,
	value = 2000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_g18c_std"] = {
	fullName = "Glock 18C 9x19 barrel with a compensator",
	displayName = "G18C comp",
	displayType = DISPLAYTYPE,
	description = "A 114mm long barrel with a mounted compensator for Glock 18C automatic pistols.",
	weight = 0.2,
	value = 1785,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock18c.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_g19x_std"] = {
	fullName = "Glock 19X 9x19 barrel",
	displayName = "G19X",
	displayType = DISPLAYTYPE,
	description = "A standard barrel for the Glock 19X 9x19 pistol. The barrel is treated with an nDLC coating that protects against corrosion and scratches.",
	weight = 0.1,
	value = 1280,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock19x.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_hk416_106i"] = {
	fullName = "HK 416A5 5.56x45 10.6 inch barrel",
	displayName = '10.6" 416A5',
	displayType = DISPLAYTYPE,
	description = "A barrel for 416 based weapons for 5.56x45 NATO ammo, 264mm long.",
	weight = 0.5,
	value = 21130,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hk416_264.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_hk416_11i"] = {
	fullName = "HK 416A5 5.56x45 11 inch barrel",
	displayName = '11" 416A5',
	displayType = DISPLAYTYPE,
	description = "A barrel for 416 based weapons for 5.56x45 NATO ammo, 279mm long.",
	weight = 0.6,
	value = 24130,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hk416_279.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_hk416_145i"] = {
	fullName = "HK 416A5 5.56x45 14.5 inch barrel",
	displayName = '14.5" 416A5',
	displayType = DISPLAYTYPE,
	description = "A barrel for 416 based weapons for 5.56x45 NATO ammo, 368mm long with a flip up front sight.",
	weight = 1,
	value = 21195,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hk416_368.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_hk416_165i"] = {
	fullName = "HK 416A5 5.56x45 16.5 inch barrel with flip-up front sight",
	displayName = '16.5" 416A5',
	displayType = DISPLAYTYPE,
	description = "A barrel for 416 based weapons for 5.56x45 NATO ammo, 419mm long with a flip up front sight.",
	weight = 1,
	value = 33500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hk416_419.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_hk416_20i"] = {
	fullName = "HK 416A5 5.56x45 20 inch barrel",
	displayName = '20" 416A5',
	displayType = DISPLAYTYPE,
	description = "A barrel for 416 based weapons for 5.56x45 NATO ammo, 505mm long with a flip up front sight.",
	weight = 1.2,
	value = 37700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hk416_505.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_m9a3_std"] = {
	fullName = "M9A3 9x19 threaded barrel",
	displayName = "M9A3 thr.",
	displayType = DISPLAYTYPE,
	description = "A standard threaded barrel for the Beretta M9A3 9x19 pistol.",
	weight = 0.2,
	value = 985,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m9a3_threaded.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_p226_std"] = {
	fullName = "P226 9x19 112mm barrel",
	displayName = "P226",
	displayType = DISPLAYTYPE,
	description = "A standard 112mm long barrel for the SIG Sauer P226 pistol.",
	weight = 0.2,
	value = 1560,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_112.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_p226_thr"] = {
	fullName = "P226 9x19 threaded barrel",
	displayName = "P226 thr.",
	displayType = DISPLAYTYPE,
	description = "A standard-issue threaded barrel for SIG Sauer P226 9x19 pistols.",
	weight = 0.2,
	value = 2000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_threaded.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_pkm"] = {
	fullName = "PKM 7.62x54R 658mm barrel",
	displayName = "PKM 658mm",
	displayType = DISPLAYTYPE,
	description = "A standard-issue 658mm barrel for Kalashnikov Machine gun. Manufactured by V.A. Degtyarev Plant.",
	weight = 2.4,
	value = 18900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pkm_658.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_pkp"] = {
	fullName = "PKP 7.62x54R 658mm barrel",
	displayName = "PKP 658mm",
	displayType = DISPLAYTYPE,
	description = 'A standard-issue 658mm barrel for PKP "Pecheneg" with a built-in muzzle brake. Manufactured by V.A. Degtyarev Plant.',
	weight = 3.2,
	value = 30205,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pkp_658.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_pl15_std"] = {
	fullName = "PL-15 9x19 barrel",
	displayName = "PL-15",
	displayType = DISPLAYTYPE,
	description = "A standard barrel for the PL-15 pistol, chambered in 9x19.",
	weight = 0.2,
	value = 1110,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pl15.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_pl15_thr"] = {
	fullName = "PL-15 9x19 threaded barrel",
	displayName = "PL-15 thr.",
	displayType = DISPLAYTYPE,
	description = "A threaded barrel for the PL-15 pistol, chambered in 9x19.",
	weight = 0.2,
	value = 5300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pl15_threaded.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_ump_std"] = {
	fullName = "HK UMP .45 ACP 8 inch barrel",
	displayName = 'UMP-45 8"',
	displayType = DISPLAYTYPE,
	description = "A barrel for the HK UMP submachine gun, chambered in .45 ACP ammo, 8 inch (200mm) long.",
	weight = 0.4,
	value = 9990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ump_200.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_ump_thr"] = {
	fullName = "HK UMP .45 ACP 8 inch threaded barrel",
	displayName = 'UMP-45 8" thr.',
	displayType = DISPLAYTYPE,
	description = "A threaded barrel for the HK UMP submachine gun, chambered in .45 ACP ammo, 8 inches (203mm) long.",
	weight = 0.4,
	value = 11920,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ump_200_threaded.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_ump9_std"] = {
	fullName = "HK UMP 9x19mm 8 inch barrel",
	displayName = 'UMP9 8"',
	displayType = DISPLAYTYPE,
	description = "A barrel for the HK UMP submachine gun, chambered in 9x19mm ammo, 8 inch (200mm) long.",
	weight = 0.4,
	value = 6500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ump_200.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_ump9_thr"] = {
	fullName = "HK UMP 9x19mm 8 inch threaded barrel",
	displayName = 'UMP9 8" thr.',
	displayType = DISPLAYTYPE,
	description = "A threaded barrel for the HK UMP submachine gun, chambered in 9x19mm ammo, 8 inches (203mm) long.",
	weight = 0.4,
	value = 9435,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ump_200_threaded.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_usp_elite"] = {
	fullName = "HK USP Elite .45 ACP barrel",
	displayName = "USP45EL",
	displayType = DISPLAYTYPE,
	description = "A 153mm barrel for the special version of the USP pistol - USP Elite, chambered in .45 ACP. Manufactured by Heckler & Koch.",
	weight = 0.1,
	value = 25000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp_elite.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_usp_expert"] = {
	fullName = "HK USP Expert .45 ACP barrel",
	displayName = "USP45EX",
	displayType = DISPLAYTYPE,
	description = "A 132mm barrel for the special version of the USP pistol - USP Expert, chambered in .45 ACP. Manufactured by Heckler & Koch.",
	weight = 0.1,
	value = 31000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp_expert.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_usp_match"] = {
	fullName = "HK USP Match .45 ACP barrel",
	displayName = "USP45M",
	displayType = DISPLAYTYPE,
	description = "A 153mm barrel for the special version of the USP pistol - USP Match, chambered in .45 ACP. Manufactured by Heckler & Koch.",
	weight = 0.1,
	value = 23995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp_match.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_usp_std"] = {
	fullName = "HK USP .45 ACP barrel",
	displayName = "USP45 std",
	displayType = DISPLAYTYPE,
	description = "A standard-issue 112mm .45 ACP barrel for the USP pistol, manufactured by Heckler & Koch.",
	weight = 0.1,
	value = 1600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_usp_tac"] = {
	fullName = "HK USP Tactical .45 ACP threaded barrel",
	displayName = "USP45T",
	displayType = DISPLAYTYPE,
	description = "A 129mm threaded barrel for the special version of the USP pistol - USP Tactical, chambered in .45 ACP. Manufactured by Heckler & Koch.",
	weight = 0.1,
	value = 3860,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp_threaded.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_vector45_5"] = {
	fullName = "KRISS Vector .45 ACP 5 inch barrel",
	displayName = 'Vector 5"',
	displayType = DISPLAYTYPE,
	description = "A 5 inch (140mm) barrel for the KRISS Vector .45 ACP submachine gun.",
	weight = 0.2,
	value = 8555,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vector45_140.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_vector45_6"] = {
	fullName = "KRISS Vector .45 ACP 6 inch barrel",
	displayName = 'Vector 6"',
	displayType = DISPLAYTYPE,
	description = "A 6 inch (170mm) barrel for the KRISS Vector .45 ACP submachine gun.",
	weight = 0.1,
	value = 12305,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vector45_170.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_vector9_5"] = {
	fullName = "KRISS Vector 9x19 5 inch barrel",
	displayName = 'Vector 5"',
	displayType = DISPLAYTYPE,
	description = "A 5 inch (140mm) threaded barrel for the KRISS Vector 9x19 submachine gun.",
	weight = 0.1,
	value = 9425,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vector9_140.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_barrel_vector9_6"] = {
	fullName = "KRISS Vector 9x19 6 inch barrel",
	displayName = 'Vector 6"',
	displayType = DISPLAYTYPE,
	description = "A 6 inch (170mm) threaded barrel for the KRISS Vector 9x19 submachine gun.",
	weight = 0.2,
	value = 11155,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vector9_170.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_dvl10_barrel_std"] = {
	fullName = "DVL-10 M2 7.62x51 660mm barrel",
	displayName = "DVL-10 660mm",
	displayType = DISPLAYTYPE,
	description = "A 660mm long 7.62x51 match-grade stainless steel barrel manufactured by LOBAEV Hummer Barrels for the DVL-10 M2 sniper rifle.",
	weight = 2.8,
	value = 40400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("dvl_660.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_dvl10_barrel_sup"] = {
	fullName = "DVL-10 7.62x51 500mm barrel",
	displayName = "DVL-10 500mm",
	displayType = DISPLAYTYPE,
	description = "A 500 mm long 7.62x51 match-grade stainless steel barrel with an integral sound suppressor manufactured by LOBAEV Hummer Barrels for the DVL-10 sniper rifle.",
	weight = 2.9,
	value = 39800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("dvl_500.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g28_barrel_std"] = {
	fullName = "HK417 7.62x51 16.5 inch barrel",
	displayName = 'HK417 16"',
	displayType = DISPLAYTYPE,
	description = "A 16.5 inch (421mm) barrel for HK417-based weapons for 7.62x51 ammo.",
	weight = 0.6,
	value = 27515,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hk417_16.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_barrel_228"] = {
	fullName = "HK G36 5.56x45 228mm barrel",
	displayName = "G36 228mm",
	displayType = DISPLAYTYPE,
	description = "A 228mm 5.56x45 NATO barrel for the HK G36 assault rifle.",
	weight = 0.4,
	value = 16590,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36_228.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_barrel_318"] = {
	fullName = "HK G36 5.56x45 318mm barrel",
	displayName = "G36 318mm",
	displayType = DISPLAYTYPE,
	description = "A 318mm 5.56x45 NATO barrel for the HK G36 assault rifle.",
	weight = 0.5,
	value = 18800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36_318.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_barrel_480"] = {
	fullName = "HK G36 5.56x45 480mm barrel",
	displayName = "G36 480mm",
	displayType = DISPLAYTYPE,
	description = "A 480mm 5.56x45 NATO barrel for the HK G36 assault rifle.",
	weight = 0.7,
	value = 22200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36_480.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ks23_barrel_510"] = {
	fullName = "KS-23 23x75 510mm barrel",
	displayName = "KS23 510mm",
	displayType = DISPLAYTYPE,
	description = "A 510mm long barrel for the KS-23 23x75mm pump-action shotgun.",
	weight = 0.9,
	value = 4860,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ks23_510.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ks23_barrel_700"] = {
	fullName = "KS-23 23x75 700mm barrel",
	displayName = "KS23 700mm",
	displayType = DISPLAYTYPE,
	description = "A 700mm long barrel for the KS-23 23x75mm pump-action shotgun.",
	weight = 1.2,
	value = 4445,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ks23_700.png"),

	sizeX = 5,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_barrel_16"] = {
	fullName = "M1A 7.62x51 16 inch barrel",
	displayName = 'M1A 16"',
	displayType = DISPLAYTYPE,
	description = "A 16 inch (410mm) barrel for M1A based weapons chambered in 7.62x51 NATO ammo.",
	weight = 1,
	value = 15605,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1a_410.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_barrel_22"] = {
	fullName = "M1A 7.62x51 22 inch barrel",
	displayName = 'M1A 22"',
	displayType = DISPLAYTYPE,
	description = "A 22 inch match barrel for M1A based weapons chambered in 7.62x51 NATO ammo.",
	weight = 1.1,
	value = 24450,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1a_558.png"),

	sizeX = 5,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m249_barrel_370mm"] = {
	fullName = "FN M249 Paratrooper 370mm Barrel",
	displayName = "M249 Para.",
	displayType = DISPLAYTYPE,
	description = "Shortened barrel assembly for the M249 5.56x45mm light machinegun optimized for airborne infantry and close quarters combat operations.",
	weight = 1.8,
	value = 13540,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m249_para.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m249_barrel_457mm"] = {
	fullName = "FN M249 Standard 457mm Barrel",
	displayName = "M249 Std.",
	displayType = DISPLAYTYPE,
	description = "Standard long-barrel assembly for the M249 5.56x45mm light machinegun.",
	weight = 2.5,
	value = 14895,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m249.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m3s90_barrel_std"] = {
	fullName = "Benelli M3 Super 90 12ga 500mm barrel",
	displayName = "M3 500mm",
	displayType = DISPLAYTYPE,
	description = "A 500mm barrel for the Benelli M3 S90 12 gauge shotgun.",
	weight = 0.8,
	value = 13300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m3_500.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m590_barrel_508"] = {
	fullName = "Mossberg 590A1 12ga 20 inch barrel",
	displayName = "590 barrel",
	displayType = DISPLAYTYPE,
	description = "A 20 inch (508mm) barrel for Mossberg 590A1 12 gauge pump-action shotgun.",
	weight = 1.5,
	value = 5890,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("590_508.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m60_barrel_e3_584"] = {
	fullName = "M60E3 7.62x51 584mm barrel",
	displayName = "M60E3 584mm",
	displayType = DISPLAYTYPE,
	description = "A long 584mm barrel for the M60E3 light machine gun. Manufactured by U.S Ordnance.",
	weight = 2.2,
	value = 24400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m60e3_584.png"),

	sizeX = 5,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m60_barrel_e4_458"] = {
	fullName = "M60E4 7.62x51 458mm barrel",
	displayName = "M60E4 458mm",
	displayType = DISPLAYTYPE,
	description = "A 458mm short barrel for the M60E4 light machine gun. Manufactured by U.S Ordnance.",
	weight = 2.1,
	value = 20000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m60e4_458.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m60_barrel_e4_475"] = {
	fullName = "M60E4 7.62x51 475mm heavy barrel",
	displayName = "M60E4 475mm",
	displayType = DISPLAYTYPE,
	description = "A heavy fluted 475mm barrel for the M60E4 light machine gun. Manufactured by U.S Ordnance.",
	weight = 2.5,
	value = 24610,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m60e4_475.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m60_barrel_e6_458"] = {
	fullName = "M60E6 7.62x51 458mm barrel",
	displayName = "M60E6 458mm",
	displayType = DISPLAYTYPE,
	description = "A 458mm short barrel for the M60E6 light machine gun. Manufactured by U.S Ordnance.",
	weight = 2,
	value = 22150,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m60e6_458.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_barrel_20"] = {
	fullName = "M700 7.62x51 20 inch threaded barrel",
	displayName = 'M700 20"',
	displayType = DISPLAYTYPE,
	description = "A 20 inches (508mm) long threaded barrel for Remington Model 700 sniper rifle chambered in 7.62x51 NATO ammo.",
	weight = 1.2,
	value = 21095,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700_508_threaded.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_barrel_20s"] = {
	fullName = "M700 7.62x51 20 inch stainless steel threaded barrel",
	displayName = 'M700 20" S',
	displayType = DISPLAYTYPE,
	description = "A 20 inches (508mm) long stainless steel threaded barrel for the Remington Model 700 sniper rifle chambered in 7.62x51 NATO ammo.",
	weight = 1.2,
	value = 20015,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700_508.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_barrel_26"] = {
	fullName = "M700 7.62x51 26 inch barrel",
	displayName = 'M700 26"',
	displayType = DISPLAYTYPE,
	description = "A 26 inches (660mm) long barrel for the Remington Model 700 sniper rifle chambered in 7.62x51 NATO ammo.",
	weight = 1.5,
	value = 24000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700_660.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_barrel_26s"] = {
	fullName = "M700 7.62x51 26 inch stainless steel barrel",
	displayName = 'M700 26" S',
	displayType = DISPLAYTYPE,
	description = "A 26 inches (660mm) long stainless steel barrel for Remington Model 700 sniper rifle chambered in 7.62x51 NATO ammo.",
	weight = 1.4,
	value = 25900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700_s_660.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m870_barrel_325"] = {
	fullName = "M870 12ga sawn-off 325mm barrel",
	displayName = "M870 325mm",
	displayType = DISPLAYTYPE,
	description = "A sawn-off 325mm barrel for the Remington Model 870 12 gauge shotgun.",
	weight = 0.9,
	value = 5000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m870_325.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m870_barrel_355"] = {
	fullName = "M870 12ga 355mm barrel",
	displayName = "M870 355mm",
	displayType = DISPLAYTYPE,
	description = "A 355mm barrel for the Remington Model 870 12 gauge shotgun.",
	weight = 0.9,
	value = 3205,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m870_355.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m870_barrel_508"] = {
	fullName = "M870 12ga 508mm barrel",
	displayName = "M870 508mm",
	displayType = DISPLAYTYPE,
	description = "A 508mm barrel for the Remington Model 870 12 gauge shotgun.",
	weight = 1.4,
	value = 6225,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m870_508.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m870_barrel_508fs"] = {
	fullName = "M870 12ga 508mm barrel with a fixed sight",
	displayName = "M870 508mm FS",
	displayType = DISPLAYTYPE,
	description = "A 508mm 12 gauge barrel with a fixed sight for the Remington Model 870 shotgun.",
	weight = 1.4,
	value = 5940,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m870_fixed_508.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m870_barrel_660"] = {
	fullName = "M870 12ga 660mm vent rib barrel",
	displayName = "M870 660mm",
	displayType = DISPLAYTYPE,
	description = "A 660mm 12 gauge barrel with a vent rib for the Remington Model 870 shotgun.",
	weight = 1.8,
	value = 13000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m870_660.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mcx_barrel171"] = {
	fullName = "MCX .300 BLK 171mm barrel",
	displayName = "MCX 171mm",
	displayType = DISPLAYTYPE,
	description = "A 171mm barrel for MCX-based weapons, chambered in .300 BLK.",
	weight = 0.4,
	value = 18500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx_171.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mcx_barrel229"] = {
	fullName = "MCX .300 BLK 229mm barrel",
	displayName = "MCX 229mm",
	displayType = DISPLAYTYPE,
	description = "A 229mm barrel for MCX-based weapons, chambered in .300 BLK.",
	weight = 0.5,
	value = 22300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx_229.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mcx_barrel406"] = {
	fullName = "MCX .300 BLK 16 inch barrel",
	displayName = 'MCX 16"',
	displayType = DISPLAYTYPE,
	description = "A 16 inch (406mm) barrel for MCX-based weapons, chambered in .300 BLK.",
	weight = 0.5,
	value = 29000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx_406.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mdr_barrel_556"] = {
	fullName = "MDR 5.56x45 16 inch barrel",
	displayName = 'MDR 556 16"',
	displayType = DISPLAYTYPE,
	description = "A barrel for MDR based weapons for 5.56x45 NATO ammo, 406mm long.",
	weight = 0.5,
	value = 20000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mdr556_406.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mdr_barrel_762"] = {
	fullName = "MDR 7.62x51 16 inch barrel",
	displayName = 'MDR 762 16"',
	displayType = DISPLAYTYPE,
	description = "A barrel for MDR based weapons for .308 ammo, 16 inch long.",
	weight = 0.6,
	value = 24995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mdr762_406.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mk18_barrel_24"] = {
	fullName = "Mk-18 .338 LM 24 inch barrel",
	displayName = 'Mk-18 24"',
	displayType = DISPLAYTYPE,
	description = "A 24 inch (610mm) barrel for Mk-18 .338 LM sniper rifle, manufactured by SWORD International.",
	weight = 1.5,
	value = 35555,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mk18_610.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mk47_barrel_254"] = {
	fullName = "Mk47 254mm barrel",
	displayName = "Mk47 254mm",
	displayType = DISPLAYTYPE,
	description = "A 254mm long barrel for the CMMG Mk47 Mutant assault rifle, chambered in 7.62x39mm.",
	weight = 0.5,
	value = 21530,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mk47_254.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mk47_barrel_409"] = {
	fullName = "Mk47 409mm barrel",
	displayName = "Mk47 409mm",
	displayType = DISPLAYTYPE,
	description = "A 409mm long barrel for the CMMG Mk47 Mutant assault rifle, chambered in 7.62x39mm.",
	weight = 1.1,
	value = 29560,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mk47_409.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_barrel_200"] = {
	fullName = "Mosin Rifle 7.62x54R sawn-off 200mm barrel",
	displayName = "Mosin 200mm",
	displayType = DISPLAYTYPE,
	description = "A sawn-off 200mm barrel for the Mosin rifle.",
	weight = 0.7,
	value = 2205,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_200.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_barrel_220"] = {
	fullName = "Mosin Rifle 7.62x54R sawn-off 220mm threaded barrel",
	displayName = "Mosin 220mm",
	displayType = DISPLAYTYPE,
	description = "A sawn-off 200mm barrel for the Mosin rifle.",
	weight = 0.9,
	value = 7710,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_220.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_barrel_514"] = {
	fullName = "Mosin Carbine 7.62x54R 514mm barrel",
	displayName = "Mosin 514mm",
	displayType = DISPLAYTYPE,
	description = "A regular 514mm barrel for the Mosin carbine.",
	weight = 1.5,
	value = 4115,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_514.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_barrel_730"] = {
	fullName = "Mosin Rifle 7.62x54R 730mm regular barrel",
	displayName = "Mosin 730mm",
	displayType = DISPLAYTYPE,
	description = "A regular 730mm barrel for the Mosin rifle.",
	weight = 1.7,
	value = 4795,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_730.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp18_barrel_762x54r"] = {
	fullName = "MP-18 7.62x54R 600mm barrel",
	displayName = "MP18 7.62x54R",
	displayType = DISPLAYTYPE,
	description = "A standard factory-produced 600mm barrel with a front sight for MP-18 7.62x54R hunting rifles.",
	weight = 1.3,
	value = 4000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp18_600.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_barrel105"] = {
	fullName = "MPX 9x19 10.5 inch barrel",
	displayName = 'MPX 10.5"',
	displayType = DISPLAYTYPE,
	description = "A 10.5 inch (265mm) long barrel for MPX-based weapons chambered in 9x19 ammo.",
	weight = 0.3,
	value = 8095,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_265.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_barrel114"] = {
	fullName = "MPX 9x19 4.5 inch barrel",
	displayName = 'MPX 4.5"',
	displayType = DISPLAYTYPE,
	description = "A 4.5 inch (114mm) long barrel for MPX-based weapons chambered in 9x19 ammo.",
	weight = 0.2,
	value = 3835,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_114.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_barrel121ronin"] = {
	fullName = "MPX 9x19 Ronin Arms 4.75 inch Ported SD Barrel",
	displayName = 'MPX-SD 4.75"',
	displayType = DISPLAYTYPE,
	description = "A 4.75 inch ported barrel from the MPX-SD conversion kit designed for installation of the special suppressor. Manufactured by Ronin Arms.",
	weight = 0.2,
	value = 5725,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_ronin_4.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_barrel165"] = {
	fullName = "MPX 9x19 6.5 inch barrel",
	displayName = 'MPX 6.5"',
	displayType = DISPLAYTYPE,
	description = "A 6.5 inch (165mm) long barrel for MPX-based weapons chambered in 9x19 ammo.",
	weight = 0.2,
	value = 5110,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_165.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_barrel165sd"] = {
	fullName = "MPX-SD 9x19 165mm ported barrel",
	displayName = 'MPX-SD 6.5"',
	displayType = DISPLAYTYPE,
	description = "A special 165mm long barrel for the MPX-SD. Chambered for 9x19 ammunition.",
	weight = 0.2,
	value = 5280,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_sd.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_barrel171ronin"] = {
	fullName = "MPX 9x19 Ronin Arms 6.75 inch Ported SD Barrel",
	displayName = 'MPX-SD 6.75"',
	displayType = DISPLAYTYPE,
	description = "A 6.75 inch ported barrel from the MPX-SD conversion kit designed for installation of the special suppressor. Manufactured by Ronin Arms.",
	weight = 0.2,
	value = 6675,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_ronin_6.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_barrel203"] = {
	fullName = "MPX 9x19 203mm barrel",
	displayName = "MPX 203mm",
	displayType = DISPLAYTYPE,
	description = "A 203mm long barrel for MPX-based weapons chambered for 9x19 ammunition.",
	weight = 0.3,
	value = 8665,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_203.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_barrel355"] = {
	fullName = "MPX 9x19 14 inch barrel",
	displayName = 'MPX 14"',
	displayType = DISPLAYTYPE,
	description = "A 14 inch (355mm) long barrel for MPX-based weapons chambered in 9x19 ammo.",
	weight = 0.4,
	value = 12355,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_355.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr133_barrel_510"] = {
	fullName = "MP-133 12ga 510mm barrel",
	displayName = "MP-133 510mm",
	displayType = DISPLAYTYPE,
	description = "A standard factory-produced 510mm barrel for MP-133 12 gauge shotguns.",
	weight = 0.8,
	value = 4200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp133_510.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr133_barrel_510r"] = {
	fullName = "MP-133 12ga 510mm barrel with rib",
	displayName = "MP-133 510mm rib",
	displayType = DISPLAYTYPE,
	description = "A standard factory-produced 510mm barrel with a wide upper rib for MP-133 12 gauge shotguns.",
	weight = 0.8,
	value = 4220,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp133_rib_510.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr133_barrel_540"] = {
	fullName = "MP-133 12ga 540mm barrel",
	displayName = "MP-133 540mm",
	displayType = DISPLAYTYPE,
	description = "A standard factory-produced 540mm barrel for MP-133 12 gauge shotguns.",
	weight = 0.8,
	value = 4095,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp133_540.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr133_barrel_540r"] = {
	fullName = "MP-133 12ga 540mm barrel with rib",
	displayName = "MP-133 540mm rib",
	displayType = DISPLAYTYPE,
	description = "A standard factory-produced 540mm barrel with a wide upper rib for MP-133 12 gauge shotguns.",
	weight = 0.8,
	value = 4410,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp133_rib_540.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr133_barrel_610"] = {
	fullName = "MP-133 12ga 610mm barrel",
	displayName = "MP-133 610mm",
	displayType = DISPLAYTYPE,
	description = "A standard factory-produced 610mm barrel for MP-133 12 gauge shotguns.",
	weight = 1.2,
	value = 5145,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp133_610.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr133_barrel_610r"] = {
	fullName = "MP-133 12ga 610mm barrel with rib",
	displayName = "MP-133 610mm rib",
	displayType = DISPLAYTYPE,
	description = "A standard factory-produced 610mm barrel with a wide upper rib for MP-133 12 gauge shotguns.",
	weight = 1.2,
	value = 5350,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp133_rib_610.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr133_barrel_660"] = {
	fullName = "MP-133 12ga 660mm barrel",
	displayName = "MP-133 660mm",
	displayType = DISPLAYTYPE,
	description = "A standard factory-produced 660mm barrel for MP-133 12 gauge shotguns.",
	weight = 1.2,
	value = 5255,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp133_660.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr133_barrel_660r"] = {
	fullName = "MP-133 12ga 660mm barrel with rib",
	displayName = "MP-133 660mm rib",
	displayType = DISPLAYTYPE,
	description = "A standard factory-produced 660mm barrel with a wide upper rib for MP-133 12 gauge shotguns.",
	weight = 1.2,
	value = 5775,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp133_rib_660.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr133_barrel_710"] = {
	fullName = "MP-133 12ga 710mm barrel",
	displayName = "MP-133 710mm",
	displayType = DISPLAYTYPE,
	description = "A standard factory-produced 710mm barrel for MP-133 12 gauge shotguns.",
	weight = 1.3,
	value = 6430,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp133_710.png"),

	sizeX = 5,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr133_barrel_710r"] = {
	fullName = "MP-133 12ga 710mm barrel with rib",
	displayName = "MP-133 710mm rib",
	displayType = DISPLAYTYPE,
	description = "A standard factory-produced 710mm barrel with a wide upper rib for MP-133 12 gauge shotguns.",
	weight = 1.3,
	value = 7305,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp133_rib_710.png"),

	sizeX = 5,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr133_barrel_750"] = {
	fullName = "MP-133 12ga 750mm barrel",
	displayName = "MP-133 750mm",
	displayType = DISPLAYTYPE,
	description = "A standard factory-produced 750mm barrel for MP-133 12 gauge shotguns.",
	weight = 1.5,
	value = 7250,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp133_750.png"),

	sizeX = 5,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr133_barrel_750r"] = {
	fullName = "MP-133 12ga 750mm barrel with rib",
	displayName = "MP-133 750mm rib",
	displayType = DISPLAYTYPE,
	description = "A standard factory-produced 750mm barrel with a wide upper rib for MP-133 12 gauge shotguns.",
	weight = 1.5,
	value = 8060,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp133_rib_750.png"),

	sizeX = 5,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr153_barrel_610"] = {
	fullName = "MP-153 12ga 610mm barrel",
	displayName = "MP-153 610mm",
	displayType = DISPLAYTYPE,
	description = "A standard factory-produced 610mm barrel for MP-153 12 gauge shotguns.",
	weight = 1.2,
	value = 7540,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp153_610.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr153_barrel_660"] = {
	fullName = "MP-153 12ga 660mm barrel",
	displayName = "MP-153 660mm",
	displayType = DISPLAYTYPE,
	description = "A standard factory-produced 660mm barrel for MP-153 12 gauge shotguns.",
	weight = 1.2,
	value = 7620,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp153_660.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr153_barrel_710"] = {
	fullName = "MP-153 12ga 710mm barrel",
	displayName = "MP-153 710mm",
	displayType = DISPLAYTYPE,
	description = "A standard factory-produced 710mm barrel for MP-153 12 gauge shotguns.",
	weight = 1.3,
	value = 7800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp153_710.png"),

	sizeX = 5,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr153_barrel_750"] = {
	fullName = "MP-153 12ga 750mm barrel",
	displayName = "MP-153 750mm",
	displayType = DISPLAYTYPE,
	description = "A standard factory-produced 750mm barrel for MP-153 12 gauge shotguns.",
	weight = 1.5,
	value = 8000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp153_750.png"),

	sizeX = 5,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr155_barrel_510"] = {
	fullName = "MP-155 12ga 510mm barrel",
	displayName = "MP-155 510mm",
	displayType = DISPLAYTYPE,
	description = "A standard serially produced 510mm barrel for MP-155 12 gauge shotguns.",
	weight = 0.8,
	value = 6660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp155_510.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr43_barrel_310"] = {
	fullName = "MP-43 12ga sawed-off 310mm barrel",
	displayName = "MP-43 310mm",
	displayType = DISPLAYTYPE,
	description = "A 310mm sawed-off 12 gauge barrel for the MP-43 double-barrelled shotgun.",
	weight = 0.8,
	value = 1025,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp43_310.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr43_barrel_510"] = {
	fullName = "MP-43-1C 12ga 510mm barrel",
	displayName = "MP-43 510mm",
	displayType = DISPLAYTYPE,
	description = "A 510mm long 12 gauge barrel for the MP-43-1C double-barrelled shotgun.",
	weight = 1.4,
	value = 2940,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp43_510.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr43_barrel_725"] = {
	fullName = "MP-43-1C 12ga 725mm barrel",
	displayName = "MP-43 725mm",
	displayType = DISPLAYTYPE,
	description = "A 725mm long 12 gauge barrel for the MP-43-1C double-barrelled shotgun.",
	weight = 1.6,
	value = 3675,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp43_725.png"),

	sizeX = 5,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr43_barrel_750"] = {
	fullName = "MP-43-1C 12ga 750mm barrel",
	displayName = "MP-43 750mm",
	displayType = DISPLAYTYPE,
	description = "A 750mm long 12 gauge barrel for the MP-43-1C double-barrelled shotgun.",
	weight = 1.6,
	value = 4305,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp43_750.png"),

	sizeX = 5,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mts255_barrel_std"] = {
	fullName = "MTs-255-12 12ga 755mm barrel with rib",
	displayName = "MTs-255-12",
	displayType = DISPLAYTYPE,
	description = "A standard factory-produced 755mm barrel with a wide upper rib for MTs-255 12 gauge shotguns.",
	weight = 1.5,
	value = 3760,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mts255_rib_755.png"),

	sizeX = 5,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_barrel_std"] = {
	fullName = "MXLR .308 ME 24 inch barrel",
	displayName = 'MXLR 24"',
	displayType = DISPLAYTYPE,
	description = "A 24 inch .308 ME barrel for the Marlin MXLR rifle.",
	weight = 1.1,
	value = 11005,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_nl545_barrel_115"] = {
	fullName = "NL545 (GP) 5.45x39 11.5 inch barrel",
	displayName = 'NL545 GP 11.5"',
	displayType = DISPLAYTYPE,
	description = "A 11.5 inch (292mm) 5.45x39mm barrel for the short-stroke gas piston NL545 assault rifle manufactured by Custom Guns.",
	weight = 0.7,
	value = 25760,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("nl545_292.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_nl545_barrel_163_di"] = {
	fullName = "NL545 (DI) 5.45x39 16.3 inch barrel",
	displayName = 'NL545 DI 16"',
	displayType = DISPLAYTYPE,
	description = "A 16.3 inch (415mm) 5.45x39mm barrel for the direct impingement NL545 assault rifle manufactured by Custom Guns.",
	weight = 0.8,
	value = 36570,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("nl545_415.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_nl545_barrel_165"] = {
	fullName = "NL545 (GP) 5.45x39 16.5 inch barrel",
	displayName = 'NL545 GP 16.5"',
	displayType = DISPLAYTYPE,
	description = "A 16.5 inch (420mm) 5.45x39mm barrel for the short-stroke gas piston NL545 assault rifle manufactured by Custom Guns.",
	weight = 0.8,
	value = 38985,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("nl545_420.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_p90_barrel_264"] = {
	fullName = "FN P90 5.7x28 10.5 inch barrel",
	displayName = 'P90 10.5"',
	displayType = DISPLAYTYPE,
	description = "A 10.5 inch (264mm) barrel for P90 based weapons, chambered in 5.7x28 ammo.",
	weight = 0.5,
	value = 8500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p90_264.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_p90_barrel_407"] = {
	fullName = "FN P90 5.7x28 16 inch barrel",
	displayName = 'P90 16"',
	displayType = DISPLAYTYPE,
	description = "A 16 inch (407mm) barrel for P90 based weapons, chambered in 5.7x28 ammo.",
	weight = 0.8,
	value = 11270,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p90_407.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ppsh41_barrel_269"] = {
	fullName = "PPSh-41 7.62x25 10.6 inch barrel",
	displayName = 'PPSh41 10.6"',
	displayType = DISPLAYTYPE,
	description = "A 10.6 inch (269mm) long barrel for the PPSh-41, chambered in 7.62x25.",
	weight = 0.5,
	value = 4100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ppsh_269.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp41r_barrel_269"] = {
	fullName = "MP 41(r) 9x19 10.6 inch barrel",
	displayName = 'MP 41(r) 10.6"',
	displayType = DISPLAYTYPE,
	description = "A 10.6 inch (269mm) long barrel for the MP 41(r), chambered in 9x19.",
	weight = 0.5,
	value = 3550,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ppsh_269.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rfb_barrel_18"] = {
	fullName = "RFB 7.62x51 18 inch barrel",
	displayName = 'RFB 18"',
	displayType = DISPLAYTYPE,
	description = "A barrel for RFB 7.62x51 ammo, 18 inch long.",
	weight = 0.9,
	value = 17500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rfb_457.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rpd_barrel_350"] = {
	fullName = "RPD 7.62x39 sawed-off 350mm barrel",
	displayName = "RPD 350mm",
	displayType = DISPLAYTYPE,
	description = "A 350mm barrel shortened by an unknown artisan for the RPD machine gun.",
	weight = 1.1,
	value = 8825,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rpd_350.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rpd_barrel_520"] = {
	fullName = "RPD 7.62x39 520mm barrel",
	displayName = "RPD 520mm",
	displayType = DISPLAYTYPE,
	description = "A standard-issue 520mm barrel for the RPD machine gun. Manufactured by V.A. Degtyarev Plant.",
	weight = 1.8,
	value = 11315,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rpd_520.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rpk16_barrel_370"] = {
	fullName = "RPK-16 5.45x39 15 inch barrel",
	displayName = 'RPK-16 15"',
	displayType = DISPLAYTYPE,
	description = "A 15 inch (370mm) long barrel for RPK-16 light machine gun, chambered in 5.45x39 ammo.",
	weight = 0.5,
	value = 13250,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rpk_370.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rpk16_barrel_550"] = {
	fullName = "RPK-16 5.45x39 22 inch barrel",
	displayName = 'RPK-16 22"',
	displayType = DISPLAYTYPE,
	description = "A 22 inch (550mm) long barrel for RPK-16 light machine gun, chambered in 5.45x39 ammo.",
	weight = 0.6,
	value = 18855,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rpk_550.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rsass_barrel_457"] = {
	fullName = "AR-10 7.62x51 18 inch barrel",
	displayName = 'AR-10 18"',
	displayType = DISPLAYTYPE,
	description = "An 18 inch (457mm) barrel for AR-10 based weapons for 7.62x51 NATO ammo.",
	weight = 1.1,
	value = 61000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_18.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rsass_barrel_558"] = {
	fullName = "AR-10 7.62x51 22 inch barrel",
	displayName = 'AR-10 22"',
	displayType = DISPLAYTYPE,
	description = "An 22 inch (558mm) barrel for AR-10 based weapons for 7.62x51 NATO ammo.",
	weight = 1.2,
	value = 56390,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_22.png"),

	sizeX = 5,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_barrel_208"] = {
	fullName = "SA-58 7.62x51 11 inch barrel",
	displayName = 'SA58 11"',
	displayType = DISPLAYTYPE,
	description = "An 11 inch (280mm) long barrel for DS Arms SA-58 7.62x51.",
	weight = 0.4,
	value = 21335,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_280.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_barrel_406"] = {
	fullName = "SA-58 7.62x51 16 inch barrel",
	displayName = 'SA58 16"',
	displayType = DISPLAYTYPE,
	description = "An 16 inch (406mm) long barrel for DS Arms SA-58 7.62x51.",
	weight = 0.6,
	value = 23395,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_406.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_barrel_533"] = {
	fullName = "SA-58 7.62x51 21 inch barrel",
	displayName = 'SA58 21"',
	displayType = DISPLAYTYPE,
	description = "An 21 inch (533mm) long barrel for DS Arms SA-58 7.62x51.",
	weight = 0.8,
	value = 33060,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_533.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sako_barrel_20"] = {
	fullName = "Sako TRG M10 .338 LM 20 inch barrel",
	displayName = 'M10 20"',
	displayType = DISPLAYTYPE,
	description = "A 20 inch (508mm) .338 Lapua Magnum barrel for the TRG M10 sniper rifle, manufactured by Sako.",
	weight = 1.8,
	value = 83975,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m10_508.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sako_barrel_235"] = {
	fullName = "Sako TRG M10 .338 LM 23.5 inch barrel",
	displayName = 'M10 23.5"',
	displayType = DISPLAYTYPE,
	description = "A 23.5 inch (597mm) .338 Lapua Magnum barrel for the TRG M10 sniper rifle, manufactured by Sako.",
	weight = 2,
	value = 78470,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m10_597.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sako_barrel_27"] = {
	fullName = "Sako TRG M10 .338 LM 27 inch barrel",
	displayName = 'M10 27"',
	displayType = DISPLAYTYPE,
	description = "A 27 inch (685mm) .338 Lapua Magnum barrel for the TRG M10 sniper rifle, manufactured by Sako.",
	weight = 2.3,
	value = 49440,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m10_685.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_barrel_h13"] = {
	fullName = "FN SCAR-H 7.62x51 13 inch barrel",
	displayName = 'SCAR-H 13"',
	displayType = DISPLAYTYPE,
	description = "A 13 inches long (330mm) barrel for the SCAR-series weapons chambered in 7.62x51 NATO ammo.",
	weight = 1,
	value = 55500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scarh_330.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_barrel_h16"] = {
	fullName = "FN SCAR-H 7.62x51 16 inch barrel",
	displayName = 'SCAR-H 16"',
	displayType = DISPLAYTYPE,
	description = "A 16 inches long (406mm) barrel for the SCAR-series weapons chambered in 7.62x51 NATO ammo.",
	weight = 1.1,
	value = 50760,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scarh_406.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_barrel_h20"] = {
	fullName = "FN SCAR-H 7.62x51 20 inch barrel",
	displayName = 'SCAR-H 20"',
	displayType = DISPLAYTYPE,
	description = "A 20 inches long (508mm) barrel for the SCAR-series weapons chambered in 7.62x51 NATO ammo.",
	weight = 1.3,
	value = 59360,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scarh_508.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_barrel_l10"] = {
	fullName = "FN SCAR-L 5.56x45 10 inch barrel",
	displayName = 'SCAR-L 10"',
	displayType = DISPLAYTYPE,
	description = "A 10 inches long (254mm) CQB barrel for the SCAR-series weapons chambered in 5.56x45 NATO ammo.",
	weight = 0.9,
	value = 40740,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scarl_254.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_barrel_l14"] = {
	fullName = "FN SCAR-L 5.56x45 14 inch barrel",
	displayName = 'SCAR-L 14"',
	displayType = DISPLAYTYPE,
	description = "A 14 inches long (355mm) STD barrel for the SCAR-series weapons chambered in 5.56x45 NATO ammo.",
	weight = 1,
	value = 30000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scarl_355.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_barrel_l18"] = {
	fullName = "FN SCAR-L 5.56x45 18 inch barrel",
	displayName = 'SCAR-L 18"',
	displayType = DISPLAYTYPE,
	description = "An 18 inches long (457mm) LB barrel for the SCAR-series weapons chambered in 5.56x45 NATO ammo.",
	weight = 1,
	value = 40000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scarl_457.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_barrel_520"] = {
	fullName = "SKS 7.62x39 520mm barrel",
	displayName = "SKS 520mm",
	displayType = DISPLAYTYPE,
	description = "A standard-issue 520mm barrel for the SKS carbine. Manufactured by TOZ.",
	weight = 1.5,
	value = 4200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sks_520.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_barrel_520_op"] = {
	fullName = "OP-SKS 7.62x39 520mm barrel",
	displayName = "OP-SKS 520mm",
	displayType = DISPLAYTYPE,
	description = "A standard-issue 520mm barrel for the OP-SKS carbine. Manufactured by Molot Arms.",
	weight = 1.5,
	value = 4335,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("opsks_520.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_spear_barrel_330"] = {
	fullName = "MCX SPEAR 6.8x51 330mm barrel",
	displayName = "SPEAR 330mm",
	displayType = DISPLAYTYPE,
	description = "A 13 inch (330mm) barrel for the MCX SPEAR assault rifle chambered in 6.8x51 (.277 FURY) ammo. Manufactured by SIG Sauer.",
	weight = 0.5,
	value = 18000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("spear_330.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sr25_barrel_406"] = {
	fullName = "SR-25 7.62x51 16 inch barrel",
	displayName = 'SR-25 16"',
	displayType = DISPLAYTYPE,
	description = "A 16 inch (406mm) barrel for AR-10 based weapons for 7.62x51 NATO ammo.",
	weight = 1,
	value = 31090,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr25_16.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sr25_barrel_508"] = {
	fullName = "SR-25 7.62x51 20 inch barrel",
	displayName = 'SR-25 20"',
	displayType = DISPLAYTYPE,
	description = "A 20 inch (508mm) barrel for AR-10 based weapons for 7.62x51 NATO ammo.",
	weight = 1.6,
	value = 39990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr25_20.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stm9_barrel_105"] = {
	fullName = "STM-9 9x19 10.5 inch barrel",
	displayName = 'STM-9 10.5"',
	displayType = DISPLAYTYPE,
	description = "A 10.5 inches (266mm) long barrel for the STM-9 carbine, chambered in 9x19.",
	weight = 0.4,
	value = 7665,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("stm9_266.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stm9_barrel_12"] = {
	fullName = "STM-9 9x19 12 inch barrel",
	displayName = 'STM-9 12"',
	displayType = DISPLAYTYPE,
	description = "A 12 inches (304mm) long barrel for the STM-9 carbine, chambered in 9x19.",
	weight = 0.5,
	value = 8625,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("stm9_304.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stm9_barrel_14"] = {
	fullName = "STM-9 9x19 14 inch barrel",
	displayName = 'STM-9 14"',
	displayType = DISPLAYTYPE,
	description = "A 14 inches (355mm) long barrel for the STM-9 carbine, chambered in 9x19.",
	weight = 0.6,
	value = 11500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("stm9_355.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stm9_barrel_16"] = {
	fullName = "STM-9 9x19 16 inch barrel",
	displayName = 'STM-9 16"',
	displayType = DISPLAYTYPE,
	description = "A 16 inches (406mm) long barrel for the STM-9 carbine, chambered in 9x19.",
	weight = 0.8,
	value = 14375,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("stm9_406.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_svds_barrel_std"] = {
	fullName = "SVDS 7.62x54R 22 inch barrel",
	displayName = 'SVDS 22"',
	displayType = DISPLAYTYPE,
	description = "A 22 inch barrel for SVDS sniper rifles chambered in 7.62x54R ammo.",
	weight = 1.1,
	value = 15640,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svds_565.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_svt_barrel_625"] = {
	fullName = "SVT-40 7.62x54R 625mm barrel",
	displayName = "SVT 625mm",
	displayType = DISPLAYTYPE,
	description = "A regular 625mm barrel for the SVT rifle.",
	weight = 1.3,
	value = 4265,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svt_625.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_t5000_barrel_std"] = {
	fullName = "ORSIS T-5000M 7.62x51 660mm barrel",
	displayName = "T-5000 barrel",
	displayType = DISPLAYTYPE,
	description = "A 660mm long match-grade barrel manufactured by ORSIS for the T-5000M 7.62x51 bolt-action sniper rifle.",
	weight = 2.7,
	value = 30000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("t5000_660.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tkpd_barrel_570"] = {
	fullName = "TKPD 9.3x64 570mm barrel",
	displayName = "TKPD 570mm",
	displayType = DISPLAYTYPE,
	description = "A 570mm barrel for the TKPD 9.3x64mm assault carbine.",
	weight = 1.1,
	value = 41105,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tkpd_570.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tkpd_barrel_std"] = {
	fullName = "TKPD 9.3x64 457mm barrel",
	displayName = "TKPD 457mm",
	displayType = DISPLAYTYPE,
	description = "A 457mm barrel for the TKPD 9.3x64mm assault carbine.",
	weight = 1,
	value = 47880,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tkpd_457.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tt33_barrel_116"] = {
	fullName = "TT 7.62x25 116mm barrel",
	displayName = "TT 116mm",
	displayType = DISPLAYTYPE,
	description = "A standard-issue barrel for the TT pistol.",
	weight = 0.05,
	value = 1000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tt_116.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tt33_barrel_116g"] = {
	fullName = "TT 7.62x25 116mm gilded barrel",
	displayName = "TT 116mm ild",
	displayType = DISPLAYTYPE,
	description = "A 116mm barrel for the TT pistol, gilded by an unknown gunsmith.",
	weight = 0.05,
	value = 5000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tt_gilded_116.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tt33_barrel_121"] = {
	fullName = "TT 7.62x25 121mm homespun threaded barrel",
	displayName = "TT 121mm thr.",
	displayType = DISPLAYTYPE,
	description = "A homespun barrel for TT pistol with threading for sound suppressor installation.",
	weight = 0.05,
	value = 2150,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tt_121.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_barrel_238"] = {
	fullName = "UZI 238mm threaded 3-lug barrel",
	displayName = "UZI 238mm",
	displayType = DISPLAYTYPE,
	description = "A threaded 238mm barrel for the UZI submachine gun, equipped with a 3-lug type adapter for installing muzzle devices.",
	weight = 0.1,
	value = 5000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_238.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_barrel_259"] = {
	fullName = "UZI 9x19 259mm barrel",
	displayName = "UZI 259mm",
	displayType = DISPLAYTYPE,
	description = "A 259mm barrel for the UZI submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.3,
	value = 5640,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_259.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_barrel_409"] = {
	fullName = "UZI 9x19 409mm barrel",
	displayName = "UZI 409mm",
	displayType = DISPLAYTYPE,
	description = "A 409mm barrel for the UZI submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.3,
	value = 6000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_409.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi45_barrel_259"] = {
	fullName = "UZI .45 ACP 259mm barrel",
	displayName = "UZI .45 259mm",
	displayType = DISPLAYTYPE,
	description = "A 259mm barrel for the UZI .45 submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.3,
	value = 4555,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_259.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi45_barrel_409"] = {
	fullName = "UZI .45 ACP 409mm barrel",
	displayName = "UZI .45 409mm",
	displayType = DISPLAYTYPE,
	description = "A 409mm barrel for the UZI .45 submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.3,
	value = 5200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_409.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzipro_barrel_114"] = {
	fullName = "UZI PRO 9x19 114mm barrel",
	displayName = "UZI 114mm",
	displayType = DISPLAYTYPE,
	description = "A 114mm barrel for the UZI PRO submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.1,
	value = 5780,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzipro_114.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzipro_barrel_114pike"] = {
	fullName = "UZI PRO 9x19 Pike Arms 114mm threaded barrel",
	displayName = "PA 114mm",
	displayType = DISPLAYTYPE,
	description = "A threaded 114mm barrel for the UZI PRO. Manufactured by Pike Arms.",
	weight = 0.1,
	value = 7570,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzipro_threaded_114.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzipro_barrel_170"] = {
	fullName = "UZI PRO 9x19 170mm barrel",
	displayName = "UZI 170mm",
	displayType = DISPLAYTYPE,
	description = "A 170mm barrel for the UZI PRO submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.2,
	value = 7615,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzipro_170.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzipro_barrel_210"] = {
	fullName = "UZI PRO 9x19 210mm barrel",
	displayName = "UZI 210mm",
	displayType = DISPLAYTYPE,
	description = "A 210mm barrel for the UZI PRO submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.2,
	value = 8740,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzipro_210.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzipro_barrel_240"] = {
	fullName = "UZI PRO 9x19 240mm barrel",
	displayName = "UZI 240mm",
	displayType = DISPLAYTYPE,
	description = "A 240mm barrel for the UZI PRO submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.3,
	value = 9165,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzipro_240.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vpo215_barrel_std"] = {
	fullName = "VPO-215-02 .366TKM 600mm barrel",
	displayName = "VPO-215 barrel",
	displayType = DISPLAYTYPE,
	description = "A 600mm barrel for VPO-215 rifle chambered in .366TKM.",
	weight = 1.2,
	value = 3760,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vpo215_600.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vsk_brl"] = {
	fullName = "VSK-94 9x39 barrel",
	displayName = "VSK-94",
	displayType = DISPLAYTYPE,
	description = "A standard-issue 180mm barrel for the VSK-94 marksman rifle. Manufactured by Tula KPB Instrument Design Bureau.",
	weight = 0.4,
	value = 6000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vsk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vsk_brl9"] = {
	fullName = "9A-91 9x39 barrel",
	displayName = "9A-91",
	displayType = DISPLAYTYPE,
	description = "A standard-issue 180mm barrel for the 9A-91 assault rifle. Manufactured by Tula KPB Instrument Design Bureau.",
	weight = 0.4,
	value = 8400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("9a91.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_barrel_12"] = {
	fullName = "CZ Scorpion EVO 3 A1 carbine length 12 inch barrel",
	displayName = 'EVO 3 12"',
	displayType = DISPLAYTYPE,
	description = "Carbine length 12 inch barrel for the CZ Scorpion EVO 3 A1 9x19 submachine gun.",
	weight = 0.4,
	value = 7145,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_12.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_barrel_14"] = {
	fullName = "CZ Scorpion EVO 3 A1 carbine length 14 inch barrel",
	displayName = 'EVO 3 14"',
	displayType = DISPLAYTYPE,
	description = "Carbine length 14 inch barrel for the CZ Scorpion EVO 3 A1 9x19 submachine gun.",
	weight = 0.4,
	value = 7680,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_14.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_barrel_5"] = {
	fullName = "CZ Scorpion EVO 3 PDW 5 inch barrel",
	displayName = 'EVO 3 5"',
	displayType = DISPLAYTYPE,
	description = "PDW length 5 inch barrel for the CZ Scorpion EVO 3 A1 9x19 submachine gun.",
	weight = 0.2,
	value = 6895,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_5.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_barrel_8"] = {
	fullName = "CZ Scorpion EVO 3 8 inch barrel",
	displayName = 'EVO 3 8"',
	displayType = DISPLAYTYPE,
	description = "Standard 8 inch barrel for the CZ Scorpion EVO 3 A1 9x19 submachine gun.",
	weight = 0.4,
	value = 5900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_8.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_barrel_int"] = {
	fullName = "CZ Scorpion EVO 3 A1 5 inch integral barrel",
	displayName = 'EVO 3 5" Int',
	displayType = DISPLAYTYPE,
	description = "Ported 5 inch barrel designed to be used with an integral suppressor system for the CZ Scorpion EVO 3 S1 9x19 submachine gun.",
	weight = 0.2,
	value = 8740,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_int_5.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mdr_barrel_556_115"] = {
	fullName = "MDR 5.56x45 11.5 inch barrel",
	displayName = 'MDR 556 11.5"',
	displayType = DISPLAYTYPE,
	description = "An 11.5 inch (292mm) barrel for MDR based weapons for 5.56x45 NATO ammo.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/6810d2c6485a5ea11b01e3ad.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mdr_barrel_556_20"] = {
	fullName = "MDR 5.56x45 20 inch barrel",
	displayName = 'MDR 556 20"',
	displayType = DISPLAYTYPE,
	description = "A 20 inch (508mm) barrel for MDR based weapons for 5.56x45 NATO ammo.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/680f87118c5d2ff9020005cd.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mdr_barrel_762_20"] = {
	fullName = "MDR 7.62x51 20 inch barrel",
	displayName = 'MDR 762 20"',
	displayType = DISPLAYTYPE,
	description = "A 20 inch (508mm) barrel for MDR based weapons for 7.62x51 NATO ammo.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/680f87196d09c2f0740dd527.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr155_barrel_660"] = {
	fullName = "MP-155 12ga 660mm barrel",
	displayName = "MP155 660mm",
	displayType = DISPLAYTYPE,
	description = "A standard serially produced 660mm barrel with built-in iron sights for MP-155 12 gauge shotguns.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/68540a07961c6f351f04d917.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr155_barrel_750"] = {
	fullName = "MP-155 12ga 750mm barrel",
	displayName = "MP155 750mm",
	displayType = DISPLAYTYPE,
	description = "A standard serially produced 750mm barrel with a vent rib for MP-155 12 gauge shotguns.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/68540a100103119fd00e115a.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rpd_barrel_370"] = {
	fullName = "RPD 7.62x39 DS Arms 370mm barrel",
	displayName = "RPD 370mm",
	displayType = DISPLAYTYPE,
	description = "A 370mm barrel for the RPD machine gun, custom threaded for .308/7.62x51 muzzle devices.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/6830601984a12bb973021fc2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vpo215_barrel_short"] = {
	fullName = "VPO-215 .366TKM 360mm barrel",
	displayName = "215 360mm",
	displayType = DISPLAYTYPE,
	description = "A 360mm barrel for VPO-215 rifle chambered in .366TKM.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/68b98415032fa71d2a000dab.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}
