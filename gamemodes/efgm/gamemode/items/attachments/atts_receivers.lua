local DISPLAYTYPE = "Receiver"
local ATTICONPATH = "items/attachments/receivers/"

local function AttMaterial(imgPath, paramOverride)
	if SERVER then return end
	return Material(ATTICONPATH .. imgPath, paramOverride or "smooth")
end

EFGM.ITEMS["arc9_att_eft_57_rec"] = {
	fullName = "FN Five-seveN MK2 pistol slide",
	displayName = "5-7",
	displayType = DISPLAYTYPE,
	description = "A regular slide for the Five-seveN MK2 pistol, manufactured by Fabrique Nationale Herstal.",
	weight = 0.1,
	value = 2300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("fiveseven.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aa12_gen2"] = {
	fullName = "MPS Auto Assault-12 Gen 2 Receiver",
	displayName = "Gen 2",
	displayType = DISPLAYTYPE,
	description = "The second generation receiver features a mount for installing optics.",
	weight = 2.9,
	value = 25575,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aa12_gen2.png"),

	sizeX = 4,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ak12_rec"] = {
	fullName = "AK-12 dust cover",
	displayName = "AK-12 DC",
	displayType = DISPLAYTYPE,
	description = "A standard receiver dust cover with integrated Picatinny rail for AK-12 automatic rifles. Manufactured by Izhmash.",
	weight = 0.2,
	value = 4100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak12.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ak50_rec_std"] = {
	fullName = "AK-50 dust cover",
	displayName = "AK-50 DC",
	displayType = DISPLAYTYPE,
	description = "A receiver dust cover with integrated Picatinny rail for the AK-50, allowing installation of optics. Manufactured by The AK Guy LTD.",
	weight = 1.6,
	value = 5400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak50.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aksu_rec_ak_b"] = {
	fullName = "AKS-74UB dust cover",
	displayName = "AKS-74UB",
	displayType = DISPLAYTYPE,
	description = "A standard-issue dust cover for AKS-74UB automatic rifles, manufactued by Izhmash.",
	weight = 0.1,
	value = 1800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aks74ub.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aksu_rec_ak_std"] = {
	fullName = "AKS-74U dust cover",
	displayName = "6P26 Sb.7",
	displayType = DISPLAYTYPE,
	description = "A standard-issue dust cover for AKS-74U, AKS-74UN automatic rifles, manufactued by Izhmash.",
	weight = 0.1,
	value = 800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aks74u.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aksu_rec_piligrim"] = {
	fullName = "AKS-74U Legal Arsenal Piligrim railed dust cover",
	displayName = "Piligrim",
	displayType = DISPLAYTYPE,
	description = 'The "Piligrim" receiver dust cover with integrated Picatinny rail for AKS-74U. Allows installation of reflex sights and optics. Manufactured by Legal Arsenal.',
	weight = 0.1,
	value = 4900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pili.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aug_upper"] = {
	fullName = "Steyr AUG A3 5.56x45 receiver",
	displayName = "A3",
	displayType = DISPLAYTYPE,
	description = "A low-profile receiver with built-in tactical equipment rail for AUG A3. Manufactured by Steyr-Daimler-Puch.",
	weight = 0.8,
	value = 6930,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("auga3.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aug_upper_stg"] = {
	fullName = "Steyr AUG A1 STG77 1.5x optic sight",
	displayName = "STG77",
	displayType = DISPLAYTYPE,
	description = "STG77 is a standard optic sight for the AUG A1. The sight provides a 1.5x zoom and has an open non-removable ironsights in the upper part of the optics. Manufactured by Swarovski Optik.",
	weight = 1.2,
	value = 5270,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("auga1.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_axmc_upper"] = {
	fullName = "AI AXMC upper receiver",
	displayName = "AXMC upper",
	displayType = DISPLAYTYPE,
	description = "An upper receiver for the AXMC sniper rifle manufactured by Accuracy International. Equipped with a mount for attaching additional devices.",
	weight = 0.4,
	value = 8400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("axmc_receiver.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g28_upper_std"] = {
	fullName = "HK G28 7.62x51 upper receiver",
	displayName = "G28",
	displayType = DISPLAYTYPE,
	description = "An upper receiver for the G28 marksman rifle manufactured by Heckler & Koch. Equipped with a top mount for attaching additional devices.",
	weight = 0.3,
	value = 14800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g28.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_kedr_conv_b"] = {
	fullName = 'PP-91-01 "Kedr-B"',
	displayName = "Kedr-B",
	displayType = DISPLAYTYPE,
	description = "A rare silenced version of the PP-91 Kedr submachine gun, denominated as PP-91-01 Kedr-B.",
	weight = 1.2,
	value = 11350,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("kedr_b.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_kedr_conv_klin"] = {
	fullName = 'PP-9 "Klin"',
	displayName = "Klin",
	displayType = DISPLAYTYPE,
	description = "The PP-9 Klin is a further evolution of the Kedr submachine gun. It has a higher rate of fire and its chamber is designed to use the 9x18 PMM cartridge. It was produced from 1996 to 2002 by order of the Ministry of Internal Affairs.",
	weight = 0.6,
	value = 16900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("klin.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mcx_rec"] = {
	fullName = "MCX GEN1 .300 BLK upper receiver",
	displayName = "MCX GEN1",
	displayType = DISPLAYTYPE,
	description = "An upper receiver for the first generation MCX assault rifles manufactured by SIG Sauer. Features a mount for attaching additional equipment.",
	weight = 0.4,
	value = 4035,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx_gen1.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mk18_upper_std"] = {
	fullName = "Mk-18 .338 LM upper receiver",
	displayName = "Mk-18",
	displayType = DISPLAYTYPE,
	description = "A regular upper receiver for Mk-18 Mod 1 Mjölnir by SWORD International. Fitted with a mount for attaching additional equipment.",
	weight = 0.4,
	value = 39100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mk18.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mk47_upper_std"] = {
	fullName = "Mk47 Resolute 7.62x39 upper receiver",
	displayName = "Mk47 Resolute",
	displayType = DISPLAYTYPE,
	description = "The Resolute upper receiver for Mk47 Mutant assault rifle, chambered in 7.62x39mm. Equipped with a mount for attaching additional devices. Manufactured by CMMG.",
	weight = 0.2,
	value = 5100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mk47.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp5_rec_k"] = {
	fullName = "HK MP5K 9x19 upper receiver",
	displayName = "MP5K upper",
	displayType = DISPLAYTYPE,
	description = "A regular upper receiver for the MP5K SMGs, manufactured by Heckler & Koch.",
	weight = 0.4,
	value = 1525,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp5k.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp5_rec_sd"] = {
	fullName = "HK MP5SD 9x19 upper receiver",
	displayName = "MP5SD upper",
	displayType = DISPLAYTYPE,
	description = "An upper receiver for the MP5SD SMG, manufactured by Heckler & Koch.",
	weight = 0.6,
	value = 10355,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp5sd.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp5_rec_std"] = {
	fullName = "HK MP5 9x19 upper receiver",
	displayName = "MP5 upper",
	displayType = DISPLAYTYPE,
	description = "A standard upper receiver for MP5 SMGs, manufactured by Heckler & Koch.",
	weight = 0.5,
	value = 3880,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp5.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp9_rec_n"] = {
	fullName = "MP9-N 9x19 upper receiver",
	displayName = "MP9-N",
	displayType = DISPLAYTYPE,
	description = "An upper receiver for the MP9-N SMG, manufactured by Brügger & Thomet.",
	weight = 0.3,
	value = 6000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp9n.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp9_rec_std"] = {
	fullName = "MP9 9x19 upper receiver",
	displayName = "MP9",
	displayType = DISPLAYTYPE,
	description = "An upper receiver for the MP9 SMG, manufactured by Brügger & Thomet.",
	weight = 0.2,
	value = 5480,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp9.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_rec"] = {
	fullName = "MPX GEN1 9x19 upper receiver",
	displayName = "MPX GEN1",
	displayType = DISPLAYTYPE,
	description = "A 1st generation upper receiver for the SIG MPX submachine gun, manufactured by SIG Sauer. Features a mount for attaching additional equipment.",
	weight = 0.5,
	value = 3800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_gen1.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_nl545_upperr_di"] = {
	fullName = "NL545 (DI) 5.45x39 upper receiver",
	displayName = "NL545 DI",
	displayType = DISPLAYTYPE,
	description = "An upper receiver for the direct impingement NL545 assault rifle manufactured by Custom Guns. Equipped with a mount for attaching additional devices.",
	weight = 0.3,
	value = 21735,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("nl545_di.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_nl545_upperr_gp"] = {
	fullName = "NL545 (GP) 5.45x39 upper receiver (FDE)",
	displayName = "NL545 GP",
	displayType = DISPLAYTYPE,
	description = "An upper receiver for the short-stroke gas piston NL545 assault rifle manufactured by Custom Guns. Equipped with a mount for attaching additional devices. Flat Dark Earth version.",
	weight = 0.3,
	value = 22770,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("nl545_gp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_p90_effen_rec"] = {
	fullName = "FN P90 EFFEN 90 5.7x28 upper receiver",
	displayName = "EFFEN 90",
	displayType = DISPLAYTYPE,
	description = "EFFEN 90 is a low-profile upper receiver for the P90 submachine gun, manufactured by Fabrique Nationale Herstal.",
	weight = 0.2,
	value = 3800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("effen.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_p90_rec_std"] = {
	fullName = "FN P90 5.7x28 upper receiver",
	displayName = "P90",
	displayType = DISPLAYTYPE,
	description = "A regular upper receiver for the P90 submachine gun, manufactured by Fabrique Nationale Herstal.",
	weight = 0.3,
	value = 3190,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p90.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_pm_rec_std"] = {
	fullName = "PM pistol slide",
	displayName = "PM",
	displayType = DISPLAYTYPE,
	description = "A standard-issue slide for Makarov Pistol 9x18.",
	weight = 0.2,
	value = 1315,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pm.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ppsh41_dust"] = {
	fullName = "PPSh-41 dust cover",
	displayName = "PPSh41",
	displayType = DISPLAYTYPE,
	description = "A standard-issue dust cover for PPSh-41.",
	weight = 1,
	value = 675,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ppsh.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ps90_rec"] = {
	fullName = "FN PS90 5.7x28 upper receiver",
	displayName = "PS90",
	displayType = DISPLAYTYPE,
	description = "A regular upper receiver for the PS90, produced by Fabrique Nationale Herstal.",
	weight = 0.3,
	value = 2720,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ps90.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_ak_ak74"] = {
	fullName = "AK-74 dust cover (6P20 0-1)",
	displayName = "6P20 0-1",
	displayType = DISPLAYTYPE,
	description = "A standard-issue dust cover for AK-74 automatic rifles, manufactued by Izhmash.",
	weight = 0.1,
	value = 1135,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak74.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_ak_ak74m"] = {
	fullName = "AK-74M dust cover (6P34 0-1)",
	displayName = "6P34 0-1",
	displayType = DISPLAYTYPE,
	description = "A standard-issue dust cover for AK-74M automatic rifles, manufactued by Izhmash.",
	weight = 0.1,
	value = 1265,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak74m.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_ak_akm"] = {
	fullName = "AKM dust cover",
	displayName = "6P1 0-1",
	displayType = DISPLAYTYPE,
	description = "Standard АKM top dust cover by Izhmash.",
	weight = 0.1,
	value = 1100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("akm.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_ak_akm_molot"] = {
	fullName = "Molot AKM-type dust cover",
	displayName = "Molot",
	displayType = DISPLAYTYPE,
	description = "Standard АKM type top dust cover by Molot.",
	weight = 0.1,
	value = 1190,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("molot.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_ak_b33"] = {
	fullName = "AK Zenit B-33 dust cover",
	displayName = "B-33",
	displayType = DISPLAYTYPE,
	description = "The B-33 dust cover with an integrated Picatinny rail is compatible with all models of Kalashnikov automatic rifles and carbines based on AK system. Allows installation of all Picatinny-mountable sights, ensuring the consistency of median aimpoint even after repeated removal and replacement of dust cover. Can only be installed in combination with AK Zenit B-10M handguard with B-19 upper mount or AK Zenit B-30 handguard with B-31S upper handguard rail.",
	weight = 0.2,
	value = 14800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("b33.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_ak_bastion"] = {
	fullName = "AK AKademia Bastion dust cover",
	displayName = "Bastion",
	displayType = DISPLAYTYPE,
	description = "The Bastion dust cover with an integrated Picatinny rail is compatible with all models of Kalashnikov automatic rifles and carbines based on the AK platform. Manufactured by AKademia.",
	weight = 0.2,
	value = 6320,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("bastion.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_ak_dogleg"] = {
	fullName = "AK TWS Dog Leg Rail dust cover",
	displayName = "TWS Dog Leg",
	displayType = DISPLAYTYPE,
	description = "The Texas Weapon Systems Dog Leg Rail dust cover with an integrated Picatinny rail is compatible with all models of Kalashnikov automatic rifles and carbines based on the AK platform.",
	weight = 0.2,
	value = 10600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("dogleg.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_ak_fab_pdc"] = {
	fullName = "AK FAB Defense PDC dust cover",
	displayName = "FABd PDC",
	displayType = DISPLAYTYPE,
	description = "The FAB Defense PDC dust cover with an integrated Picatinny rail is compatible with all models of automatic rifles and carbines based on the AK platform.",
	weight = 0.2,
	value = 17780,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pdc.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_ak_rd704"] = {
	fullName = "RD-704 dust cover",
	displayName = "RD-704 DC",
	displayType = DISPLAYTYPE,
	description = "A standard-issue dust cover for RD-704 automatic rifles, manufactued by Rifle Dynamics.",
	weight = 0.1,
	value = 2000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rd704.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_ar15_adar"] = {
	fullName = "ADAR 2-15 5.56x45 upper receiver",
	displayName = "2-15 Upper",
	displayType = DISPLAYTYPE,
	description = "Upper receiver for ADAR 2-15 assault rifle manufactured by ADAR. Equipped with a mount for attaching additional devices.",
	weight = 0.3,
	value = 3250,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("adar.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_ar15_aeronknxo"] = {
	fullName = "AR-15 Aeroknox AX-15 5.56x45 upper receiver",
	displayName = "AX-15",
	displayType = DISPLAYTYPE,
	description = "The AX-15 modular upper receiver for AR-based weapons. Fitted with mounts for attaching additional equipment. Manufactured by Aeroknox.",
	weight = 0.3,
	value = 33995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ax15.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_ar15_gen3"] = {
	fullName = "AR-15 Noveske Gen.3 5.56x45 upper receiver",
	displayName = "Gen.3",
	displayType = DISPLAYTYPE,
	description = "The Gen.3 modular upper receiver for AR-based weapons, manufactured by Noveske. Fitted with mounts for attaching additional equipment.",
	weight = 0.2,
	value = 25150,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("noveske.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_ar15_m16a1e1"] = {
	fullName = "M16A1E1 5.56x45 upper receiver",
	displayName = "M16A1E1",
	displayType = DISPLAYTYPE,
	description = "An upper receiver for the M16A1E1 assault rifle manufactured by Colt. An early prototype variant between the M16A1 and M16A2, which also served as the basis for the Canadian C7. During the 1980s it was widely fitted to various special carbines produced by Colt.",
	weight = 0.4,
	value = 4305,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m16a1e1.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_ar15_m16a2"] = {
	fullName = "M16A2 5.56x45 upper receiver",
	displayName = "M16A2",
	displayType = DISPLAYTYPE,
	description = "An upper receiver for the M16A2 assault rifle manufactured by Colt.",
	weight = 0.4,
	value = 4555,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m16a2.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_ar15_m4a1"] = {
	fullName = "M4A1 5.56x45 upper receiver",
	displayName = "M4A1",
	displayType = DISPLAYTYPE,
	description = "Upper receiver for M4A1 assault rifle manufactured by Colt. Equipped with a mount for attaching additional devices.",
	weight = 0.3,
	value = 5190,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m4a1.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_ar15_mur"] = {
	fullName = "AR-15 Vltor MUR-1S 5.56x45 upper receiver",
	displayName = "MUR-1S",
	displayType = DISPLAYTYPE,
	description = "MUR-1S modular upper receiver for AR-based weapons by Vltor company. Fitted with mount for attaching additional equipment.",
	weight = 0.2,
	value = 41205,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mur1s.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_ar15_radian"] = {
	fullName = "AR-15 Radian Weapons Model 1 5.56x45 upper receiver",
	displayName = "Model 1",
	displayType = DISPLAYTYPE,
	description = "A precision CNC machined upper receiver for the AR-15 platform. Manufactured by Radian Weapons.",
	weight = 0.3,
	value = 45995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("model1.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_ar15_stm9"] = {
	fullName = "STM-9 9x19 upper receiver",
	displayName = "STM-9 rec.",
	displayType = DISPLAYTYPE,
	description = "An upper receiver for the STM-9 9x19 carbine. Equipped with a mount for attaching additional tactical devices.",
	weight = 0.3,
	value = 2950,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("stm9.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_ar15_tx15"] = {
	fullName = "TX-15 5.56x45 Lightweight upper receiver",
	displayName = "TX15 LW",
	displayType = DISPLAYTYPE,
	description = "Upper receiver for TX15 rifle manufactured by Lone Star. Equipped with a mount for attaching additional devices.",
	weight = 0.2,
	value = 26555,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tx15lw.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_g17_aw"] = {
	fullName = "Glock Alpha Wolf pistol slide",
	displayName = "G AW",
	displayType = DISPLAYTYPE,
	description = "A slide for Glock pistols family, manufactured by Lone Wolf.",
	weight = 0.2,
	value = 13800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("alphawolf.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_g17_aw_blk"] = {
	fullName = "Glock Alpha Wolf pistol slide",
	displayName = "G AW",
	displayType = DISPLAYTYPE,
	description = "A slide for Glock pistols family, manufactured by Lone Wolf.",
	weight = 0.2,
	value = 13800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("alphawolf_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_g17_aw_c"] = {
	fullName = "Glock 9x19 Alpha Wolf custom pistol slide",
	displayName = "G AW C",
	displayType = DISPLAYTYPE,
	description = "A special version of Glock family pistols’ slide made by Lone Wolf.",
	weight = 0.3,
	value = 21850,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("alphawolfc.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_g17_aw_c_blk"] = {
	fullName = "Glock 9x19 Alpha Wolf custom pistol slide",
	displayName = "G AW C",
	displayType = DISPLAYTYPE,
	description = "A special version of Glock family pistols’ slide made by Lone Wolf.",
	weight = 0.3,
	value = 21850,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("alphawolfc_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_g17_mos"] = {
	fullName = "Glock 9x19 MOS slide",
	displayName = "G MOS",
	displayType = DISPLAYTYPE,
	description = "The MOS (Modular Optic System) slide designed for Glock 9x19 pistols. Manufactured by Glock.",
	weight = 0.3,
	value = 4700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("gmos.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_g17_motocut"] = {
	fullName = "Glock 9x19 Moto Cut pistol slide",
	displayName = "G MotoCut",
	displayType = DISPLAYTYPE,
	description = "A lightweight slide for Glock 9x19 pistols.",
	weight = 0.2,
	value = 39000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("motocut.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_g17_motocut_blk"] = {
	fullName = "Glock 9x19 Moto Cut pistol slide",
	displayName = "G MotoCut",
	displayType = DISPLAYTYPE,
	description = "A lightweight slide for Glock 9x19 pistols.",
	weight = 0.2,
	value = 39000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("motocut_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_g17_ps9"] = {
	fullName = "Glock Polymer80 PS9 pistol slide",
	displayName = "G PS9",
	displayType = DISPLAYTYPE,
	description = "The PS9 slide for Glock family pistols, manufactured by Polymer80.",
	weight = 0.3,
	value = 24380,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ps9.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_g17_ps9_blk"] = {
	fullName = "Glock Polymer80 PS9 pistol slide",
	displayName = "G PS9",
	displayType = DISPLAYTYPE,
	description = "The PS9 slide for Glock family pistols, manufactured by Polymer80.",
	weight = 0.3,
	value = 24380,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ps9_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_g17_std"] = {
	fullName = "Glock 9x19 pistol slide",
	displayName = "Glock",
	displayType = DISPLAYTYPE,
	description = "A standard-issue slide for Glock 9x19 pistols.",
	weight = 0.3,
	value = 1400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_g17_vipercut"] = {
	fullName = "Glock 9x19 Viper Cut pistol slide",
	displayName = "G ViperCut",
	displayType = DISPLAYTYPE,
	description = "A lightweight slide for Glock 9x19 pistols.",
	weight = 0.2,
	value = 19320,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vipercut.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_g17_vipercut_blk"] = {
	fullName = "Glock 9x19 Viper Cut pistol slide",
	displayName = "G ViperCut",
	displayType = DISPLAYTYPE,
	description = "A lightweight slide for Glock 9x19 pistols.",
	weight = 0.2,
	value = 19320,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vipercut_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_g17_zt_hex"] = {
	fullName = "Glock ZEV Tech HEX Gen3 pistol slide",
	displayName = "G ZT HEX",
	displayType = DISPLAYTYPE,
	description = "A slide for Glock pistols family, manufactured by ZEV Technologies. Includes a mount for installation of the RMR reflex sights lineup.",
	weight = 0.2,
	value = 26500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("zevgen.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_g17_zt_hex_blk"] = {
	fullName = "Glock ZEV Tech HEX Gen3 pistol slide",
	displayName = "G ZT HEX",
	displayType = DISPLAYTYPE,
	description = "A slide for Glock pistols family, manufactured by ZEV Technologies. Includes a mount for installation of the RMR reflex sights lineup.",
	weight = 0.2,
	value = 26500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("zevgen_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_g17_zt_spartan"] = {
	fullName = "Glock ZEV Tech HEX Spartan pistol slide",
	displayName = "G ZT Spartan",
	displayType = DISPLAYTYPE,
	description = "A slide for Glock pistols family, manufactured by ZEV Technologies. Includes a mount for installation of the RMR reflex sights lineup.",
	weight = 0.2,
	value = 39790,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("zevhex.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_g17_zt_spartan_blk"] = {
	fullName = "Glock ZEV Tech HEX Spartan pistol slide",
	displayName = "G ZT Spartan",
	displayType = DISPLAYTYPE,
	description = "A slide for Glock pistols family, manufactured by ZEV Technologies. Includes a mount for installation of the RMR reflex sights lineup.",
	weight = 0.2,
	value = 39790,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("zevhex_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_g18c_std"] = {
	fullName = "Glock 18C 9x19 pistol slide",
	displayName = "G18C",
	displayType = DISPLAYTYPE,
	description = "A standard-issue slide for Glock 18C 9x19 pistols.",
	weight = 0.3,
	value = 3660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock18c.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_g19x_black"] = {
	fullName = "Glock 19X 9x19 pistol slide (Black)",
	displayName = "G19X (B)",
	displayType = DISPLAYTYPE,
	description = "A standard-issue slide for the Glock 19X 9x19 pistol. Slide surfaces are treated with an advanced nPVD coating that protects the steel from corrosion, chemical attack and harsh environmental conditions.",
	weight = 0.3,
	value = 3995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock19x_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_g19x_std"] = {
	fullName = "Glock 19X 9x19 pistol slide",
	displayName = "G19X",
	displayType = DISPLAYTYPE,
	description = "A standard-issue slide for the Glock 19X 9x19 pistol. Slide surfaces are treated with an advanced nPVD coating that protects the steel from corrosion, chemical attack and harsh environmental conditions.",
	weight = 0.3,
	value = 3995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock19x.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_hk416"] = {
	fullName = "HK 416A5 5.56x45 upper receiver",
	displayName = "416A5 Upper",
	displayType = DISPLAYTYPE,
	description = "An upper receiver for the 416A5 assault rifle manufactured by Heckler & Koch. Equipped with a mount for attaching additional devices.",
	weight = 0.3,
	value = 8735,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hk416.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rpk16_rec"] = {
	fullName = "RPK-16 dust cover",
	displayName = "RPK-16",
	displayType = DISPLAYTYPE,
	description = "A standard-issue dust cover with an integrated Picatinny rail for RPK-16 LMGs, manufactued by Izhmash.",
	weight = 0.2,
	value = 3900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rpk16.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_rec_ed"] = {
	fullName = "SA-58 Extreme Duty dust cover",
	displayName = "SA58 ED",
	displayType = DISPLAYTYPE,
	description = "The Extreme Duty dust cover with an integrated Picatinny rail for SA-58 assault rifles, manufactured by DS Arms.",
	weight = 0.2,
	value = 11565,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_ed.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_rec_fal"] = {
	fullName = "FAL standard dust cover",
	displayName = "FAL",
	displayType = DISPLAYTYPE,
	description = "A standard-issue dust cover for FAL-series rifles.",
	weight = 0.2,
	value = 1555,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("fal.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sag545_cover"] = {
	fullName = "AK-545 SAG railed dust cover",
	displayName = "AK-545 DC",
	displayType = DISPLAYTYPE,
	description = "A standard-issue dust cover for AK-545 carbines, manufactured by Sureshot Armament Group.",
	weight = 0.1,
	value = 1995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak545.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_saiga12_dustcover_std"] = {
	fullName = "SOK-12 dust cover",
	displayName = "Sb.0-2",
	displayType = DISPLAYTYPE,
	description = "A standard-issue dust cover for Saiga 12, manufactued by Izhmash.",
	weight = 0.1,
	value = 1245,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sok12.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sako_upper"] = {
	fullName = "Sako TRG M10 .338 LM receiver",
	displayName = "M10 .338 LM",
	displayType = DISPLAYTYPE,
	description = "A standard .338 Lapua Magnum receiver for the TRG M10 sniper rifle. Manufactured by Sako.",
	weight = 0.5,
	value = 8900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m10.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_upper_h"] = {
	fullName = "FN SCAR-H 7.62x51 upper receiver",
	displayName = "Mk17",
	displayType = DISPLAYTYPE,
	description = "An upper receiver for the SCAR-H assault rifle, manufactured by Fabrique Nationale Herstal. Features a top rail for installation of additional equipment. Comes in black and flat dark earth.",
	weight = 0.2,
	value = 6280,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mk17.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_upper_h_f"] = {
	fullName = "FN SCAR-H 7.62x51 upper receiver (FDE)",
	displayName = "Mk17 (F)",
	displayType = DISPLAYTYPE,
	description = "An upper receiver for the SCAR-H assault rifle, manufactured by Fabrique Nationale Herstal. Features a top rail for installation of additional equipment. Comes in black and flat dark earth. Flat Dark Earth version.",
	weight = 0.2,
	value = 6280,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mk17_fde.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_upper_l"] = {
	fullName = "FN SCAR-L 5.56x45 upper receiver",
	displayName = "Mk16",
	displayType = DISPLAYTYPE,
	description = "An upper receiver for the SCAR-L assault rifle, manufactured by Fabrique Nationale Herstal. Features a top rail for installation of additional equipment.",
	weight = 0.2,
	value = 6995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mk16.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_upper_l_f"] = {
	fullName = "FN SCAR-L 5.56x45 upper receiver (FDE)",
	displayName = "Mk16 (F)",
	displayType = DISPLAYTYPE,
	description = "An upper receiver for the SCAR-L assault rifle, manufactured by Fabrique Nationale Herstal. Features a top rail for installation of additional equipment. Flat Dark Earth version.",
	weight = 0.2,
	value = 6995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mk16_fde.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_dustcover"] = {
	fullName = "SKS dust cover",
	displayName = "SKS DC",
	displayType = DISPLAYTYPE,
	description = "A standard-issue dust cover for the SKS carbine, manufactured by TOZ.",
	weight = 0.1,
	value = 1200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sks.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_dustcover_op"] = {
	fullName = "OP-SKS dust cover",
	displayName = "OP-SKS DC",
	displayType = DISPLAYTYPE,
	description = "A standard-issue dust cover for the OP-SKS carbine, manufactued by Molot Arms.",
	weight = 0.1,
	value = 1310,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("opsks.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_dustcover_utg"] = {
	fullName = "SKS Leapers UTG PRO MTU017 receiver cover mount",
	displayName = "MTU017",
	displayType = DISPLAYTYPE,
	description = "A Picatinny rail mount for the SKS carbine, installed on the receiver cover. Manufactured by Leapers Inc.",
	weight = 0.2,
	value = 10670,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mtu017.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_op"] = {
	fullName = "Molot Arms Simonov OP-SKS",
	displayName = "OP-SKS",
	displayType = DISPLAYTYPE,
	description = "The Molot OP-SKS Carbine is designed for loading with 7,62x39 — the most popular ammunition. The weight and dimensions make the carbine ergonomic for shooters of any age and height. It has been used for all types of traditional Russian hunting for more than 50 years. Tested on predators in Africa, Southeast Asia, Central America, Middle East.",
	weight = 0.4,
	value = 13335,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("molot_opsks.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_slide_1911_m45"] = {
	fullName = "M45A1 pistol slide",
	displayName = "M45 std",
	displayType = DISPLAYTYPE,
	description = "A standard-issue slide for the M45A1 pistol, manufactured by Colt.",
	weight = 0.4,
	value = 2000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m45a1.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_slide_1911_m45_blk"] = {
	fullName = "M45A1 pistol slide black",
	displayName = "M45 blk",
	displayType = DISPLAYTYPE,
	description = "A standard-issue slide for the M45A1 pistol, manufactured by Colt.",
	weight = 0.4,
	value = 2000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m45a1_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_slide_1911_std"] = {
	fullName = "M1911A1 pistol slide",
	displayName = "1911 std",
	displayType = DISPLAYTYPE,
	description = "A standard-issue slide for the M1911A1 pistol, manufactured by Colt.",
	weight = 0.4,
	value = 1600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1911.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_slide_deagle_l5_357"] = {
	fullName = "Desert Eagle L5 .357 pistol slide",
	displayName = "L5 .357",
	displayType = DISPLAYTYPE,
	description = "An L5 slide for the Desert Eagle pistol chambered in .357 Magnum, manufactured by Magnum Research.",
	weight = 0.3,
	value = 3980,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("deagle357.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_slide_deagle_l6"] = {
	fullName = "Desert Eagle L6 pistol slide",
	displayName = "L6",
	displayType = DISPLAYTYPE,
	description = "An L6 slide for the Desert Eagle pistol, manufactured by Magnum Research.",
	weight = 0.4,
	value = 3955,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("deaglel6.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_slide_deagle_l6_wts"] = {
	fullName = "Desert Eagle L6 pistol slide (WTS)",
	displayName = "L6 (WTS)",
	displayType = DISPLAYTYPE,
	description = "An L6 slide for the Desert Eagle pistol, manufactured by Magnum Research. White Tiger Stripes version.",
	weight = 0.4,
	value = 100000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("deaglel6_wts.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_slide_deagle_xix"] = {
	fullName = "Desert Eagle Mk XIX pistol slide",
	displayName = "Mk XIX",
	displayType = DISPLAYTYPE,
	description = "A Mark XIX slide for the Desert Eagle pistol, manufactured by Magnum Research.",
	weight = 0.4,
	value = 10090,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("deaglexix.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_slide_m9a3_std"] = {
	fullName = "M9A3 9x19 pistol slide",
	displayName = "M9A3",
	displayType = DISPLAYTYPE,
	description = "A standard-issue pistol slide for Beretta M9A3 9x19 pistols.",
	weight = 0.2,
	value = 1300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m9a3.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_slide_p226_axel"] = {
	fullName = "P226 Axelson Tactical MK25 pistol slide",
	displayName = "P226 Axelson",
	displayType = DISPLAYTYPE,
	description = "An enhanced version of the SIG Sauer P226 MK25 pistol slide, manufactured by Axelson Tactical. Limited edition.",
	weight = 0.2,
	value = 9900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_axelson.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_slide_p226_emp"] = {
	fullName = "P226 Emperor Scorpion pistol slide",
	displayName = "P226 Emperor",
	displayType = DISPLAYTYPE,
	description = "A slide from the Emperor Scorpion modification for the P226 9x19 pistols, manufactured by SIG Sauer.",
	weight = 0.2,
	value = 5740,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_emperor.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_slide_p226_leg"] = {
	fullName = "P226 Legion full size pistol slide",
	displayName = "P226 Legion",
	displayType = DISPLAYTYPE,
	description = "A full-size slide from the Legion modification for the P226 9x19 pistols, manufactured by SIG Sauer.",
	weight = 0.2,
	value = 4120,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_legion.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_slide_p226_stain"] = {
	fullName = "P226 Stainless Elite pistol slide",
	displayName = "P226 Stainless",
	displayType = DISPLAYTYPE,
	description = "A slide from the Stainless Elite modification for the P226 9x19 pistols, manufactured by SIG Sauer.",
	weight = 0.2,
	value = 4250,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_elite.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_slide_p226_std"] = {
	fullName = "P226R MK25 pistol slide",
	displayName = "P226 MK25",
	displayType = DISPLAYTYPE,
	description = "The SIG Sauer Mk25 blued slide for P226R 9x19 pistols.",
	weight = 0.2,
	value = 3000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_mk25.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_slide_pl15_std"] = {
	fullName = "PL-15 pistol slide",
	displayName = "PL-15",
	displayType = DISPLAYTYPE,
	description = "A standard-issue slide for the PL-15 pistol.",
	weight = 0.1,
	value = 2100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pl15.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_slide_usp_elite"] = {
	fullName = "HK USP Elite .45 ACP pistol slide",
	displayName = "USP45EL",
	displayType = DISPLAYTYPE,
	description = "A pistol slide for the special version of the USP45 pistol - USP45 Elite, manufactured by Heckler & Koch.",
	weight = 0.5,
	value = 16115,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp_elite.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_slide_usp_expert"] = {
	fullName = "HK USP Expert .45 ACP pistol slide",
	displayName = "USP45EX",
	displayType = DISPLAYTYPE,
	description = "A pistol slide for the special version of the USP45 pistol - USP45 Expert, manufactured by Heckler & Koch.",
	weight = 0.4,
	value = 4005,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp_expert.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_slide_usp_match"] = {
	fullName = "HK USP Match .45 ACP pistol slide",
	displayName = "USP45M",
	displayType = DISPLAYTYPE,
	description = "A pistol slide for the special version of the USP45 pistol - USP45 Match, manufactured by Heckler & Koch.",
	weight = 0.4,
	value = 4400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp_match.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_slide_usp_std"] = {
	fullName = "HK USP .45 ACP pistol slide",
	displayName = "USP45",
	displayType = DISPLAYTYPE,
	description = "A standard-issue slide for the USP45 pistol, manufactured by Heckler & Koch.",
	weight = 0.4,
	value = 1560,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_slide_usp_tac"] = {
	fullName = "HK USP Tactical .45 ACP pistol slide",
	displayName = "USP45T",
	displayType = DISPLAYTYPE,
	description = "A pistol slide for the special version of the USP45 pistol - USP45 Tactical, manufactured by Heckler & Koch.",
	weight = 0.5,
	value = 20115,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp_tactical.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_spear_upper_std"] = {
	fullName = "MCX SPEAR 6.8x51 upper receiver",
	displayName = "SPEAR 6.8",
	displayType = DISPLAYTYPE,
	description = "A standard-issue upper receiver for the MCX SPEAR assault rifle, chambered in 6.8x51mm (.277 FURY). Equipped with a mount for attaching additional devices. Manufactured by SIG Sauer.",
	weight = 0.3,
	value = 8140,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx_spear.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sr25_upper_std"] = {
	fullName = "SR-25 7.62x51 upper receiver",
	displayName = "SR-25",
	displayType = DISPLAYTYPE,
	description = "An upper receiver for the SR-25 rifle, manufactured by Knight's Armament Company.",
	weight = 0.6,
	value = 4000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr25.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sr2m_rec_std"] = {
	fullName = "SR-2M dust cover",
	displayName = "SR-2M",
	displayType = DISPLAYTYPE,
	description = 'A standard-issue dust cover for SR-2M "Veresk" submachine gun, manufactured by TsNIItochmash.',
	weight = 0.1,
	value = 1330,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr2m.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_svds_rec_cut"] = {
	fullName = "SVDS custom cut dust cover",
	displayName = "SVDS CDC",
	displayType = DISPLAYTYPE,
	description = "A custom cut-off dust cover for SVDS sniper rifles, required for installation of the MK1 Freefloat chassis by Sureshot Armament Group.",
	weight = 0.05,
	value = 1450,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svds_cdc.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_svds_rec_std"] = {
	fullName = "SVDS dust cover",
	displayName = "SVDS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue dust cover for SVDS sniper rifles, manufactured by Izhmash.",
	weight = 0.1,
	value = 720,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svds.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_svt_dust"] = {
	fullName = "SVT dust cover",
	displayName = "SVT",
	displayType = DISPLAYTYPE,
	description = "A standard-issue dust cover for SVT rifle.",
	weight = 0.1,
	value = 1000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svt.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tkpd_rec_std"] = {
	fullName = "TKPD railed dust cover",
	displayName = "TKPD",
	displayType = DISPLAYTYPE,
	description = "A receiver top cover for the TKPD assault carbine. Equipped with a Picatinny rail for installation of optics.",
	weight = 0.3,
	value = 6000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tkpd.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzipro_dust"] = {
	fullName = "UZI PRO dust cover",
	displayName = "UZI PRO cover",
	displayType = DISPLAYTYPE,
	description = "A standard dust cover with a top rail for the UZI PRO submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.3,
	value = 6600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_pro.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzipro_smg"] = {
	fullName = "IWI UZI PRO SMG",
	displayName = "PRO SMG",
	displayType = DISPLAYTYPE,
	description = "The UZI PRO SMG is a submachine gun for law enforcement and military use. This ultra-compact submachine gun is an evolution of the full-size UZI submachine gun, ideal for concealed carry and featuring a high rate of fire. Manufactured by Israel Weapon Industries.",
	weight = 0.6,
	value = 29995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_pro_conv.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_val_dc_val"] = {
	fullName = "AS VAL dust cover",
	displayName = "AS VAL",
	displayType = DISPLAYTYPE,
	description = "A standard-issue dust cover for AS VAL, manufactured by TsNIItochmash.",
	weight = 0.2,
	value = 1740,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("asval.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vityaz_rec_sn"] = {
	fullName = 'PP-19-01 "Vityaz-SN" dust cover',
	displayName = "Vityaz-SN",
	displayType = DISPLAYTYPE,
	description = "A standard-issue receiver dust cover for PP-19-01 Vityaz-SN (mod. 20) with a top rail for installation of various scopes, manufactured by Izhmash.",
	weight = 0.1,
	value = 2630,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pp19_sn.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vityaz_rec_std"] = {
	fullName = 'PP-19-01 "Vityaz" dust cover',
	displayName = "Vityaz",
	displayType = DISPLAYTYPE,
	description = "A standard-issue dust cover for PP-19-01 Vityaz SMGs, manufactued by Izhmash.",
	weight = 0.1,
	value = 500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pp19.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vpo101_dc_std"] = {
	fullName = "VPO-101 dust cover",
	displayName = "VPO-101",
	displayType = DISPLAYTYPE,
	description = "A standard-issue metal dust cover for VPO-101 Vepr-Hunter carbines, manufactured by Molot Arms.",
	weight = 0.1,
	value = 875,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vpo101.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_saiga12_dustcover_redline"] = {
	fullName = "SOK-12 dust cover (Redline)",
	displayName = "SOK-12 RL",
	displayType = DISPLAYTYPE,
	description = "A receiver dust cover for the SOK-12 shotgun. Custom version for the Arena champion JP's shotgun.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/676017fe8cfeeba9f707c8d6.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_saiga12_dustcover_zombie"] = {
	fullName = "SOK-12 Kiba Arms Zombie Custom dust cover",
	displayName = "SOK-12 ZC",
	displayType = DISPLAYTYPE,
	description = "A receiver dust cover for the SOK-12 shotgun, modernized by Kiba Arms.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/676017fe8cfeeba9f707c8d6.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}
