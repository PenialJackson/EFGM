local DISPLAYTYPE = "Auxiliary"
local ATTICONPATH = "items/attachments/auxiliary/"

local function AttMaterial(imgPath)
	if SERVER then return end
	return Material(ATTICONPATH .. imgPath, "smooth")
end

EFGM.ITEMS["arc9_att_eft_1911_hammer_hex"] = {
	fullName = "M1911A1 STI HEX hammer",
	displayName = "1911 HEX",
	displayType = DISPLAYTYPE,
	description = "The HEX hammer for the M1911A1 pistol, manufactured by STI.",
	weight = 0.05,
	value = 2100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("stihexhammer.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_1911_hammer_m45"] = {
	fullName = "M45A1 hammer",
	displayName = "M45 hammer",
	displayType = DISPLAYTYPE,
	description = "A standard-issue hammer for the M45A1 pistol, manufactured by Colt.",
	weight = 0.05,
	value = 220,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m45a1_hammer.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_1911_hammer_m45_blk"] = {
	fullName = "M45A1 black hammer",
	displayName = "M45 blk hammer",
	displayType = DISPLAYTYPE,
	description = "A standard-issue hammer for the M45A1 pistol, manufactured by Colt.",
	weight = 0.05,
	value = 220,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m45a1_hammer_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_1911_hammer_retro"] = {
	fullName = "M1911A1 Wilson Retro Commander hammer",
	displayName = "1911 Retro",
	displayType = DISPLAYTYPE,
	description = "The Retro Commander hammer for the M1911A1 pistol, manufactured by Wilson.",
	weight = 0.05,
	value = 1700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("wilsonretrohammer.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_1911_hammer_std"] = {
	fullName = "M1911A1 hammer",
	displayName = "1911 hammer",
	displayType = DISPLAYTYPE,
	description = "A standard-issue hammer for the M1911A1 pistol, manufactured by Colt.",
	weight = 0.05,
	value = 180,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1911_hammer.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_1911_hammer_ultra"] = {
	fullName = "M1911A1 Wilson Ultralight skeletonized hammer",
	displayName = "1911 Ultralight",
	displayType = DISPLAYTYPE,
	description = "The Ultralight Skeletonized hammer for the M1911A1 pistol, manufactured by Wilson.",
	weight = 0.05,
	value = 2700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("wilsonlighthammer.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_1911_slock_m45"] = {
	fullName = "M45A1 slide lock",
	displayName = "M45 lock",
	displayType = DISPLAYTYPE,
	description = "A standard-issue slide lock lever for M45A1 pistols, manufactured by Colt.",
	weight = 0.05,
	value = 210,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m45a1_stop.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_1911_slock_m45_blk"] = {
	fullName = "M45A1 black slide lock",
	displayName = "M45 blk lock",
	displayType = DISPLAYTYPE,
	description = "A standard-issue slide lock lever for M45A1 pistols, manufactured by Colt.",
	weight = 0.05,
	value = 210,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m45a1_stop_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_1911_slock_std"] = {
	fullName = "M1911A1 slide stop",
	displayName = "1911 lock",
	displayType = DISPLAYTYPE,
	description = "A standard-issue slide stop for the M1911A1 pistol, manufactured by Colt.",
	weight = 0.05,
	value = 90,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1911_stop.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_1911_slock_wils"] = {
	fullName = "M1911A1 Wilson Extended slide stop",
	displayName = "Wilson lock",
	displayType = DISPLAYTYPE,
	description = "An extended slide lever for the M1911A1 pistol, manufactured by Wilson.",
	weight = 0.05,
	value = 1000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("wilsonstop.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_1911_trigger_m45"] = {
	fullName = "M45A1 trigger",
	displayName = "M45 trig.",
	displayType = DISPLAYTYPE,
	description = "A standard-issue trigger for the M45A1 pistol, manufactured by Colt.",
	weight = 0.05,
	value = 220,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m45a1_trigger.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_1911_trigger_std"] = {
	fullName = "M1911A1 trigger",
	displayName = "1911 trig.",
	displayType = DISPLAYTYPE,
	description = "A standard-issue trigger for the M1911A1 pistol, manufactured by Colt.",
	weight = 0.05,
	value = 200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1911_trigger.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_1911_trigger_trik"] = {
	fullName = "M1911A1 Caspian Arms Trik Trigger",
	displayName = "Trik trig.",
	displayType = DISPLAYTYPE,
	description = 'The "Trik Trigger" trigger for the M1911A1 pistol, manufactured by Caspian Arms.',
	weight = 0.05,
	value = 3100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("caspiantrigger.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aux_ekp_shade"] = {
	fullName = "Axion Kobra sight shade",
	displayName = "Kobra",
	displayType = DISPLAYTYPE,
	description = "A sight shade for reflex sights of the Kobra family. Protects the lens against mechanical impacts and suppresses flaring. Manufactured by Axion.",
	weight = 0.05,
	value = 150,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("kobrashade.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_charge_ar15_badlever"] = {
	fullName = "AR-15 Magpul B.A.D. Lever bolt release",
	displayName = "B.A.D.",
	displayType = DISPLAYTYPE,
	description = "The Battery Assist Device Lever for the AR-15 platform and compatibles. Allows to release the bolt into battery from the right side of the rifle, making it easier to operate the weapon for left-handed shooters. Manufactured by Magpul.",
	weight = 0.05,
	value = 5180,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("badlever.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_hg_handstop"] = {
	fullName = "HK G36 hand stop",
	displayName = "G36 HS",
	displayType = DISPLAYTYPE,
	description = "A polymer hand stop for the G36. Manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 735,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36stop.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_magwell_stanag"] = {
	fullName = "HK G36 STANAG magwell",
	displayName = "G36 NATO",
	displayType = DISPLAYTYPE,
	description = "A STANAG magwell for the G36 assault rifle, manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 1500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36nato.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_magwell_std"] = {
	fullName = "HK G36 magwell",
	displayName = "G36 std",
	displayType = DISPLAYTYPE,
	description = "A standard-issue magwell for the G36 assault rifle, manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 1320,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36std.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m870_stock_agr_cap"] = {
	fullName = "FAB Defense protection cap for AGR-870",
	displayName = "AGR-870 cap",
	displayType = DISPLAYTYPE,
	description = "The FAB Defense protection cap for the AGR-870 pistol grip.",
	weight = 0.05,
	value = 295,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m870cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mcx_stock_ucs_cheek"] = {
	fullName = "Magpul UCS Stock Cheek Riser",
	displayName = "UCS CR",
	displayType = DISPLAYTYPE,
	description = "A cheek rest for the Universal Carbine Stock. Manufactured by Magpul.",
	weight = 0.05,
	value = 5200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("magpulriser.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr155u_thermal"] = {
	fullName = "MP-155 Ultima thermal camera",
	displayName = "Ultima camera",
	displayType = DISPLAYTYPE,
	description = 'A special thermal imaging camera for the "Ultima" modification for the MP-155 shotgun. The image from the camera is displayed on the front display on the back of the weapon. Manufactured by Kalashnikov Group.',
	weight = 0.2,
	value = 37600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ultimacamera.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_hammer_ext_black"] = {
	fullName = "M1895/MXLR Ranger Point Precision hammer spur extension",
	displayName = "RPP spur",
	displayType = DISPLAYTYPE,
	description = "An ergonomic hammer extension for M1895 rifles and compatibles. Manufactured by Ranger Point Precision.",
	weight = 0.05,
	value = 820,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hammerspur.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_hammer_ext_gold"] = {
	fullName = "M1895/MXLR Ranger Point Precision hammer spur extension (Black)",
	displayName = "RPP spur",
	displayType = DISPLAYTYPE,
	description = "An ergonomic hammer extension for M1895 rifles and compatibles. Manufactured by Ranger Point Precision. Black version.",
	weight = 0.05,
	value = 820,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hammerspur_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_hammer_ext_spur"] = {
	fullName = "MXLR hammer spur extension",
	displayName = "MXLR spur",
	displayType = DISPLAYTYPE,
	description = "An ergonomic hammer extension for the Marlin MXLR.",
	weight = 0.05,
	value = 650,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("spurextension.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_hammer_std"] = {
	fullName = "MXLR hammer",
	displayName = "MXLR ham.",
	displayType = DISPLAYTYPE,
	description = "A standard-issue hammer for the Marlin MXLR rifle.",
	weight = 0.05,
	value = 1300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlrhammer.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_loop_rpp"] = {
	fullName = "M1895/MXLR Ranger Point Precision medium loop lever",
	displayName = "RPP lever",
	displayType = DISPLAYTYPE,
	description = "An extended loop lever for M1895 rifles and compatibles. Manufactured by Ranger Point Precision.",
	weight = 0.05,
	value = 3790,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mediumlooplever.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_loop_std"] = {
	fullName = "MXLR loop lever",
	displayName = "MXLR loop",
	displayType = DISPLAYTYPE,
	description = "A standard loop lever for the Marlin MXLR.",
	weight = 0.05,
	value = 935,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("looplever.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_trig_rpp"] = {
	fullName = "M1895/MXLR Ranger Point Precision trigger",
	displayName = "RPP trig.",
	displayType = DISPLAYTYPE,
	description = "An ergonomic trigger for M1895 rifles and compatibles. Manufactured by Ranger Point Precision.",
	weight = 0.05,
	value = 2760,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlrtrigger.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_trig_rpp_black"] = {
	fullName = "M1895/MXLR Ranger Point Precision trigger (Black)",
	displayName = "RPP trig.",
	displayType = DISPLAYTYPE,
	description = "An ergonomic trigger for M1895 rifles and compatibles. Manufactured by Ranger Point Precision. Black version.",
	weight = 0.05,
	value = 2760,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlrtrigger_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_trig_rpp_gold"] = {
	fullName = "M1895/MXLR Ranger Point Precision trigger (Gold)",
	displayName = "RPP trig.",
	displayType = DISPLAYTYPE,
	description = "An ergonomic trigger for M1895 rifles and compatibles. Manufactured by Ranger Point Precision. Gold color version.",
	weight = 0.05,
	value = 2760,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlrtrigger_gold.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_trig_std"] = {
	fullName = "MXLR trigger",
	displayName = "MXLR trig.",
	displayType = DISPLAYTYPE,
	description = "A standard-issue trigger for the Marlin MXLR rifle.",
	weight = 0.05,
	value = 1665,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlrtrig.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_1p78_eyecap"] = {
	fullName = "NPZ 1P78 scope eyecup",
	displayName = "Eyecup",
	displayType = DISPLAYTYPE,
	description = "A rubber eyecup for the NPZ 1P78 scope.",
	weight = 0.05,
	value = 500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("1p78_cup.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_kmz_eyecap"] = {
	fullName = "KMZ 1P59 scope eyecup",
	displayName = "Eyecup",
	displayType = DISPLAYTYPE,
	description = "Rubber eyecup for KMZ 1P59 scope.",
	weight = 0.05,
	value = 620,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("1p59_cup.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_nspu_eyecap"] = {
	fullName = "NSPU-M scope eyecup",
	displayName = "Eyecup",
	displayType = DISPLAYTYPE,
	description = "Rubber eyecup for NSPU-M scope.",
	weight = 0.05,
	value = 285,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("nspum_cup.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_pso_eyecap"] = {
	fullName = "PSO scope eyecup",
	displayName = "Eyecup",
	displayType = DISPLAYTYPE,
	description = "Rubber eyecup for PSO scopes family.",
	weight = 0.05,
	value = 300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pso_cup.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_reapir_eyecup"] = {
	fullName = "Trijicon REAP-IR scope eyecup",
	displayName = "REAP-IR cup",
	displayType = DISPLAYTYPE,
	description = "A rubber eyecup for the Trijicon REAP-IR thermal scope.",
	weight = 0.05,
	value = 500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("reapircup.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_shakhin_eyecup"] = {
	fullName = "Cyclone Shakhin scope eyecup",
	displayName = "Shakhin",
	displayType = DISPLAYTYPE,
	description = "A rubber eyecup for the Shakhin thermal scope. Manufactured by Central Research Institute Cyclone.",
	weight = 0.05,
	value = 830,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("shakhin_cup.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_tulpan_eyecap"] = {
	fullName = "NPZ USP-1 scope eyecup",
	displayName = "Eyecup",
	displayType = DISPLAYTYPE,
	description = "Rubber eyecup for USP-1",
	weight = 0.05,
	value = 300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp1_cup.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_vulcan_eyecup"] = {
	fullName = "Armasight Vulcan MG scope eyecup",
	displayName = "Vulcan MG",
	displayType = DISPLAYTYPE,
	description = "A rubber eyecup for the Vulcan MG riflescope, manufactured by Armasight.",
	weight = 0.05,
	value = 400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vulcancup.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_zeus_eyecup"] = {
	fullName = "Armasight Zeus Pro scope eyecup",
	displayName = "ZeusPro",
	displayType = DISPLAYTYPE,
	description = "A rubber eyecup for the Zeus Pro riflescope. Manufactured by Armasight.",
	weight = 0.05,
	value = 700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("zeuscup.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sako_hook_std"] = {
	fullName = "Sako TRG M10 rear hook",
	displayName = "M10 hook",
	displayType = DISPLAYTYPE,
	description = "A rail cover for the TRG M10 sniper rifle buttstock. Manufactured by Sako.",
	weight = 0.1,
	value = 16300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m10_hook.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sr2m_optic_shade"] = {
	fullName = "KP-SR2 sight shade",
	displayName = "KP-SR2",
	displayType = DISPLAYTYPE,
	description = "A sight shade for the KP-SR2 reflex sight. Protects the lens against mechanical impacts and suppresses flaring. Manufactured by TsNIItochmash.",
	weight = 0.05,
	value = 620,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr2_shade.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stm9_magwel"] = {
	fullName = "STM-9 magwell",
	displayName = "STM-9 magwell",
	displayType = DISPLAYTYPE,
	description = "A regular magazine well for the Soyuz-TM STM-9 carbine.",
	weight = 0.05,
	value = 1460,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("stmstd.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stm9_magwelg"] = {
	fullName = "STM-9 magwell (Grey)",
	displayName = "STM-9 magwell",
	displayType = DISPLAYTYPE,
	description = "A regular magazine well for the Soyuz-TM STM-9 carbine. Grey version.",
	weight = 0.05,
	value = 1460,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("stmgrey.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sv98_ribooon"] = {
	fullName = "SV-98 anti-heat ribbon",
	displayName = "SV-98",
	displayType = DISPLAYTYPE,
	description = "An anti-heat ribbon for the SV-98 sniper rifle. Applied to the barrel. Prevents hot air from rising directly from the barrel and creating optical distortions in the line of fire.",
	weight = 0.05,
	value = 100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sv98ribbon.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sv98_sil_cover"] = {
	fullName = "SV-98 sound suppressor heat shield",
	displayName = "Heat Shield",
	displayType = DISPLAYTYPE,
	description = "A standard-issue heat shield for SV-98 sound suppressors.",
	weight = 0.05,
	value = 430,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sv98shield.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_usp_hammer_std"] = {
	fullName = "HK USP hammer",
	displayName = "USP ham.",
	displayType = DISPLAYTYPE,
	description = "A standard-issue slide lock lever for the USP pistol, manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 420,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp_hammer.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_usp_slock_std"] = {
	fullName = "HK USP slide lock",
	displayName = "USP SLock",
	displayType = DISPLAYTYPE,
	description = "A standard-issue slide lock lever for the USP pistol, manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 280,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp_lock.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_usp_trigger_std"] = {
	fullName = "HK USP trigger",
	displayName = "USP trig.",
	displayType = DISPLAYTYPE,
	description = "A standard-issue trigger for the USP pistol, manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 390,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp_trigger.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_valmod4_magwell"] = {
	fullName = "AS VAL MOD.4 magwell",
	displayName = "MOD.4",
	displayType = DISPLAYTYPE,
	description = "A flared magazine well for the AS VAL MOD.4. Enables faster and more precise magazine insertion.",
	weight = 0.05,
	value = 21760,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mod4_magwell.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_hs_mlok"] = {
	fullName = "Magpul M-LOK hand stop",
	displayName = "HS M-LOK",
	displayType = DISPLAYTYPE,
	description = "Tactical hand stop that is compatible with M-LOK rail systems, manufactured by Magpul.",
	weight = 0.05,
	value = 5100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mlok_stop.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_hs_pic"] = {
	fullName = "CZ Scorpion EVO 3 picatinny hand stop",
	displayName = "HS",
	displayType = DISPLAYTYPE,
	description = "Picatinny front hand stop for the CZ Scorpion EVO 3 9x19 submachine gun.",
	weight = 0.05,
	value = 4440,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_stop.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}
