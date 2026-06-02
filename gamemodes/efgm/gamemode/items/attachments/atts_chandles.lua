local DISPLAYTYPE = "Charging Handle"
local ATTICONPATH = "items/attachments/chandles/"

local function AttMaterial(imgPath)
	if SERVER then return end
	return Material(ATTICONPATH .. imgPath, "smooth")
end

EFGM.ITEMS["arc9_att_eft_ar10_charge_ambi"] = {
	fullName = "AR-10 KAC ambidextrous charging handle",
	displayName = "AR10 Ambi",
	displayType = DISPLAYTYPE,
	description = "An ambidextrous charging handle for the SR-25 marksman rifle and AR-10-compatible systems. Manufactured by Knight's Armament Company.",
	weight = 0.05,
	value = 1980,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_charge_kac"] = {
	fullName = "AR-10 KAC charging handle",
	displayName = "KAC AR10",
	displayType = DISPLAYTYPE,
	description = "A regular charging handle for AR-10/SR-25 and compatible systems, manufactured by Knight's Armament Company.",
	weight = 0.05,
	value = 590,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_kac.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aug_ch_a1"] = {
	fullName = "Steyr AUG A1 charging handle",
	displayName = "A1 CH",
	displayType = DISPLAYTYPE,
	description = "A standard charging handle for AUG A1. Manufactured by Steyr-Daimler-Puch.",
	weight = 0.05,
	value = 550,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("auga1.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aug_ch_a3"] = {
	fullName = "Steyr AUG A3 charging handle",
	displayName = "A3 CH",
	displayType = DISPLAYTYPE,
	description = "A standard charging handle for AUG A3. Manufactured by Steyr-Daimler-Puch.",
	weight = 0.05,
	value = 550,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("auga3.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_axmc_bolt338"] = {
	fullName = "AI AXMC .338 LM bolt assembly",
	displayName = "AXMC .338LM",
	displayType = DISPLAYTYPE,
	description = "A .338 Lapua Magnum bolt assembly for the Accuracy International AXMC sniper rifle.",
	weight = 0.4,
	value = 15600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("axmc.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_charge_ak_css"] = {
	fullName = "AK CSS knurled charging handle",
	displayName = "CSS",
	displayType = DISPLAYTYPE,
	description = "The CSS knurled charging handle gives the user an enhanced oversized knob to operate the weapon more easily.",
	weight = 0.05,
	value = 5750,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("css.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_charge_ak_rp1"] = {
	fullName = "AK Zenit RP-1 charging handle",
	displayName = "RP-1",
	displayType = DISPLAYTYPE,
	description = "The RP-1 charging handle by Zenit is a milled detail, manufactured with D16T aluminum alloy with black coating.",
	weight = 0.05,
	value = 3060,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rp1.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_charge_ar15_ach"] = {
	fullName = "AR-15 Geissele ACH charging handle",
	displayName = "ACH",
	displayType = DISPLAYTYPE,
	description = "Geissele Airborne Charging Handle for AR-15 and compatible systems.",
	weight = 0.05,
	value = 9300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ach.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_charge_ar15_ach_blk"] = {
	fullName = "AR-15 Geissele ACH charging handle",
	displayName = "ACH",
	displayType = DISPLAYTYPE,
	description = "Geissele Airborne Charging Handle for AR-15 and compatible systems.",
	weight = 0.05,
	value = 9300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ach_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_charge_ar15_adar"] = {
	fullName = "AR-15 ADAR 2-15 charging handle",
	displayName = "ADAR 2-15",
	displayType = DISPLAYTYPE,
	description = "Standard charging handle for ADAR 2-15 and compatible systems.",
	weight = 0.05,
	value = 690,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("adar.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_charge_ar15_botl"] = {
	fullName = "AR-15 Badger Ordnance Tactical Charging Handle Latch",
	displayName = "BOTL",
	displayType = DISPLAYTYPE,
	description = "The Badger Ordnance Tactical Charging Handle is optimized for use with Mil Spec AR-15/M16/M4 platform rifles and features preinstalled popular Gen I Tactical Latch of the same company. All components are machined from 6061 Alloy and Mil Spec Type III Hardcoat Anodized.",
	weight = 0.05,
	value = 6630,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ordnance.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_charge_ar15_colt"] = {
	fullName = "AR-15 Colt charging handle",
	displayName = "Colt",
	displayType = DISPLAYTYPE,
	description = "Standard charging handle for AR-15 and compatible systems.",
	weight = 0.05,
	value = 1440,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("colt.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_charge_ar15_early"] = {
	fullName = "AR-15 Colt early type charging handle ",
	displayName = "AR-15 ET",
	displayType = DISPLAYTYPE,
	description = "An early type charging handle for AR-15 and compatible systems, manufactured by Colt.",
	weight = 0.05,
	value = 1265,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("colt_tape.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_charge_ar15_gnr"] = {
	fullName = "AR-15 Daniel Defense GRIP-N-RIP charging handle",
	displayName = "GNR",
	displayType = DISPLAYTYPE,
	description = "The GRIP-N-RIP charging handle for AR-15 style weapons. Manufactured by Daniel Defense.",
	weight = 0.05,
	value = 7995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("gripnrip.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_charge_ar15_hkext"] = {
	fullName = "AR-15 HK Extended Latch charging handle",
	displayName = "Extended",
	displayType = DISPLAYTYPE,
	description = "Regular HK 416A5 charging hadle with a extended latch.",
	weight = 0.05,
	value = 5265,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("latch.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_charge_ar15_m84"] = {
	fullName = "AR-15 Precision Reflex M84 Gas Buster Charging Handle",
	displayName = "M84 GB",
	displayType = DISPLAYTYPE,
	description = "The M84 Gas Buster charging handle for use with AR-15 platform rifles, equipped with the Military Big Latch. Manufactured by Precision Reflex.",
	weight = 0.05,
	value = 10290,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m84.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_charge_ar15_masp"] = {
	fullName = "AR-15 MASP Industries Ambidextrous Battle Charging Handle",
	displayName = "MASP",
	displayType = DISPLAYTYPE,
	description = "MASP Ambi battle charging handle for AR-15 and compatible systems.",
	weight = 0.05,
	value = 3720,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("masp.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_charge_ar15_mod2"] = {
	fullName = "AR-15 Rainier Arms Avalanche MOD2 charging handle",
	displayName = "MOD2",
	displayType = DISPLAYTYPE,
	description = "Avalanche Mod.2 charging handle for AR-15 and compatible systems. Manufactured by Rainer Arms.",
	weight = 0.05,
	value = 13620,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mod2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_charge_ar15_raptor"] = {
	fullName = "AR-15 Radian Weapons Raptor charging handle",
	displayName = "Raptor",
	displayType = DISPLAYTYPE,
	description = "Raptor charging handle for AR-15 and compatible systems.",
	weight = 0.05,
	value = 7780,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("raptor.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_charge_ar15_raptor_g"] = {
	fullName = "AR-15 Radian Weapons Raptor charging handle (Gray)",
	displayName = "Raptor",
	displayType = DISPLAYTYPE,
	description = "Raptor charging handle for AR-15 and compatible systems.",
	weight = 0.05,
	value = 7780,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("raptor_gray.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_charge_ar15_raptor_sd"] = {
	fullName = "AR-15 Radian Weapons Raptor-SD charging handle",
	displayName = "Raptor-SD",
	displayType = DISPLAYTYPE,
	description = "An ambidextrous charging handle for the AR-15 platform. Manufactured by Radian Weapons.",
	weight = 0.05,
	value = 4460,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("raptor_sd.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g28_charge_std"] = {
	fullName = "HK417 E1 extended charging handle",
	displayName = "HK417",
	displayType = DISPLAYTYPE,
	description = "An extended charging handle for HK417 and compatible systems, manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 1205,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("e1.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m3s90_charge_std"] = {
	fullName = "Benelli M3 Super 90 charging handle",
	displayName = "M3",
	displayType = DISPLAYTYPE,
	description = "A standard charging handle for Benelli M3 S90. Simplifies bolt handling.",
	weight = 0.05,
	value = 1365,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("benelli.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mcx_ch"] = {
	fullName = "MCX charging handle",
	displayName = "MCX",
	displayType = DISPLAYTYPE,
	description = "A standard charging handle for SIG Sauer MCX rifles and compatible systems.",
	weight = 0.05,
	value = 840,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mk47_charge_std"] = {
	fullName = "Mk47 ambidextrous charging handle",
	displayName = "Mk47 Ambi",
	displayType = DISPLAYTYPE,
	description = "A 254mm long barrel for the CMMG Mk47 Mutant assault rifle, chambered in 7.62x39mm.",
	weight = 0.05,
	value = 2530,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mk47.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp5_charge_k"] = {
	fullName = "HK MP5K cocking handle",
	displayName = "MP5K handle",
	displayType = DISPLAYTYPE,
	description = "A standard-issue MP5K cocking handle, manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 760,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp5k.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp5_charge_std"] = {
	fullName = "HK MP5 cocking handle",
	displayName = "MP5 handle",
	displayType = DISPLAYTYPE,
	description = "A standard-issue MP5 cocking handle, manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 1300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp5.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp9_charge"] = {
	fullName = "MP9 charging handle",
	displayName = "MP9",
	displayType = DISPLAYTYPE,
	description = "A standard-issue charging handle for MP9 and compatible systems. Manufactured by Brügger & Thomet.",
	weight = 0.05,
	value = 885,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp9.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_ch_1x"] = {
	fullName = "MPX single latch charging handle",
	displayName = "MPX 1x",
	displayType = DISPLAYTYPE,
	description = "A retracting handle with one latch for MPX-based weapons. Manufactured by SIG Sauer.",
	weight = 0.05,
	value = 350,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_latch.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_ch_2x"] = {
	fullName = "MPX double latch charging handle",
	displayName = "MPX 2x",
	displayType = DISPLAYTYPE,
	description = "A retracting handle with two latches for MPX-based weapons. Manufactured by SIG Sauer.",
	weight = 0.05,
	value = 1030,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_latch2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_ch_2x2"] = {
	fullName = "MPX GEN 2 ambidextrous charging handle",
	displayName = "MPX 2x GEN2",
	displayType = DISPLAYTYPE,
	description = "n ambidextrous charging handle with two latches for the second generation of the MPX SMG. Manufactured by SIG Sauer.",
	weight = 0.05,
	value = 1910,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_gen2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_ch_sch"] = {
	fullName = "MPX Geissele SCH charging handle",
	displayName = "MPX SCH",
	displayType = DISPLAYTYPE,
	description = "The SCH (Super Charging Handle) charging handle with two latches for MPX-based weapons, manufactured by Geissele.",
	weight = 0.05,
	value = 2350,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_sch.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_nl545_charge_std"] = {
	fullName = "NL545 charging handle",
	displayName = "NL545 CH",
	displayType = DISPLAYTYPE,
	description = "A standard charging handle for NL545 series carbines and assault rifles. Manufactured by Custom Guns.",
	weight = 0.05,
	value = 1660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("nl545.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_p90_charge_km"] = {
	fullName = "FN P90 K&M The Handler charging handle",
	displayName = "TheHandler",
	displayType = DISPLAYTYPE,
	description = "An ergomomic folding charging handle for FN P90, manufactured by K&M Aerospace. The charging handle is made out of aircraft grade aluminum and anodized to mil spec type III, class 2. Includes a ball detent that keeps the handle folded in when not in use.",
	weight = 0.05,
	value = 2665,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p90_handler.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_p90_charge_std"] = {
	fullName = "FN P90 charging handle",
	displayName = "P90",
	displayType = DISPLAYTYPE,
	description = "A standard-issue charging handle for the P90 SMG, manufactured by Fabrique Nationale Herstal.",
	weight = 0.05,
	value = 900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p90.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sako_bolt_std"] = {
	fullName = "Sako TRG M10 .338 LM bolt assembly",
	displayName = "M10 .338LM",
	displayType = DISPLAYTYPE,
	description = "A .338 Lapua Magnum bolt assembly for the Sako TRG M10 sniper rifle.",
	weight = 0.4,
	value = 20445,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m10.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_ch"] = {
	fullName = "FN SCAR charging handle",
	displayName = "SCAR CH",
	displayType = DISPLAYTYPE,
	description = "A standard-issue charging handle for the SCAR-series assault rifles, manufactured by Fabrique Nationale Herstal.",
	weight = 0.05,
	value = 2300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_spear_charge_std"] = {
	fullName = "MCX SPEAR charging handle",
	displayName = "SPEAR",
	displayType = DISPLAYTYPE,
	description = "A standard-issue ambidextrous charging handle for the MCX SPEAR assault rifle. Manufactured by SIG Sauer.",
	weight = 0.05,
	value = 2055,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx_spear.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vityaz_gas_vrlps"] = {
	fullName = "PP-19-01 Vityaz Vector VR-LPS left-side charging handle",
	displayName = "VR-LPS",
	displayType = DISPLAYTYPE,
	description = "VR-LPS is a device that allows for reloading the weapon with the support hand. Installed in place of the gas tube and enables quick and efficient reloading. Manufactured by Vector 7.62.",
	weight = 0.3,
	value = 7465,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pp19_vector.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_ch_deltared"] = {
	fullName = "HB Industries CZ Scorpion EVO 3 DELTA extended charging handle (Red)",
	displayName = "Delta-R",
	displayType = DISPLAYTYPE,
	description = "Extended charging handle for the CZ Scorpion EVO 3 platform, manufactured by HB Industries.",
	weight = 0.05,
	value = 6850,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_red.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_ch_pro"] = {
	fullName = "HB Industries CZ Scorpion EVO 3 ProStock charging handle",
	displayName = "Pro",
	displayType = DISPLAYTYPE,
	description = "Alternate charging handle for the CZ Scorpion EVO 3 that offers a slightly larger footprint for better ergonomics over the standard charging handle.",
	weight = 0.05,
	value = 6100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_pro.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_ch_std"] = {
	fullName = "CZ Scorpion EVO 3 charging handle",
	displayName = "EVO 3 CH",
	displayType = DISPLAYTYPE,
	description = "Standard charging handle for the CZ Scorpion EVO 3 9x19 submachine gun.",
	weight = 0.05,
	value = 3280,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_ch_delta"] = {
	fullName = "HB Industries CZ Scorpion EVO 3 DELTA extended charging handle",
	displayName = "Delta",
	displayType = DISPLAYTYPE,
	description = "Extended charging handle for the CZ Scorpion EVO 3 platform, manufactured by HB Industries.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/wtt_scorpion_attachments/deltab.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}
