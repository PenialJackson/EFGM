local DISPLAYTYPE = "Handguard"
local ATTICONPATH = "items/attachments/handguards/"

local function AttMaterial(imgPath)
	if SERVER then return end
	return Material(ATTICONPATH .. imgPath, "smooth")
end

EFGM.ITEMS["arc9_att_eft_aek_hg_boss"] = {
	fullName = "AEK-971 custom 5.45x39 front-end assembly",
	displayName = "AEK-CUST",
	displayType = DISPLAYTYPE,
	description = "A custom made front-end assembly from AK-109 parts for the AEK-971 5.45x39mm assault rifle.",
	weight = 0.3,
	value = 12900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aek_cust.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aek_hg_experimental"] = {
	fullName = "AEK-971 5.45x39 experimental front-end assembly",
	displayName = "AEK-EXP",
	displayType = DISPLAYTYPE,
	description = "Experimental front-end assembly with longer gas tube system and lightweight bakelite handguard for the AEK-971 5.45x39mm assault rifle.",
	weight = 0.3,
	value = 7900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aek_exp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aek_hg_plum"] = {
	fullName = 'AEK-971 5.45x39 "GRU" front-end assembly',
	displayName = "AEK-GRU",
	displayType = DISPLAYTYPE,
	description = "Front-end assembly with polymer handguard and bottom rail system utilized by GRU operatives for the AEK-971 5.45x39mm assault rifle.",
	weight = 0.3,
	value = 12505,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aek_gru.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aek_hg_prototype"] = {
	fullName = "AEK-971 5.45x39 prototype front-end assembly",
	displayName = "AEK-PROTO",
	displayType = DISPLAYTYPE,
	description = "Prototype front-end assembly with polymer handguard for the AEK-971 5.45x39mm assault rifle.",
	weight = 0.3,
	value = 10520,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aek_proto.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aek_hg_std"] = {
	fullName = "AEK-971 5.45x39 front-end assembly",
	displayName = "AEK-971",
	displayType = DISPLAYTYPE,
	description = "Standard gas tube and polymer handguard for the AEK-971 5.45x39mm assault rifle.",
	weight = 0.3,
	value = 8390,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aek.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aek_hg_tactical"] = {
	fullName = "AEK-971 5.45x39 tactical front-end assembly",
	displayName = "AEK-TAC",
	displayType = DISPLAYTYPE,
	description = "Front-end assembly with tactical Magpul style polymer handguard, bottom rail system, and gas tube system with mounting point for devices for the AEK-971 5.45x39mm assault rifle.",
	weight = 0.3,
	value = 16800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aek_tac.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ak12_hg_std"] = {
	fullName = "AK-12 handguard",
	displayName = "AK-12 HG",
	displayType = DISPLAYTYPE,
	description = "A standard-issue handguard for AK-12 automatic rifles. Manufactured by Izhmash.",
	weight = 0.1,
	value = 8100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak12.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aksu_hg_ak_std"] = {
	fullName = "AKS-74U wooden handguard",
	displayName = "6P26 Sb.6",
	displayType = DISPLAYTYPE,
	description = "A standard-issue wooden handguard for AKS-74U, AKS-74UN, and AKS-74UB, manufactured by Izhmash.",
	weight = 0.1,
	value = 760,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aks74uwooden.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_hg_lch7"] = {
	fullName = "AR-10 Lancer LCH7 12.5 inch M-LOK handguard",
	displayName = 'LCH7 12.5"',
	displayType = DISPLAYTYPE,
	description = "The Lancer LCH7 12.5 inch M-LOK handguard for AR-10 systems equipped with an M-LOK interface for installation of additional devices and accessories.",
	weight = 0.3,
	value = 34110,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("lch7.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_hg_rml15"] = {
	fullName = "AR-10 CMMG MK3 RML15 15 inch M-LOK handguard",
	displayName = "MK3 RML15",
	displayType = DISPLAYTYPE,
	description = "A 15 inch handguard for AR-10 weapon systems, equipped with an M-LOK interface for attaching additional equipment. Manufactured by CMMG.",
	weight = 0.2,
	value = 15000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mk3_15.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_hg_rml9"] = {
	fullName = "AR-10 CMMG MK3 RML9 9 inch M-LOK handguard",
	displayName = "MK3 RML9",
	displayType = DISPLAYTYPE,
	description = "A 9 inch handguard for AR-10 weapon systems, equipped with an M-LOK interface for attaching additional equipment. Manufactured by CMMG.",
	weight = 0.15,
	value = 10500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mk3_9.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_hg_rsass"] = {
	fullName = "R11 RSASS handguard",
	displayName = "RSASS",
	displayType = DISPLAYTYPE,
	description = "A standard handguard manufactured by JP Enterprises for the Remington R11 RSASS marksman rifle. Can also be mounted on any AR-10/AR-15 base receivers.",
	weight = 0.3,
	value = 42100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rsass_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_hg_rsass_blk"] = {
	fullName = "R11 RSASS handguard",
	displayName = "RSASS",
	displayType = DISPLAYTYPE,
	description = "A standard handguard manufactured by JP Enterprises for the Remington R11 RSASS marksman rifle. Can also be mounted on any AR-10/AR-15 base receivers.",
	weight = 0.3,
	value = 42100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rsass_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_hg_sws105"] = {
	fullName = "AR-10 Noveske SWS N6 10.5 inch handguard",
	displayName = 'SWS N6 10.5"',
	displayType = DISPLAYTYPE,
	description = "The Noveske SWS N6 10.5 inch handguard is made with light but durable aircraft aluminum alloy. It comes equipped with 4 mounts for the installation of additional devices and accessories.",
	weight = 0.5,
	value = 19200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sws105.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_hg_swssplit"] = {
	fullName = "AR-10 Noveske SWS N6 Split handguard",
	displayName = "SWS N6 Split",
	displayType = DISPLAYTYPE,
	description = "The Noveske SWS N6 Split handguard is made with light but durable aircraft aluminum alloy. It comes equipped with 4 mounts for the installation of additional devices and accessories. Fits AR-10 compatible weapon systems.",
	weight = 0.5,
	value = 19200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sws6.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_hg_urx"] = {
	fullName = "AR-10 KAC URX 4 14.5 inch handguard",
	displayName = 'URX4 14.5"',
	displayType = DISPLAYTYPE,
	description = "URX 4 is a 14.5 inch long lightweight M-LOK-compatible handguard for AR-10 system rifles. Manufactured by Knight's Armament Company.",
	weight = 0.4,
	value = 24010,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("urx4.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ash12_hg_std"] = {
	fullName = "ASh-12 polymer handguard",
	displayName = "ASh-12 pol",
	displayType = DISPLAYTYPE,
	description = "Polymer ASh-12 foregrip produced by CKIB.",
	weight = 0.2,
	value = 1115,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ash12.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_axmc_hg"] = {
	fullName = "AI AXMC AX KeySlot 16 inch handguard",
	displayName = 'AX 16"',
	displayType = DISPLAYTYPE,
	description = "The AX 16 inch handguard for the AXMC sniper rifle manufactured by Accuracy International equipped with a patented KeySlot interface for the installation of additional devices and accessories.",
	weight = 0.4,
	value = 19200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("keyslot.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_dvl10_hg_std"] = {
	fullName = "DVL-10 M2 handguard",
	displayName = "DVL-10 HG",
	displayType = DISPLAYTYPE,
	description = "A standard-issue handguard for the DVL-10 M2 sniper rifle, manufactured by Lobaev Arms.",
	weight = 0.2,
	value = 7100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("dvl.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g28_hg_ext"] = {
	fullName = "HK417 Extended Free Float handguard with flip-up front sight",
	displayName = "HK417 Ext",
	displayType = DISPLAYTYPE,
	description = "The HK417 & G28 Extended DMR Forearm With a Flip Up Front Sight & Suppressor Window Cutout. Optimized design to mitigate the heat emissions for long range shooting and to prevent the mirage effect.",
	weight = 0.5,
	value = 11200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("freefloat.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g28_hg_std"] = {
	fullName = "HK417 Patrol handguard with flip-up front sight",
	displayName = "HK417",
	displayType = DISPLAYTYPE,
	description = "The HK417 & G28 DMR Forearm With a Flip Up Front Sight & Suppressor Window Cutout. Optimized design to mitigate the heat emissions for long range shooting and to prevent the mirage effect.",
	weight = 0.4,
	value = 8600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("patrol.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_hg_2"] = {
	fullName = "HK G36 2-vent handguard",
	displayName = "G36 2-vent",
	displayType = DISPLAYTYPE,
	description = "A standard polymer 2-vent handguard with a heatshield for the G36 assault rifle. Manufactured by Heckler & Koch.",
	weight = 0.2,
	value = 3380,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36_vent_2.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_hg_4"] = {
	fullName = "HK G36 4-vent handguard",
	displayName = "G36 4-vent",
	displayType = DISPLAYTYPE,
	description = "A standard polymer 4-vent handguard with a heatshield for the G36 assault rifle. Manufactured by Heckler & Koch.",
	weight = 0.3,
	value = 5400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36_vent_4.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_hg_6"] = {
	fullName = "HK G36 6-vent handguard",
	displayName = "G36 6-vent",
	displayType = DISPLAYTYPE,
	description = "A standard polymer 6-vent handguard with a heatshield for the G36 assault rifle. Manufactured by Heckler & Koch.",
	weight = 0.4,
	value = 7880,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36_vent_6.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_hg_quad"] = {
	fullName = "HK G36 KAC Quad Rail handguard",
	displayName = "G36 KAC Quad",
	displayType = DISPLAYTYPE,
	description = "A quad rail Picatinny handguard for the G36K assault rifle. Manufactured by Knights Armament Company.",
	weight = 0.5,
	value = 12740,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36_kac.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_hg_slim"] = {
	fullName = "HK G36 Slim Line HKey Handguard",
	displayName = "G36 Slim",
	displayType = DISPLAYTYPE,
	description = "A low-profile handguard with an HKey mounting interface for the G36K assault rifle. Manufactured by Heckler & Koch.",
	weight = 0.4,
	value = 9665,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36_slim.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_gas_ak_m1b"] = {
	fullName = "AK UltiMAK M1-B gas tube & handguard",
	displayName = "M1-B",
	displayType = DISPLAYTYPE,
	description = "The UltiMAK M1-B gas tube for AK assault rifles sets the gas piston movement direction and, at the same time, serves as a mount for installing reflex sights and tactical devices.",
	weight = 0.1,
	value = 2570,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_m1b.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_gas_ak_troy"] = {
	fullName = "AK TROY Full Length Rail handguard & gas tube combo",
	displayName = "TROY FLR",
	displayType = DISPLAYTYPE,
	description = "The Full Length Rail handguard and gas tube combo. Manufactured by TROY Industries.",
	weight = 0.5,
	value = 19240,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_troy.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_gas_ak_vs24vs33"] = {
	fullName = "AK Vezhlivyy Strelok VS-24 + VS-33c handguard & gas tube combo",
	displayName = "VS Combo",
	displayType = DISPLAYTYPE,
	description = "A combined kit of the VS-24 handguard with the VS-33c gas tube, can be installed on 5.56x45, 5.45x39, 7.62x39 AK family assault rifles. Manufactured by Vezhlivyy Strelok.",
	weight = 0.4,
	value = 20240,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_vs.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_gas_ak_vs24vs33_w"] = {
	fullName = "AK Vezhlivyy Strelok VS-24 + VS-33c handguard & gas tube combo (White)",
	displayName = "VS Combo (W)",
	displayType = DISPLAYTYPE,
	description = "A combined kit of the VS-24 handguard with the VS-33c gas tube, can be installed on 5.56x45, 5.45x39, 7.62x39 AK family assault rifles. Manufactured by Vezhlivyy Strelok.",

	weight = 0.4,
	value = 20240,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_vs_white.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_gas_rd704_ionlite"] = {
	fullName = "RD-704 SLR ION Lite + Railed Gas Tube handguard & gas tube combo",
	displayName = 'ION Lite 9"',
	displayType = DISPLAYTYPE,
	description = "A combined kit of the ION Lite 9 inch handguard with the Railed Gas Tube, can be installed on RD-704 assault rifles. Manufactured by SLR.",
	weight = 0.5,
	value = 21300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_ion.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_6p1"] = {
	fullName = "AKM wooden handguard (6P1 Sb.6-1)",
	displayName = "6P1 Sb.6-1",
	displayType = DISPLAYTYPE,
	description = "A standard Izhmash-produced wooden AKM handguard.",
	weight = 0.3,
	value = 1400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("akm_wood.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_6p20sb6"] = {
	fullName = "AK-74 wooden handguard (6P20 Sb.6)",
	displayName = "6P20 Sb.6",
	displayType = DISPLAYTYPE,
	description = "A standard Izhmash-produced wooden handguard for AK-74 assault rifles.",
	weight = 0.3,
	value = 870,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak74_wood.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_6p20sb9"] = {
	fullName = "AK-74 polymer handguard (6P20 Sb.9)",
	displayName = "6P20 Sb.9",
	displayType = DISPLAYTYPE,
	description = "A polymer handguard for AK-74 automatic rifles which replaced the classic wooden one. Manufactured by Izhmash.",
	weight = 0.2,
	value = 1115,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak74_poly.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_6p20sb9p"] = {
	fullName = 'AK-74 "Plum" polymer handguard (6P20 Sb.9)',
	displayName = "6P20 Sb.9",
	displayType = DISPLAYTYPE,
	description = 'A polymer handguard for AK-74 automatic rifles, manufactured by Izhmash. Made out of plum-colored polymer, for which has earned the nickname "Sliva" ("Plum").',
	weight = 0.2,
	value = 1115,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak74_poly_plum.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_agressor"] = {
	fullName = "AK 5.45 Design Aggressor handguard",
	displayName = "Aggressor",
	displayType = DISPLAYTYPE,
	description = "Aggressor is a railed handguard for AK series rifles manufactured by 5.45 Design. Features 4 side rails for installation of tactical devices and 2 long rails for installation of various optics and foregrips.",
	weight = 0.3,
	value = 19000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_aggressor.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_ak100"] = {
	fullName = "AK-100 series polymer handguard",
	displayName = "AK100",
	displayType = DISPLAYTYPE,
	description = "A polymer handguard for the 100-series AKs, manufactured by Izhmash. A further modification of the polymer AK-74M handguard. Features a bottom rail for installation of tactical foregrips.",
	weight = 0.3,
	value = 1440,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak100_poly.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_akm_l"] = {
	fullName = "AK TDI AKM-L handguard",
	displayName = "TDI AKM-L",
	displayType = DISPLAYTYPE,
	description = "The TDI Arms AKM-L can be installed on AKM/AK-74 compatible weapon systems. Equipped with M-LOK mounts for installation of additional devices or rails.",
	weight = 0.2,
	value = 4835,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_tdi.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_akm_l_ab"] = {
	fullName = "AK TDI AKM-L handguard (Anodized Bronze)",
	displayName = "TDI AKM-L (AB)",
	displayType = DISPLAYTYPE,
	description = "The TDI Arms AKM-L can be installed on AKM/AK-74 compatible weapon systems. Equipped with M-LOK mounts for installation of additional devices or rails.",

	weight = 0.2,
	value = 4835,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_tdi_bronze.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_akm_l_ar"] = {
	fullName = "AK TDI AKM-L handguard (Anodized Red)",
	displayName = "TDI AKM-L (AR)",
	displayType = DISPLAYTYPE,
	description = "The TDI Arms AKM-L can be installed on AKM/AK-74 compatible weapon systems. Equipped with M-LOK mounts for installation of additional devices or rails.",

	weight = 0.2,
	value = 4835,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_tdi_red.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_aspid"] = {
	fullName = "AK Alfa Arms ASPID handguard",
	displayName = "Aspid",
	displayType = DISPLAYTYPE,
	description = "The ASPID handguard is made of B95T aluminum alloy with a DuraCoat finish, it is intended for installing on the AK assault rifles replacing the standard handguard. Manufactured by Alfa Arms.",
	weight = 0.4,
	value = 20455,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_aspid.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_b10"] = {
	fullName = "AK Zenit B-10 Handguard",
	displayName = "B-10",
	displayType = DISPLAYTYPE,
	description = "The integrally machined B-10 foregrip is manufactured from aluminum alloy D16T with black coating and can be installed instead of the standard-issue foregrip on an AK. It's fitted with Picatinny rail mounts on two sides, allowing for the installation of additional equipment such as tactical foregrips, flashlights, and laser designators. Manufactured by Zenit.",
	weight = 0.1,
	value = 7000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("b10.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_b10mb19"] = {
	fullName = "AK Zenit B-10M handguard with B-19 upper mount",
	displayName = "B10M+B19",
	displayType = DISPLAYTYPE,
	description = "The integrally machined B-10M handguard is manufactured from D16T aluminum alloy with black coating and can be installed instead of the standard-issue handguard on AK series 103, 104, 105, 74S, 74M, AKM, and AKMS. B-19 rail mount is basically a sight mount hovering over the gas tube. Also integrally machined from D16T aluminum alloy with black coating, it can be installed on B-10M or B-21M foregrips.",
	weight = 0.3,
	value = 15320,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_b10m.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_b11"] = {
	fullName = "AKS-74U Zenit B-11 handguard",
	displayName = "B-11",
	displayType = DISPLAYTYPE,
	description = "The integrally machined B-11 foregrip is manufactured from aluminum alloy D16T with black coating and can be installed instead of the standard-issue foregrip on the AKS-74U. The foregrip is fitted with Picatinny rail mounts on three sides, allowing for the installation of additional equipment such as tactical foregrips, flashlights, and laser designators. Manufactured by Zenit.",
	weight = 0.1,
	value = 5970,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("zenitb11.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_b11_blk"] = {
	fullName = "AKS-74U Zenit B-11 handguard",
	displayName = "B-11",
	displayType = DISPLAYTYPE,
	description = "The integrally machined B-11 foregrip is manufactured from aluminum alloy D16T with black coating and can be installed instead of the standard-issue foregrip on the AKS-74U. The foregrip is fitted with Picatinny rail mounts on three sides, allowing for the installation of additional equipment such as tactical foregrips, flashlights, and laser designators. Manufactured by Zenit.",
	weight = 0.1,
	value = 5970,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("zenitb11_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_b30b31s"] = {
	fullName = "AK Zenit B-30 handguard with B-31S upper handguard rail",
	displayName = "B30+B31S",
	displayType = DISPLAYTYPE,
	description = "The all-milled B-30 handguard is made of D16T aluminum alloy with a black coating, it is intended for installing on the AK assault rifle series 103, 104, 105, 74S, 74M, AKM, AKMS in the standard place of the handguard. The B-31S rail mount above the gas tube is an all-milled bracket made of D16T aluminum alloy with a black coating, mounted on the B-30 handguard.",
	weight = 0.4,
	value = 21000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_b30.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_cmrd"] = {
	fullName = "AK Vltor CMRD KeyMod handguard",
	displayName = "CMRD",
	displayType = DISPLAYTYPE,
	description = "The CMRD lightweight handguard by Vltor, compatible with AK-74 and AKM series automatic rifles. Includes KeyMod slots for rail installation.",
	weight = 0.4,
	value = 30900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_cmrd.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_cncguns"] = {
	fullName = "AK CNC Guns OV GP handguard",
	displayName = "OV GP",
	displayType = DISPLAYTYPE,
	description = "The OV GP handguard for AK series assault rifles, equipped with a KeyMod interface for the installation of additional devices and accessories. Manufactured by CNC Guns.",
	weight = 0.5,
	value = 7590,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_cnc.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_cncguns_blk"] = {
	fullName = "AK CNC Guns OV GP handguard",
	displayName = "OV GP",
	displayType = DISPLAYTYPE,
	description = "The OV GP handguard for AK series assault rifles, equipped with a KeyMod interface for the installation of additional devices and accessories. Manufactured by CNC Guns.",
	weight = 0.5,
	value = 7590,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_cnc_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_dominat"] = {
	fullName = "AK AKdemia Dominator handguard",
	displayName = "Dominator",
	displayType = DISPLAYTYPE,
	description = "The AKdemia Dominator handguard optimizes weapon grip and improves weapon control. The Picattiny rail integrated into the handguard allows for additional weapon tuning.",
	weight = 0.3,
	value = 7740,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_dominator.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_goliaf"] = {
	fullName = "AKS-74U Alfa Arms Goliaf handguard",
	displayName = "Goliaf",
	displayType = DISPLAYTYPE,
	description = "This integrally machined handguard is manufactured from aluminum alloy D16T with coyote brown coating and can be installed instead of the standard-issue foregrip on the AKS-74U. It comes fitted with Picatinny rail mounts on three sides, allowing for the installation of additional equipment such as tactical foregrips, flashlights, and laser designators.",
	weight = 0.1,
	value = 4410,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("goliaf.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_goliaf_blk"] = {
	fullName = "AKS-74U Alfa Arms Goliaf handguard",
	displayName = "Goliaf",
	displayType = DISPLAYTYPE,
	description = "This integrally machined handguard is manufactured from aluminum alloy D16T with coyote brown coating and can be installed instead of the standard-issue foregrip on the AKS-74U. It comes fitted with Picatinny rail mounts on three sides, allowing for the installation of additional equipment such as tactical foregrips, flashlights, and laser designators.",
	weight = 0.1,
	value = 4410,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("goliaf_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_goliaf_mlok"] = {
	fullName = "AKS-74U Alfa Arms Goliaf M-LOK handguard",
	displayName = "Goliaf MLOK",
	displayType = DISPLAYTYPE,
	description = "This integrally machined handguard can be installed instead of the standard-issue foregrip on the AKS-74U. It comes fitted with place for M-LOK rail mounts on three sides, allowing for the installation of additional equipment such as tactical foregrips, flashlights, and laser designators.",
	weight = 0.2,
	value = 5900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("goliafmlok.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_goliaf_mlok_blk"] = {
	fullName = "AKS-74U Alfa Arms Goliaf M-LOK handguard",
	displayName = "Goliaf MLOK",
	displayType = DISPLAYTYPE,
	description = "This integrally machined handguard can be installed instead of the standard-issue foregrip on the AKS-74U. It comes fitted with place for M-LOK rail mounts on three sides, allowing for the installation of additional equipment such as tactical foregrips, flashlights, and laser designators.",
	weight = 0.2,
	value = 5900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("goliafmlok_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_hartman"] = {
	fullName = "Saiga-9 Hartman Gyurza handguard",
	displayName = "Gyurza-9",
	displayType = DISPLAYTYPE,
	description = "A tubular handguard for the Saiga-9 carbine. Manufactured by Hartman.",
	weight = 0.3,
	value = 9470,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("saiga_hartman.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_hexagon"] = {
	fullName = "AK Hexagon tubular handguard",
	displayName = "Hexagon",
	displayType = DISPLAYTYPE,
	description = "A tubular handguard for AK family automatic rifles, manufactured by Hexagon.",
	weight = 0.1,
	value = 21675,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_hexagon.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_hexagon_r"] = {
	fullName = "AK Hexagon tubular handguard (Anodized Red)",
	displayName = "Hexagon (AR)",
	displayType = DISPLAYTYPE,
	description = "A tubular handguard for AK family automatic rifles, manufactured by Hexagon.",

	weight = 0.1,
	value = 21675,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_hexagon_red.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_moe"] = {
	fullName = "AK Magpul MOE AKM handguard (Black)",
	displayName = "MOE (Black)",
	displayType = DISPLAYTYPE,
	description = "The Magpul MOE AKM handguard is installed on AKM/AK-74 and compatible weapon systems. It comes equipped with licensed M-LOK mounts for the installation of additional devices or rails.",

	weight = 0.2,
	value = 18600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_moe.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_moe_fde"] = {
	fullName = "AK Magpul MOE AKM handguard (FDE)",
	displayName = "MOE (FDE)",
	displayType = DISPLAYTYPE,
	description = "The Magpul MOE AKM handguard is installed on AKM/AK-74 and compatible weapon systems. It comes equipped with licensed M-LOK mounts for the installation of additional devices or rails.",

	weight = 0.2,
	value = 18600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_moe_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_moe_olv"] = {
	fullName = "AK Magpul MOE AKM handguard (Olive Drab)",
	displayName = "MOE (OD)",
	displayType = DISPLAYTYPE,
	description = "The Magpul MOE AKM handguard is installed on AKM/AK-74 and compatible weapon systems. It comes equipped with licensed M-LOK mounts for the installation of additional devices or rails.",
	weight = 0.2,
	value = 18600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_moe_od.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_moe_plm"] = {
	fullName = "AK Magpul MOE AKM handguard (Plum)",
	displayName = "MOE (Plum)",
	displayType = DISPLAYTYPE,
	description = "The Magpul MOE AKM handguard is installed on AKM/AK-74 and compatible weapon systems. It comes equipped with licensed M-LOK mounts for the installation of additional devices or rails.",
	weight = 0.2,
	value = 18600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_moe_plum.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_moe_sg"] = {
	fullName = "AK Magpul MOE AKM handguard (Stealth Gray)",
	displayName = "MOE (SG)",
	displayType = DISPLAYTYPE,
	description = "The Magpul MOE AKM handguard is installed on AKM/AK-74 and compatible weapon systems. It comes equipped with licensed M-LOK mounts for the installation of additional devices or rails.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_moe_sg.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_rs47"] = {
	fullName = "AK CAA RS47 handguard",
	displayName = "RS47",
	displayType = DISPLAYTYPE,
	description = "The RS47 lightweight polymer handguard, fits the majority of rifles and carbines built on the base of AK-family rifles. Equipped with two short and two long rail mounts for installing additional devices. Manufactured by Command Arms.",
	weight = 0.2,
	value = 14220,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_rs47.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_trax1"] = {
	fullName = "AK Strike Industries TRAX 1 handguard",
	displayName = "TRAX 1",
	displayType = DISPLAYTYPE,
	description = "The Strike Industries AK TRAX 1 rail system is a modular drop-in rail that is versatile, light-weight, and durable. It will provide an adaptable platform for the user to mount their accessories. Can be combined with the TRAX 2 rail for maximum amount of modularity.",
	weight = 0.3,
	value = 7930,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_trax_1.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_trax2"] = {
	fullName = "AK Strike Industries TRAX 2 handguard extension",
	displayName = "TRAX2 ext",
	displayType = DISPLAYTYPE,
	description = "The TRAX 2 section is the front rail that covers the gas block. Its provide additional place for mount more accessories.",
	weight = 0.2,
	value = 7200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_trax_2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_ufm"] = {
	fullName = "AK Krebs Custom UFM KeyMod handguard",
	displayName = "UFM",
	displayType = DISPLAYTYPE,
	description = "The Krebs Custom UFM Keymod System lightweight aluminum handguard for AK family assault rifles with KeyMod slots for rail installation. The Kiba Arms VDM CS gas tube is required for installation.",
	weight = 0.3,
	value = 19930,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_ufm.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_vpo136"] = {
	fullName = 'VPO-136 "Vepr-KM" wooden handguard',
	displayName = "VPO-136",
	displayType = DISPLAYTYPE,
	description = "A standard wooden handguard for VPO-136 Vepr KM carbines, manufactured by Molot Arms.",
	weight = 0.3,
	value = 920,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vpo136_wood.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_vpo209"] = {
	fullName = "VPO-209 wooden handguard",
	displayName = "VPO-209",
	displayType = DISPLAYTYPE,
	description = "A standard wooden handguard for VPO-209 AKM carbines, manufactured by Molot Arms.",
	weight = 0.3,
	value = 920,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vpo209_wood.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_wasr"] = {
	fullName = "WASR-10/63 CAF wooden foregrip",
	displayName = "WASR",
	displayType = DISPLAYTYPE,
	description = "A Romanian handguard/foregrip for WASR-10/63 rifles, manufactured by Cugir Arms Factory.",
	weight = 0.3,
	value = 3860,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_wasr.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_x47"] = {
	fullName = "AK TDI X47 tactical handguard rail system",
	displayName = "TDI X47",
	displayType = DISPLAYTYPE,
	description = "A tactical aluminum handguard for the AK family assault rifles, designed and manufactured by TDI Arms. Equipped with multiple rail mounts for installation of a wide range of additional equipment.",
	weight = 0.4,
	value = 22195,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_x47.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_xrsu47"] = {
	fullName = "AKS-74U CAA XRSU47SU tactical handguard",
	displayName = "XRSU47SU",
	displayType = DISPLAYTYPE,
	description = "A tactical aluminum handguard for AKS-74U, AKS-74UN, and AKS-74UB, designed and manufactured by CAA. Equipped with multiple rail mounts for installation of a wide range of additional equipment.",
	weight = 0.5,
	value = 22090,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("xrsu47su_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_xrsu47_blk"] = {
	fullName = "AKS-74U CAA XRSU47SU tactical handguard",
	displayName = "XRSU47SU",
	displayType = DISPLAYTYPE,
	description = "A tactical aluminum handguard for AKS-74U, AKS-74UN, and AKS-74UB, designed and manufactured by CAA. Equipped with multiple rail mounts for installation of a wide range of additional equipment.",
	weight = 0.5,
	value = 22090,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("xrsu47su_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_zhu"] = {
	fullName = "AK Magpul Zhukov-U handguard (Black)",
	displayName = "Zh-U (B)",
	displayType = DISPLAYTYPE,
	description = "The Magpul Zhukov-U handguard is installed on AKM/AK-74-compatible weapon systems. Equipped with licensed M-LOK mounts for installation of additional devices or rails.",
	weight = 0.3,
	value = 22040,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_zhukov.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_zhu_fde"] = {
	fullName = "AK Magpul Zhukov-U handguard (FDE)",
	displayName = "Zh-U (FDE)",
	displayType = DISPLAYTYPE,
	description = "The Magpul Zhukov-U handguard is installed on AKM/AK-74-compatible weapon systems. Equipped with licensed M-LOK mounts for installation of additional devices or rails.",
	weight = 0.3,
	value = 22040,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_zhukov_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_zhu_plm"] = {
	fullName = "AK Magpul Zhukov-U handguard (Plum)",
	displayName = "Zh-U (Plum)",
	displayType = DISPLAYTYPE,
	description = "The Magpul Zhukov-U handguard is installed on AKM/AK-74-compatible weapon systems. Equipped with licensed M-LOK mounts for installation of additional devices or rails.",
	weight = 0.3,
	value = 22040,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_zhukov_plum.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_abamod1"] = {
	fullName = "AR-15 AB Arms MOD1 handguard",
	displayName = "ABA M1",
	displayType = DISPLAYTYPE,
	description = "The AB Arms MOD1 handguard is designed for AR-15 platform weapons. It comes equipped with top mount for attaching additional equipment and sights.",
	weight = 0.1,
	value = 13000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_mod1.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_abamod1_lower"] = {
	fullName = "AR-15 AB Arms MOD1 lower handguard",
	displayName = "ABA M1",
	displayType = DISPLAYTYPE,
	description = "AB Arms MOD1 lower handguard for the AR-15 rifle.",
	weight = 0.05,
	value = 4550,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_mod1_lower.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_adar"] = {
	fullName = "AR-15 ADAR 2-15 wooden handguard",
	displayName = "2-15 wood",
	displayType = DISPLAYTYPE,
	description = "ADAR 2-15 SVD style wooden handguard.",
	weight = 0.4,
	value = 1660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_adar.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_ax15"] = {
	fullName = "AR-15 Aeroknox AX-15 10.5 inch M-LOK handguard",
	displayName = "AX-15 10.5",
	displayType = DISPLAYTYPE,
	description = "The AX-15 10.5 inch handguard for AR-15 systems, equipped with an M-LOK interface for the installation of additional devices and accessories. Manufactured by Aeroknox.",
	weight = 0.3,
	value = 16300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_aero_10.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_ax15_158"] = {
	fullName = "AR-15 Aeroknox AX-15 15.8 inch M-LOK handguard ",
	displayName = "AX-15 15.8",
	displayType = DISPLAYTYPE,
	description = "The AX-15 15.8 inch handguard for AR-15 systems, equipped with an M-LOK interface for the installation of additional devices and accessories. Manufactured by Aeroknox.",
	weight = 0.3,
	value = 54220,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_aero_15.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_ax15_4"] = {
	fullName = "AR-15 Aeroknox AX-15 4 inch M-LOK handguard",
	displayName = 'AX-15 4"',
	displayType = DISPLAYTYPE,
	description = "The AX-15 4 inch handguard for AR-15 systems, equipped with an M-LOK interface for the installation of additional devices and accessories. Manufactured by Aeroknox.",
	weight = 0.1,
	value = 9340,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_aero_4.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_cgnl_105"] = {
	fullName = "AR-15 Custom Guns 10.5 inch M-LOK handguard",
	displayName = 'CGNL 10.5"',
	displayType = DISPLAYTYPE,
	description = "The Custom Guns 10.5 inch handguard for AR-15 equipped with an M-LOK interface for installation of additional devices and accessories.",
	weight = 0.5,
	value = 17480,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_cgnl_10.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_cgnl_14"] = {
	fullName = "AR-15 Custom Guns 14 inch M-LOK handguard",
	displayName = 'CGNL 14"',
	displayType = DISPLAYTYPE,
	description = "The Custom Guns 14 inch handguard for AR-15 equipped with an M-LOK interface for installation of additional devices and accessories.",
	weight = 0.5,
	value = 18720,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_cgnl_14.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_ddfsp"] = {
	fullName = "AR-15 Daniel Defense RIS II FSP 9.5 handguard (Coyote Brown)",
	displayName = "RIS II FSP 9.5 CB",
	displayType = DISPLAYTYPE,
	description = "The Daniel Defense RIS II FSP 9.5 foregrip is a part of the SOPMOD Block II program to replace the standard M4CQBR or Mk18 foregrips in the US SOCOM service. It's made with light but durable aircraft aluminum alloy and comes equipped with 4 mounts for the installation of additional devices and accessories. This foregrip option is incompatible with the M203 UBGL.",
	weight = 0.3,
	value = 21000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_risii_fsp_9.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_ddfsp_blk"] = {
	fullName = "AR-15 Daniel Defense RIS II FSP 9.5 handguard (Black)",
	displayName = "RIS II FSP 9.5 CB",
	displayType = DISPLAYTYPE,
	description = "The Daniel Defense RIS II FSP 9.5 foregrip is a part of the SOPMOD Block II program to replace the standard M4CQBR or Mk18 foregrips in the US SOCOM service. It's made with light but durable aircraft aluminum alloy and comes equipped with 4 mounts for the installation of additional devices and accessories. This foregrip option is incompatible with the M203 UBGL.",
	weight = 0.3,
	value = 21000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_risii_fsp_9_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_ddrisii1225"] = {
	fullName = "AR-15 Daniel Defense RIS II 12.25 handguard (Coyote Brown)",
	displayName = "RIS II 12.25",
	displayType = DISPLAYTYPE,
	description = "The Daniel Defense RIS II 12.25 foregrip is a part of the SOPMOD Block II program to replace the standard M4CQBR or Mk18 foregrips in the US SOCOM service. It's made with light but durable aircraft aluminum alloy and comes equipped with 4 mounts for the installation of additional devices and accessories. This foregrip option is incompatible with the M203 UBGL.",
	weight = 0.4,
	value = 16240,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_risii_12.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_ddrisii1225_blk"] = {
	fullName = "AR-15 Daniel Defense RIS II 12.25 handguard (Black)",
	displayName = "RIS II 12.25",
	displayType = DISPLAYTYPE,
	description = "The Daniel Defense RIS II 12.25 foregrip is a part of the SOPMOD Block II program to replace the standard M4CQBR or Mk18 foregrips in the US SOCOM service. It's made with light but durable aircraft aluminum alloy and comes equipped with 4 mounts for the installation of additional devices and accessories. This foregrip option is incompatible with the M203 UBGL.",
	weight = 0.4,
	value = 16240,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_risii_12_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_ddrisii1225_lower"] = {
	fullName = "AR-15 Daniel Defense RIS II 12.25 lower handguard (Coyote Brown)",
	displayName = "RIS II 12.25",
	displayType = DISPLAYTYPE,
	description = "The Daniel Defense RIS II 12.25 lower handguard. Made with light but durable aircraft aluminum alloy. Equipped with RIS interface for installation of additional devices and accessories. Coyote Brown version.",
	weight = 0.1,
	value = 7000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_risii_12_lower.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_ddrisii1225_lower_blk"] = {
	fullName = "AR-15 Daniel Defense RIS II 12.25 lower handguard (Black)",
	displayName = "RIS II 12.25",
	displayType = DISPLAYTYPE,
	description = "The Daniel Defense RIS II 12.25 lower handguard. Made with light but durable aircraft aluminum alloy. Equipped with RIS interface for installation of additional devices and accessories. Coyote Brown version.",
	weight = 0.1,
	value = 7000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_risii_12_lower_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_ddrisii95"] = {
	fullName = "AR-15 Daniel Defense RIS II 9.5 handguard",
	displayName = "RIS II 9.5",
	displayType = DISPLAYTYPE,
	description = "The Daniel Defense RIS II 9.5 foregrip is a part of the SOPMOD Block II program to replace the standard M4CQBR or Mk18 foregrips in the US SOCOM service. It's made with light but durable aircraft aluminum alloy and comes equipped with 4 mounts for the installation of additional devices and accessories.",
	weight = 0.3,
	value = 13720,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_risii_9_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_ddrisii95_b"] = {
	fullName = "AR-15 Daniel Defense RIS II 9.5 handguard (Coyote brown)",
	displayName = "RIS II 9.5",
	displayType = DISPLAYTYPE,
	description = "The Daniel Defense RIS II 9.5 foregrip is a part of the SOPMOD Block II program to replace the standard M4CQBR or Mk18 foregrips in the US SOCOM service. It's made with light but durable aircraft aluminum alloy and comes equipped with 4 mounts for the installation of additional devices and accessories. Coyote brown.",
	weight = 0.3,
	value = 13720,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_risii_9.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_ddrisii95_lower"] = {
	fullName = "AR-15 Daniel Defense RIS II 9.5 lower handguard",
	displayName = "RIS II 12.25",
	displayType = DISPLAYTYPE,
	description = "The Daniel Defense RIS II 9.5 lower handguard. Made with light but durable aircraft aluminum alloy. Equipped with RIS interface for installation of additional devices and accessories.",
	weight = 0.1,
	value = 6020,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_risii_9_lower_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_ddrisii95_lower_b"] = {
	fullName = "AR-15 Daniel Defense RIS II 9.5 lower handguard (Coyote Brown)",
	displayName = "RIS II 12.25",
	displayType = DISPLAYTYPE,
	description = "The Daniel Defense RIS II 9.5 lower handguard. Made with light but durable aircraft aluminum alloy. Equipped with RIS interface for installation of additional devices and accessories. Coyote Brown.",
	weight = 0.1,
	value = 6020,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_risii_9_lower.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_gridlok_11"] = {
	fullName = "AR-15 Strike Industries GRIDLOK 11 inch handguard",
	displayName = 'GRIDLOK 11"',
	displayType = DISPLAYTYPE,
	description = "An 11 inch main body of the GRIDLOK handguard for the AR-15 platform. Equipped with an M-LOK interface for installation of additional equipment. Manufactured by Strike Industries.",
	weight = 0.2,
	value = 12400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_gridlok_11.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_gridlok_15"] = {
	fullName = "AR-15 Strike Industries GRIDLOK 15 inch handguard",
	displayName = 'GRIDLOK 15"',
	displayType = DISPLAYTYPE,
	description = "A 15 inch main body of the GRIDLOK handguard for the AR-15 platform. Equipped with an M-LOK interface for installation of additional equipment. Manufactured by Strike Industries.",
	weight = 0.3,
	value = 16700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_gridlok_15.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_gridlok_17"] = {
	fullName = "AR-15 Strike Industries GRIDLOK 17 inch handguard",
	displayName = 'GRIDLOK 17"',
	displayType = DISPLAYTYPE,
	description = "A 17 inch main body of the GRIDLOK handguard for the AR-15 platform. Equipped with an M-LOK interface for installation of additional equipment. Manufactured by Strike Industries.",
	weight = 0.4,
	value = 18495,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_gridlok_17.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_gridlok_85"] = {
	fullName = "AR-15 Strike Industries GRIDLOK 8.5 inch handguard",
	displayName = 'GRIDLOK 8.5"',
	displayType = DISPLAYTYPE,
	description = "An 8.5 inch main body of the GRIDLOK handguard for the AR-15 platform. Equipped with an M-LOK interface for installation of additional equipment. Manufactured by Strike Industries.",
	weight = 0.2,
	value = 10200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_gridlok_8.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_gridlok_base_blk"] = {
	fullName = "AR-15 Strike Industries GRIDLOK base (Black)",
	displayName = "GRIDLOK base",
	displayType = DISPLAYTYPE,
	description = "A base for installing GRIDLOK AR-15 handguards. Manufactured by Strike Industries. Black version.",
	weight = 0.1,
	value = 4500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_gridlok_base.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_gridlok_base_red"] = {
	fullName = "AR-15 Strike Industries GRIDLOK base (Red)",
	displayName = "GRIDLOK base",
	displayType = DISPLAYTYPE,
	description = "A base for installing GRIDLOK AR-15 handguards. Manufactured by Strike Industries. Red version.",
	weight = 0.1,
	value = 4500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_gridlok_base_red.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_gridlok_base_yellow"] = {
	fullName = "AR-15 Strike Industries GRIDLOK base (Yellow)",
	displayName = "GRIDLOK base",
	displayType = DISPLAYTYPE,
	description = "A base for installing GRIDLOK AR-15 handguards. Manufactured by Strike Industries. Yellow version.",
	weight = 0.1,
	value = 4500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_gridlok_base_yellow.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_ionlite"] = {
	fullName = "AR-15 Lone Star Ion Lite handguard",
	displayName = "Ion Lite",
	displayType = DISPLAYTYPE,
	description = "Lightweight handguard Lone Star Ion Lite for use with sport rifles based on AR-15.",
	weight = 0.4,
	value = 43400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_ionlite.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_kac_ff"] = {
	fullName = "AR-15 KAC Free Float Rifle RAS 12 inch handguard",
	displayName = 'FF RAS 12"',
	displayType = DISPLAYTYPE,
	description = "A quad-rail 12 inch handguard for the AR-15 platform. Manufactured by Knight's Armament Company.",
	weight = 0.5,
	value = 16640,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_freefloat.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_kac_m5"] = {
	fullName = "AR-15 KAC M5 RAS handguard",
	displayName = "M5 RAS",
	displayType = DISPLAYTYPE,
	description = "A quad-rail handguard manufactured by Knight's Armament Company. Standard-issue handguard for the M16A4 rifle.",
	weight = 0.3,
	value = 12325,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_m5.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_kac_m5_lower"] = {
	fullName = "AR-15 KAC M5 RAS lower handguard",
	displayName = "M5 RAS lower",
	displayType = DISPLAYTYPE,
	description = "A bottom rail part of the M5 RAS handguard. Manufactured by Knight's Armament Company.",
	weight = 0.1,
	value = 4200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_m5_lower.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_kacris"] = {
	fullName = "AR-15 KAC RIS handguard",
	displayName = "KAC RIS",
	displayType = DISPLAYTYPE,
	description = "Knight's Armament Company RIS is a standard service handguard for the M4A1 carbines, but it can be installed on most AR-15 based weapons, provided that the barrel is the right length. It comes equipped with 4 mounts for the installation of a heat shield and additional accessories.",
	weight = 0.2,
	value = 6800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_ris.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_kacris_lower"] = {
	fullName = "AR-15 KAC RIS lower handguard",
	displayName = "KAC RIS",
	displayType = DISPLAYTYPE,
	description = "Knight's Armament Company RIS lower handguard for the M4A1 carbine.",
	weight = 0.1,
	value = 2660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_ris_lower.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_kacurx31"] = {
	fullName = 'AR-15 KAC "URX 3.1" 10.75 inch handguard',
	displayName = 'URX 3.1 10.75"',
	displayType = DISPLAYTYPE,
	description = "The Knight's Armament URX 3.1 handguard for AR-15 equipped with a unique interface for installation of additional devices and accessories.",
	weight = 0.2,
	value = 17500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_urx_10.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_kacurx31_lower"] = {
	fullName = "AR-15 KAC URX 3.1 10.75 inch lower handguard",
	displayName = 'URX3.1 10.75"',
	displayType = DISPLAYTYPE,
	description = "The Knight's Armament URX 3.1 lower handguard for AR-15 equipped with a unique interface for installation of additional devices and accessories.",
	weight = 0.1,
	value = 7565,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_urx_10_lower.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_kacurx38"] = {
	fullName = "AR-15 KAC URX 3 8 inch handguard",
	displayName = 'URX 3 8"',
	displayType = DISPLAYTYPE,
	description = "The Knight's Armament URX 3 handguard for AR-15 equipped with a unique interface for installation of additional devices and accessories.",
	weight = 0.2,
	value = 15545,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_urx_8.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_kacurx38_lower"] = {
	fullName = "AR-15 KAC URX 3 8 inch lower handguard",
	displayName = 'URX3 8"',
	displayType = DISPLAYTYPE,
	description = "The Knight's Armament URX 3 lower handguard for AR-15 equipped with a unique interface for installation of additional devices and accessories.",
	weight = 0.1,
	value = 6620,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_urx_8_lower.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_lvoac_b"] = {
	fullName = "AR-15 War Sport LVOA-C handguard (Black)",
	displayName = "LVOA-C blk.",
	displayType = DISPLAYTYPE,
	description = "Lightweight handguard War Sport LVOA-C for use with sport rifles based on AR-15.",
	weight = 0.6,
	value = 38640,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_lvoac.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_lvoac_g"] = {
	fullName = "AR-15 War Sport LVOA-C handguard (Gray)",
	displayName = "LVOA-C Gray",
	displayType = DISPLAYTYPE,
	description = "Lightweight handguard War Sport LVOA-C for use with sport rifles based on AR-15. Gray.",
	weight = 0.6,
	value = 38640,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_lvoac_gray.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_lvoas_b"] = {
	fullName = "AR-15 War Sport LVOA-S handguard (Black)",
	displayName = "LVOA-S blk.",
	displayType = DISPLAYTYPE,
	description = "Lightweight handguard War Sport LVOA-S (SBR) for use with sport rifles based on AR-15.",
	weight = 0.5,
	value = 22450,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_lvoas.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_lvoas_g"] = {
	fullName = "AR-15 War Sport LVOA-S handguard (Gray)",
	displayName = "LVOA-S Gray",
	displayType = DISPLAYTYPE,
	description = "Lightweight handguard War Sport LVOA-S (SBR) for use with sport rifles based on AR-15. Gray.",
	weight = 0.5,
	value = 22450,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_lvoas_gray.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_m16a1"] = {
	fullName = "AR-15 Colt M16A1 handguard",
	displayName = "M16A1",
	displayType = DISPLAYTYPE,
	description = "A triangular fiberglass rifle handguard manufactured by Colt. Standard-issue handguard for M16A1 rifles.",
	weight = 0.2,
	value = 2155,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_m16a1.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_m16a2"] = {
	fullName = "AR-15 Colt M16A2 handguard",
	displayName = "M16A2",
	displayType = DISPLAYTYPE,
	description = "A polymer rifle handguard manufactured by Colt. Standard-issue handguard for M16A2 rifles.",
	weight = 0.2,
	value = 2390,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_m16a2.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_m16a2_lower"] = {
	fullName = "AR-15 Colt A2 lower handguard",
	displayName = "M16A2 lower",
	displayType = DISPLAYTYPE,
	description = "A bottom part of the A2 handguard, manufactured by Colt. Standard-issue handguard for M16A2 rifles.",
	weight = 0.05,
	value = 1530,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_m16a2_lower.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_m4"] = {
	fullName = "AR-15 Colt M4 Carbine Length handguard",
	displayName = "M4 Carbine",
	displayType = DISPLAYTYPE,
	description = "A carbine length handguard manufactured by Colt, a standard-issue handguard for the M4A1 assault rifles.",
	weight = 0.2,
	value = 1400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_carbine.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_m4_lower"] = {
	fullName = "AR-15 Colt M4 Carbine Length lower handguard",
	displayName = "M4 Carbine",
	displayType = DISPLAYTYPE,
	description = "A carbine length lower handguard part manufactured by Colt, a standard-issue handguard for the M4A1 assault rifles.",
	weight = 0.1,
	value = 1240,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_carbine_lower.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_mk10"] = {
	fullName = "AR-15 Alexander Arms MK10 rifle length handguard",
	displayName = "MK10 RL",
	displayType = DISPLAYTYPE,
	description = "The MK10 lightweight handguard system manufactured by Alexander Arms. Made of G10 composite fiberglass and compatible with most AR-15-type carbines.",
	weight = 0.4,
	value = 21205,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_mk10.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_mk16"] = {
	fullName = "AR-15 Geissele SMR MK16 13.5 inch M-LOK handguard",
	displayName = "SMR MK16 13.5",
	displayType = DISPLAYTYPE,
	description = "Geissele SMR 13.5 inch M-LOK handguard for AR-15 equipped with a M-LOK interface for installation of additional devices and accessories.",
	weight = 0.5,
	value = 36300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_mk16_13.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_mk1695"] = {
	fullName = "AR-15 Geissele SMR MK16 9.5 inch M-LOK handguard",
	displayName = "SMR MK16 9.5",
	displayType = DISPLAYTYPE,
	description = "Geissele SMR 9.5 inch M-LOK handguard for AR-15 equipped with a M-LOK interface for installation of additional devices and accessories.",
	weight = 0.3,
	value = 27345,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_mk16_9.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_mk1695_blk"] = {
	fullName = "AR-15 Geissele SMR MK16 9.5 inch M-LOK handguard",
	displayName = "SMR MK16 9.5",
	displayType = DISPLAYTYPE,
	description = "Geissele SMR 9.5 inch M-LOK handguard for AR-15 equipped with a M-LOK interface for installation of additional devices and accessories.",
	weight = 0.3,
	value = 27345,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_mk16_9_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_mk16_blk"] = {
	fullName = "AR-15 Geissele SMR MK16 13.5 inch M-LOK handguard",
	displayName = "SMR MK16 13.5",
	displayType = DISPLAYTYPE,
	description = "Geissele SMR 13.5 inch M-LOK handguard for AR-15 equipped with a M-LOK interface for installation of additional devices and accessories.",
	weight = 0.5,
	value = 36300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_mk16_13_blk.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_moesl"] = {
	fullName = "AR-15 Magpul MOE SL carbine length M-LOK handguard",
	displayName = "MOE SL",
	displayType = DISPLAYTYPE,
	description = "The Magpul MOE SL carbine length handguard for AR-15 systems, equipped with an M-LOK interface for installation of additional devices and accessories.",
	weight = 0.2,
	value = 10130,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_moesl_carbine.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_moeslmid"] = {
	fullName = "AR-15 Magpul MOE SL medium length M-LOK handguard",
	displayName = "MOE SL",
	displayType = DISPLAYTYPE,
	description = "Magpul MOE SL foregrip for AR-15 equipped with a M-LOK interface for installation of additional devices and accessories.",
	weight = 0.2,
	value = 12765,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_moesl_medium.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_precision"] = {
	fullName = "AR-15 Precision Reflex GEN III Delta Carbon handguard",
	displayName = "Delta Carbon",
	displayType = DISPLAYTYPE,
	description = "The GEN III Delta Carbon handguard for AR-15 systems, equipped with a custom interface for the installation of additional devices and accessories. Manufactured by Precision Reflex.",
	weight = 0.4,
	value = 33600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_delta.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_precision_blk"] = {
	fullName = "AR-15 Precision Reflex GEN III Delta Carbon handguard",
	displayName = "Delta Carbon",
	displayType = DISPLAYTYPE,
	description = "The GEN III Delta Carbon handguard for AR-15 systems, equipped with a custom interface for the installation of additional devices and accessories. Manufactured by Precision Reflex.",
	weight = 0.4,
	value = 33600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_delta_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_precision_round"] = {
	fullName = "AR-15 Precision Reflex GEN III Round Carbon 12 inch handguard",
	displayName = "Round Carbon",
	displayType = DISPLAYTYPE,
	description = "The 12 inch GEN III Round Carbon handguard for AR-15 systems. Manufactured by Precision Reflex.",
	weight = 0.5,
	value = 17080,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_round.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_precision_round_fde"] = {
	fullName = "AR-15 Precision Reflex GEN III Round Carbon 12 inch handguard (FDE)",
	displayName = "Round Carbon",
	displayType = DISPLAYTYPE,
	description = "The 12 inch GEN III Round Carbon handguard for AR-15 systems. Manufactured by Precision Reflex. Flat Dark Earth version.",
	weight = 0.5,
	value = 17080,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_round_fde.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_radian_14"] = {
	fullName = "AR-15 Radian Model 1 14 inch handguard",
	displayName = 'Radian 14"',
	displayType = DISPLAYTYPE,
	description = "A precision CNC machined 14 inch handguard, equipped with an M-LOK interface for installation of additional equipment. Manufactured by Radian Weapons.",
	weight = 0.5,
	value = 83990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_radian.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_saiqd"] = {
	fullName = "AR-15 SAI 14.5 inch QD Rail handguard",
	displayName = "SAI QD Rail",
	displayType = DISPLAYTYPE,
	description = "The Salient Arms International QD Rail handguard for AR-15 equipped with an M-LOK interface for the installation of additional devices and accessories.",
	weight = 0.4,
	value = 76300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_sai_14.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_saiqd10"] = {
	fullName = "AR-15 SAI 10 inch QD Rail handguard",
	displayName = 'SAI QD 10"',
	displayType = DISPLAYTYPE,
	description = "Salinet Arms QD Rail foregrip for AR-15 equipped with a M-LOK interface for installation of additional devices and accessories.",
	weight = 0.3,
	value = 50200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_sai_10.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_skinny"] = {
	fullName = "AR-15 CAR-15 Skinny handguard",
	displayName = "CAR-15",
	displayType = DISPLAYTYPE,
	description = "An old-style carbine length 'skinny' handguard manufactured by Colt.",
	weight = 0.1,
	value = 2100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_car.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_skinny_lower"] = {
	fullName = "AR-15 Colt CAR-15 Skinny lower handguard",
	displayName = "CAR-15 lower",
	displayType = DISPLAYTYPE,
	description = "A bottom part of the CAR-15 handguard, manufactured by Colt.",
	weight = 0.05,
	value = 1160,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_car_lower.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_stm12"] = {
	fullName = "AR-15 Soyuz-TM 12 inch M-LOK handguard",
	displayName = 'STM 12"',
	displayType = DISPLAYTYPE,
	description = "STM 12 inch M-LOK handguard for AR-15 equipped with a M-LOK interface for installation of additional devices and accessories.",
	weight = 0.2,
	value = 14370,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_stm_12.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_stm15"] = {
	fullName = "AR-15 Soyuz-TM 15 inch M-LOK handguard",
	displayName = 'STM 15"',
	displayType = DISPLAYTYPE,
	description = "STM 15 inch M-LOK handguard for AR-15 equipped with a M-LOK interface for installation of additional devices and accessories.",
	weight = 0.2,
	value = 17150,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_stm_15.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_stm9"] = {
	fullName = "AR-15 Soyuz-TM 9 inch M-LOK handguard",
	displayName = 'STM 9"',
	displayType = DISPLAYTYPE,
	description = "STM 9 inch M-LOK handguard for AR-15 equipped with a M-LOK interface for installation of additional devices and accessories.",
	weight = 0.2,
	value = 12000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_stm_9.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_viper"] = {
	fullName = "AR-15 Strike Industries Viper carbine length M-LOK handguard",
	displayName = "AR15 Viper",
	displayType = DISPLAYTYPE,
	description = "The Strike Industries Viper handguard for AR-15 equipped with an M-LOK interface for the installation of additional devices and accessories.",
	weight = 0.1,
	value = 4270,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_viper.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_viper_f"] = {
	fullName = "AR-15 Strike Industries Viper carbine length M-LOK handguard (Flat dark earth)",
	displayName = "AR15 Viper",
	displayType = DISPLAYTYPE,
	description = "The Strike Industries Viper handguard for AR-15 equipped with an M-LOK interface for the installation of additional devices and accessories. Flat dark earth.",
	weight = 0.1,
	value = 4270,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_viper_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_viper_lower"] = {
	fullName = "AR-15 Strike Industries Viper carbine length M-LOK lower handguard",
	displayName = "Viper AR15",
	displayType = DISPLAYTYPE,
	description = "The Strike Industries Viper lower handguard for AR-15 equipped with an M-LOK interface for the installation of additional devices and accessories.",
	weight = 0.1,
	value = 5220,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_viper_lower.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_viper_lower_fde"] = {
	fullName = "AR-15 Strike Industries Viper carbine length M-LOK lower handguard (Flat dark earth)",
	displayName = "Viper AR15",
	displayType = DISPLAYTYPE,
	description = "The Strike Industries Viper lower handguard for AR-15 equipped with an M-LOK interface for the installation of additional devices and accessories. Flat dark earth.",
	weight = 0.1,
	value = 5220,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_viper_lower_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_vypr"] = {
	fullName = "AR-15 STNGR VYPR 10 inch M-LOK handguard",
	displayName = "Stngr Vypr",
	displayType = DISPLAYTYPE,
	description = "Stngr Vypr foregrip for AR-15 equipped with a M-LOK interface for installation of additional devices and accessories.",
	weight = 0.2,
	value = 14500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_vypr.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_wing"] = {
	fullName = "AR-15 Unique-ARs Wing & Skull 12 inch handguard",
	displayName = "Wing&Skull",
	displayType = DISPLAYTYPE,
	description = "A 12 inch Wing & Skull handguard for AR-15 weapon systems. Manufactured by Unique-ARs.",
	weight = 0.2,
	value = 31110,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_wing.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_hk416_cgnl"] = {
	fullName = "NL545 10.5 inch M-LOK handguard (FDE)",
	displayName = 'NL545 10.5"',
	displayType = DISPLAYTYPE,
	description = "The Custom Guns 10.5 inch handguard for NL545 equipped with an M-LOK interface for installation of additional devices and accessories. Flat Dark Earth version.",
	weight = 0.5,
	value = 17945,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("nl545.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_hk416_cgnl_blk"] = {
	fullName = "NL545 10.5 inch M-LOK handguard",
	displayName = 'NL545 10.5"',
	displayType = DISPLAYTYPE,
	description = "The Custom Guns 10.5 inch handguard for NL545 equipped with an M-LOK interface for installation of additional devices and accessories.",
	weight = 0.5,
	value = 17945,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("nl545_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_hk416_crux"] = {
	fullName = "HK 416A5 Strike Industries CRUX 15 inch M-LOK handguard",
	displayName = "CRUX Handguard",
	displayType = DISPLAYTYPE,
	description = "Strike Industries CRUX foregrip for 416A5 equipped with a M-LOK interface for installation of additional devices and accessories.",
	weight = 0.4,
	value = 16710,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hk416_crux.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_hk416_midwest135"] = {
	fullName = "HK 416A5 Midwest Industries 13.5 inch M-LOK handguard",
	displayName = "Midwest M-LOK",
	displayType = DISPLAYTYPE,
	description = "Midwest M-LOK foregrip for 416A5 equipped with a M-LOK interface for installation of additional devices and accessories.",
	weight = 0.4,
	value = 19185,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hk416_midwest_13.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_hk416_midwest9"] = {
	fullName = "HK 416A5 Midwest Industries 9 inch M-LOK handguard",
	displayName = "Midwest M-LOK",
	displayType = DISPLAYTYPE,
	description = "Midwest M-LOK foregrip for 416A5 equipped with a M-LOK interface for installation of additional devices and accessories.",
	weight = 0.3,
	value = 16055,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hk416_midwest_9.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_hk416_mrs14"] = {
	fullName = "HK 416A5 MRS KeyMod 14 inch handguard",
	displayName = "HK KeyMod",
	displayType = DISPLAYTYPE,
	description = "The HK MRS KeyMod handguard for 416A5 equipped with a KeyMod interface for the installation of additional devices and accessories.",
	weight = 0.4,
	value = 13920,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hk416_keymod.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_hk416_quad"] = {
	fullName = "HK 416A5 Quad Rail handguard",
	displayName = "Quadrail",
	displayType = DISPLAYTYPE,
	description = "Quadrail handguard for 416 and compatables. Comes with a four picatinny rails for attaching wide amount of different accessories. Produced by Heckler and Koch.",
	weight = 0.4,
	value = 10875,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hk416_quad.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_hk416_quadext"] = {
	fullName = "HK 416A5 Quad Rail Extended handguard",
	displayName = "Ext.Quad",
	displayType = DISPLAYTYPE,
	description = "Extended length quadrail handguard for 416 and compatables. Comes with a four picatinny rails for attaching wide amount of different accessories. Produced by Heckler and Koch.",
	weight = 0.5,
	value = 11290,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hk416_ext.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_hk416_quadsight"] = {
	fullName = "HK 416A5 Quad Rail handguard with flip-up front sight",
	displayName = "Quad. sight",
	displayType = DISPLAYTYPE,
	description = "Quadrail handguard for 416 and compatables. Comes with a four picatinny rails for attaching wide amount of different accessories and a built-in flip up front sight. Produced by Heckler and Koch.",
	weight = 0.4,
	value = 8350,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hk416_quad_flip.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_hk416_troy"] = {
	fullName = "HK 416A5 TROY M-LOK 13 inch handguard",
	displayName = "TROY M-LOK",
	displayType = DISPLAYTYPE,
	description = "Troy industries carbon fiber M-LOK foregrip for 416A5 equipped with a M-LOK interface for installation of additional devices and accessories.",
	weight = 0.3,
	value = 18920,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hk416_troy.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_pk_zenit"] = {
	fullName = "PK Zenit B-50 handguard",
	displayName = "B-50",
	displayType = DISPLAYTYPE,
	description = "The B-50 integrally-machined handguard made of D16T alloy for Kalashnikov Machine gun. Allows installation of additional equipment and handgrips. Manufactured by Zenit.",
	weight = 0.4,
	value = 28520,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pkm_b50.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_svds_mod"] = {
	fullName = "SVD modernization kit handguard",
	displayName = "SVD mod.",
	displayType = DISPLAYTYPE,
	description = "A prototype handguard designed for the modernized SVD sniper rifle kit, manufactured by Izhmash.",
	weight = 0.5,
	value = 15585,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svds_mod.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_svds_std"] = {
	fullName = "SVDS polymer handguard",
	displayName = "SVDS",
	displayType = DISPLAYTYPE,
	description = "A polymer handguard for the SVDS sniper rifle that replaced the classic wooden one. Manufactured by Izhmash.",
	weight = 0.2,
	value = 4000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svds.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_svds_xrs"] = {
	fullName = "SVD CAA XRS-DRG handguard",
	displayName = "XRS-DRG",
	displayType = DISPLAYTYPE,
	description = "The XRS-DRG Picatinny handguard for the SVD sniper rifles provides a rigid lightweight accessory platform and multiple mounting positions. Manufactured by CAA Industries.",
	weight = 0.6,
	value = 9600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svds_xrs.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_tkpd_fde"] = {
	fullName = "TKPD handguard (FDE)",
	displayName = "TKPD (FDE)",
	displayType = DISPLAYTYPE,
	description = "A standard handguard for the TKPD assault carbine. Allows installation of tactical equipment and a bipod. Flat Dark Earth version.",
	weight = 0.4,
	value = 19410,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tkpd_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_tkpd_std"] = {
	fullName = "TKPD handguard",
	displayName = "TKPD",
	displayType = DISPLAYTYPE,
	description = "A standard handguard for the TKPD assault carbine. Allows installation of tactical equipment and a bipod.",
	weight = 0.4,
	value = 19410,
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

EFGM.ITEMS["arc9_att_eft_hg_velociraptor_std"] = {
	fullName = "Velociraptor polymer handguard",
	displayName = "Velociraptor",
	displayType = DISPLAYTYPE,
	description = "A polymer handguard for the Velociraptor assault rifle. A modified version of the Tapco AK handguard based on the Galil AR handguard, designed to be installed over the suppressor shroud, preventing possible injury to the shooters hands during firing.",
	weight = 0.2,
	value = 5365,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("veloc.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ks23_hg_std"] = {
	fullName = "KS-23M forestock",
	displayName = "KS23M",
	displayType = DISPLAYTYPE,
	description = "A standard-issue polymer forestock made for the KS-23M shotgun.",
	weight = 0.6,
	value = 2170,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ks23.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m249_hg_kac"] = {
	fullName = "M249 KAC Handguard",
	displayName = "M249 KAC",
	displayType = DISPLAYTYPE,
	description = "MAC Manufactured Heavy RAS Handguard inspired by the KAC RAS system.",
	weight = 0.8,
	value = 13425,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m249_kac.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m249_hg_minimal"] = {
	fullName = "Moloc Armament Co. Mini Handguard",
	displayName = "MAC Mini",
	displayType = DISPLAYTYPE,
	description = "Minimalist style handguard for the M249 5.56x45mm light machinegun manufactured by Moloc Armament Co.",
	weight = 0.5,
	value = 10785,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m249_mac.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m249_hg_od"] = {
	fullName = 'M249 Moloc Armament "Sleek" Handguard (OD)',
	displayName = "Sleek",
	displayType = DISPLAYTYPE,
	description = "Sleek OD Green handguard produced by Moloc Armament Co.",
	weight = 0.6,
	value = 11240,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m249_sleek.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m249_hg_std"] = {
	fullName = "M249 Polymer Handguard",
	displayName = "M249 Poly",
	displayType = DISPLAYTYPE,
	description = "Standard polymer handguard for the M249 5.56x45mm light machinegun.",
	weight = 0.7,
	value = 5755,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m249.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m249_hg_tactical"] = {
	fullName = "MAC Slim RAS",
	displayName = "MAC S-RAS",
	displayType = DISPLAYTYPE,
	description = "MAC Slim Tactical RAS hanguard for true operators.",
	weight = 0.6,
	value = 11445,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m249_slim.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m249_uhg_heatshield"] = {
	fullName = "FN M249 Heatshield",
	displayName = "Heatshield",
	displayType = DISPLAYTYPE,
	description = "Part of the U.S. Army's Product Improvement Program, the M249 PiP came with this polymer heat shield to combat burns during barrel changes.",
	weight = 0.1,
	value = 3670,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m249_heat.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m249_uhg_kac"] = {
	fullName = "FN M249 KAC Upper Heatshield",
	displayName = "M249 KAC",
	displayType = DISPLAYTYPE,
	description = "MAC Manufactured Heavy RAS Handguard/Heatshield inspired by the KAC RAS system. Upper portion.",
	weight = 0.1,
	value = 4330,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m249_heat_kac.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m3s90_hg_std"] = {
	fullName = "Benelli M3 forend",
	displayName = "M3 std",
	displayType = DISPLAYTYPE,
	description = "Benelli M3 black synthetic forend with firing mode switch is constructed from polymer with grooved checkering for an easy grip, manufactured by Benelli.",
	weight = 0.1,
	value = 2100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m3.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m590_hg_moe"] = {
	fullName = "Mossberg 590A1 Magpul MOE forestock",
	displayName = "Magpul MOE",
	displayType = DISPLAYTYPE,
	description = "The MOE handguard, designed for Mossberg 500/590 shotguns. Manufactured by Magpul.",
	weight = 0.6,
	value = 7850,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m590_moe.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m590_hg_speed"] = {
	fullName = "Mossberg 590A1 SpeedFeed short handguard",
	displayName = "SpeedFeed",
	displayType = DISPLAYTYPE,
	description = "A polymer handguard made for the Mossberg 590A1 pump-action shotgun.",
	weight = 0.6,
	value = 1200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m590_speedfeed.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m60_hg_e4"] = {
	fullName = "M60E4 Mod 1 handguard",
	displayName = "M60E4 hg",
	displayType = DISPLAYTYPE,
	description = "An aluminium railed handguard for the M60E4 Mod 1 light machine gun. Manufactured by U.S Ordnance.",
	weight = 0.6,
	value = 8545,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m60e4.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m60_hg_e4_fde"] = {
	fullName = "M60E4 Mod 1 handguard (FDE)",
	displayName = "M60E4 hg",
	displayType = DISPLAYTYPE,
	description = "An aluminium railed handguard for the M60E4 Mod 1 light machine gun. Manufactured by U.S Ordnance. Flat Dark Earth version.",
	weight = 0.6,
	value = 8545,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m60e4_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m60_hg_e6"] = {
	fullName = "M60E6 handguard",
	displayName = "M60E6 hg",
	displayType = DISPLAYTYPE,
	description = "A standard-issue railed handguard for the M60E6 light machine gun. Manufactured by U.S Ordnance.",
	weight = 0.5,
	value = 11480,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m60e6.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_hg_gen3"] = {
	fullName = "M700 AB Arms MOD*X GEN 3 KeyMod handguard",
	displayName = "MOD*X GEN 3",
	displayType = DISPLAYTYPE,
	description = "The AB Arms MOD*X GEN 3 KeyMod handguard for M700 sniper rifles equipped with a KeyMod interface for installation of additional devices and accessories.",
	weight = 0.4,
	value = 18010,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("modxkey.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_hg_gen3_blk"] = {
	fullName = "M700 AB Arms MOD*X GEN 3 KeyMod handguard",
	displayName = "MOD*X GEN 3",
	displayType = DISPLAYTYPE,
	description = "The AB Arms MOD*X GEN 3 KeyMod handguard for M700 sniper rifles equipped with a KeyMod interface for installation of additional devices and accessories.",
	weight = 0.4,
	value = 18010,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("modxkey_blk.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m870_hg_moe"] = {
	fullName = "M870 Magpul MOE handguard",
	displayName = "MOE 870",
	displayType = DISPLAYTYPE,
	description = "The Magpul MOE forend, designed for the Remington Model 870 shotgun.",
	weight = 0.2,
	value = 7850,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m870_moe.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m870_hg_pr"] = {
	fullName = "M870 FAB Defense PR-870 forestock",
	displayName = "PR-870",
	displayType = DISPLAYTYPE,
	description = "The PR-870 handguard by FAB Defense, made for the Remington Model 870 shotgun. Also has Weaver rails for mounting additional accessories and foregrips.",
	weight = 0.2,
	value = 2360,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m870_pr.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m870_hg_speed"] = {
	fullName = "M870 SpeedFeed Short handguard",
	displayName = "870 SFeed",
	displayType = DISPLAYTYPE,
	description = "A classical polymer forend designed for the Remington Model 870 shotgun.",
	weight = 0.1,
	value = 1400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m870_speedfeed.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mcx_hg_12"] = {
	fullName = "MCX GEN1 KeyMod 12 inch handguard",
	displayName = 'MCX 12"',
	displayType = DISPLAYTYPE,
	description = "A first-gen 12 inch handguard for the MCX assault rifle, equipped with a KeyMod interface for attaching additional equipment. Manufactured by SIG Sauer.",
	weight = 0.4,
	value = 11550,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx_keymod_12.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mcx_hg_8"] = {
	fullName = "MCX GEN1 KeyMod 8 inch handguard",
	displayName = 'MCX 8"',
	displayType = DISPLAYTYPE,
	description = "A first-gen 8 inch handguard for the MCX assault rifle, equipped with a KeyMod interface for attaching additional equipment. Manufactured by SIG Sauer.",
	weight = 0.4,
	value = 8935,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx_keymod_8.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mcx_hg_gen1"] = {
	fullName = "MCX GEN1 10.5 inch handguard",
	displayName = 'MCX 10.5"',
	displayType = DISPLAYTYPE,
	description = "A first-gen 10.5 inch handguard with a proprietary rail attachment system for the MCX assault rifle. Part of the LVAW (Low Visibility Assault Weapon) configuration used by US JSOC units. Manufactured by SIG Sauer.",
	weight = 0.4,
	value = 10875,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx_10.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mcx_hg_lancer_105"] = {
	fullName = "MCX Lancer Carbon Fiber M-LOK 10.5 inch handguard",
	displayName = 'CF 10.5"',
	displayType = DISPLAYTYPE,
	description = "A 10.5 inch handguard for the MCX assault rifle, equipped with an M-LOK interface for installation of additional tactical devices and accessories. Manufactured by Lancer Systems.",
	weight = 0.2,
	value = 10925,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx_carbon_10.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mcx_hg_lancer_12"] = {
	fullName = "MCX Lancer Carbon Fiber M-LOK 12 inch handguard",
	displayName = 'CF 12"',
	displayType = DISPLAYTYPE,
	description = "A 12 inch handguard for the MCX assault rifle, equipped with an M-LOK interface for installation of additional tactical devices and accessories. Manufactured by Lancer Systems.",
	weight = 0.2,
	value = 11730,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx_carbon_12.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mcx_hg_lancer_18"] = {
	fullName = "MCX Lancer Carbon Fiber M-LOK 18 inch handguard",
	displayName = 'CF 18"',
	displayType = DISPLAYTYPE,
	description = "An 18 inch handguard for the MCX assault rifle, equipped with an M-LOK interface for installation of additional tactical devices and accessories. Manufactured by Lancer Systems.",
	weight = 0.3,
	value = 13110,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx_carbon_18.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mdr_hg_blk"] = {
	fullName = "MDR handguard",
	displayName = "MDR Black",
	displayType = DISPLAYTYPE,
	description = "Desert Tech foregrip for MDR equipped with a M-LOK interface for installation of additional devices and accessories.",
	weight = 0.3,
	value = 6700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mdr.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mdr_hg_fde"] = {
	fullName = "MDR handguard (FDE)",
	displayName = "MDR",
	displayType = DISPLAYTYPE,
	description = "Desert Tech foregrip for MDR equipped with a M-LOK interface for installation of additional devices and accessories. Flat bark earth.",
	weight = 0.3,
	value = 6700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mdr_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mk18_hg_std"] = {
	fullName = "Mk-18 18 inch handguard",
	displayName = 'Mk-18 18"',
	displayType = DISPLAYTYPE,
	description = "A lightweight 18 inch long M-LOK-compatible handguard for the Mk-18 rifle. Manufactured by SWORD International.",
	weight = 0.4,
	value = 14555,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mk18.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp18_hg_poly"] = {
	fullName = "MP-18 polymer handguard",
	displayName = "MP18 poly",
	displayType = DISPLAYTYPE,
	description = "A polymer handguard for MP-18 hunting rifles. Manufactured by IzhMekh.",
	weight = 0.1,
	value = 2620,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp18.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp18_hg_wood"] = {
	fullName = "MP-18 wooden handguard",
	displayName = "MP18 wood",
	displayType = DISPLAYTYPE,
	description = "A wooden handguard for MP-18 hunting rifles. Manufactured by IzhMekh.",
	weight = 0.2,
	value = 2050,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp18_wood.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp5_hg_caa"] = {
	fullName = "HK MP5 CAA HX-5 handguard",
	displayName = "CAA HX-5",
	displayType = DISPLAYTYPE,
	description = "The HX-5 handguard for HK MP5 SMG manufactured by Command Arms Accessories, equipped with 5 rail mounts for installation of additional tactical devices.",
	weight = 0.3,
	value = 14400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp5_caa.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp5_hg_k"] = {
	fullName = "HK MP5K polymer handguard",
	displayName = "MP5K HG",
	displayType = DISPLAYTYPE,
	description = "A polymer handguard for the MP5K submachine gun, manufactured by Heckler & Koch.",
	weight = 0.2,
	value = 1825,
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

EFGM.ITEMS["arc9_att_eft_mp5_hg_ptr"] = {
	fullName = "HK MP5 PTR Tri-Rail handguard",
	displayName = "PTR",
	displayType = DISPLAYTYPE,
	description = "A handguard for HK MP5 SMG manufactured by PTR, equipped with 3 rail mounts for installation of additional tactical devices.",
	weight = 0.3,
	value = 13580,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp5_ptr.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp5_hg_sd"] = {
	fullName = "HK MP5SD polymer handguard",
	displayName = "MP5SD HG",
	displayType = DISPLAYTYPE,
	description = "A polymer handguard for the MP5SD SMG, manufactured by Heckler & Koch.",
	weight = 0.1,
	value = 7280,
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

EFGM.ITEMS["arc9_att_eft_mp5_hg_std"] = {
	fullName = "HK MP5 Wide Tropical polymer handguard",
	displayName = "Wide",
	displayType = DISPLAYTYPE,
	description = "A polymer handguard for the HK-produced MP5 SMGs, the so-called Wide Tropical version.",
	weight = 0.2,
	value = 4060,
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

EFGM.ITEMS["arc9_att_eft_mp5_hg_tl99"] = {
	fullName = "HK MP5 B&T TL-99 aluminum handguard",
	displayName = "TL-99",
	displayType = DISPLAYTYPE,
	description = "An aluminum handguard for the MP5 SMGs, manufactured by Brügger & Thomet. Equipped with 3 rail mounts for the installation of additional devices.",
	weight = 0.3,
	value = 7800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp5_bt.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_hg_105"] = {
	fullName = "MPX Midwest Industries 10.5 inch M-LOK handguard",
	displayName = 'MPX Midwest 10.5"',
	displayType = DISPLAYTYPE,
	description = "The Midwest Industries 10.5 inch length foregrip for the MPX SMGs equipped with an M-LOK interface for installation of additional devices and accessories.",
	weight = 0.2,
	value = 10600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_midwest_10.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_hg_14"] = {
	fullName = "MPX Midwest Industries 14 inch M-LOK handguard",
	displayName = 'MPX Midwest 14"',
	displayType = DISPLAYTYPE,
	description = "The Midwest Industries 14 inch length foregrip for the MPX SMGs equipped with an M-LOK interface for installation of additional devices and accessories.",
	weight = 0.3,
	value = 14900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_midwest_14.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_hg_14oem"] = {
	fullName = "MPX Lancer OEM 14 inch M-LOK handguard",
	displayName = 'MPX OEM 14"',
	displayType = DISPLAYTYPE,
	description = "The Lancer OEM 14 inch length foregrip for the MPX SMGs equipped with an M-LOK interface for installation of additional devices and accessories.",
	weight = 0.1,
	value = 12060,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_lancer_14.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_hg_45"] = {
	fullName = "MPX Midwest Industries 4.5 inch M-LOK handguard",
	displayName = 'MPX Midwest 4.5"',
	displayType = DISPLAYTYPE,
	description = "The Midwest Industries 4.5 inch length foregrip for the MPX SMGs equipped with an M-LOK interface for installation of additional devices and accessories.",
	weight = 0.1,
	value = 6790,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_midwest_4.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_hg_65"] = {
	fullName = "MPX Midwest Industries 6.5 inch M-LOK handguard",
	displayName = 'MPX Midwest 6.5"',
	displayType = DISPLAYTYPE,
	description = "The Midwest Industries 6.5 inch length foregrip for the MPX SMGs equipped with an M-LOK interface for installation of additional devices and accessories.",
	weight = 0.2,
	value = 8680,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_midwest_6.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_hg_gen1"] = {
	fullName = "MPX GEN1 6 inch handguard",
	displayName = 'MPX GEN1 6"',
	displayType = DISPLAYTYPE,
	description = " A 6 inch handguard for the first generation of the SIG Sauer MPX SMG.",
	weight = 0.3,
	value = 9700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_6.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_hg_gen1_4"] = {
	fullName = "MPX GEN1 4 inch handguard",
	displayName = 'MPX GEN1 4"',
	displayType = DISPLAYTYPE,
	description = "A 4 inch handguard for the first generation of the SIG Sauer MPX SMG.",
	weight = 0.2,
	value = 7680,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_4.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_hg_gen1_8"] = {
	fullName = "MPX GEN1 8 inch handguard",
	displayName = 'MPX GEN1 8"',
	displayType = DISPLAYTYPE,
	description = "A 8 inch handguard for the first generation of the SIG Sauer MPX SMG.",
	weight = 0.3,
	value = 11525,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_8.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_hg_gen2_4"] = {
	fullName = "MPX GEN2 4 inch M-LOK handguard",
	displayName = 'MPX GEN2 4"',
	displayType = DISPLAYTYPE,
	description = "A 4 inch handguard for the second generation of the SIG Sauer MPX SMG equipped with an M-LOK interface for installation of additional devices and accessories.",
	weight = 0.2,
	value = 7650,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_mlok_4.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_hg_gen2_6"] = {
	fullName = "MPX GEN2 6 inch M-LOK handguard",
	displayName = 'MPX GEN2 6"',
	displayType = DISPLAYTYPE,
	description = "A 6 inch handguard for the second generation of the SIG Sauer MPX SMG equipped with an M-LOK interface for installation of additional devices and accessories.",
	weight = 0.3,
	value = 10080,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_mlok_6.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_hg_gen2_8"] = {
	fullName = "MPX GEN2 8 inch M-LOK handguard",
	displayName = 'MPX GEN2 8"',
	displayType = DISPLAYTYPE,
	description = "A 8 inch handguard for the second generation of the SIG Sauer MPX SMG equipped with an M-LOK interface for installation of additional devices and accessories.",
	weight = 0.3,
	value = 11440,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_mlok_8.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr133_hg_custom"] = {
	fullName = "MP-133 custom plastic forestock with rails",
	displayName = "MP-133 custom",
	displayType = DISPLAYTYPE,
	description = "A nonstandard polymer forestock for MP-133 pump-action shotguns, manufactured by an unknown third-party producer. Equipped with 2 short and 1 long mount for installation of additional equipment.",
	weight = 0.5,
	value = 9605,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp133_custom.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr133_hg_wood"] = {
	fullName = "MP-133 beechwood forestock",
	displayName = "MP-133 wood",
	displayType = DISPLAYTYPE,
	description = "A standard Izhmekh-manufactured forestock, designed for MP-133 shotguns and made out of beechwood.",
	weight = 0.8,
	value = 1210,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp133_wood.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr153_hg_std"] = {
	fullName = "MP-153 polymer forestock",
	displayName = "MP-153 poly",
	displayType = DISPLAYTYPE,
	description = "A standard Izhmekh-manufactured polymer forestock for the MP-153 shotgun.",
	weight = 0.3,
	value = 2840,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp153.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr155_hg_std"] = {
	fullName = "MP-155 walnut forestock",
	displayName = "MP-155 walnut",
	displayType = DISPLAYTYPE,
	description = "A Monte Carlo-style wooden walnut forestock for MP-155 shotguns. Manufactured by Izhmekh.",
	weight = 0.8,
	value = 1800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp155.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr155_hg_ultima"] = {
	fullName = "MP-155 Ultima polymer forestock",
	displayName = "MP-155 Ultima",
	displayType = DISPLAYTYPE,
	description = 'The "Ultima" modification polymer forestock for the MP-155 shotgun. Manufactured by Kalashnikov Group.',
	weight = 0.3,
	value = 4605,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp155_ultima.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mts255_hg_std"] = {
	fullName = "MTs-255-12 beechwood forestock",
	displayName = "MTs-255-12",
	displayType = DISPLAYTYPE,
	description = "A standard-issue forestock for the MTs-255 shotgun, made out of beechwood.",
	weight = 0.8,
	value = 1160,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mts255.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_hg_costa"] = {
	fullName = "M1895/MXLR Ranger Point Precision COSTA M-LOK handguard",
	displayName = "RPP COSTA",
	displayType = DISPLAYTYPE,
	description = "A handguard for M1895 rifles and compatibles. Equipped with an M-LOK interface for installation of tactical equipment. Manufactured by Ranger Point Precision.",
	weight = 0.2,
	value = 7955,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr_rpp.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_hg_costa_fde"] = {
	fullName = "M1895/MXLR Ranger Point Precision COSTA M-LOK handguard (FDE)",
	displayName = "RPP COSTA",
	displayType = DISPLAYTYPE,
	description = "A handguard for M1895 rifles and compatibles. Equipped with an M-LOK interface for installation of tactical equipment. Manufactured by Ranger Point Precision. Flat Dark Earth version.",
	weight = 0.2,
	value = 7955,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr_rpp_fde.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_hg_costa_green"] = {
	fullName = "M1895/MXLR Ranger Point Precision COSTA M-LOK handguard (Green)",
	displayName = "RPP COSTA",
	displayType = DISPLAYTYPE,
	description = "A handguard for M1895 rifles and compatibles. Equipped with an M-LOK interface for installation of tactical equipment. Manufactured by Ranger Point Precision. Green version.",
	weight = 0.2,
	value = 7955,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr_rpp_green.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_hg_magpul"] = {
	fullName = "M1895/MXLR Magpul ELG M-LOK handguard",
	displayName = "ELG M-LOK",
	displayType = DISPLAYTYPE,
	description = "A handguard for M1895 rifles and compatibles. Equipped with an M-LOK interface for installation of tactical equipment. Manufactured by Magpul.",
	weight = 0.2,
	value = 6450,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr_elg.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_hg_magpul_fde"] = {
	fullName = "M1895/MXLR Magpul ELG M-LOK handguard (FDE)",
	displayName = "ELG M-LOK",
	displayType = DISPLAYTYPE,
	description = "A handguard for M1895 rifles and compatibles. Equipped with an M-LOK interface for installation of tactical equipment. Manufactured by Magpul. Flat Dark Earth version.",
	weight = 0.2,
	value = 6450,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr_elg_fde.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_hg_rpp"] = {
	fullName = "M1895/MXLR Ranger Point Precision M-LOK handguard",
	displayName = "RPP M-LOK",
	displayType = DISPLAYTYPE,
	description = "A handguard for M1895 rifles and compatibles. Equipped with an M-LOK interface for installation of tactical equipment. Manufactured by Ranger Point Precision.",
	weight = 0.2,
	value = 7185,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr_mlok.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_hg_rpp_fde"] = {
	fullName = "M1895/MXLR Ranger Point Precision M-LOK handguard (FDE)",
	displayName = "RPP M-LOK",
	displayType = DISPLAYTYPE,
	description = "A handguard for M1895 rifles and compatibles. Equipped with an M-LOK interface for installation of tactical equipment. Manufactured by Ranger Point Precision. Flat Dark Earth version.",
	weight = 0.2,
	value = 7185,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr_mlok_fde.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_hg_rpp_green"] = {
	fullName = "M1895/MXLR Ranger Point Precision M-LOK handguard (Green)",
	displayName = "RPP M-LOK",
	displayType = DISPLAYTYPE,
	description = "A handguard for M1895 rifles and compatibles. Equipped with an M-LOK interface for installation of tactical equipment. Manufactured by Ranger Point Precision. Green version.",
	weight = 0.2,
	value = 7185,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr_mlok_green.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_hg_std"] = {
	fullName = "MXLR standard handguard",
	displayName = "MXLR HG",
	displayType = DISPLAYTYPE,
	description = "A standard handguard for the Marlin MXLR rifle.",
	weight = 0.2,
	value = 3650,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rfb_hg_std"] = {
	fullName = "RFB handguard",
	displayName = "RFB",
	displayType = DISPLAYTYPE,
	description = "A standard-issue handguard for the RFB rifle, manufactured by Kel-Tec.",
	weight = 0.2,
	value = 7065,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rfb.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rpd_hg"] = {
	fullName = "RPD wooden handguard",
	displayName = "RPD wood",
	displayType = DISPLAYTYPE,
	description = "A standard-issue wooden handguard for the RPD machine gun. Manufactured by V.A. Degtyarev Plant.",
	weight = 0.2,
	value = 1285,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rpd.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rpk16_hg_std"] = {
	fullName = "RPK-16 handguard",
	displayName = "RPK-16",
	displayType = DISPLAYTYPE,
	description = "A regular handguard for the RPK-16 LMG. Manufactured by Izhmash.",
	weight = 0.2,
	value = 4345,
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

EFGM.ITEMS["arc9_att_eft_sa58_hg_belg"] = {
	fullName = "SA-58/FAL Belgian Style handguard",
	displayName = "FAL BEL",
	displayType = DISPLAYTYPE,
	description = "The Belgian variant handguard for FAL rifles manufactured by DS Arms.",
	weight = 0.5,
	value = 3000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_belgian.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_hg_casvfal"] = {
	fullName = "SA-58/FAL Vltor CASV-FAL handguard",
	displayName = "CASV-FAL",
	displayType = DISPLAYTYPE,
	description = "The Vltor CASV-FAL handguard for FAL series rifles equipped with a CASV interface for installation of additional devices and accessories.",
	weight = 0.2,
	value = 29260,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_casv_fal.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_hg_casvfas"] = {
	fullName = "SA-58/FAL Vltor CASV-FAS handguard",
	displayName = "CASV-FAS",
	displayType = DISPLAYTYPE,
	description = "The Vltor CASV-FAS handguard for FAL series rifles, equipped with a CASV interface for installation of additional devices and accessories.",
	weight = 0.2,
	value = 20065,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_casv_fas.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_hg_fal"] = {
	fullName = "FAL original handguard",
	displayName = "FAL",
	displayType = DISPLAYTYPE,
	description = "The original Austrian handguard for FAL series rifles manufactured by Fabrique Nationale Herstal.",
	weight = 0.6,
	value = 2395,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_hg_quad"] = {
	fullName = "SA-58 quad rail handguard",
	displayName = "SA58 4Rail",
	displayType = DISPLAYTYPE,
	description = "A quad rail handguard for SA-58 rifles, manufactured by DS Arms. Equipped with 4 mounts for installation of additional devices and accessories.",
	weight = 0.5,
	value = 8640,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_quad.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_hg_quadfull"] = {
	fullName = "SA-58 quad rail full length handguard",
	displayName = "SA58 4Rail full",
	displayType = DISPLAYTYPE,
	description = "The DS Arms full length quad rail handguard for SA-58 rifles. Equipped with 4 mounts for installation of additional devices and accessories.",
	weight = 0.6,
	value = 9525,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_quad_full.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_hg_sportkm"] = {
	fullName = "SA-58/FAL AIM Sports Universal KeyMod handguard",
	displayName = "SA58 KeyMod",
	displayType = DISPLAYTYPE,
	description = "The AIM Sports universal KeyMod handguard for FAL series rifles equipped with a KeyMod interface for installation of additional devices and accessories.",
	weight = 0.2,
	value = 4840,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_aim.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_hg_sportmlok"] = {
	fullName = "SA-58/FAL AIM Sports Universal M-LOK handguard",
	displayName = "SA58 M-LOK",
	displayType = DISPLAYTYPE,
	description = "The AIM Sports universal M-LOK handguard for FAL series rifles equipped with an M-LOK interface for installation of additional devices and accessories.",
	weight = 0.3,
	value = 5485,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_aim_mlok.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sag545_hg_std"] = {
	fullName = "AK-545 SAG Mk.3 handguard",
	displayName = "AK-545 HG",
	displayType = DISPLAYTYPE,
	description = "The Sureshot Armament Group Mk.3 handguard for AK-545, equipped with an M-LOK interface for the installation of additional devices and accessories and a picatinny rail on top for sights and tactical equipment mounting.",
	weight = 0.6,
	value = 17220,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak545.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_saiga12_handguard_bravo18"] = {
	fullName = "SOK-12 Bravo-18 aluminium handguard",
	displayName = "Bravo-18",
	displayType = DISPLAYTYPE,
	description = "Bravo-18 is a lightweight aircraft grade aluminum handguard, designed for installation on Saiga carbines.",
	weight = 0.4,
	value = 13205,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sok12_bravo.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_saiga12_handguard_custom340"] = {
	fullName = "SOK-12 Custom Guns Type-340 handguard",
	displayName = "Type-340",
	displayType = DISPLAYTYPE,
	description = "Type-340 is a lightweight aircraft grade aluminium handguard, designed for installation on Saiga carbines. Manufactured by Custom Guns.",
	weight = 0.2,
	value = 18170,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sok12_type.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_saiga12_handguard_std"] = {
	fullName = "SOK-12 polymer handguard",
	displayName = "Sb.7-1",
	displayType = DISPLAYTYPE,
	description = "BSb.7-1 is a standard polymer handguard with a sling swivel, installs on SOK-12 and SOK-12S.",
	weight = 0.2,
	value = 1460,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sok12.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_saiga12_handguard_titan"] = {
	fullName = "SOK-12 Chaos Titan Quad Rail handguard",
	displayName = "Titan Quad",
	displayType = DISPLAYTYPE,
	description = "A lightweight handguard from the Titan Quad Rail System for Saiga shotguns. Manufactured by Chaos.",
	weight = 0.4,
	value = 11000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sok12_quad.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_saiga12_handguard_utg_pro_long"] = {
	fullName = "SOK-12 Leapers UTG PRO MTU002 Long Top aluminum handguard",
	displayName = "MTU002 L",
	displayType = DISPLAYTYPE,
	description = "The UTG PRO MTU002 Long Top Tactical Quad Rail is a lightweight aircraft grade aluminum handguard with a sling swivel, designed for installation on Saiga carbines. Manufactured by Leapers Inc.",
	weight = 0.4,
	value = 11780,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sok12_mtu_long.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_saiga12_handguard_utg_pro_short"] = {
	fullName = "SOK-12 Leapers UTG PRO MTU002 Short Top aluminum handguard",
	displayName = "MTU002 S",
	displayType = DISPLAYTYPE,
	description = "The UTG PRO MTU002 Tactical Quad Rail Short Top is a lightweight aircraft grade aluminum handguard with sling swivel, designed for installation on Saiga carbines. Manufactured by Leapers Inc.",
	weight = 0.4,
	value = 8675,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sok12_mtu_short.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sako_hg_11"] = {
	fullName = "Sako TRG M10 11 inch handguard assembly",
	displayName = 'M10 11"',
	displayType = DISPLAYTYPE,
	description = "An 11 inch long handguard assembly for the TRG M10 sniper rifle, equipped with a Finnish interface for mounting additional equipment. Manufactured by Sako.",
	weight = 0.6,
	value = 26180,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("trg_11.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sako_hg_15"] = {
	fullName = "Sako TRG M10 15 inch handguard assembly",
	displayName = 'M10 15"',
	displayType = DISPLAYTYPE,
	description = "A 15 inch long handguard assembly for the TRG M10 sniper rifle, equipped with a Finnish interface for mounting additional equipment. Manufactured by Sako.  ",
	weight = 0.8,
	value = 20720,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("trg_15.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sako_hg_15mlok"] = {
	fullName = "Sako TRG M10 M-LOK 15 inch handguard assembly",
	displayName = 'M10 15" M-LOK',
	displayType = DISPLAYTYPE,
	description = "A 15 inch long handguard assembly for the TRG M10 sniper rifle, equipped with an M-LOK interface for mounting additional equipment. Manufactured by Sako.",
	weight = 0.7,
	value = 29490,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("trg_mlok.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_rail_casv"] = {
	fullName = "FN SCAR Vltor CASV-SCAR handguard",
	displayName = "CASV-SCAR",
	displayType = DISPLAYTYPE,
	description = "A handguard for SCAR series rifles, manufactured by Vltor.",
	weight = 0.3,
	value = 8515,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_casv.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_rail_casvf"] = {
	fullName = "FN SCAR Vltor CASV-SCAR handguard FDE",
	displayName = "CASV-SCAR F",
	displayType = DISPLAYTYPE,
	description = "A handguard for SCAR series rifles, manufactured by Vltor. flat meow eatth.",
	weight = 0.3,
	value = 8515,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_casv_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_hg_fab"] = {
	fullName = "SKS FAB Defense UAS gas tube cover",
	displayName = "SKS UAS",
	displayType = DISPLAYTYPE,
	description = "A cover for the SKS carbine gas tube. Manufactured by FAB Defense.",
	weight = 0.2,
	value = 1465,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sks_uas.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_hg_mc"] = {
	fullName = "SKS ATI Monte Carlo gas tube cover",
	displayName = "SKS MC",
	displayType = DISPLAYTYPE,
	description = "A cover for the SKS carbine gas tube. Manufactured by ATI Outdoors.",
	weight = 0.1,
	value = 1665,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sks_monte.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_hg_op"] = {
	fullName = "OP-SKS gas tube cover",
	displayName = "OP-SKS cover",
	displayType = DISPLAYTYPE,
	description = "A standard wooden gas tube cover for the OP-SKS carbine, manufactured by Molot Arms.",
	weight = 0.1,
	value = 880,
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

EFGM.ITEMS["arc9_att_eft_sks_hg_std"] = {
	fullName = "SKS gas tube cover",
	displayName = "SKS cover",
	displayType = DISPLAYTYPE,
	description = "A standard wooden gas tube cover for the SKS carbine, manufactured by Tula Arms.",
	weight = 0.1,
	value = 880,
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

EFGM.ITEMS["arc9_att_eft_sks_hg_tapco"] = {
	fullName = "SKS TAPCO railed gas tube cover",
	displayName = "SKS TAPCO",
	displayType = DISPLAYTYPE,
	description = "A railed gas tube cover/handguard for the SKS carbine. Manufactured by TAPCO.",
	weight = 0.2,
	value = 1015,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sks_tapco.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_spear_hg_std"] = {
	fullName = "MCX SPEAR 11 inch M-LOK handguard",
	displayName = 'SPEAR 11"',
	displayType = DISPLAYTYPE,
	description = "An 11 inch handguard for the MCX SPEAR assault rifle equipped with an M-LOK interface for installation of additional devices and accessories. Manufactured by SIG Sauer.",
	weight = 0.4,
	value = 15550,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("spear.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sr2m_hg_blk"] = {
	fullName = "SR-2M polymer handguard (Black)",
	displayName = "SR-2M (B)",
	displayType = DISPLAYTYPE,
	description = 'A standard-issue SR-2M "Veresk" polymer handguard for burn protection. Manufactured by TsNIItochmash.',
	weight = 0.1,
	value = 1400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr2m_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sr2m_hg_std"] = {
	fullName = "SR-2M polymer handguard",
	displayName = "SR-2M",
	displayType = DISPLAYTYPE,
	description = 'A standard-issue SR-2M "Veresk" polymer handguard for burn protection. Manufactured by TsNIItochmash.',
	weight = 0.1,
	value = 1400,
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

EFGM.ITEMS["arc9_att_eft_sr3_hg_black"] = {
	fullName = "SR-3M polymer handguard (Black)",
	displayName = "SR-3M",
	displayType = DISPLAYTYPE,
	description = "A standard-issue polymer handguard for the SR-3M assault rifle.",
	weight = 0.1,
	value = 1770,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr3m_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sr3_hg_rail"] = {
	fullName = "SR-3M railed polymer handguard (Black)",
	displayName = "SR-3M rail",
	displayType = DISPLAYTYPE,
	description = "A polymer handguard with Zenit Picatinny rails for the SR-3M assault rifle.",
	weight = 0.1,
	value = 2345,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr3m_railed.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sr3_hg_std"] = {
	fullName = "SR-3M polymer handguard (Plum)",
	displayName = "SR-3M",
	displayType = DISPLAYTYPE,
	description = 'A standard-issue polymer handguard for the SR-3M assault rifle. Made out of plum-colored polymer, earning the nickname "Sliva" (Plum).',
	weight = 0.1,
	value = 1770,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr3m.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sv98_cnc_hg"] = {
	fullName = "SV-98 CNC Guns OV-SV98 KeyMod handguard",
	displayName = "OV-SV98",
	displayType = DISPLAYTYPE,
	description = "CNC Guns Keymod System aircraft-grade aluminum handguard for the OV-SV98 stock with KeyMod slots for rail installation.",
	weight = 0.3,
	value = 10085,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sv98_cnc.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_t5000_hg_std"] = {
	fullName = "ORSIS T-5000M handguard",
	displayName = "T-5000 hg",
	displayType = DISPLAYTYPE,
	description = "A standard handguard for the T-5000M bolt-action sniper rifle, manufactured by ORSIS.",
	weight = 0.5,
	value = 5640,
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

EFGM.ITEMS["arc9_att_eft_uzi_hg_fg"] = {
	fullName = "UZI handguard with foregrip",
	displayName = "UZI foregrip",
	displayType = DISPLAYTYPE,
	description = "A handguard with a vertical foregrip and side rail slots for the UZI submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.2,
	value = 5460,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_fg.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_hg_k"] = {
	fullName = "UZI K-Grip handguard",
	displayName = "UZI K-Grip",
	displayType = DISPLAYTYPE,
	description = "A handguard with a foregrip for the UZI submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.2,
	value = 5120,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_k.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_hg_std"] = {
	fullName = "UZI polymer handguard",
	displayName = "UZI polymer",
	displayType = DISPLAYTYPE,
	description = "A standard-issue polymer handguard for the UZI submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.1,
	value = 1740,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzipro_hg_mlok"] = {
	fullName = "UZI PRO A3 Tactical M-LOK handguard",
	displayName = "UZI PRO M-LOK",
	displayType = DISPLAYTYPE,
	description = "A handguard for the IWI UZI PRO Pistol, which functions as a foregrip and trigger guard. Equipped with M-LOK interface for attaching additional equipment. Manufactured by A3 Tactical.",
	weight = 0.1,
	value = 6845,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzipro_mlok.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_val_hg_black"] = {
	fullName = "VSS/VAL polymer handguard (Black)",
	displayName = "VSS/VAL",
	displayType = DISPLAYTYPE,
	description = "A polymer handguard for the AS Val and VSS Vintorez. Manufactured by TsNIITochMash.",
	weight = 0.05,
	value = 1225,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("val_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_val_hg_std"] = {
	fullName = "VSS/VAL polymer handguard (Plum)",
	displayName = "VSS/VAL",
	displayType = DISPLAYTYPE,
	description = 'A polymer handguard for the AS Val and VSS Vintorez. Manufactured by TsNIITochMash. Made out of plum-colored polymer, earning the nickname "Sliva" (Plum).',
	weight = 0.05,
	value = 1225,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("val.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_valmod4_hgg"] = {
	fullName = "AS VAL NB MOD.4 Kit handguard",
	displayName = "MOD.4 Kit",
	displayType = DISPLAYTYPE,
	description = "A custom handguard designed for the AS VAL MOD.4. Features rails for mounting optics, tactical accessories, and foregrips.",
	weight = 0.2,
	value = 9815,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("val_mod4.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vsk_hg_9a"] = {
	fullName = "9A-91 handguard",
	displayName = "9A-91",
	displayType = DISPLAYTYPE,
	description = "A standard-issue handguard for the 9A-91 assault rifle. Manufactured by Tula KPB Instrument Design Bureau.",
	weight = 0.2,
	value = 1000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("9a91.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vsk_hg_vsk"] = {
	fullName = "VSK-94 handguard",
	displayName = "VSK-94",
	displayType = DISPLAYTYPE,
	description = "A standard-issue handguard for the VSK-94 marksman rifle. Manufactured by Tula KPB Instrument Design Bureau.",
	weight = 0.2,
	value = 1620,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vsk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_hg_a1"] = {
	fullName = "CZ Scorpion EVO 3 A1 polymer handguard",
	displayName = "EVO 3 HG",
	displayType = DISPLAYTYPE,
	description = "Standard railed polymer handguard for the CZ Scorpion EVO 3 A1 9x19 submachine gun.",
	weight = 0.3,
	value = 7320,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_hg_ang"] = {
	fullName = "HB Industries CZ Scorpion EVO 3 A1 angled M-LOK handguard",
	displayName = "HB ANGLED",
	displayType = DISPLAYTYPE,
	description = "A mid-length angled handguard with M-LOK capability for the CZ Scorpion EVO 3 manufactured by HB Industries.",
	weight = 0.3,
	value = 8200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_mlok.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_hg_carb"] = {
	fullName = "CZ Scorpion EVO 3 A1 carbine handguard",
	displayName = "Carbine HG",
	displayType = DISPLAYTYPE,
	description = "Extended carbine M-LOK handguard for the CZ Scorpion EVO 3 A1 9x19 submachine gun.",
	weight = 0.4,
	value = 9225,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_carbine.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_hg_ext"] = {
	fullName = "CZ Scorpion EVO 3 A1 extended tactical handguard",
	displayName = "EVO EXT",
	displayType = DISPLAYTYPE,
	description = "An extended railed tactical handguard for the CZ Scorpion EVO 3 A1 9x19 submachine gun.",
	weight = 0.5,
	value = 13250,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_tac.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_hg_hbmid"] = {
	fullName = "HB Industries CZ Scorpion EVO 3 A1 mid-length M-LOK handguard",
	displayName = "HB MID",
	displayType = DISPLAYTYPE,
	description = "A mid-length handguard with M-LOK capability for the CZ Scorpion EVO 3 manufactured by HB Industries.",
	weight = 0.4,
	value = 11545,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_mid.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_hg_micro"] = {
	fullName = "HB Industries CZ Scorpion EVO 3 A1 micro M-LOK handguard",
	displayName = "HB MICRO",
	displayType = DISPLAYTYPE,
	description = "A PDW length micro handguard with M-LOK capability for the CZ Scorpion EVO 3 manufactured by HB Industries.",
	weight = 0.3,
	value = 6985,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_micro.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_hg_mid"] = {
	fullName = "CZ Scorpion EVO 3 A1 tactical mid-length railed handguard",
	displayName = "EVO MID",
	displayType = DISPLAYTYPE,
	description = "A mid-length railed tactical handguard for the CZ Scorpion EVO 3 A1 9x19 submachine gun.",
	weight = 0.4,
	value = 12555,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_tac_mid.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_hg_pdw"] = {
	fullName = "CZ Scorpion EVO 3 A1 railed PDW handguard",
	displayName = "PDW HG",
	displayType = DISPLAYTYPE,
	description = "A PDW length railed handguard for the CZ Scorpion EVO 3 A1 9x19 submachine gun.",
	weight = 0.3,
	value = 6100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_pdw.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_svd_std"] = {
	fullName = "Wooden SVD handguard",
	displayName = "SVD",
	displayType = DISPLAYTYPE,
	description = "Classic SVD handguard manufactured by Izhmash.",
	weight = 0.4,
	value = 1585,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svd_wood.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_hg_urx2"] = {
	fullName = "AR-10 KAC URX 2 12.5 inch handguard",
	displayName = 'URX2 12.5"',
	displayType = DISPLAYTYPE,
	description = "A 12.5 inch handguard for AR-10 system rifles. Manufactured by Knight's Armament Company.",
	weight = 0.4,
	value = 13725,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_kac.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_hg_urx2_fde"] = {
	fullName = "AR-10 KAC URX 2 12.5 inch handguard (Taupe)",
	displayName = 'URX2 12.5"',
	displayType = DISPLAYTYPE,
	description = "A 12.5 inch handguard for AR-10 system rifles. Manufactured by Knight's Armament Company. Coated in cerakote Taupe color.",
	weight = 0.4,
	value = 13725,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_kac_taupe.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ak12_hg_akv"] = {
	fullName = "AK-12 L.A.C. Akvilon-15 handguard",
	displayName = "Akvilon-15",
	displayType = DISPLAYTYPE,
	description = "A free-float handguard for the AK-12 assault rifle. Equipped with an M-LOK interface for installation of additional tactical devices and accessories. Manufactured by L.A.C.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/682315b0f8d8f8681e0744b0.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ak12_hg_n4"] = {
	fullName = "AK-12 Tactical Ideas N-4 handguard",
	displayName = "N-4",
	displayType = DISPLAYTYPE,
	description = "A free-float handguard for the AK-12 assault rifle. Equipped with an M-LOK interface for installation of additional tactical devices and accessories. Manufactured by Tactical Ideas.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/682315bdf8d8f8681e0744b5.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ak12_hg_sport"] = {
	fullName = "AK-12 Zenit Sport-12 handguard",
	displayName = "Sport-12",
	displayType = DISPLAYTYPE,
	description = "A handguard for the AK-12 assault rifle. Manufactured by Zenit.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/682315c58639961c6001dbe7.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ak12_hg_sport_top"] = {
	fullName = "AK-12 Zenit Sport-12 handguard cover",
	displayName = "Sport-12 cover",
	displayType = DISPLAYTYPE,
	description = "A handguard cover from the Sport-12 kit for the AK-12 assault rifle. Manufactured by Zenit.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/682315d08639961c6001dbec.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_hg_urx31"] = {
	fullName = "AR-10 KAC URX 3.1 13.5 inch handguard",
	displayName = 'URX3.1 13.5"',
	displayType = DISPLAYTYPE,
	description = "The URX 3.1 handguard for AR-10 equipped with a unique interface for installation of additional devices and accessories. Manufactured by Knight's Armament Company.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/6932aed9be542622170428b0.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_hg_urx31fde"] = {
	fullName = "AR-10 KAC URX 3.1 13.5 inch handguard (Taupe)",
	displayName = 'URX3.1 13.5"',
	displayType = DISPLAYTYPE,
	description = "The URX 3.1 handguard for AR-10 equipped with a unique interface for installation of additional devices and accessories. Manufactured by Knight's Armament Company. Coated in cerakote Taupe color.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/6936bd6f4737190b66053ba6.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_lvoac_f"] = {
	fullName = "AR-15 War Sport LVOA-C handguard (FDE)",
	displayName = "LVOA-C FDE",
	displayType = DISPLAYTYPE,
	description = "Lightweight handguard War Sport LVOA-C for use with sport rifles based on AR-15. Flat dark earth.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_ar15_attachments/hg/ar15_war_sport_lvoac_handguard_f.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_lvoas_f"] = {
	fullName = "AR-15 War Sport LVOA-S handguard (FDE)",
	displayName = "LVOA-S FDE",
	displayType = DISPLAYTYPE,
	description = "Lightweight handguard War Sport LVOA-S (SBR) for use with sport rifles based on AR-15. Flat dark earth.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_ar15_attachments/hg/ar15_war_sport_lvoas_handguard_f.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mdr_hg_alx16"] = {
	fullName = "MDR BLK LBL ALX 16 handguard (Black)",
	displayName = "ALX 16",
	displayType = DISPLAYTYPE,
	description = "A 16 inch handguard for MDR assault rifles. Equipped with an M-LOK interface for installation of additional tactical devices and accessories. Manufactured by BLK LBL. Black version.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/6810aa1474bf67765c02e91a.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mdr_hg_alx16_bipod"] = {
	fullName = "MDR BLK LBL ALX Bipod 16 handguard (Black)",
	displayName = "ALX B 16",
	displayType = DISPLAYTYPE,
	description = "A 16 inch handguard for MDR assault rifles with a bipod slot. Equipped with an M-LOK interface for installation of additional tactical devices and accessories. Manufactured by BLK LBL. Black version.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/680f5953b93ecb502102816a.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mdr_hg_alx16_bipod_fde"] = {
	fullName = "MDR BLK LBL ALX Bipod 16 handguard (FDE)",
	displayName = "ALX B 16",
	displayType = DISPLAYTYPE,
	description = "A 16 inch handguard for MDR assault rifles with a bipod slot. Equipped with an M-LOK interface for installation of additional tactical devices and accessories. Manufactured by BLK LBL. Flat Dark Earth version.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/680f55b71e275ac1230f2dc6.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mdr_hg_alx16_fde"] = {
	fullName = "MDR BLK LBL ALX 16 handguard (FDE)",
	displayName = "ALX 16",
	displayType = DISPLAYTYPE,
	description = "A 16 inch handguard for MDR assault rifles. Equipped with an M-LOK interface for installation of additional tactical devices and accessories. Manufactured by BLK LBL. Flat Dark Earth version.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/6810a469f6c2827d680d1f4c.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mdr_hg_alx20"] = {
	fullName = "MDR BLK LBL ALX 20 handguard (Black)",
	displayName = "ALX 20",
	displayType = DISPLAYTYPE,
	description = "A 20 inch handguard for MDR assault rifles. Equipped with an M-LOK interface for installation of additional tactical devices and accessories. Manufactured by BLK LBL. Black version.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/68109a1f327033533604170a.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mdr_hg_alx20_bipod"] = {
	fullName = "MDR BLK LBL ALX Bipod 20 handguard (Black)",
	displayName = "ALX B 20",
	displayType = DISPLAYTYPE,
	description = "A 20 inch handguard for MDR assault rifles with a bipod slot. Equipped with an M-LOK interface for installation of additional tactical devices and accessories. Manufactured by BLK LBL. Black version.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/680f55788692125dc00a3354.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mdr_hg_alx20_bipod_fde"] = {
	fullName = "MDR BLK LBL ALX Bipod 20 handguard (FDE)",
	displayName = "ALX B 20",
	displayType = DISPLAYTYPE,
	description = "A 20 inch handguard for MDR assault rifles with a bipod slot. Equipped with an M-LOK interface for installation of additional tactical devices and accessories. Manufactured by BLK LBL. Flat Dark Earth version.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/680f47b20407db2e550c4311.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mdr_hg_alx20_fde"] = {
	fullName = "MDR BLK LBL ALX 20 handguard (FDE)",
	displayName = "ALX 20",
	displayType = DISPLAYTYPE,
	description = "A 20 inch handguard for MDR assault rifles. Equipped with an M-LOK interface for installation of additional tactical devices and accessories. Manufactured by BLK LBL. Flat Dark Earth version.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/681096b551511048940afed9.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mdr_hg_micron"] = {
	fullName = "MDR Micron M-LOK handguard (Black)",
	displayName = "Micron",
	displayType = DISPLAYTYPE,
	description = "A PDW handguard with an integrated foregrip for MDR assault rifles. Equipped with an M-LOK interface for installation of additional tactical devices and accessories. Manufactured by Desert Tech. Black version.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/6810d3d8dc7bbeec2f0081c9.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mdr_hg_micron_fde"] = {
	fullName = "MDR Micron M-LOK handguard (FDE)",
	displayName = "Micron",
	displayType = DISPLAYTYPE,
	description = "A PDW handguard with an integrated foregrip for MDR assault rifles. Equipped with an M-LOK interface for installation of additional tactical devices and accessories. Manufactured by Desert Tech. Flat Dark Earth version.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/6810ca87002deee76b04970b.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rpd_hg_ds"] = {
	fullName = "RPD DS Arms Railed Handguard",
	displayName = "DSA RPD",
	displayType = DISPLAYTYPE,
	description = "A polymer railed handguard for the RPD machine gun. Manufactured by DS Arms.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/68305fdc84a12bb973021fc0.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_saiga12_handguard_customrl"] = {
	fullName = "Saiga-12 Custom Guns Hedon S handguard (Redline)",
	displayName = "Hedon S",
	displayType = DISPLAYTYPE,
	description = "A lightweight aluminum handguard by Custom Guns, designed for installation on Saiga-12 shotguns. Equipped with a KeyMod interface for mounting rails and additional equipment. A special version made for the Arena champion JP's shotgun.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/hedons.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sr3_hg_karden"] = {
	fullName = "SR-3M Karden rail handguard",
	displayName = "SR-3MK",
	displayType = DISPLAYTYPE,
	description = "A custom handguard for the SR-3M assault rifle made on order from one of the well-known local operatives. Made out of aircraft-grade aluminum alloy and fitted with Zenit rails for installation of additional tactical equipment.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/688c86420e99e554a90c0fd6.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vsk_hg_9a_tts"] = {
	fullName = "9A-91 TTS System handguard",
	displayName = "TTS 9A",
	displayType = DISPLAYTYPE,
	description = "A 9A-91 handguard with a bottom rail for installation of foregrips. Manufactured by TTS System.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/688b79b5eb234c75d900e050.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}
