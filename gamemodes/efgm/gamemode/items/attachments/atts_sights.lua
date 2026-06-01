local DISPLAYTYPE = "Sight"
local ATTICONPATH = "items/attachments/sights/"

local function AttMaterial(imgPath, paramOverride)
	if SERVER then return end
	return Material(ATTICONPATH .. imgPath, paramOverride or "smooth")
end

EFGM.ITEMS["arc9_att_eft_57_fs"] = {
	fullName = "FN Five-seveN MK2 front sight",
	displayName = "5-7 FS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue front sight for the FN Five-seveN MK2 pistol, manufactured by Fabrique Nationale Herstal.",
	weight = 0.05,
	value = 338,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("fiveseven_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_57_rs"] = {
	fullName = "FN Five-seveN MK2 rear sight",
	displayName = "5-7 RS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue rear sight for the FN Five-seveN MK2 pistol, manufactured by Fabrique Nationale Herstal.",
	weight = 0.05,
	value = 320,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("fiveseven_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aek_rearsight_cqb"] = {
	fullName = "AK series CQB rear sight",
	displayName = "AK CQB",
	displayType = DISPLAYTYPE,
	description = "CQB style widened rear sight with tritium vials for the AK platform of rifles.",
	weight = 0.05,
	value = 1950,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aek.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ak12_rs"] = {
	fullName = "AK-12 rear sight",
	displayName = "AK-12 RS",
	displayType = DISPLAYTYPE,
	description = "A detachable rear sight for AK-12 automatic rifles. Manufactured by Izhmash.",
	weight = 0.05,
	value = 740,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak12_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aps_fs_std"] = {
	fullName = "APS front sight",
	displayName = "APS FS",
	displayType = DISPLAYTYPE,
	description = "A standard front sight for APS pistols.",
	weight = 0.01,
	value = 190,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aps_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aps_rs_apb"] = {
	fullName = "APB rear sight",
	displayName = "APB RS",
	displayType = DISPLAYTYPE,
	description = "A standard rear sight for APB pistols.",
	weight = 0.01,
	value = 290,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("apb_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aps_rs_std"] = {
	fullName = "APS rear sight",
	displayName = "APS RS",
	displayType = DISPLAYTYPE,
	description = "A standard rear sight for APS pistols.",
	weight = 0.01,
	value = 285,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aps_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ash12_fs_std"] = {
	fullName = "ASh-12 folding front sight",
	displayName = "ASh-12 FS",
	displayType = DISPLAYTYPE,
	description = "Removable folding front sight ASh-12, installed on the mount.",
	weight = 0.05,
	value = 2400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ash12_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ash12_rs_std"] = {
	fullName = "ASh-12 rear sight carry handle",
	displayName = "ASh-12 CH",
	displayType = DISPLAYTYPE,
	description = "Detachable Carry Handle with a rear sight for ASh-12.",
	weight = 0.1,
	value = 1960,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ash12_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_frontsight_a2"] = {
	fullName = "AR-15 Leapers UTG Low Profile A2 front sight",
	displayName = "LPA2F",
	displayType = DISPLAYTYPE,
	description = "The UTG Low Profile A2 front sight, installed on the Windham Weaponry gas block. Manufactured by Leapers Inc.",
	weight = 0.1,
	value = 600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("lpa2_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_frontsight_kac"] = {
	fullName = "KAC Folding front sight",
	displayName = "KAC",
	displayType = DISPLAYTYPE,
	description = "Removable folding front sight KAC Folding sight, installed on the mount.",
	weight = 0.05,
	value = 2400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("kacfolding_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_frontsight_kacmicro"] = {
	fullName = "KAC Folding Micro front sight",
	displayName = "KAC Micro",
	displayType = DISPLAYTYPE,
	description = "Removable folding front sight KAC Folding sight, installed on the mount.",
	weight = 0.05,
	value = 2550,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("kacfoldingmicro_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_frontsight_kriss_defiance"] = {
	fullName = "KRISS Defiance low profile flip-up front sight",
	displayName = "Defiance",
	displayType = DISPLAYTYPE,
	description = "The Defiance detachable low profile flip-up front sight, installed on the mount. Manufactured by KRISS.",
	weight = 0.05,
	value = 2480,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("defiance_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_frontsight_mbus"] = {
	fullName = "Magpul MBUS Gen2 flip-up front sight",
	displayName = "MBUS",
	displayType = DISPLAYTYPE,
	description = "The MBUS Gen2 removable flip-up front sight, installed on the mount. Manufactured by Magpul.",
	weight = 0.05,
	value = 2440,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mbus_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_frontsight_mbus_fde"] = {
	fullName = "Magpul MBUS Gen2 flip-up front sight FDE",
	displayName = "MBUS",
	displayType = DISPLAYTYPE,
	description = "The MBUS Gen2 removable flip-up front sight, installed on the mount. Manufactured by Magpul.",
	weight = 0.05,
	value = 2440,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mbus_fde_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_frontsight_mcx"] = {
	fullName = "MCX flip-up front sight",
	displayName = "MCX",
	displayType = DISPLAYTYPE,
	description = "A detachable flip-up front sight for MCX assault rifles, originally designed for the AR platform. Manufactured by SIG Sauer.",
	weight = 0.05,
	value = 2190,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_frontsight_mp7"] = {
	fullName = "HK MP7 flip-up front sight",
	displayName = "MP7",
	displayType = DISPLAYTYPE,
	description = "A removable folding flip-up front sight for MP7 SMGs, installed on the mount. Manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 1100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp7_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_frontsight_mpx"] = {
	fullName = "MPX flip-up front sight",
	displayName = "MPX",
	displayType = DISPLAYTYPE,
	description = "A detachable flip-up front sight for MPX SMGs, installed on the mount. Manufactured by SIG Sauer.",
	weight = 0.05,
	value = 1450,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_fs_1911_m45"] = {
	fullName = "M45A1 Novak Lomount front sight",
	displayName = "M45 FS",
	displayType = DISPLAYTYPE,
	description = "The Lomount front sight for the M45A1 pistol, manufactured by Novak.",
	weight = 0.05,
	value = 370,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m45a1_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_fs_1911_std"] = {
	fullName = "M1911A1 front sight",
	displayName = "1911 FS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue front sight for the M1911A1 pistol, manufactured by Colt.",
	weight = 0.05,
	value = 220,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1911_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_fs_ak_akmp"] = {
	fullName = "AKMP system front sight device",
	displayName = "AKMP FS",
	displayType = DISPLAYTYPE,
	description = "A device intended for firing AK and AKM family assault rifles in poor visibility conditions.",
	weight = 0.05,
	value = 510,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("akmp_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_fs_deagle_std"] = {
	fullName = "Desert Eagle front sight",
	displayName = "DE FS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue front sight for the Desert Eagle pistol, manufactured by Magnum Research.",
	weight = 0.05,
	value = 565,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("deagle_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_fs_g17_se"] = {
	fullName = "Glock Dead Ringer Snake Eye front sight",
	displayName = "G SE FS",
	displayType = DISPLAYTYPE,
	description = "A front sight for Glock series pistols with tritium bars for precision aiming, manufactured by Dead Ringer.",
	weight = 0.05,
	value = 2390,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_ringer_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_fs_g17_std"] = {
	fullName = "Glock front sight",
	displayName = "Glock FS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue front sight for the Glock pistol.",
	weight = 0.05,
	value = 250,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_fs_g17_tfx"] = {
	fullName = "Glock TruGlo TFX front sight",
	displayName = "G TFX FS",
	displayType = DISPLAYTYPE,
	description = "A front sight for Glock series pistols with tritium bars for precision aiming, manufactured by TruGlo.",
	weight = 0.05,
	value = 1190,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_tfx_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_fs_g17_zt"] = {
	fullName = "Glock ZEV Tech front sight",
	displayName = "G ZT FS",
	displayType = DISPLAYTYPE,
	description = "An extended front sight for Glock pistols, manufactured by ZEV Technologies.",
	weight = 0.05,
	value = 1800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_zev_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_fs_g19x_std"] = {
	fullName = "Glock 19X front sight",
	displayName = "G19X FS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue front sight for the Glock 19X pistol.",
	weight = 0.05,
	value = 700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock19x_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_fs_m9a3_std"] = {
	fullName = "M9A3 front sight",
	displayName = "M9A3 FS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue front sight for Beretta M9A3 pistols.",
	weight = 0.05,
	value = 335,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m9a3_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_fs_p226_merp"] = {
	fullName = "P226 Meprolight TRU-DOT Night front sight",
	displayName = "P226 TRU-DOT",
	displayType = DISPLAYTYPE,
	description = "The TRU-DOT Night front sight for P226 pistols with tritium bars for precision aiming, manufactured by Meprolight.",
	weight = 0.05,
	value = 1495,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_tru_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_fs_p226_std"] = {
	fullName = "P226 front sight",
	displayName = "P226 FS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue front sight for the P226 pistol, manufactured by SIG Sauer.",
	weight = 0.05,
	value = 280,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_fs_pl15_long"] = {
	fullName = "PL-15 extended front sight",
	displayName = "PL-15 FS ext",
	displayType = DISPLAYTYPE,
	description = "An extended front sight for the PL-15 pistol, designed for use with a sound suppressor.",
	weight = 0.05,
	value = 1005,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pl15_ext_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_fs_pl15_std"] = {
	fullName = "PL-15 front sight",
	displayName = "PL-15 FS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue front sight for the PL-15 pistol.",
	weight = 0.05,
	value = 580,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pl15_ext_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_fs_usp_std"] = {
	fullName = "HK USP front sight",
	displayName = "USP FS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue front sight for the USP pistol, manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_fs_usp_tac"] = {
	fullName = "HK USP Tactical front sight",
	displayName = "USPT FS",
	displayType = DISPLAYTYPE,
	description = "A front sight for the special version of the USP pistol - USP Tactical. Manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp_tac_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_fs_std"] = {
	fullName = "HK G36 front sight",
	displayName = "G36 fs",
	displayType = DISPLAYTYPE,
	description = "A detachable front sight for the G36 assault rifle, manufactured by Heckler & Koch.",
	weight = 0.1,
	value = 1665,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_rs_std"] = {
	fullName = "HK G36 rear sight",
	displayName = "G36 rs",
	displayType = DISPLAYTYPE,
	description = "A detachable rear sight for the G36 assault rifle, manufactured by Heckler & Koch.",
	weight = 0.1,
	value = 1600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_fs_062"] = {
	fullName = "M1A SA National Match .062 Blade front sight",
	displayName = "M1A .062",
	displayType = DISPLAYTYPE,
	description = "The National Match .062 Blade detachable front sight for M1A rifles, manufactured by Springfield Armory.",
	weight = 0.05,
	value = 1620,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1a_national_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_fs_xs"] = {
	fullName = "M1A SA XS Post .125 Blade front sight",
	displayName = "M1A XS Post",
	displayType = DISPLAYTYPE,
	description = "The XS Post .125 Blade detachable front sight, manufactured by Springfield Armory.",
	weight = 0.05,
	value = 2220,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1a_blade_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_rearsight"] = {
	fullName = "M14 SA Enlarged Military Aperture rear sight",
	displayName = "M14 RS",
	displayType = DISPLAYTYPE,
	description = "The Enlarged Military Aperture rear sight for M14 rifles manufactured by Springfield Armory.",
	weight = 0.05,
	value = 595,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1a_military_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m3s90_rs_std"] = {
	fullName = "Benelli M3 Ghost Ring rear sight",
	displayName = "M3 GR",
	displayType = DISPLAYTYPE,
	description = "A Ghost Ring type rear sight for M3 S90 shotguns, manufactured by Benelli.",
	weight = 0.05,
	value = 840,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m3_ghost_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m590_fs_ghost"] = {
	fullName = "Mossberg 590 Ghost Ring front sight",
	displayName = "Ghost Ring",
	displayType = DISPLAYTYPE,
	description = "A Ghost Ring type front sight for 590 pump-action shotguns, manufactured by Mossberg.",
	weight = 0.05,
	value = 780,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("590_ghost_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m590_rs_ghost"] = {
	fullName = "Mossberg 590 Ghost Ring rear sight",
	displayName = "Ghost Ring",
	displayType = DISPLAYTYPE,
	description = "A Ghost Ring type rear sight for 590 pump-action shotguns, manufactured by Mossberg.",
	weight = 0.05,
	value = 900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("590_ghost_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m60_fs_e4"] = {
	fullName = "M60E4 front sight",
	displayName = "M60E4 FS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue fixed front sight for the M60E4 light machine gun, installed on the barrel. Manufactured by U.S Ordnance.",
	weight = 0.1,
	value = 555,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m60e4_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m60_rearsight"] = {
	fullName = "M60 rear sight",
	displayName = "M60 RS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue foldable rear sight for the M60 machine gun. Manufactured by U.S Ordnance.",
	weight = 0.1,
	value = 780,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m60_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_carb_rs"] = {
	fullName = "Mosin Rifle carbine rear sight",
	displayName = "Mosin RS",
	displayType = DISPLAYTYPE,
	description = "A standard rear iron sight for the Mosin carbine.",
	weight = 0.1,
	value = 840,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_carbine_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_std_fs"] = {
	fullName = "Mosin Rifle front sight",
	displayName = "Mosin FS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue front sight for the Mosin rifle.",
	weight = 0.1,
	value = 510,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_std_rs"] = {
	fullName = "Mosin Rifle rear sight",
	displayName = "Mosin RS",
	displayType = DISPLAYTYPE,
	description = "A standard rear sight for the Mosin rifle.",
	weight = 0.1,
	value = 260,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_acogrs"] = {
	fullName = "Trijicon ACOG backup rear sight",
	displayName = "Trij.Bck-up",
	displayType = DISPLAYTYPE,
	description = "Removable backup sight, installed on the ACOG scope.",
	weight = 0.05,
	value = 4355,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("acogbackup.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp5_rs_std"] = {
	fullName = "HK MP5 Drum rear sight",
	displayName = "MP5 RS",
	displayType = DISPLAYTYPE,
	description = "A standard rear sight for MP5 SMGs, manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 1800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp5_drum_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp9_rs"] = {
	fullName = "MP9 rear sight",
	displayName = "MP9 RS",
	displayType = DISPLAYTYPE,
	description = "A regular rear sight for the MP9 SMG, manufactured by Brügger & Thomet.",
	weight = 0.05,
	value = 1010,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp9_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_fs_std"] = {
	fullName = "MXLR standard front sight",
	displayName = "MXLR FS",
	displayType = DISPLAYTYPE,
	description = "A standard front sight for the Marlin MXLR rifle.",
	weight = 0.05,
	value = 755,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_fs_xs"] = {
	fullName = "M1895/MXLR XS Marlin Ghost front sight",
	displayName = "XS MGS",
	displayType = DISPLAYTYPE,
	description = "A Ghost type front sight for M1895 rifles and compatibles. Manufactured by XS Sights.",
	weight = 0.05,
	value = 860,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr_ghost_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_rs_std"] = {
	fullName = "MXLR standard rear sight",
	displayName = "MXLR RS",
	displayType = DISPLAYTYPE,
	description = "A standard rear sight for the Marlin MXLR rifle.",
	weight = 0.05,
	value = 800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_rs_xs"] = {
	fullName = "M1895/MXLR XS Marlin Ghost Ring rear sight",
	displayName = "XS MGR",
	displayType = DISPLAYTYPE,
	description = "A Ghost Ring type rear sight for M1895 and compatibles. Manufactured by XS Sights.",
	weight = 0.05,
	value = 975,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr_ghost_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_pm_rs_std"] = {
	fullName = "PM rear sight",
	displayName = "PM RS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue rear sight for Makarov pistol.",
	weight = 0.05,
	value = 500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pm_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rearsight_a2"] = {
	fullName = "AR-15 Colt A2 rear sight",
	displayName = "A2",
	displayType = DISPLAYTYPE,
	description = "The Colt A2 detachable rear sight. Standard-issue for M4A1 assault rifles.",
	weight = 0.15,
	value = 1580,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("a2_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rearsight_arms40"] = {
	fullName = "A.R.M.S. #40 Flip-Up Rear Sight",
	displayName = "ARMS#40",
	displayType = DISPLAYTYPE,
	description = "A flip-up rear sight manufactured by A.R.M.S. Inc.",
	weight = 0.05,
	value = 4885,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("arms40_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rearsight_hk416"] = {
	fullName = "HK 416A5 flip-up rear sight",
	displayName = "416A5 Rear",
	displayType = DISPLAYTYPE,
	description = "Removable folding rear sight HK 416A5 Flip Up Rearsight.",
	weight = 0.1,
	value = 1030,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hk416_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rearsight_kac"] = {
	fullName = "KAC Folding rear sight",
	displayName = "KAC",
	displayType = DISPLAYTYPE,
	description = "Removable folding rear sight KAC Folding sight.",
	weight = 0.1,
	value = 1830,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("kacfolding_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rearsight_kacmicro"] = {
	fullName = "KAC Folding Micro rear sight",
	displayName = "KAC Micro",
	displayType = DISPLAYTYPE,
	description = "A compact removable folding rear sight by Knights Armament Company.",
	weight = 0.1,
	value = 1970,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("kacfoldingmicro_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rearsight_kriss_defiance"] = {
	fullName = "KRISS Defiance low profile flip-up rear sight",
	displayName = "Defiance",
	displayType = DISPLAYTYPE,
	description = "The Defiance detachable low profile flip-up rear sight, installed on the mount. Manufactured by KRISS.",
	weight = 0.05,
	value = 3100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("defiance_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rearsight_m4carry"] = {
	fullName = "AR-15 rear sight carry handle",
	displayName = "CARRY",
	displayType = DISPLAYTYPE,
	description = "Detachable Carry Handle with a rear sight for AR-15. Standard issue for M4A1.",
	weight = 0.15,
	value = 840,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m4carry_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rearsight_matech"] = {
	fullName = "MaTech BUIS rear sight",
	displayName = "MaTech",
	displayType = DISPLAYTYPE,
	description = "A back-up iron sight manufactured by MaTech Solutions.",
	weight = 0.1,
	value = 3845,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("matech_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rearsight_mbus"] = {
	fullName = "Magpul MBUS Gen2 flip-up rear sight",
	displayName = "MBUS",
	displayType = DISPLAYTYPE,
	description = "The MBUS Gen2 removable flip-up rear sight, installed on the mount. Manufactured by Magpul.",
	weight = 0.05,
	value = 2680,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mbus_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rearsight_mbus_fde"] = {
	fullName = "Magpul MBUS Gen2 flip-up rear sight FDE",
	displayName = "MBUS",
	displayType = DISPLAYTYPE,
	description = "The MBUS Gen2 removable flip-up rear sight, installed on the mount. Manufactured by Magpul.",
	weight = 0.05,
	value = 2680,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mbus_fde_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rearsight_mcx"] = {
	fullName = "MCX flip-up rear sight",
	displayName = "MCX",
	displayType = DISPLAYTYPE,
	description = "A detachable flip-up rear sight for MCX assault rifles, originally designed for the AR platform. Manufactured by SIG Sauer.",
	weight = 0.1,
	value = 1260,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rearsight_mp7"] = {
	fullName = "HK MP7 flip-up rear sight",
	displayName = "MP7",
	displayType = DISPLAYTYPE,
	description = "A removable folding flip-up rear sight for MP7 SMGs. Manufactured by Heckler & Koch.",
	weight = 0.1,
	value = 810,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp7_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rearsight_mpx"] = {
	fullName = "MPX flip-up rear sight",
	displayName = "MPX",
	displayType = DISPLAYTYPE,
	description = "A detachable flip-up rear sight for MPX SMGs, installed on the mount. Manufactured by SIG Sauer.",
	weight = 0.15,
	value = 1385,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rearsight_scar"] = {
	fullName = "FN SCAR flip-up rear sight",
	displayName = "SCAR RS",
	displayType = DISPLAYTYPE,
	description = "A removable flip-up rear sight for the SCAR-series assault rifles. Manufactured by Fabrique Nationale Herstal.",
	weight = 0.05,
	value = 1250,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rhino_fs_red"] = {
	fullName = "Chiappa Rhino Red Fiber Optic front sight",
	displayName = "CR GF",
	displayType = DISPLAYTYPE,
	description = "A Red Fiber tritium front sight for Rhino revolvers, manufactured by Chiappa Firearms.",
	weight = 0.05,
	value = 490,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rhino_red_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rhino_fs_std"] = {
	fullName = "Chiappa Rhino front sight",
	displayName = "CR FS",
	displayType = DISPLAYTYPE,
	description = 'Standard-issue Rhino front sight, manufactured by "Chiappa Firearms".',
	weight = 0.05,
	value = 355,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rhino_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rhino_rs_red"] = {
	fullName = "Chiappa Rhino Red Fiber Optic rear sight",
	displayName = "CR GF",
	displayType = DISPLAYTYPE,
	description = "A Red Fiber tritium rear sight for Rhino revolvers, manufactured by Chiappa Firearms.",
	weight = 0.05,
	value = 485,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rhino_red_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rhino_rs_std"] = {
	fullName = "Chiappa Rhino rear sight",
	displayName = "CR RS",
	displayType = DISPLAYTYPE,
	description = 'Standard-issue Rhino rear sight, manufactured by "Chiappa Firearms".',
	weight = 0.05,
	value = 345,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rhino_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rpd_rearsight"] = {
	fullName = "RPD rear sight",
	displayName = "RPD RS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue rear sight for the RPD machine gun. Manufactured by V.A. Degtyarev Plant.",
	weight = 0.05,
	value = 625,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rpd_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rpk16_rs"] = {
	fullName = "RPK-16 rear sight",
	displayName = "RPK-16 RS",
	displayType = DISPLAYTYPE,
	description = "A detachable Izhmash-manufactured rear sight. Standard-issue for the RPK-16 LMG.",
	weight = 0.05,
	value = 820,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rpk16_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_1911_m45"] = {
	fullName = "M45A1 Novak Lomount rear sight",
	displayName = "M45 RS",
	displayType = DISPLAYTYPE,
	description = "The Lomount rear sight for the M45A1 pistol, manufactured by Novak.",
	weight = 0.05,
	value = 390,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m45a1_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_1911_std"] = {
	fullName = "M1911A1 rear sight",
	displayName = "1911 RS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue rear sight for the M1911A1 pistol, manufactured by Colt.",
	weight = 0.05,
	value = 310,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1911_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_ak_ak105"] = {
	fullName = "AK-105 rear sight (6P44 Sb.1-30)",
	displayName = "6P44 Sb.1-30",
	displayType = DISPLAYTYPE,
	description = "A standard rear sight for AK-105 automatic rifles, manufactured by Izhmash.",
	weight = 0.05,
	value = 650,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak105_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_ak_ak74"] = {
	fullName = "AK-74 rear sight (6P20 Sb.2)",
	displayName = "6P20 Sb.2",
	displayType = DISPLAYTYPE,
	description = "A standard rear sight for AK-74 automatic rifles, manufactured by Izhmash.",
	weight = 0.05,
	value = 320,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak74_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_ak_ak74m"] = {
	fullName = "AK-74M rear sight (6P20 Sb.2)",
	displayName = "6P20 Sb.2",
	displayType = DISPLAYTYPE,
	description = "A standard rear sight for AK-74M automatic rifles, manufactured by Izhmash.",
	weight = 0.05,
	value = 345,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak74m_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_ak_akm"] = {
	fullName = "AKM rear sight",
	displayName = "6P1 Sb.2-1",
	displayType = DISPLAYTYPE,
	description = "Standard AKM rear sight manufactured by Izhmash.",
	weight = 0.05,
	value = 290,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("akm_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_ak_akmb"] = {
	fullName = "AKMB system rear sight",
	displayName = "AKMB",
	displayType = DISPLAYTYPE,
	description = 'Special rear sight leaf for use with PBS-1 and the "US" cartridge of the AKMB (AKMSB) arms system.',
	weight = 0.05,
	value = 515,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("akmb_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_ak_akmp"] = {
	fullName = "AKMP system rear sight device",
	displayName = "AKMP RS",
	displayType = DISPLAYTYPE,
	description = "A device intended for firing AK and AKM family assault rifles in poor visibility conditions.",
	weight = 0.05,
	value = 560,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("akmp_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_ak_rd_ers"] = {
	fullName = "AK RD Enhanced V2 Rear Sight",
	displayName = "V2 ERS",
	displayType = DISPLAYTYPE,
	description = "The V2 Enhanced rear sight for AK automatic rifles, manufactured by Rifle Dynamics.",
	weight = 0.05,
	value = 1400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("akrd_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_ak_vpo209"] = {
	fullName = "VPO-209 rear sight",
	displayName = "VPO-209",
	displayType = DISPLAYTYPE,
	description = "Standard AKM / VPO-209 rear sight manufactured by Molot.",
	weight = 0.05,
	value = 325,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vpo209_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_deagle_std"] = {
	fullName = "Desert Eagle rear sight",
	displayName = "DE RS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue rear sight for the Desert Eagle pistol, manufactured by Magnum Research.",
	weight = 0.05,
	value = 650,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("deagle_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_g17_se"] = {
	fullName = "Glock Dead Ringer Snake Eye rear sight",
	displayName = "G SE RS",
	displayType = DISPLAYTYPE,
	description = "A rear sight for Glock series pistols with tritium bars for precision aiming, manufactured by Dead Ringer.",
	weight = 0.05,
	value = 3400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_ringer_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_g17_std"] = {
	fullName = "Glock rear sight",
	displayName = "Glock RS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue rear sight for Glock pistols.",
	weight = 0.05,
	value = 290,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_g17_tfx"] = {
	fullName = "Glock TruGlo TFX rear sight",
	displayName = "G TFX RS",
	displayType = DISPLAYTYPE,
	description = "A rear sight for Glock series pistols with tritium bars for precision aiming, manufactured by TruGlo.",
	weight = 0.05,
	value = 2225,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_tfx_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_g17_zt"] = {
	fullName = "Glock ZEV Tech rear sight",
	displayName = "G ZT RS",
	displayType = DISPLAYTYPE,
	description = "A plus-size rear sight for Glock pistols family, manufactured by ZEV Technologies.",
	weight = 0.05,
	value = 2565,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_zev_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_g19x_std"] = {
	fullName = "Glock 19X rear sight",
	displayName = "G19X RS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue rear sight for the Glock 19X pistol.",
	weight = 0.05,
	value = 1110,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock19x_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_m9a3_std"] = {
	fullName = "M9A3 rear sight",
	displayName = "M9A3 RS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue rear sight for Beretta M9A3 pistols.",
	weight = 0.05,
	value = 200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m9a3_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_p226_merp"] = {
	fullName = "P226 Meprolight TRU-DOT Night rear sight",
	displayName = "P226 TRU-DOT",
	displayType = DISPLAYTYPE,
	description = "The TRU-DOT Night rear sight for P226 pistols with tritium bars for precision aiming, manufactured by Meprolight.",
	weight = 0.05,
	value = 1395,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_tru_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_p226_std"] = {
	fullName = "P226 rear sight",
	displayName = "P226 RS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue rear sight for the P226 pistol, manufactured by SIG Sauer.",
	weight = 0.05,
	value = 1000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_pk"] = {
	fullName = "PK rear sight",
	displayName = "PK RS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue rear sight for Kalashnikov Machine gun. Manufactured by V.A. Degtyarev Plant.",
	weight = 0.1,
	value = 520,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pk_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_pl15_long"] = {
	fullName = "PL-15 extended rear sight",
	displayName = "PL-15 RS ext",
	displayType = DISPLAYTYPE,
	description = "An extended rear sight for the PL-15 pistol, designed for use with a sound suppressor.",
	weight = 0.05,
	value = 1035,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pl15_ext_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_pl15_std"] = {
	fullName = "PL-15 rear sight",
	displayName = "PL-15 RS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue rear sight for the PL-15 pistol.",
	weight = 0.05,
	value = 600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pl15_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_usp_std"] = {
	fullName = "HK USP rear sight",
	displayName = "USP RS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue rear sight for the USP pistol, manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 395,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_usp_tac"] = {
	fullName = "HK USP Tactical rear sight",
	displayName = "USPT RS",
	displayType = DISPLAYTYPE,
	description = "A rear sight for the special version of the USP pistol - USP Tactical. Manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 805,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp_tac_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_rs_std"] = {
	fullName = "SA-58 Holland Type rear sight",
	displayName = "SA58 Holland",
	displayType = DISPLAYTYPE,
	description = "The Holland Type rear sight for SA-58 assault rifle, manufactured by DS Arms.",
	weight = 0.1,
	value = 470,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_holland_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sag545_rs"] = {
	fullName = "AK-545 SAG rear sight",
	displayName = "AK-545 RS",
	displayType = DISPLAYTYPE,
	description = "A standard rear sight for AK-545 carbines, manufactured by Sureshot Armament Group.",
	weight = 0.05,
	value = 825,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak545_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_saiga12_fs_chaos"] = {
	fullName = "Chaos HK Style front sight",
	displayName = "Chaos FS",
	displayType = DISPLAYTYPE,
	description = "A front sight modeled after the popular Heckler & Koch iron sights, manufactured by Chaos.",
	weight = 0.05,
	value = 1105,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("chaos_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_saiga12_rs_chaos"] = {
	fullName = "Chaos HK Style rear sight",
	displayName = "Chaos RS",
	displayType = DISPLAYTYPE,
	description = "A rear sight modeled after the popular Heckler & Koch iron sights, manufactured by Chaos.",
	weight = 0.1,
	value = 1430,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("chaos_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_saiga12_rs_std"] = {
	fullName = "SOK-12 rear sight",
	displayName = "SOK12 RS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue fixed rear sight for SOK-12, manufactured by Izhmash.",
	weight = 0.05,
	value = 420,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sok_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_fss"] = {
	fullName = "FN SCAR flip-up front sight",
	displayName = "SCAR FS",
	displayType = DISPLAYTYPE,
	description = "A removable flip-up front sight for the SCAR-series assault rifles, installed on the gas block. Manufactured by Fabrique Nationale Herstal.",
	weight = 0.05,
	value = 2195,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_rearsight"] = {
	fullName = "SKS rear sight",
	displayName = "SKS RS",
	displayType = DISPLAYTYPE,
	description = "A standard ramp-type rear sight for SKS carbines.",
	weight = 0.05,
	value = 315,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sks_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sv98_rss"] = {
	fullName = "SV-98 rear sight",
	displayName = "SV-98 RS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue rear sight for the SV-98 sniper rifle, manufactured by Izhmash.",
	weight = 0.05,
	value = 690,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sv98_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_svds_fs_std"] = {
	fullName = "SVDS front sight",
	displayName = "SVDS FS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue front sight for SVDS sniper rifles, manufactured by Izhmash.",
	weight = 0.1,
	value = 575,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svds_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_svds_rs_std"] = {
	fullName = "SVDS rear sight",
	displayName = "SVDS RS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue rear sight for the SVDS sniper rifle.",
	weight = 0.1,
	value = 950,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svds_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_svt_frontsight"] = {
	fullName = "SVT-40 front sight",
	displayName = "SVT RS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue front sight for the SVT rifle.",
	weight = 0.05,
	value = 385,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svt_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_svt_rearsight"] = {
	fullName = "SVT-40 rear sight",
	displayName = "SVT RS",
	displayType = DISPLAYTYPE,
	description = "A standard rear sight for SVT rifle.",
	weight = 0.05,
	value = 525,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svt_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_val_rs_val"] = {
	fullName = "AS VAL rear sight",
	displayName = "AS VAL",
	displayType = DISPLAYTYPE,
	description = "A standard vertically adjustable mechanical rear sight for AS VAL.",
	weight = 0.05,
	value = 1000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("asval_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vityaz_rs_std"] = {
	fullName = 'PP-19-01 "Vityaz" rear sight',
	displayName = "PP-19-01",
	displayType = DISPLAYTYPE,
	description = "A standard rear sight for PP-19-01 Vityaz SMG produced by Izhmash.",
	weight = 0.05,
	value = 230,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pp19_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vpo101_rs_std"] = {
	fullName = "VPO-101 rear sight",
	displayName = "VPO-101",
	displayType = DISPLAYTYPE,
	description = "A standard ramp-type rear sight for the VPO-101 Vepr-Hunter carbine.",
	weight = 0.05,
	value = 315,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vpo101_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_fs_std"] = {
	fullName = "CZ Scorpion EVO 3 front sight",
	displayName = "EVO 3 FS",
	displayType = DISPLAYTYPE,
	description = "Standard fixed front sight for the CZ Scorpion EVO 3.",
	weight = 0.05,
	value = 1950,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_rs_std"] = {
	fullName = "CZ Scorpion EVO 3 rear sight",
	displayName = "EVO 3 RS",
	displayType = DISPLAYTYPE,
	description = "Standard fixed rear sight for the CZ Scorpion EVO 3.",
	weight = 0.1,
	value = 1950,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_back.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_top_kac_fs"] = {
	fullName = "HK G36 KAC Front Flip Up Sight",
	displayName = "KAC G36",
	displayType = DISPLAYTYPE,
	description = "A flip-up folding front sight for the HK G36 assault rifle. Manufactured by Knight's Armament Company.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/680b87fc9402a78e7504a057.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_top_kac_rs"] = {
	fullName = "HK G36 KAC 600m Rear Sight Rail",
	displayName = "KAC RS",
	displayType = DISPLAYTYPE,
	description = "A flip-up rear sight with a Picatinny rail for the HK G36 assault rifle. Manufactured by Knight's Armament Company.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/680b884f1a335f66240ecde7.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}
