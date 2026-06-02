local DISPLAYTYPE = "Mount"
local ATTICONPATH = "items/attachments/mounts/"

local function AttMaterial(imgPath)
	if SERVER then return end
	return Material(ATTICONPATH .. imgPath, "smooth")
end

EFGM.ITEMS["arc9_att_eft_57_rs_rmr"] = {
	fullName = "FN Five-seveN MK2 RMR mount",
	displayName = "5-7 RMR",
	displayType = DISPLAYTYPE,
	description = "The Fabrique Nationale Herstal sight mount for installation of Trijicon RMR series reflex sights, also compatible with Holosun HS507C. (note from darsu: it does not exist in tarkov, idfk why they writed about it)",
	weight = 0.1,
	value = 3000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rs_rmr.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aa12_mount_utg"] = {
	fullName = "Leapers UTG Universal Shotgun Barrel Mount",
	displayName = "UTG",
	displayType = DISPLAYTYPE,
	description = "TThe UTG Universal Shotgun Barrel Mount is designed for mounting on tubular magazines and barrels with a diameter of 20-25 millimeters. Features 3 rails for attaching additional equipment. Manufactured by Leapers Inc.",
	weight = 0.1,
	value = 3200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("leapers_sg.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aek_lightmount"] = {
	fullName = "AEK-971 tactical light mount",
	displayName = "AEK-TAC",
	displayType = DISPLAYTYPE,
	description = "Tactical light mount system designed to attach to the AEK-971 tactical front-end assembly gas tube.",
	weight = 0.05,
	value = 5405,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aek_light.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ak12_rs_base"] = {
	fullName = "AK-12 rear sight base",
	displayName = "AK-12 RSB",
	displayType = DISPLAYTYPE,
	description = "A detachable base for rear sights, installed on AK-12 automatic rifles. Manufactured by Izhmash.",
	weight = 0.05,
	value = 810,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak12_sight.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_akn"] = {
	fullName = "N Mount",
	displayName = "-N",
	displayType = DISPLAYTYPE,
	description = "The key design difference from the standard AK is a side mount for optical and night scopes.",
	weight = 0.1,
	value = 2000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("nmount.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aksu_mount_b18"] = {
	fullName = "AKS-74U Zenit B-18 Mount",
	displayName = "B-18",
	displayType = DISPLAYTYPE,
	description = "The B-18 rail mount is installed on the standard rear sight of AKS-74U and forms a sight support hovering over the rifle dust cover. Manufactured by Zenit.",
	weight = 0.1,
	value = 4000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aks74u_b18.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aug_grip_mount"] = {
	fullName = "Steyr AUG Corvus Defensio KeyMod Forward Accessory Rail",
	displayName = "AUG Corvus",
	displayType = DISPLAYTYPE,
	description = "A KeyMod interface mount that replaces the standard front grip and allows installation of various accessories, designed for the AUG assault rifle. Manufactured by Corvus Defensio.",
	weight = 0.05,
	value = 12100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("augcorvus.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aug_upper_rail_high"] = {
	fullName = "Steyr AUG A3 M1 high sight mount",
	displayName = "A3 M1 High",
	displayType = DISPLAYTYPE,
	description = "A high sight mount for AUG A3 M1. Manufactured by Steyr-Daimler-Puch.",
	weight = 0.1,
	value = 7450,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("a3m1_high.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aug_upper_rail_low"] = {
	fullName = "Steyr AUG A3 M1 low sight mount",
	displayName = "A3 M1",
	displayType = DISPLAYTYPE,
	description = "A low-profile sight mount for AUG A3 M1. Manufactured by Steyr-Daimler-Puch.",
	weight = 0.1,
	value = 7000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("a3m1.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aug_upper_rail_vltor"] = {
	fullName = "Steyr AUG A3 Corvus Defensio Receiver Rail MOI 30 Slots",
	displayName = "A3 Corvus",
	displayType = DISPLAYTYPE,
	description = "A low-profile sight mount for AUG A3. Manufactured by Corvus Defensio.",
	weight = 0.1,
	value = 6040,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("a3cd.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aug_upper_vltor"] = {
	fullName = "Steyr AUG A3 Vltor 5.56x45 receiver",
	displayName = "Vltor A3",
	displayType = DISPLAYTYPE,
	description = "A low-profile receiver with built-in tactical equipment rail for AUG A3. Manufactured by Vltor.",
	weight = 0.7,
	value = 24000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("auga3_vltor.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_axmc_railbipod"] = {
	fullName = "AI AXMC KeySlot Harris bipod mount",
	displayName = "AXMC Harris",
	displayType = DISPLAYTYPE,
	description = "A KeySlot interface adapter that allows installation of Harris bipods to the AXMC precision rifle. Manufactured by Accuracy International.",
	weight = 0.05,
	value = 1640,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("axmc_bipod.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_axmc_railmid"] = {
	fullName = "AI AXMC Adapter Kit medium length rail",
	displayName = "AXMC med",
	displayType = DISPLAYTYPE,
	description = "A medium length rail for installation on the KeySlot interface on the AXMC sniper rifle, manufactured by Accuracy International.",
	weight = 0.1,
	value = 2295,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("axmc_rail_med.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_axmc_railmid_b"] = {
	fullName = "AI AXMC Adapter Kit medium length rail (Black)",
	displayName = "AXMC med B",
	displayType = DISPLAYTYPE,
	description = "A medium length rail for installation on the KeySlot interface on the AXMC sniper rifle, manufactured by Accuracy International.",
	weight = 0.1,
	value = 2295,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("axmc_rail_med_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_axmc_railshort"] = {
	fullName = "AI AXMC Adapter Kit short length rail",
	displayName = "AXMC short",
	displayType = DISPLAYTYPE,
	description = "A short rail for installation on the KeySlot interface on the AXMC sniper rifle, manufactured by Accuracy International.",
	weight = 0.1,
	value = 2100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("axmc_rail_short.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_axmc_railshort_b"] = {
	fullName = "AI AXMC Adapter Kit short length rail (Black)",
	displayName = "AXMC short B",
	displayType = DISPLAYTYPE,
	description = "A short rail for installation on the KeySlot interface on the AXMC sniper rifle, manufactured by Accuracy International.",
	weight = 0.1,
	value = 2100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("axmc_rail_short_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_axmc_toprail"] = {
	fullName = "AI AXMC AT X Top Rail",
	displayName = "AXMC top",
	displayType = DISPLAYTYPE,
	description = "A top handguard rail for installation on the KeySlot interface for the AXMC sniper rifle, manufactured by Accuracy International.",
	weight = 0.1,
	value = 1820,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("axmc_top.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_etmi019"] = {
	fullName = "ETMI-019 shotgun rail mount",
	displayName = "ETMI-019",
	displayType = DISPLAYTYPE,
	description = "ETMI-019 is a universal adapter from 7mm vent plank to Weaver/Picatinny type rails.",
	weight = 0.05,
	value = 2100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("etmi_019.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_hensoldt_rail"] = {
	fullName = "Hensoldt RIS top rail",
	displayName = "HKV RIS",
	displayType = DISPLAYTYPE,
	description = "A sight mount manufactured by Hensoldt. Mounted on the HKV sighting system.",
	weight = 0.05,
	value = 1835,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hensoldt_ris.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_hg_mount_bottom"] = {
	fullName = "HK G36 bottom handguard rail",
	displayName = "G36 bott.",
	displayType = DISPLAYTYPE,
	description = "A bottom rail for the G36 handguards, allows installation of various tactical foregrips.",
	weight = 0.1,
	value = 2110,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36_bottom.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_hg_mount_side"] = {
	fullName = "HK G36 side handguard rail",
	displayName = "G36 side",
	displayType = DISPLAYTYPE,
	description = "A side rail for the G36 handguards, allows installation of additional tactical devices.",
	weight = 0.05,
	value = 1400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36_side.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_top_flip"] = {
	fullName = "HK G36 optic rail with flip-up sights",
	displayName = "G36 flip-up",
	displayType = DISPLAYTYPE,
	description = "An HK G36 optic rail that features flip-up front and rear sights, giving you more space to mount scopes and tactical attachments.",
	weight = 0.4,
	value = 3940,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36_optic_flip.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_top_std"] = {
	fullName = "HK G36 sight mount",
	displayName = "G36",
	displayType = DISPLAYTYPE,
	description = "A mount for sights and tactical attachments, installs on HK G36.",
	weight = 0.3,
	value = 3750,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36_sight.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ak_trax_bridge"] = {
	fullName = "Strike Industries TRAX bridge rail",
	displayName = "TRAX Bridge",
	displayType = DISPLAYTYPE,
	description = "Bridge guide for keymod system allows you to install additional equipment on the handguards with the standard keymod interface.",
	weight = 0.1,
	value = 1635,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("trax_bridge.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_gridlok_ext_blk"] = {
	fullName = "AR-15 Strike Industries GRIDLOK Extension (Black)",
	displayName = "GRIDLOK Ext.",
	displayType = DISPLAYTYPE,
	description = "An extension for the GRIDLOK handguard. Equipped with a folding front sight, Picatinny rail, and an M-LOK interface. Manufactured by Strike Industries. Black version.",
	weight = 0.1,
	value = 2565,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_gridlock_ext.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_gridlok_ext_red"] = {
	fullName = "AR-15 Strike Industries GRIDLOK Extension (Red)",
	displayName = "GRIDLOK Ext.",
	displayType = DISPLAYTYPE,
	description = "An extension for the GRIDLOK handguard. Equipped with a folding front sight, Picatinny rail, and an M-LOK interface. Manufactured by Strike Industries. Red version.",
	weight = 0.1,
	value = 2565,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_gridlock_ext_red.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_ar15_gridlok_ext_yellow"] = {
	fullName = "AR-15 Strike Industries GRIDLOK Extension (Yellow)",
	displayName = "GRIDLOK Ext.",
	displayType = DISPLAYTYPE,
	description = "An extension for the GRIDLOK handguard. Equipped with a folding front sight, Picatinny rail, and an M-LOK interface. Manufactured by Strike Industries. Yellow version.",
	weight = 0.1,
	value = 2565,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_gridlock_ext_yellow.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_hg_svds_mod2"] = {
	fullName = "SVD modernization kit top rail",
	displayName = "SVD mod.",
	displayType = DISPLAYTYPE,
	description = "A prototype top rail designed for the modernized SVD sniper rifle kit, manufactured by Izhmash.",
	weight = 0.2,
	value = 10035,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svd_mod2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_side_arms"] = {
	fullName = "M14 A.R.M.S. #18 scope mount",
	displayName = "A.R.M.S.",
	displayType = DISPLAYTYPE,
	description = "The A.R.M.S. Inc. scope mount for M14 rifles. Made of 8620 case hardened steel. Equipped with a Weaver rail for installation of various scopes.",
	weight = 0.2,
	value = 3210,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m14_arms.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_side_dcsb"] = {
	fullName = "M14 SAGE International DCSB mount",
	displayName = "DCSB",
	displayType = DISPLAYTYPE,
	description = "The M14 DCSB (Detachable Cantilevered Sight Base) mount for M14 rifles, manufactured by SAGE International. It has a Weaver-type rail for mounting various different sights. Can only be installed on the EBR chassis.",
	weight = 0.2,
	value = 7900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m14_dcsb.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_side_deluxe"] = {
	fullName = "M14 Leapers UTG 4-Point Locking Deluxe mount",
	displayName = "UTG 4-Point",
	displayType = DISPLAYTYPE,
	description = "The 4-Point Locking Deluxe mount for M14 rifles, manufactured by Leapers Inc. It has Weaver/Picatinny type rails for mounting various scopes and reflex sights.",
	weight = 0.2,
	value = 9810,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m14_deluxe.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_upper_amega"] = {
	fullName = "M14 Amega Mini Scout Mount system",
	displayName = "M14 MSM",
	displayType = DISPLAYTYPE,
	description = "The Mini Scout Mount base for M14 rifles, manufactured by Amega Mounts. Features a top Picatinny rail for mounting various scopes and reflex sights.",
	weight = 0.2,
	value = 7200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m14_msm.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_upper_m8"] = {
	fullName = "M14 UltiMAK M8 Forward Optic mount",
	displayName = "UltiMAK M8",
	displayType = DISPLAYTYPE,
	description = "The M8 optic mount manufactured by UltiMAK. Lightweight, fully machined 1913 Picatinny-style rail accepts intermediate eye relief scopes, red dot, holographic, and reflex optics. Installs in place of the factory handguard.",
	weight = 0.2,
	value = 10880,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m14_m8.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_upper_std"] = {
	fullName = "M1A SOCOM 16 upper part",
	displayName = "SOCOM 16",
	displayType = DISPLAYTYPE,
	description = "The upper part of the SOCOM 16 stock for M1A rifles. It has a Weaver rail for attaching various scopes and reflex sights.",
	weight = 0.1,
	value = 4120,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m14_socom.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_upper_vltor"] = {
	fullName = "M14 Vltor CASV-14 rail system",
	displayName = "Vltor CASV-14",
	displayType = DISPLAYTYPE,
	description = "The CASV-14 Rail System mount manufactured by Vltor. It has a Picatinny-type rail for mounting various optical attachments and accesories, and also a KeyMod mount points on both sides.",
	weight = 0.1,
	value = 10200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m14_casv.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m3s90_mount_std"] = {
	fullName = "Benelli M3 Super 90 upper receiver top rail",
	displayName = "M3 top",
	displayType = DISPLAYTYPE,
	description = "The Benelli M3 top rail allows installation of additional equipment on the Benelli M3 S90.",
	weight = 0.1,
	value = 1520,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m3_top.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m590_mount_tac"] = {
	fullName = "Mossberg 590A1 Tactical rail",
	displayName = "590 Tactical",
	displayType = DISPLAYTYPE,
	description = "A Weaver/Picatinny rail mount for Mossberg 590A1 pump-action shotguns.",
	weight = 0.4,
	value = 5800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("590_tactical.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m60_fs_e6"] = {
	fullName = "M60E6 front sight rail",
	displayName = "M60E6 FS",
	displayType = DISPLAYTYPE,
	description = "A small front sight rail for the M60E6 light machine gun. Manufactured by U.S Ordnance.",
	weight = 0.1,
	value = 700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m60e6_front.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_mount_pro700"] = {
	fullName = "M700 Magpul Pro 700 chassis inline mount",
	displayName = "Pro 700",
	displayType = DISPLAYTYPE,
	description = "A universal mount rail by Magpul for installation of additional tactical devices, can be installed on the Pro 700 chasiss for the Remington M700 sniper rifle.",
	weight = 0.3,
	value = 2690,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700_pro.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_rail_badger"] = {
	fullName = "M700 Badger Ordnance Scope Rail",
	displayName = "M700 SR",
	displayType = DISPLAYTYPE,
	description = "A universal rail for mounting various sights on the Remington Model 700. Manufactured by Badger Ordnance.",
	weight = 0.2,
	value = 2370,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700_sr.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_rail_ext"] = {
	fullName = "M700 extended multi-slot Weaver rail base",
	displayName = "Multi-slot",
	displayType = DISPLAYTYPE,
	description = "A Weaver-type extended multi-slot rail base for the Remington Model 700 bolt-action sniper rifle for installation of various optics.",
	weight = 0.1,
	value = 2650,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700_multi.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_rail_modx"] = {
	fullName = "M700 AB Arms MOD*X rail mount",
	displayName = "MOD*X rail",
	displayType = DISPLAYTYPE,
	description = "The AB Arms MOD*X universal mount for the Remington Model 700 sniper rifle, allows installation of various optics.",
	weight = 0.1,
	value = 4750,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("modxrail.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_rail_modx_blk"] = {
	fullName = "M700 AB Arms MOD*X rail mount",
	displayName = "MOD*X rail",
	displayType = DISPLAYTYPE,
	description = "The AB Arms MOD*X universal mount for the Remington Model 700 sniper rifle, allows installation of various optics.",
	weight = 0.1,
	value = 4750,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("modxrail_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_rail_ring"] = {
	fullName = "M700 30mm integral ring scope mount",
	displayName = "M700 30mm",
	displayType = DISPLAYTYPE,
	description = "A universal 30mm scope base mount for installation on Remington Model 700 rifles.",
	weight = 0.2,
	value = 3570,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700_30mm.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m870_mount_clamp"] = {
	fullName = "M870 Mesa Tactical magazine clamp",
	displayName = "MT Clamp",
	displayType = DISPLAYTYPE,
	description = "A magazine clamp for the Remington Model 870 produced by Mesa Tactical.",
	weight = 0.1,
	value = 4275,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m870_clamp.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m870_mount_utg"] = {
	fullName = "M870 Leapers UTG PRO MTU-028SG rail",
	displayName = "MTU-028SG",
	displayType = DISPLAYTYPE,
	description = "A Weaver rail for the Remington Model 870 shotgun, which is mounted on the top of receiver. Manufactured by Leapers Inc.",
	weight = 0.05,
	value = 1495,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mtu_028.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m870_mount_xs"] = {
	fullName = "M870 XS SHOTRAIL rail with Ghost Ring rear sight",
	displayName = "M870 XS",
	displayType = DISPLAYTYPE,
	description = "A Picatinny rail with a Ghost Ring type rear sight for the Remington Model 870 shotgun, which is mounted on top of the standard receiver.",
	weight = 0.1,
	value = 5935,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m870_xs.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_mount_kochetov"] = {
	fullName = "Mosin Rifle Kochetov mount",
	displayName = "Kochetov",
	displayType = DISPLAYTYPE,
	description = "Designed specially for the Mosin rifle, the Kochetov mount allows installation of the PU 3.5 scope on the rifle.",
	weight = 0.05,
	value = 1370,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_kochetov.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_mount_mng"] = {
	fullName = "Mosin Rifle AIM Sports MNG rail mount",
	displayName = "Mosin MNG",
	displayType = DISPLAYTYPE,
	description = "A Picatinny rail for the Mosin rifle, mounted instead of the regular rear sight. Manufactured by AIM Sports.",
	weight = 0.1,
	value = 1900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_mng.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_mount_patriot"] = {
	fullName = "Mosin Rifle Arbalet Patriot K+W rail mount",
	displayName = "Patriot K+W",
	displayType = DISPLAYTYPE,
	description = "The Patriot K+W rail mount for Mosin rifle, manufactured by Arbalet.",
	weight = 0.2,
	value = 2570,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_patriot.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_mount_rings"] = {
	fullName = "PU 3.5x ring scope mount",
	displayName = "PU rings",
	displayType = DISPLAYTYPE,
	description = "Regular rings for the PU 3.5x scope, installed on the Kochetov mount.",
	weight = 0.05,
	value = 1205,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pu_rings.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_mount_trirail"] = {
	fullName = "Mosin Rifle AIM Sports Tri-Rail mount",
	displayName = "Mosin 3Rail",
	displayType = DISPLAYTYPE,
	description = "A Picatinny rail for the Mosin rifle, mounted instead of the regular rear sight. Manufactured by AIM Sports.",
	weight = 0.2,
	value = 3375,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_aim.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_1911_rail"] = {
	fullName = "M1911A1 NcSTAR trigger guard mount",
	displayName = "1911 mount",
	displayType = DISPLAYTYPE,
	description = "The NcSTAR Trigger guard mount for the M1911A1 pistol.",
	weight = 0.05,
	value = 2300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("1911_ncstar.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_1911_top"] = {
	fullName = "M1911A1 Weigand Weig-a-tinny rail mount",
	displayName = "Weig-a-tinny",
	displayType = DISPLAYTYPE,
	description = "The Weig-a-tinny rail mount for the M1911A1 pistol, manufactured by Weigand.",
	weight = 0.1,
	value = 2900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("weigatinny.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_25mm"] = {
	fullName = "Kiba Arms 25mm accessory ring mount",
	displayName = "25mm ring",
	displayType = DISPLAYTYPE,
	description = "A universal platform for installation of 25mm tactical accessories on Picatinny mounts.",
	weight = 0.05,
	value = 2800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("kiba_25mm.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_25mm_dd_offset"] = {
	fullName = "Daniel Defense 25mm accessory ring mount",
	displayName = "25mm DD",
	displayType = DISPLAYTYPE,
	description = "A universal platform for installation of 25mm tactical accessories on Picatinny mounts, manufactured by Daniel Defense.",
	weight = 0.05,
	value = 2520,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("dd_25mm.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_25mm_utg"] = {
	fullName = "Leapers UTG 25mm ring scope mount",
	displayName = "UTG 25mm",
	displayType = DISPLAYTYPE,
	description = "A low-profile 25.4mm ring mount for installation of various optics, manufactured by Leapers Inc.",
	weight = 0.2,
	value = 3000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("25mm_utg.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_30mm_alpha4"] = {
	fullName = "SIG ALPHA4 30mm ring scope mount",
	displayName = "ALPHA4 30mm",
	displayType = DISPLAYTYPE,
	description = "A mount for 30mm riflescopes, installed on Weaver/Picatinny type rails. Manufactured by SIG Sauer.",
	weight = 0.2,
	value = 10290,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("30mm_alpha.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_30mm_alpha4_blk"] = {
	fullName = "SIG ALPHA4 30mm ring scope mount",
	displayName = "ALPHA4 30mm",
	displayType = DISPLAYTYPE,
	description = "A mount for 30mm riflescopes, installed on Weaver/Picatinny type rails. Manufactured by SIG Sauer.",
	weight = 0.2,
	value = 10290,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("30mm_alpha_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_30mm_arms"] = {
	fullName = "A.R.M.S. #22 30mm ring scope mount",
	displayName = "ARMS#22",
	displayType = DISPLAYTYPE,
	description = "A.R.M.S. #22 is a universal 30mm scope base mount for installation on Picatinny rails.",
	weight = 0.2,
	value = 8600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("30mm_arms.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_30mm_geis"] = {
	fullName = "Geissele Super Precision 30mm ring scope mount",
	displayName = "Geis 30mm",
	displayType = DISPLAYTYPE,
	description = "A universal 30mm optical scope base mount by Lobaev Arms for installation on Picatinny rails.",
	weight = 0.15,
	value = 14375,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("30mm_geis.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_30mm_geis_tan"] = {
	fullName = "Geissele Super Precision 30mm ring scope mount (DDC)",
	displayName = "Geis 30mm D",
	displayType = DISPLAYTYPE,
	description = "A universal 30mm optical scope base mount by Lobaev Arms for installation on Picatinny rails.",
	weight = 0.15,
	value = 14375,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("30mm_geis_ddc.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_30mm_jp"] = {
	fullName = "JP Enterprises Flat-Top 30mm ring scope mount",
	displayName = "JP 30mm",
	displayType = DISPLAYTYPE,
	description = "A universal 30mm scope base mount for installation on Picatinny rails. Manufactured by JP Enterprises.",
	weight = 0.2,
	value = 10735,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("30mm_jp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_30mm_lobaev"] = {
	fullName = "Lobaev Arms 30mm scope mount",
	displayName = "Lobaev 30mm",
	displayType = DISPLAYTYPE,
	description = "A universal 30mm optical scope base mount by Lobaev Arms for installation on Picatinny rails.",
	weight = 0.25,
	value = 6000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("30mm_lobaev.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_30mm_nf"] = {
	fullName = "Nightforce Magmount 30mm ring scope mount",
	displayName = "NF 30mm",
	displayType = DISPLAYTYPE,
	description = "Nightforce X-Treme Duty Ultralite one piece Magmount is a universal 30mm scope base mount for installation on Picatinny rails.",
	weight = 0.2,
	value = 6400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("30mm_nf.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_30mm_pepr"] = {
	fullName = "Burris AR-P.E.P.R. 30mm ring scope mount",
	displayName = "PEPR 30mm",
	displayType = DISPLAYTYPE,
	description = "The Burris P.E.P.R. universal 30mm scope base mount for installation on Picatinny rails.",
	weight = 0.25,
	value = 10065,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("30mm_pepr.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_30mm_rn"] = {
	fullName = "Recknagel Era-Tac 30mm ring scope mount",
	displayName = "RN 30mm ET",
	displayType = DISPLAYTYPE,
	description = "The Recknagel Era-Tac is a versatile base for mounting 30mm riflescopes. Equipped with additional top mounts for installation of various tactical equipment.",
	weight = 0.2,
	value = 7700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("30mm_rn.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_30mm_rn_blk"] = {
	fullName = "Recknagel Era-Tac 30mm ring scope mount",
	displayName = "RN 30mm ET",
	displayType = DISPLAYTYPE,
	description = "The Recknagel Era-Tac is a versatile base for mounting 30mm riflescopes. Equipped with additional top mounts for installation of various tactical equipment.",
	weight = 0.2,
	value = 7700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("30mm_rn_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_34mm_ax50"] = {
	fullName = "AI AX-50 34mm scope mount",
	displayName = "AX-50 34mm",
	displayType = DISPLAYTYPE,
	description = "An universal 34mm scope base mount for installation on Picatinny rails, allows installation of various optics. Manufactured by Accuracy International.",
	weight = 0.2,
	value = 8940,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("34mm_ax50.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_34mm_ax50_blk"] = {
	fullName = "AI AX-50 34mm scope mount",
	displayName = "AX-50 34mm",
	displayType = DISPLAYTYPE,
	description = "An universal 34mm scope base mount for installation on Picatinny rails, allows installation of various optics. Manufactured by Accuracy International.",
	weight = 0.2,
	value = 8940,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("34mm_ax50_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_34mm_nf"] = {
	fullName = "Nightforce Magmount 34mm ring scope mount",
	displayName = "NF 34mm",
	displayType = DISPLAYTYPE,
	description = "Nightforce X-Treme Duty Ultralite one piece Magmount is a universal 34mm scope base mount for installation on Picatinny rails.",
	weight = 0.25,
	value = 9985,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("34mm_nf.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_34mm_nfris"] = {
	fullName = "Nightforce Magmount 34mm ring scope mount with Ruggedized Accessory Platform",
	displayName = "NF 34mm RIS",
	displayType = DISPLAYTYPE,
	description = "Nightforce X-Treme Duty Ultralite one piece Magmount is a universal 34mm scope base mount for installation on Picatinny rails. Comes attached with the Ruggedized Accessory Platform (RAP) for installing additional tactical devices and reflex sights.",
	weight = 0.25,
	value = 8995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("34mm_nf_rugged.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_34mm_one_piece_is_real"] = {
	fullName = "IEA Mil-Optics KH/F 34mm one-piece magmount",
	displayName = "KH/F 34mm",
	displayType = DISPLAYTYPE,
	description = "IEA Mil-Optics KH/F is a universal 34mm scope base mount for installation on Picatinny rails, allows installation of various optics.",
	weight = 0.2,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("34mm_khf.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_34mm_rn"] = {
	fullName = "Recknagel Era-Tac 34mm ring scope mount",
	displayName = "RN 34mm ET",
	displayType = DISPLAYTYPE,
	description = "The Recknagel Era-Tac is a versatile base for mounting 34mm riflescopes. Equipped with additional top mounts for installation of various tactical equipment.",
	weight = 0.2,
	value = 8505,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("34mm_rn.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_34mm_rn_blk"] = {
	fullName = "Recknagel Era-Tac 34mm ring scope mount",
	displayName = "RN 34mm ET",
	displayType = DISPLAYTYPE,
	description = "The Recknagel Era-Tac is a versatile base for mounting 34mm riflescopes. Equipped with additional top mounts for installation of various tactical equipment.",
	weight = 0.2,
	value = 8505,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("34mm_rn_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_35mm_ims"] = {
	fullName = "Leupold Mark IMS 35mm ring scope mount",
	displayName = "IMS 35mm",
	displayType = DISPLAYTYPE,
	description = "A 35mm scope mount for installation on Picatinny rails. Manufactured by Leupold.",
	weight = 0.2,
	value = 8050,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("35mm_ims.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_ac32062"] = {
	fullName = "Trijicon RMR high profile mount",
	displayName = "AC32062",
	displayType = DISPLAYTYPE,
	description = "A high-profile mount for installation of the Trijicon RMR series reflex sights on Picatinny and Weaver rails.",
	weight = 0.05,
	value = 2970,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rmrhigh.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_alexander_10"] = {
	fullName = "Alexander Arms 10 inch rail",
	displayName = 'Mk10 10"',
	displayType = DISPLAYTYPE,
	description = "Alexander Arms guide for Mk 10 10 inch length allows you to install additional equipment on the handguard.",
	weight = 0.1,
	value = 2580,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mk10_10.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_alexander_3"] = {
	fullName = "Alexander Arms 3 inch rail",
	displayName = "Mk10 3 in.",
	displayType = DISPLAYTYPE,
	description = "Alexander Arms guide for Mk 10 3 inch length allows you to install additional equipment on the handguard.",
	weight = 0.05,
	value = 1720,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mk10_3.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_all_kmz_1p69"] = {
	fullName = "KMZ 1P69 Weaver mount",
	displayName = "1P69 mount",
	displayType = DISPLAYTYPE,
	description = 'Universal base with integrated power supply for installation of the sight 1P59 on the "Weaver" type rails.',
	weight = 0.5,
	value = 2050,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("1p69_weaver.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_amm"] = {
	fullName = "Aimpoint Micro Standard Mount",
	displayName = "AMM",
	displayType = DISPLAYTYPE,
	description = "The Aimpoint Micro Standard Mount base for T-1 and H-1 reflex sights of the Micro series.",
	weight = 0.05,
	value = 4355,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("amm.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_amsh"] = {
	fullName = "Aimpoint Micro Spacer High",
	displayName = "AMSH",
	displayType = DISPLAYTYPE,
	description = "The Micro Spacer High mount raises the height of the optical axis. Made to work with the Aimpoint Micro red dot sights.",
	weight = 0.05,
	value = 3960,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("amsh.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_arms_22_cap"] = {
	fullName = "A.R.M.S. #22 ring cap",
	displayName = "ARMS#22",
	displayType = DISPLAYTYPE,
	description = "A top ring cap for the A.R.M.S. #22 mount.",
	weight = 0.05,
	value = 1970,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("arms_cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_arms_22_tr"] = {
	fullName = "A.R.M.S. #22 Tactical Ring Rail mount",
	displayName = "#22 TRR",
	displayType = DISPLAYTYPE,
	description = "A universal rail mount for installation of various red dot sights or tactical equipment on the A.R.M.S. #22 optic mount, installed as replacement for standard ring cap.",
	weight = 0.1,
	value = 4500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("arms_ring.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_b12"] = {
	fullName = "AK Zenit B-12 Mount",
	displayName = "B-12",
	displayType = DISPLAYTYPE,
	description = "The B-12 gas tube overhanging rail mount is installed on the side rail of the B-11 or B-10 handguards and provides a weapon with means of installing a complex of sights and tactical devices by forming rail mounts over the weapons gas tube and on the side of the handguard. Manufactured by Zenit.",
	weight = 0.1,
	value = 3960,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("b12.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_b50_16"] = {
	fullName = "PK Zenit B-50 16mm top mount",
	displayName = "B50 16",
	displayType = DISPLAYTYPE,
	description = "The B-50 16mm mount for Kalashnikov Machine gun. Features a Weaver rail for installation of various scopes. Manufactured by Zenit.",
	weight = 0.1,
	value = 1280,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("b50_16.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_b50_66"] = {
	fullName = "PK Zenit B-50 66mm top mount",
	displayName = "B50 66",
	displayType = DISPLAYTYPE,
	description = "The B-50 66mm mount for Kalashnikov Machine gun. Features a Weaver rail for installation of various scopes. Manufactured by Zenit.",
	weight = 0.1,
	value = 2150,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("b50_66.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_compact"] = {
	fullName = "Compact Mount adapter for sights",
	displayName = "Compact",
	displayType = DISPLAYTYPE,
	description = "Compact Mount is a universal mount for installation of Primary Arms manufactured scopes.",
	weight = 0.1,
	value = 1150,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("short.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_deltapoint"] = {
	fullName = "DeltaPoint Cross Slot Mount base",
	displayName = "DPCSM",
	displayType = DISPLAYTYPE,
	description = "A universal base for mounting compact sights of the Leupold DeltaPoint series on Weaver rails.",
	weight = 0.1,
	value = 2975,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("dpcsm.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_dovetail_aksion_kobra"] = {
	fullName = "Axion Kobra dovetail mount",
	displayName = "A. Kobra",
	displayType = DISPLAYTYPE,
	description = "Aluminum mount for mounting sights and various accessories, commonly can be found in the kit with Cobra sights.",
	weight = 0.05,
	value = 4565,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("kobramount.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_dovetail_b13"] = {
	fullName = 'Zenit B-13 "Klassika" dovetail rail platform',
	displayName = "B-13",
	displayType = DISPLAYTYPE,
	description = "The B-13 rail platform mounts on the standard Dovetail mount of the AK 103, 104, 105, 74M, AKMN, Saiga MK, Saiga MK-03, Saiga 410 carbines. Provides a platform for sighting devices.",
	weight = 0.15,
	value = 7790,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("b13.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_dovetail_b13v"] = {
	fullName = 'Zenit B-13V "Klassika" dovetail rail platform',
	displayName = "B-13V",
	displayType = DISPLAYTYPE,
	description = 'The B-13 rail platform above receiver mounts on the standard Dovetail joint located on the PP-19-01 "Vityaz". Provides a platform for sighting devices.',
	weight = 0.15,
	value = 8120,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("b13v.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_dovetail_caaxdrgl"] = {
	fullName = "SVD CAA XD RGL receiver mount",
	displayName = "XD RGL",
	displayType = DISPLAYTYPE,
	description = "A quick-detach side clip mount with a Weaver/Picatinny rail for the SVD sniper rifle and compatibles, manufactured by CAA.",
	weight = 0.2,
	value = 6400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svd_caa.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_dovetail_kmz_1p59"] = {
	fullName = "KMZ 1P59 dovetail mount",
	displayName = "1P59 mount",
	displayType = DISPLAYTYPE,
	description = "Universal 1P59 scope base mount for installation on Dovetail mount.",
	weight = 0.4,
	value = 1900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("1p59.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_dovetail_npz"] = {
	fullName = "NPZ 1P78-1 dovetail mount",
	displayName = "NPZ 1P78",
	displayType = DISPLAYTYPE,
	description = "An aluminum sight mount manufactured by NPZ for the installation of scopes and accessories. Installed on dovetail rails.",
	weight = 0.05,
	value = 2180,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("1p78.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_dovetail_pilad"] = {
	fullName = "VOMZ Pilad 043-02 dovetail mount",
	displayName = "043-02",
	displayType = DISPLAYTYPE,
	description = "Aluminium sight support with Picatinny rail mount for installation of scopes and accessories.",
	weight = 0.05,
	value = 4355,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pilad.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_dovetail_rsr"] = {
	fullName = "RS Regulate AK-303M Full Length Lower dovetail mount",
	displayName = "AK-303M",
	displayType = DISPLAYTYPE,
	description = "The AK-303M side platform is designed as a base for mounting RS Regulate top mounts on AK assault rifles and their variants: Saiga, SVD, and others. Manufactured by RS Regulate. + The AKR 1913 Railed 0 MOA Mount, installed on the AK-303M Lower Mount. Manufactured by RS Regulate.",
	weight = 0.1,
	value = 9995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak303m.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_dovetail_sag"] = {
	fullName = "SAG AK dovetail sidemount",
	displayName = "SAG AK",
	displayType = DISPLAYTYPE,
	description = 'The "SAG AK" sidemount is designed to mount sights on AK rifles and their numerous versions: Saiga, SVD, etc. Manufactured by Sureshot Armament Group.',
	weight = 0.15,
	value = 8225,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sagak.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_dovetail_sagbit"] = {
	fullName = "SAG Bit low profile dovetail sidemount",
	displayName = "SAG Bit",
	displayType = DISPLAYTYPE,
	description = "The Bit low-profile side mount is designed to mount compact sights and collimators on AK rifles and their numerous versions: Saiga, VAL, etc. Manufactured by Sureshot Armament Group.",
	weight = 0.05,
	value = 7000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sagbit.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_dovetail_sagsvd"] = {
	fullName = "SVD SAG low profile sidemount",
	displayName = "SAG SVD",
	displayType = DISPLAYTYPE,
	description = "A low-profile side mount, all-milled from a bar of high-strength aluminum alloy B95T. Designed to fit on SVD sniper for various optics installation, but can also be fitted on Vepr Hunter, AS Val and VSS rifles. Manufactured by Sureshot Armament Group.",
	weight = 0.2,
	value = 9000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svd_low.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_dovetail_sr3mp"] = {
	fullName = "SR-3MP dovetail side rail",
	displayName = "SR-3MP D",
	displayType = DISPLAYTYPE,
	description = "A special mount for installing optics and other accessories to the SR-3MP assault rifle. Manufactured by TsNIITochMash. Black version.",
	weight = 0.1,
	value = 1900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr3m_dt.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_dovetail_sr3mpp"] = {
	fullName = "SR-3MP dovetail side rail (Plum)",
	displayName = "SR-3MP D",
	displayType = DISPLAYTYPE,
	description = "A special mount for installing optics and other accessories to the SR-3MP assault rifle. Manufactured by TsNIITochMash. Plum version.",
	weight = 0.1,
	value = 1900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr3m_dt_plum.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_dovetail_vpo102"] = {
	fullName = "VPO-102 Arbalet mount",
	displayName = "Arbalet VPO",
	displayType = DISPLAYTYPE,
	description = "An aluminum mount for installing various sights and accessories on to the VPO-102 Vepr-Hunter carbine, manufactured by Arbalet.",
	weight = 0.1,
	value = 3045,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vpo102_arbalet.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_ffwb"] = {
	fullName = "Burris FastFire Weaver Base",
	displayName = "FFWB",
	displayType = DISPLAYTYPE,
	description = "This base from Burris allows to mount the compact FastFire Series Sights to Weaver or Picatinny-style rails.",
	weight = 0.1,
	value = 1820,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ffwb.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_g17_at_base"] = {
	fullName = "Glock Aimtech mount base",
	displayName = "G AT base",
	displayType = DISPLAYTYPE,
	description = "A sight mount base for Glock pistols, allows additional installation of reflex sights on the Weaver-type rail. Manufactured by Aimtech.",
	weight = 0.1,
	value = 5080,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_aimtech.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_g17_tshark"] = {
	fullName = "Glock Aimtech Tiger Shark sight mount",
	displayName = "G TShark",
	displayType = DISPLAYTYPE,
	description = "A Glock family sight mount base designed for installation of additional reflex sights on the pistol. Manufactured by Aimtech.",
	weight = 0.1,
	value = 5410,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_shark.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_geis_cap"] = {
	fullName = "Geissele Super Precision top ring cap",
	displayName = "Geis top",
	displayType = DISPLAYTYPE,
	description = "A regular top ring cap for the Geissele Super Precision mounts.",
	weight = 0.05,
	value = 1725,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("geis_top.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_geis_cap_ddc"] = {
	fullName = "Geissele Super Precision top ring cap (DDC)",
	displayName = "Geis top",
	displayType = DISPLAYTYPE,
	description = "A regular top ring cap for the Geissele Super Precision mounts.",
	weight = 0.05,
	value = 1725,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("geis_top_ddc.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_geis_rmr"] = {
	fullName = "Reptilia ROF-90 RMR mount for Geissele scope mounts",
	displayName = "ROF-90 RMR",
	displayType = DISPLAYTYPE,
	description = "The Reptilia ROF-90 mount allows installation of the Trijicon RMR reflex sight on the Geissele scope mount series. Replaces the standard Geissele top ring caps.",
	weight = 0.05,
	value = 2000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rof90.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_geis_rmr_ddc"] = {
	fullName = "Reptilia ROF-90 RMR mount for Geissele scope mounts (DDC)",
	displayName = "ROF-90 RMR",
	displayType = DISPLAYTYPE,
	description = "The Reptilia ROF-90 mount allows installation of the Trijicon RMR reflex sight on the Geissele scope mount series. Replaces the standard Geissele top ring caps.",
	weight = 0.05,
	value = 2000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rof90_ddc.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_h2"] = {
	fullName = "Aimpoint Micro H-2 Standard Mount",
	displayName = "H-2",
	displayType = DISPLAYTYPE,
	description = "Aimpoint Micro Standard Mount is a base mount for H-2 sights of the Micro series. Backwards-compatible with both T-1 and H-1 series reflex sights.",
	weight = 0.05,
	value = 3960,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("h2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_hexagon_m"] = {
	fullName = "Hexagon medium length rail",
	displayName = "HEX M",
	displayType = DISPLAYTYPE,
	description = "A medium length rail for the Hexagon handguard, allows installation of additional tactical equipment.",
	weight = 0.1,
	value = 1475,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hex_m.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_hexagon_m_ar"] = {
	fullName = "Hexagon medium length rail (Anodized Red)",
	displayName = "HEX M (AR)",
	displayType = DISPLAYTYPE,
	description = "A medium length rail for the Hexagon handguard, allows installation of additional tactical equipment.",
	weight = 0.1,
	value = 1475,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hex_m_red.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_hexagon_s"] = {
	fullName = "Hexagon short length rail",
	displayName = "HEX S",
	displayType = DISPLAYTYPE,
	description = "A short length rail for the Hexagon handguard, allows installation of additional tactical equipment.",
	weight = 0.05,
	value = 1105,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hex_s.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_hexagon_s_ar"] = {
	fullName = "Hexagon short length rail (Anodized Red)",
	displayName = "HEX S (AR)",
	displayType = DISPLAYTYPE,
	description = "A short length rail for the Hexagon handguard, allows installation of additional tactical equipment.",
	weight = 0.05,
	value = 1105,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hex_s_red.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_hkey_3"] = {
	fullName = "HK HKey 3 inch rail",
	displayName = 'HKey 3"',
	displayType = DISPLAYTYPE,
	description = "The HKey 3 inch rail allows installation of additional equipment on the handguards equipped with HKs HKey mounting interface.",
	weight = 0.05,
	value = 1350,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hkey_3.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_hydra"] = {
	fullName = "GBRS Aimpoint Hydra Mount Kit",
	displayName = "Hydra",
	displayType = DISPLAYTYPE,
	description = "The Hydra Mount Kit for Aimpoint Micro T-1 and H-1 series sights and tactical equipment. Manufactured by GBRS Group.",
	weight = 0.1,
	value = 8310,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hydra.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_hydra_fde"] = {
	fullName = "GBRS Aimpoint Hydra Mount Kit (FDE)",
	displayName = "Hydra (FDE)",
	displayType = DISPLAYTYPE,
	description = "The Hydra Mount Kit for Aimpoint Micro T-1 and H-1 series sights and tactical equipment. Manufactured by GBRS Group. Flat Dark Earth version.",
	weight = 0.1,
	value = 8310,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hydra_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_kac_bipod"] = {
	fullName = "KAC MWS Bipod Adapter",
	displayName = "MWS",
	displayType = DISPLAYTYPE,
	description = "A mount allows installation of Harris bipods on standard Picatinny handguards. Manufactured by Knights Armament Company.",
	weight = 0.05,
	value = 1110,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("kac_mws.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_kedr_ris"] = {
	fullName = 'PP-91 "Kedr" Rotor 43 RIS mount',
	displayName = "Kedr RIS",
	displayType = DISPLAYTYPE,
	description = "A RIS mount for PP-91 Kedr SMG, manufactured by Rotor 43.",
	weight = 0.05,
	value = 4400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pp91_rotor.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_keymod_bipodd"] = {
	fullName = "Odin Works K-Pod KeyMod bipod adapter",
	displayName = "K-Pod",
	displayType = DISPLAYTYPE,
	description = "A KeyMod interface mount that allows installation of bipods. Manufactured by Odin Works.",
	weight = 0.05,
	value = 1255,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("kpod.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_keymod_cnc2"] = {
	fullName = "CNC Guns KeyMod 2 inch rail",
	displayName = 'CNC 2"',
	displayType = DISPLAYTYPE,
	description = "CNC Guns 2 inch rail for KeyMod systems allows installation of additional equipment on the handguards equipped with a standard KeyMod interface.",
	weight = 0.05,
	value = 1060,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("cnc2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_keymod_cnc4"] = {
	fullName = "CNC Guns KeyMod 4 inch rail",
	displayName = 'CNC 4"',
	displayType = DISPLAYTYPE,
	description = "CNC Guns 4 inch rail for KeyMod systems allows installation of additional equipment on the handguards equipped with a standard KeyMod interface.",
	weight = 0.05,
	value = 1075,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("cnc4.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_keymod_corvus18"] = {
	fullName = "Corvus Defensio KeyMod 1.8 inch rail section",
	displayName = 'CD 1.8"',
	displayType = DISPLAYTYPE,
	description = "The Corvus Defensio 1.8 inch KeyMod rail allows installation of additional equipment on the handguards equipped with a standard KeyMod interface.",
	weight = 0.05,
	value = 1130,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("cd1.8.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_keymod_corvus68"] = {
	fullName = "Corvus Defensio KeyMod 6.8 inch rail section",
	displayName = 'CD 6.8"',
	displayType = DISPLAYTYPE,
	description = "The Corvus Defensio 6.8 inch KeyMod rail allows installation of additional equipment on the handguards equipped with a standard KeyMod interface.",
	weight = 0.05,
	value = 1555,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("cd6.8.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_keymod_si4"] = {
	fullName = "Strike Industries KeyMod 4 inch rail",
	displayName = "4In SI",
	displayType = DISPLAYTYPE,
	description = "Strike industries guide for keymod 4 inch system allows you to install additional equipment on the handguards with the standard keymod interface.",
	weight = 0.05,
	value = 1310,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("strike4.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_keymod_si6"] = {
	fullName = "Strike Industries KeyMod 6 inch rail",
	displayName = "6In SI",
	displayType = DISPLAYTYPE,
	description = "Strike industries guide for keymod 6 inch system allows you to install additional equipment on the handguards with the standard keymod interface.",
	weight = 0.05,
	value = 1555,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("strike6.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_keymod_vltor2"] = {
	fullName = "Vltor CASV KeyMod 2 inch rail",
	displayName = "2In CASV",
	displayType = DISPLAYTYPE,
	description = "Vltor CASV guide for KeyMod 2 inch system allows you to install additional equipment on the handguards with the standard KeyMod interface.",
	weight = 0.05,
	value = 2560,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("casv2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_keymod_vltor4"] = {
	fullName = "Vltor CASV KeyMod 4 inch rail",
	displayName = "4In CASV",
	displayType = DISPLAYTYPE,
	description = "Vltor CASV guide for KeyMod 4 inch system allows you to install additional equipment on the handguards with the standard KeyMod interface.",
	weight = 0.05,
	value = 2160,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("casv4.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_keymod_vltor6"] = {
	fullName = "Vltor CASV KeyMod 6 inch rail",
	displayName = "6In CASV",
	displayType = DISPLAYTYPE,
	description = "Vltor CASV guide for KeyMod 6 inch system allows you to install additional equipment on the handguards with the standard KeyMod interface.",
	weight = 0.05,
	value = 2720,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("casv6.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_lenok_70"] = {
	fullName = "Hartman Lenok 70mm rail",
	displayName = "Lenok",
	displayType = DISPLAYTYPE,
	description = 'The "Lenok" Weaver rail allows installation of additional equipment on Hartman tubular handguards.',
	weight = 0.05,
	value = 1000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hartman_70mm.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_lrp"] = {
	fullName = "Aimpoint LRP mount for CompM4 sights",
	displayName = "LRP",
	displayType = DISPLAYTYPE,
	description = "Aimpoint LRP is a quick detach base mount for CompM4 sights.",
	weight = 0.05,
	value = 3765,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("lrp.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_lrp_spacer"] = {
	fullName = "Aimpoint Standard Spacer",
	displayName = "SS",
	displayType = DISPLAYTYPE,
	description = "The Standard Spacer mount for Aimpoint CompM4 sight models, raises the scope mount position.",
	weight = 0.05,
	value = 2995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ss.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_lt101"] = {
	fullName = "LaRue LT101 QD Tactical Picatinny Riser mount",
	displayName = "QD LT101",
	displayType = DISPLAYTYPE,
	description = "A Quick-Detach Picatinny riser to elevate the reflex or optical sight position, manufactured by LaRue.",
	weight = 0.1,
	value = 2900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("lt101.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_mepro"] = {
	fullName = "MeproLight Mepro red dot mount",
	displayName = "Mepro",
	displayType = DISPLAYTYPE,
	description = "A Picatinny/Weaver quick-detach mount base for Mepro series red dot sights. Manufactured by MeproLight.",
	weight = 0.1,
	value = 9995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mepro.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_mlok093"] = {
	fullName = "Magpul M-LOK 0.93 inch rail",
	displayName = 'M-LOK 0.93"',
	displayType = DISPLAYTYPE,
	description = "The Magpul M-LOK 0.93 inch rail allows installation of additional equipment on the handguards equipped with an M-LOK interface.",
	weight = 0.05,
	value = 1000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mlok0.93.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_mlok25"] = {
	fullName = "Magpul M-LOK 2.5 inch rail",
	displayName = 'M-LOK 2.5"',
	displayType = DISPLAYTYPE,
	description = "The Magpul M-LOK 2.5 inch rail allows installation of additional equipment on the handguards with the standard M-LOK interface.",
	weight = 0.05,
	value = 2055,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mlok2.5.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_mlok41"] = {
	fullName = "Magpul M-LOK 4.1 inch rail",
	displayName = 'M-LOK 4.1"',
	displayType = DISPLAYTYPE,
	description = "The Magpul M-LOK 4.1 inch rail allows installation of additional equipment on the handguards with the standard M-LOK interface.",
	weight = 0.05,
	value = 1560,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mlok4.1.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_mlok_bipodd"] = {
	fullName = "Magpul M-LOK Bipod Mount",
	displayName = "M-LOK BP",
	displayType = DISPLAYTYPE,
	description = "A mount allows installation of bipods on handguards equipped with a standard M-LOK interface. Manufactured by Magpul.",
	weight = 0.05,
	value = 1110,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mlokbipod.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_mlokcanti"] = {
	fullName = "Magpul M-LOK Cantilever Mount",
	displayName = "M-LOK RL",
	displayType = DISPLAYTYPE,
	description = "The Magpul M-LOK Cantilever mount allows installation of additional equipment on the handguards with the standard M-LOK interface.",
	weight = 0.05,
	value = 2010,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mlokcant.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_mlokoffset"] = {
	fullName = "Magpul M-LOK Offset Light Mount",
	displayName = "M-LOK Off",
	displayType = DISPLAYTYPE,
	description = "The Magpul M-LOK Cantilever mount allows installation of additional equipment on the handguards with the standard M-LOK interface.",
	weight = 0.05,
	value = 1160,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mlokoffset.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_mp443_rail"] = {
	fullName = "MP-443 Grach Zenit B-8 mount",
	displayName = "B-8",
	displayType = DISPLAYTYPE,
	description = "B-8 rail mount is installed on Yarygin pistol (MP-443 Grach and its civilian version MP-446 Viking) for use with additional attachments, e.g. 2KS Klesch Mini tactical laser flashlight.",
	weight = 0.05,
	value = 3000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp443_b8.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_mpx_2"] = {
	fullName = "MPX GEN1 handguard 2 inch rail",
	displayName = 'MPX 2"',
	displayType = DISPLAYTYPE,
	description = "The 2 inch SIG Sauer GEN1 handguard rail adapter allows you to install additional equipment on the 1st generation SIG MPX handguard.",
	weight = 0.05,
	value = 1575,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_gen1_2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_mpx_4"] = {
	fullName = "MPX GEN1 handguard 4 inch rail",
	displayName = 'MPX 4"',
	displayType = DISPLAYTYPE,
	description = "The 4 inch SIG Sauer GEN1 handguard rail adapter allows you to install additional equipment on the 1st generation SIG MPX handguard.",
	weight = 0.05,
	value = 2020,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_gen1_4.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_nar"] = {
	fullName = "B&T QD NAR mount for Aimpoint ACRO",
	displayName = "NAR",
	displayType = DISPLAYTYPE,
	description = "The Brugger & Thomet QD NAR is a special mount for the Aimpoint ACRO-series reflex sights. 39mm stand height.",
	weight = 0.1,
	value = 4750,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("nar.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_ncstar"] = {
	fullName = "NcSTAR MPR45 Backup mount",
	displayName = "MPR45",
	displayType = DISPLAYTYPE,
	description = "A universal mount by NcStar that allows installing an auxiliary sight at 45 degrees angle.",
	weight = 0.1,
	value = 12800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpr45.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_p226_bridge"] = {
	fullName = "P226 Bridge sight mount",
	displayName = "P226 Bridge",
	displayType = DISPLAYTYPE,
	description = "The SIG Sauer Bridge sight mount for pistols. Allows mounting of various sights or tactical accesories.",
	weight = 0.1,
	value = 3800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_bridge.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_precision_bottom"] = {
	fullName = "Precision Reflex handguard bottom rail mount",
	displayName = "PR bot.",
	displayType = DISPLAYTYPE,
	description = "A bottom rail for handguards by Precision Reflex, which allows you to install foregrips.",
	weight = 0.05,
	value = 2230,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pr_bottom.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_precision_side"] = {
	fullName = "Precision Reflex handguard short side rail mount",
	displayName = "PR side",
	displayType = DISPLAYTYPE,
	description = "A short rail for handguards by Precision Reflex, which allows you to install additional tactical equipment.",
	weight = 0.05,
	value = 1865,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pr_side.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_precision_top"] = {
	fullName = "Precision Reflex handguard long top rail mount",
	displayName = "PR top",
	displayType = DISPLAYTYPE,
	description = "A long rail for handguards by Precision Reflex, which allows you to install additional tactical equipment and front iron sights.",
	weight = 0.2,
	value = 1615,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pr_top.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_qars32"] = {
	fullName = "TROY QARS 3.2 inch rail",
	displayName = 'QARS 3.2"',
	displayType = DISPLAYTYPE,
	description = "Troy QARS 3.2 inch rail for a Troy industries handguard allows you to install additional equipment.",
	weight = 0.05,
	value = 1665,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("qars3.2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_qars42"] = {
	fullName = "TROY QARS 4.2 inch rail",
	displayName = 'QARS 4.2"',
	displayType = DISPLAYTYPE,
	description = "Troy QARS 4.2 inch rail for a Troy industries handguard allows you to install additional equipment.",
	weight = 0.05,
	value = 2105,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("qars4.2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_qrp2"] = {
	fullName = "Aimpoint QRP2 mount for CompM4/PRO reflex sights",
	displayName = "QRP2",
	displayType = DISPLAYTYPE,
	description = "The QRP2 quick-detach base mount for the CompM4 and PRO series reflex sights, manufactured by Aimpoint.",
	weight = 0.05,
	value = 4355,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("qrp2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_rahg2"] = {
	fullName = "Remington RAHG 2 inch rail",
	displayName = 'RAHG 2"',
	displayType = DISPLAYTYPE,
	description = "The Remington RAHG 2 inch rail allows installation of additional equipment on the RAHG handguards.",
	weight = 0.05,
	value = 1100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rahg2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_rahg41"] = {
	fullName = "Remington RAHG 4 inch rail",
	displayName = 'RAHG 4"',
	displayType = DISPLAYTYPE,
	description = "The Remington RAHG 4 inch rail allows installation of additional equipment on the RAHG handguards.",
	weight = 0.05,
	value = 1875,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rahg4.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_reapir"] = {
	fullName = "UNV DLOC-IRD sight mount",
	displayName = "DLOC-IRD",
	displayType = DISPLAYTYPE,
	description = "The UNV DLOC-IRD universal quick release mount for installing various scopes.",
	weight = 0.1,
	value = 3125,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("dloc.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_rm33"] = {
	fullName = "Trijicon RMR low profile mount",
	displayName = "RM33",
	displayType = DISPLAYTYPE,
	description = "A low-profile mount for installation of the Trijicon RMR series reflex sights on Picatinny and Weaver rails.",
	weight = 0.05,
	value = 2770,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rmrlow.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_rm35"] = {
	fullName = "Trijicon RMR mount for ACOG scopes",
	displayName = "RM35",
	displayType = DISPLAYTYPE,
	description = "A universal mount on a place of a backup sight to allow the mounting of the Trijicon RMR reflex sight on the ACOG scopes.",
	weight = 0.05,
	value = 9305,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rm35.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_romeo"] = {
	fullName = "SIG Sauer ROMEO sight mount",
	displayName = "ROMEO",
	displayType = DISPLAYTYPE,
	description = "The SIG Sauer mount base for ROMEO-type reflex sights.",
	weight = 0.05,
	value = 3005,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("romeo.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_scout_keymod"] = {
	fullName = "Arisaka Inline Scout Mount KeyMod",
	displayName = "Inline KM",
	displayType = DISPLAYTYPE,
	description = "A weapon light mount designed for KeyMod interface. Manufactured by Arisaka.",
	weight = 0.05,
	value = 2000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("inline_km.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_scout_mlok"] = {
	fullName = "Arisaka Inline Scout Mount M-LOK",
	displayName = "Inline M-LOK",
	displayType = DISPLAYTYPE,
	description = "A weapon light mount designed for M-LOK interface. Manufactured by Arisaka.",
	weight = 0.05,
	value = 2200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("inline_mlok.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_scout_pic"] = {
	fullName = "SureFire M600 Scout Light Thumbscrew Mount",
	displayName = "M600",
	displayType = DISPLAYTYPE,
	description = "A Picatinny/Weaver mount for M600/M300 series weapon lights. Manufactured by SureFire.",
	weight = 0.05,
	value = 1900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m600.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_shakhin"] = {
	fullName = "Cyclone Shakhin mount",
	displayName = "Shakhin",
	displayType = DISPLAYTYPE,
	description = "A Weaver mount for installing the Shakhin thermal scope. Manufactured by Central Research Institute Cyclone.",
	weight = 0.05,
	value = 2050,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("shakhin.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_sr1mp_1x"] = {
	fullName = "SR-1MP single rail mount",
	displayName = "SR-1MP 1x",
	displayType = DISPLAYTYPE,
	description = "A mount for SR-1MP, included in the pistol kit, designed to form a single rail and silencer installation place.",
	weight = 0.05,
	value = 2925,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr1mp_single.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_sr1mp_4x"] = {
	fullName = "SR-1MP quad rail mount",
	displayName = "SR-1MP 4x",
	displayType = DISPLAYTYPE,
	description = "A mount for the SR-1MP pistol that forms four guide rails, allowing installation of the sound suppressor.",
	weight = 0.05,
	value = 10485,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr1mp_quad.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_sr1mp_sil"] = {
	fullName = "SR-1MP sound suppressor mount",
	displayName = "SR-1MP mount",
	displayType = DISPLAYTYPE,
	description = "A mount for SR-1MP from the pistol kit, used for quick installation and removal of the sound suppressor.",
	weight = 0.05,
	value = 3015,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr1mp_mount.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_t1sun"] = {
	fullName = "Recknagel Era-Tac Sunshade mount for Aimpoint",
	displayName = "T-1 Sun",
	displayType = DISPLAYTYPE,
	description = "The Recknagel Era-Tac Sunshade mount for the Aimpoint Micro T-1 reflex sight.",
	weight = 0.05,
	value = 2415,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("t1sun.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_t1sun_blk"] = {
	fullName = "Recknagel Era-Tac Sunshade mount for Aimpoint",
	displayName = "T-1 Sun",
	displayType = DISPLAYTYPE,
	description = "The Recknagel Era-Tac Sunshade mount for the Aimpoint Micro T-1 reflex sight.",
	weight = 0.05,
	value = 2415,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("t1sun_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_toz106_mountdove"] = {
	fullName = "TOZ-106 dovetail mount",
	displayName = "106 DT",
	displayType = DISPLAYTYPE,
	description = "A dovetail mount for TOZ-106 bolt-action shotgun, allows installing the scope mount.",
	weight = 0.05,
	value = 1080,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("toz106_dt.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_toz106_mountrail"] = {
	fullName = "TOZ-106 rail scope mount",
	displayName = "106 mount",
	displayType = DISPLAYTYPE,
	description = "A universal Weaver rail mount for TOZ-106. Provides a rail that allows installing various scopes on the weapon. Requires a dovetail mount.",
	weight = 0.05,
	value = 2400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("toz106_rail.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_trijicon"] = {
	fullName = "Trijicon TA51 sight mount",
	displayName = "TA51 Mount",
	displayType = DISPLAYTYPE,
	description = "TA51 universal mount for installation of Trijicon sights 3.5x35, 4x32, 5.5x50 ACOG, 1x42 Reflex and 1-6x24 VCOG.",
	weight = 0.05,
	value = 7770,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ta51.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_um3"] = {
	fullName = "UM Tactical UM3 pistol sight mount (UM3)",
	displayName = "UM3",
	displayType = DISPLAYTYPE,
	description = "The UM Tactical UM3 sight mount. Allows mounting of additional reflex sights and tactical accessories.",
	weight = 0.1,
	value = 9660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("um3.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_ump_bottom"] = {
	fullName = "HK UMP bottom handguard rail",
	displayName = "UMP bott",
	displayType = DISPLAYTYPE,
	description = "A bottom rail for the UMP SMG handguard, allows installation of various tactical foregrips.",
	weight = 0.05,
	value = 2060,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ump_bottom.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_ump_side"] = {
	fullName = "HK UMP side handguard rail",
	displayName = "UMP side",
	displayType = DISPLAYTYPE,
	description = "A side rail for the UMP SMG handguard, allows installation of additional tactical devices.",
	weight = 0.05,
	value = 1620,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ump_side.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_usp_rail"] = {
	fullName = "HK USP rail adapter",
	displayName = "USP rail",
	displayType = DISPLAYTYPE,
	description = "An adapter for the USP pistol that allows the installation of additional tactical equipment. Manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 1970,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp_rail.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_vector_bottom"] = {
	fullName = "KRISS Vector bottom rail",
	displayName = "Vector bott",
	displayType = DISPLAYTYPE,
	description = "A bottom rail for the KRISS Vector submachine gun, allows installation of tactical foregrips and accessories.",
	weight = 0.05,
	value = 1265,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vector_bottom.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_vector_modular"] = {
	fullName = "KRISS Vector Mk.5 modular rail",
	displayName = "Vector Mk.5",
	displayType = DISPLAYTYPE,
	description = "The Mk.5 modular system allows you to install additional equipment on the handguard.",
	weight = 0.1,
	value = 2220,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vector_mk5.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_vector_side"] = {
	fullName = "KRISS Vector side rail",
	displayName = "Vector side",
	displayType = DISPLAYTYPE,
	description = "A side rail for the KRISS Vector submachine gun, allows installation of additional tactical equipment.",
	weight = 0.05,
	value = 1185,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vector_side.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_vulcan"] = {
	fullName = "Armasight Vulcan universal base",
	displayName = "Vulcan",
	displayType = DISPLAYTYPE,
	description = "The Armasight universal base mount for installation of the Vulcan series scopes.",
	weight = 0.05,
	value = 2640,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vulcan.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_zeus"] = {
	fullName = "Armasight Zeus universal base",
	displayName = "Zeus",
	displayType = DISPLAYTYPE,
	description = "The Armasight universal base mount for installation of the Zeus series scopes.",
	weight = 0.05,
	value = 2685,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("zeus.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp18_mount_std"] = {
	fullName = "MP-18 sight mount",
	displayName = "MP18 RIS",
	displayType = DISPLAYTYPE,
	description = "A RIS sight mount for the MP-18 rifles.",
	weight = 0.1,
	value = 900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp18_sight.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp5_mount_sil"] = {
	fullName = "HK MP5SD B&T tri-rail ring mount",
	displayName = "B&T ring",
	displayType = DISPLAYTYPE,
	description = "The Tri-Rail Ring mount by B&T is installed on the MP5SD silencer and adds 3 Picatinny rails, designed for installation of additional equipment.",
	weight = 0.1,
	value = 5650,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp5sd_tri.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp5_mount_top"] = {
	fullName = "HK MP5 MFI HK universal low profile scope mount",
	displayName = "MFI HK",
	displayType = DISPLAYTYPE,
	description = "A universal mount for HK weapon systems, designed and manufactured by MFI. Designed for the installation of reflex sights and scopes.",
	weight = 0.05,
	value = 11130,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp5_mfi.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp5_mount_top_tri"] = {
	fullName = "HK MP5 B&T tri-rail receiver mount",
	displayName = "B&T tri-rail",
	displayType = DISPLAYTYPE,
	description = "A rail mount designed by Brügger & Thomet for the HK MP5 submachine gun. It is mounted on the weapons receiver and allows additional installation of scopes and reflex sights.",
	weight = 0.2,
	value = 4505,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp5_tri.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp9_bottomrail"] = {
	fullName = "MP9 bottom rail",
	displayName = "MP9 bottom",
	displayType = DISPLAYTYPE,
	description = "A bottom rail that allows installation of additional equipment on the MP9 SMG. Manufactured by Brügger & Thomet.",
	weight = 0.1,
	value = 1200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp9_bottom.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp9_siderail"] = {
	fullName = "MP9 side rail",
	displayName = "MP9 side",
	displayType = DISPLAYTYPE,
	description = "A short side rail that allows installation of additional equipment on the side of the MP9 SMG. Manufactured by Brügger & Thomet.",
	weight = 0.05,
	value = 850,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp9_side.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp9_silmount"] = {
	fullName = "MP9 9x19 sound suppressor mount",
	displayName = "MP9",
	displayType = DISPLAYTYPE,
	description = "A mount for sound suppressor installation directly onto the barrel of the MP9 9x19 SMG. Manufactured by Brügger & Thomet.",
	weight = 0.1,
	value = 4350,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp9_mount.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr133_mount_sprm"] = {
	fullName = "Kiba Arms SPRM rail mount for pump-action shotguns",
	displayName = "SPRM",
	displayType = DISPLAYTYPE,
	description = "The universal SPRM 13-position rail mount by Kiba Arms International, for attaching additional devices to pump-action shotguns.",
	weight = 0.1,
	value = 3450,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sprm.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr133_sprut"] = {
	fullName = "Delta-Tek Sprut mount for pump-action shotguns",
	displayName = "Sprut",
	displayType = DISPLAYTYPE,
	description = "The Delta-Tek Sprut mount was developed to install on tube magazines of pump-action shotguns like the MP-133, MP-153, MP-135, Benelli M2, Winchester 1300, and so on. It features 3 Weaver mounts for the attachment of additional devices.",
	weight = 0.1,
	value = 2700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("delta_sprut.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr155u_mount_bottom"] = {
	fullName = "MP-155 Ultima short rail",
	displayName = "Ultima rail",
	displayType = DISPLAYTYPE,
	description = 'The "Ultima" modification short rail for the MP-155 shotgun, which allows installation of additional equipment on the handguard. Manufactured by Kalashnikov Group.',
	weight = 0.05,
	value = 1050,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ultima_short.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr155u_mount_bottombig"] = {
	fullName = "MP-155 Ultima underbarrel mount",
	displayName = "Ultima UB",
	displayType = DISPLAYTYPE,
	description = 'The "Ultima" modification underbarrel mount for the MP-155 shotgun. Manufactured by Kalashnikov Group.',
	weight = 0.2,
	value = 1865,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ultima_under.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr155u_mount_top"] = {
	fullName = "MP-155 Ultima top rail",
	displayName = "Ultima top",
	displayType = DISPLAYTYPE,
	description = 'The "Ultima" modification top rail for the MP-155 shotgun. Manufactured by Kalashnikov Group.',
	weight = 0.4,
	value = 6195,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ultima_top.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_hg_costa_rail"] = {
	fullName = "M1895/MXLR Ranger Point Precision COSTA top rail",
	displayName = "RPP COSTA",
	displayType = DISPLAYTYPE,
	description = "A top rail for the COSTA handguard for M1895 rifles and compatibles. Manufactured by Ranger Point Precision.",
	weight = 0.05,
	value = 1245,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr_costa.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_rail_rhino"] = {
	fullName = "M1895/MXLR Ranger Point Precision RHINO 5 inch scope rail",
	displayName = "RHINO",
	displayType = DISPLAYTYPE,
	description = "A 5 inch top rail for M1895 rifles and compatibles. Allows installation of various optics. Manufactured by Ranger Point Precision.",
	weight = 0.1,
	value = 1980,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr_rhino_5.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_rail_xs"] = {
	fullName = "M1895/MXLR XS Marlin Optic Mount",
	displayName = "XS MO",
	displayType = DISPLAYTYPE,
	description = "A top rail for M1895 rifles and compatibles. Allows installation of various optics. Manufactured by XS Sights.",
	weight = 0.2,
	value = 2160,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr_mount.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_p90_effen_siderail"] = {
	fullName = "FN P90 EFFEN 90 receiver rail",
	displayName = "EFFEN 90",
	displayType = DISPLAYTYPE,
	description = "The EFFEN 90 rail allows installation of additional tactical equipment on the handguard of the same name.",
	weight = 0.05,
	value = 835,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p90_effen.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_p90_rec_siderail"] = {
	fullName = "FN P90 upper receiver side rail",
	displayName = "P90 side",
	displayType = DISPLAYTYPE,
	description = "A side rail for the standard-issue FN P90 receiver, allows installation of additional tactical equipment.",
	weight = 0.05,
	value = 990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p90_side.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_p90_rec_toprail"] = {
	fullName = "FN P90 upper receiver top rail",
	displayName = "P90 top",
	displayType = DISPLAYTYPE,
	description = "The FN top rail allows installation of additional equipment on the FN P90 standard upper receivers.",
	weight = 0.2,
	value = 1015,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p90_top.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_ar15_spr_rail"] = {
	fullName = "AR-15 Precision Reflex GEN III SPR Top Rail",
	displayName = "SPR Top Rail",
	displayType = DISPLAYTYPE,
	description = "A rifle length Picatinny top rail designed for installation on Precision Reflex GEN III Round handguards. Bridges the handguard and upper receiver. Manufactured by Precision Reflex.",
	weight = 0.3,
	value = 9025,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("spr_top.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rec_m16_rail"] = {
	fullName = "AR-15 ProMag Delta Style scope mount",
	displayName = "Delta Style",
	displayType = DISPLAYTYPE,
	description = "A scope mount that fits over the AR-15 carry handle. Modeled after the mount from the 1990s. Manufactured by ProMag.",
	weight = 0.05,
	value = 3385,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("delta_style.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rfb_mount_bottom"] = {
	fullName = "RFB handguard rail mount",
	displayName = "RFB",
	displayType = DISPLAYTYPE,
	description = "RFB long bottom rail which allows you to install additional equipment on the handguard.",
	weight = 0.1,
	value = 2440,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rfb_hg.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rfb_mount_quad"] = {
	fullName = "RFB Quad Rail 3 inch mount",
	displayName = 'RFB 3"',
	displayType = DISPLAYTYPE,
	description = "A 3 inch quad rail mount for the RFB rifle, allowing the installation of additional tactical equipment. Manufactured by Kel-Tec.",
	weight = 0.1,
	value = 1445,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rfb_quad_3.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rfb_mount_upper"] = {
	fullName = "RFB scope rail mount",
	displayName = "RFB rail",
	displayType = DISPLAYTYPE,
	description = "A universal rail for mounting various optics on to the RFB rifle, manufactured by Kel-Tec.",
	weight = 0.1,
	value = 3035,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rfb_scope.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rpd_n"] = {
	fullName = "RPDN",
	displayName = "RPDN",
	displayType = DISPLAYTYPE,
	description = "The RPDN variant is equipped with a hinged dovetail mount for installing optics.",
	weight = 0.1,
	value = 2600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rpdn.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rpk16_mount_side"] = {
	fullName = "RPK-16 handguard rail",
	displayName = "RPK-16 rail",
	displayType = DISPLAYTYPE,
	description = "A handguard rail for the RPK-16 LMG that allows you to install additional tactical equipment. Manufactured by Izhmash.",
	weight = 0.05,
	value = 1100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rpk_rail.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rpk16_rs_base"] = {
	fullName = "RPK-16 rear sight base",
	displayName = "RPK16 RS base",
	displayType = DISPLAYTYPE,
	description = "A detachable base for the Izhmash-manufactured rear sight for the RPK-16 LMG.",
	weight = 0.05,
	value = 775,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rpk_rs.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_ak_tt01"] = {
	fullName = "AK Taktika Tula TT01 rear sight rail",
	displayName = "TT01",
	displayType = DISPLAYTYPE,
	description = "The TT01 rear sight adapter, designed by Taktika Tula for AK family assault rifles. Installed in place of a standard rear sight and can be used as an iron sight if no reflex sight is installed.",
	weight = 0.1,
	value = 2900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tt01.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_m9a3_mount"] = {
	fullName = "M9A3 Sight Mount rear sight rail",
	displayName = "SM M9",
	displayType = DISPLAYTYPE,
	description = "A rear sight rail manufactured by Sight Mount for Beretta M9 pistols. It is installed as a replacement of the standard rear sight, but still allows aiming even without an installed reflex sight.",
	weight = 0.05,
	value = 4750,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m9a3_sight.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_p226_mount"] = {
	fullName = "P226 Sight Mount 220-239 rear sight bearing",
	displayName = "SM P226",
	displayType = DISPLAYTYPE,
	description = "The 220-239 rear sight bearing manufactured by Sight Mount for SIG Sauer 220, 226, 227, 229, 239 pistols. It is installed as a replacement of the standard rear sight and allows to use it even if no scope is installed.",
	weight = 0.05,
	value = 4000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_sight.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_p226_rmr"] = {
	fullName = "P226 Trijicon RMR mount",
	displayName = "RMR P226",
	displayType = DISPLAYTYPE,
	description = "A universal base for installation of the Trijicon RMR series reflex sights, replaces the standard rear sight of the SIG Sauer pistols.",
	weight = 0.05,
	value = 5900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_rmr.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rs_usp_mount"] = {
	fullName = "HK USP Red Dot sight mount",
	displayName = "USP RD",
	displayType = DISPLAYTYPE,
	description = "A rear sight mount allows the installation of Burris Fast Fire, Docter, and other similar reflex sights.",
	weight = 0.05,
	value = 3815,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp_sight.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_saiga12_handguard_custom340_mount"] = {
	fullName = "Custom Guns handguard rail",
	displayName = "CG",
	displayType = DISPLAYTYPE,
	description = "Custom Guns rail guide allows you to install additional equipment on the proprietary handguards.",
	weight = 0.05,
	value = 1155,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("cg_rail.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_saiga12_handguard_titanrecuver"] = {
	fullName = "SOK-12 Chaos Titan receiver top rail",
	displayName = "Titan",
	displayType = DISPLAYTYPE,
	description = "A receiver top rail for the Titan Quad Rail System, manufactured by Chaos.",
	weight = 0.1,
	value = 18000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sok12_titan_top.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_saiga12_handguard_titantop"] = {
	fullName = "SOK-12 Chaos Titan Quad Rail handguard top cover",
	displayName = "Titan",
	displayType = DISPLAYTYPE,
	description = "A handguard top rail for the Titan Quad Rail System, manufactured by Chaos.",
	weight = 0.1,
	value = 15080,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sok12_titan_top_quad.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_saiga12_rs_mount"] = {
	fullName = "SOK-12 CSS rear sight rail mount",
	displayName = "CSS RSRM",
	displayType = DISPLAYTYPE,
	description = "This sight rail mount allows installation of various sights instead of the Saiga carbines standard-issue fixed rear sight.",
	weight = 0.05,
	value = 2695,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sok12_css.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sako_railmid"] = {
	fullName = "Sako TRG medium length rail",
	displayName = "TRG med",
	displayType = DISPLAYTYPE,
	description = "A medium length handguard rail for installing additional equipment on the TRG series sniper rifles. Manufactured by Sako.",
	weight = 0.05,
	value = 2355,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("trg_med.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sako_railshort"] = {
	fullName = "Sako TRG short length rail",
	displayName = "TRG short",
	displayType = DISPLAYTYPE,
	description = "A short length handguard rail for installing additional equipment on the TRG series sniper rifles. Manufactured by Sako.",
	weight = 0.05,
	value = 1720,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("trg_short.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sako_toprail"] = {
	fullName = "Sako TRG M10 scope mount",
	displayName = "M10 SM",
	displayType = DISPLAYTYPE,
	description = "A universal rail for mounting various sights on the TRG M10 sniper rifle. Manufactured by Sako.",
	weight = 0.3,
	value = 2985,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("trg_scope.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_mrexl"] = {
	fullName = "FN SCAR PMM MRE XL rail extension",
	displayName = "MRE XL",
	displayType = DISPLAYTYPE,
	description = "An M-LOK interface rail extension designed for SCAR series rifles. Manufactured by Parker Mountain Machine.",
	weight = 0.1,
	value = 7330,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_mre_xl.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_mrexlf"] = {
	fullName = "FN SCAR PMM MRE XL rail extension FDE",
	displayName = "MRE XL F",
	displayType = DISPLAYTYPE,
	description = "An M-LOK interface rail extension designed for SCAR series rifles. Manufactured by Parker Mountain Machine. flat dark woof.",
	weight = 0.1,
	value = 7330,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_mre_xl_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_rail_bottom"] = {
	fullName = "FN SCAR bottom rail",
	displayName = "SCAR bottom",
	displayType = DISPLAYTYPE,
	description = "A bottom rail for the SCAR-series handguards that allows installation of tactical foregrips or other devices.",
	weight = 0.1,
	value = 1810,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_bottom.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_rail_bottom_mlok"] = {
	fullName = "FN SCAR PMM M-LOK lower rail",
	displayName = "PMM Low",
	displayType = DISPLAYTYPE,
	description = "A bottom rail with an M-LOK interface designed for SCAR series rifles. Manufactured by Parker Mountain Machine.",
	weight = 0.05,
	value = 1965,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon =AttMaterial("scar_pmm_low.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_rail_bottom_mlokf"] = {
	fullName = "FN SCAR PMM M-LOK lower rail FDE",
	displayName = "PMM Low F",
	displayType = DISPLAYTYPE,
	description = "A bottom rail with an M-LOK interface designed for SCAR series rifles. Manufactured by Parker Mountain Machine. flat hawk tuah.",
	weight = 0.05,
	value = 1965,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_pmm_low_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_rail_casv_ext"] = {
	fullName = "FN SCAR Vltor CASV-SCAR Handguard Extender",
	displayName = "CASV-SCAR",
	displayType = DISPLAYTYPE,
	description = "An extension for longer hand grip and installation of additional equipment, designed for the CASV-SCAR handguard. Manufactured by Vltor.",
	weight = 0.1,
	value = 5335,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_casv_extender.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_rail_casv_extf"] = {
	fullName = "FN SCAR Vltor CASV-SCAR Handguard Extender FDE",
	displayName = "CASV-SCAR F",
	displayType = DISPLAYTYPE,
	description = "An extension for longer hand grip and installation of additional equipment, designed for the CASV-SCAR handguard. Manufactured by Vltor. flat earth dark.",
	weight = 0.1,
	value = 5335,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_casv_extender_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_rail_mrex"] = {
	fullName = "FN SCAR Kinetic MREX 6.5 M-LOK rail",
	displayName = "MREX 6.5 M-LOK",
	displayType = DISPLAYTYPE,
	description = "The MREX 6.5 M-LOK rail for SCAR series rifles allows the installation of additional equipment. Manufactured by Kinetic.",
	weight = 0.2,
	value = 11735,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_mrex_6.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_rail_mrex_fde"] = {
	fullName = "FN SCAR Kinetic MREX 6.5 M-LOK rail FDE",
	displayName = "MREX 6.5 M-LOK",
	displayType = DISPLAYTYPE,
	description = "The MREX 6.5 M-LOK rail for SCAR series rifles allows the installation of additional equipment. Manufactured by Kinetic. flat dark tuah.",
	weight = 0.2,
	value = 11735,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_mrex_6_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_rail_side"] = {
	fullName = "FN SCAR side rail",
	displayName = "SCAR side",
	displayType = DISPLAYTYPE,
	description = "A side rail for the SCAR-series handguards that allows installation of additional tactical equipment.",
	weight = 0.05,
	value = 1000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_side.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_rail_side_mlok"] = {
	fullName = "FN SCAR PMM M-LOK side rails",
	displayName = "PMM side",
	displayType = DISPLAYTYPE,
	description = "Side rails for SCAR series rifles, equipped with M-LOK interface and allowing the installation of additional equipment. Manufactured by Parker Mountain Machine.",
	weight = 0.05,
	value = 1680,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_mlok_side.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_rail_side_mlokf"] = {
	fullName = "FN SCAR PMM M-LOK side rails FDE",
	displayName = "PMM side F",
	displayType = DISPLAYTYPE,
	description = "Side rails for SCAR series rifles, equipped with M-LOK interface and allowing the installation of additional equipment. Manufactured by Parker Mountain Machine. flat bark earth.",
	weight = 0.05,
	value = 1680,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_mlok_side_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_rail_side_nothing"] = {
	fullName = "FN SCAR PMM Rail Elimination Panels",
	displayName = "PMM REP",
	displayType = DISPLAYTYPE,
	description = "Low-profile ergonomic side panels for SCAR series rifles, designed to replace the standard receiver rails. Manufactured by Parker Mountain Machine.",
	weight = 0.05,
	value = 3380,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_rep.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_rail_side_nothingf"] = {
	fullName = "FN SCAR PMM Rail Elimination Panels FDE",
	displayName = "PMM REP F",
	displayType = DISPLAYTYPE,
	description = "Low-profile ergonomic side panels for SCAR series rifles, designed to replace the standard receiver rails. Manufactured by Parker Mountain Machine. flat dark erth.",
	weight = 0.05,
	value = 3380,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_rep_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_srx"] = {
	fullName = "FN SCAR PWS SRX rail extension",
	displayName = "SRX SCAR",
	displayType = DISPLAYTYPE,
	description = "The SRX rail extension for SCAR series rifles allows the installation of additional equipment. Manufactured by Primary Weapon Systems.",
	weight = 0.2,
	value = 8970,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_srx.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_elcan_mount"] = {
	fullName = "Elcan SpecterDR Mounting Plate for Trijicon",
	displayName = "Specter",
	displayType = DISPLAYTYPE,
	description = "A mount base for installation of RMR-type reflex sights on the Elcan SpecterDR scope.",
	weight = 0.05,
	value = 2535,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("elcan_plate.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_band"] = {
	fullName = "SKS upper band",
	displayName = "SKS UB",
	displayType = DISPLAYTYPE,
	description = "A standard upper band for SKS manufactured by TOZ, allows installation of rear sights.",
	weight = 0.2,
	value = 1850,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sks_up.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_band_op"] = {
	fullName = "OP-SKS upper band",
	displayName = "OP-SKS UB",
	displayType = DISPLAYTYPE,
	description = "A standard upper band for the OP-SKS carbine manufactured by Molot Arms, allows installation of rear sights.",
	weight = 0.2,
	value = 1865,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("opsks_up.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_dovetail_choate"] = {
	fullName = "SKS CHOATE scope mount",
	displayName = "CHOATE",
	displayType = DISPLAYTYPE,
	description = "A mount for installing various sights on the SKS carbine. Manufactured by CHOATE.",
	weight = 0.2,
	value = 7780,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sks_choate.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_dovetail_op"] = {
	fullName = "OP-SKS dovetail mount",
	displayName = "OPSKS DT",
	displayType = DISPLAYTYPE,
	description = "A mount for installation of sights and other additional devices on the OP-SKS carbines.",
	weight = 0.05,
	value = 6310,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("opsks_dt.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_mount_socom"] = {
	fullName = "SKS Leapers UTG SOCOM rail mount",
	displayName = "SKS SOCOM",
	displayType = DISPLAYTYPE,
	description = "SKS SOCOM Rail is a set of 4 rail mounts that can be installed on an SKS gas block. Manufactured by Leapers Inc.",
	weight = 0.1,
	value = 12565,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sks_utg.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_stock_tapco_mount"] = {
	fullName = "SKS TAPCO Intrafuse chassis lower rail",
	displayName = "TAPCO Intrafuse",
	displayType = DISPLAYTYPE,
	description = "A short Weaver/Picatinny type rail for installation of tactical foregrips on the Intrafuse chassis. Manufactured by TAPCO.",
	weight = 0.1,
	value = 1760,
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

EFGM.ITEMS["arc9_att_eft_sr2m_b17"] = {
	fullName = "SR-2M Zenit B-17 mount",
	displayName = "B-17",
	displayType = DISPLAYTYPE,
	description = "The B-17 mount is designed to switch from SR-2M's Dovetail top rail standard to Picatinny rail. Manufactured by Zenit.",
	weight = 0.05,
	value = 4485,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr2m_b17.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sr2m_rail_big"] = {
	fullName = "SR-2M side rail",
	displayName = "SR-2M",
	displayType = DISPLAYTYPE,
	description = 'A side rail for SR-2M "Veresk" that allows installation of additional tactical equipment.',
	weight = 0.05,
	value = 1300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr2m_side.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sr2m_rail_short"] = {
	fullName = "SR-2M short side rail",
	displayName = "SR-2M short.",
	displayType = DISPLAYTYPE,
	description = 'A short side rail for SR-2M "Veresk" that allows installation of additional tactical equipment.',
	weight = 0.05,
	value = 1090,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr2m_side_short.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sr3_mount_hg"] = {
	fullName = "SR-3MP side rails (Black)",
	displayName = "SR-3MP side",
	displayType = DISPLAYTYPE,
	description = "Side rails for the SR-3MP assault rifle that allow installation of additional tactical equipment. Manufactured by TsNIITochMash. Black version.",
	weight = 0.05,
	value = 1365,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr3m_side.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sr3_mount_hgp"] = {
	fullName = "SR-3MP side rails (Plum)",
	displayName = "SR-3MP side",
	displayType = DISPLAYTYPE,
	description = 'Side rails for the SR-3MP assault rifle that allow installation of additional tactical equipment. Manufactured by TsNIITochMash. Made out of plum-colored material, which has earned the nickname "Sliva" (Plum).',
	weight = 0.05,
	value = 1365,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr3m_side_plum.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_svds_barrel_mount_drg"] = {
	fullName = "SVD CAA DRG L-1 barrel mount rail",
	displayName = "DRG L-1",
	displayType = DISPLAYTYPE,
	description = "A Picatinny rail for the SVD sniper rifle for mounting on the barrel. Allows installation of additional tactical devices.",
	weight = 0.1,
	value = 2600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svd_drg.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_svt_tokarev"] = {
	fullName = "SVT-40 Tokarev PU mount",
	displayName = "Tokarev",
	displayType = DISPLAYTYPE,
	description = "Designed specially for the SVT rifle, the Tokarev mount allows installation of the PU 3.5 scope on the rifle.",
	weight = 0.05,
	value = 1205,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svt_tokarev.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_t5000_rail_long"] = {
	fullName = "ORSIS T-5000M long length rail",
	displayName = "T-5000 long",
	displayType = DISPLAYTYPE,
	description = "A long length rail for T-5000M sniper rifle allows installation of additional tactical equipment on the handguard. Manufactured by ORSIS.",
	weight = 0.05,
	value = 1235,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("t5000_long.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_t5000_rail_medium"] = {
	fullName = "ORSIS T-5000M medium length rail",
	displayName = "T-5000 medium",
	displayType = DISPLAYTYPE,
	description = "A medium length rail for T-5000M sniper rifle allows installation of additional tactical equipment on the handguard. Manufactured by ORSIS.",
	weight = 0.05,
	value = 1095,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("t5000_med.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_t5000_rail_optic"] = {
	fullName = "ORSIS T-5000M scope mount",
	displayName = "T-5000 mount",
	displayType = DISPLAYTYPE,
	description = "A universal scope mount for the T-5000M sniper rifle, manufactured by ORSIS. Allows installation of various scopes.",
	weight = 0.1,
	value = 2050,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("t5000_scope.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tac_g17_tangodown"] = {
	fullName = "Glock TangoDown AAM-01 ACRO mount base",
	displayName = "G TD",
	displayType = DISPLAYTYPE,
	description = "The TangoDown mount for installing the Aimpoint ACRO reflex sight on the Glock MOS pistol slide to increase the weapon's speed and proficiency.",
	weight = 0.05,
	value = 2420,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_td.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tac_g17_zt_cap"] = {
	fullName = "Glock ZEV Tech sight mount cap",
	displayName = "G ZT cap",
	displayType = DISPLAYTYPE,
	description = "A protective steel cap covering the mount for reflex sights, manufactured by ZEV Technologies.",
	weight = 0.05,
	value = 265,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_zt.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ub_svds_std"] = {
	fullName = "SVDS upper band",
	displayName = "SVDS UB",
	displayType = DISPLAYTYPE,
	description = "A standard upper band for SVDS sniper rifles and compatibles, allows installation of rear sights.",
	weight = 0.2,
	value = 3755,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svd_up.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ub_tkpd_std"] = {
	fullName = "TKPD front trunnion",
	displayName = "TKPD",
	displayType = DISPLAYTYPE,
	description = "A handguard mounting trunnion for the TKPD assault carbine.",
	weight = 0.2,
	value = 6195,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tkpd_up.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_urxlong"] = {
	fullName = "KAC URX 3/3.1 long panel",
	displayName = "URX long",
	displayType = DISPLAYTYPE,
	description = "Long rail cover for URX 3/3.1 handguards, manufactured by Knights Armament.",
	weight = 0.05,
	value = 2365,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("urx_l.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_urxlong_fde"] = {
	fullName = "KAC URX 3/3.1 long panel (Flat dark earth)",
	displayName = "URX long",
	displayType = DISPLAYTYPE,
	description = "Long rail cover for URX 3/3.1 handguards, manufactured by Knights Armament. Flat dark earth.",
	weight = 0.05,
	value = 2365,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("urx_l_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_urxpanel_3"] = {
	fullName = "KAC URX 3 3 inch rail",
	displayName = "3In. URX",
	displayType = DISPLAYTYPE,
	description = "KAC URX 3 1 inch rail allows installation of additional equipment on the Knights Armanent Company URX handguards.",
	weight = 0.05,
	value = 2090,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("urx_rail_3.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_urxshort"] = {
	fullName = "KAC URX 3/3.1 short panel",
	displayName = "URX short",
	displayType = DISPLAYTYPE,
	description = "Short rail cover for URX 3/3.1 handguards, manufactured by Knights Armament.",
	weight = 0.05,
	value = 1555,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("urx_s.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_urxshort_fde"] = {
	fullName = "KAC URX 3/3.1 short panel (Flat dark earth)",
	displayName = "URX short",
	displayType = DISPLAYTYPE,
	description = "Short rail cover for URX 3/3.1 handguards, manufactured by Knights Armament. Flat dark earth.",
	weight = 0.05,
	value = 1555,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("urx_s_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_urxstoper"] = {
	fullName = "KAC URX 3/3.1 stopper panel",
	displayName = "KAC stoper",
	displayType = DISPLAYTYPE,
	description = "Stopper panel for URX 3/3.1 handguards, manufactured by Knights Armament.",
	weight = 0.05,
	value = 3780,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("urx_stopper.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_urxstoper_fde"] = {
	fullName = "KAC URX 3/3.1 stopper panel (Flat dark earth)",
	displayName = "KAC stoper",
	displayType = DISPLAYTYPE,
	description = "Stopper panel for URX 3/3.1 handguards, manufactured by Knights Armament. Flat dark earth.",
	weight = 0.05,
	value = 3780,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("urx_stopper_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_hg2_werkz"] = {
	fullName = "UZI StormWerkz lower handguard rail",
	displayName = "UZI rail",
	displayType = DISPLAYTYPE,
	description = "A rail designed for installation on the UZI submachine gun handguard. Manufactured by StormWerkz.",
	weight = 0.05,
	value = 930,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_werkz.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_rail_hg"] = {
	fullName = "UZI handguard rail",
	displayName = "UZI rail",
	displayType = DISPLAYTYPE,
	description = "A handguard rail for the UZI submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.05,
	value = 865,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_rail.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_rail_optic"] = {
	fullName = "UZI StormWerkz Scope Mount",
	displayName = "UZI Mount",
	displayType = DISPLAYTYPE,
	description = "A rail mount for installing various optics on the UZI submachine gun. Manufactured by StormWerkz.",
	weight = 0.05,
	value = 3295,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_scope.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzipro_hgrail"] = {
	fullName = "UZI PRO SMG rail adapter",
	displayName = "UZI PRO rail",
	displayType = DISPLAYTYPE,
	description = "A rail adapter for the UZI PRO SMG submachine gun, allows installation of tactical equipment on the sides of the weapon. Manufactured by Israel Weapon Industries.",
	weight = 0.05,
	value = 1225,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_adapter.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_val_mount_6p"] = {
	fullName = "VSS/VAL TOZ 6P29M mount",
	displayName = "6P29M",
	displayType = DISPLAYTYPE,
	description = "The TOZ 6P29M mount, developed for a modified version of the VSS sniper rifle. It is installed on the VSS standard silencer and forms 3 rails intended for mounting additional equipment on the weapon.",
	weight = 0.1,
	value = 7925,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("val_6p.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_val_mount_b3"] = {
	fullName = "VSS/VAL Zenit B-3 ring mount",
	displayName = "B-3",
	displayType = DISPLAYTYPE,
	description = "The B-3 combo mounts are installed on the VSS/VAL sound suppressor to form a Picatinny rail for installation of additional weapon equipment. Manufactured by Zenit.",
	weight = 0.05,
	value = 3155,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("val_b3.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_val_mount_b3c"] = {
	fullName = "VSS/VAL Zenit B-3 mount combo",
	displayName = "B-3 combo",
	displayType = DISPLAYTYPE,
	description = "The B-3 combo mounts are installed on the VSS/VAL sound suppressor to form a Picatinny rail for installation of additional weapon equipment. Manufactured by Zenit.",
	weight = 0.1,
	value = 5445,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("val_combo.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_valmod4_siderail"] = {
	fullName = "NB MOD.4 Kit 3.5 inch rail",
	displayName = "MOD.4",
	displayType = DISPLAYTYPE,
	description = "A 3.5 inch rail for the AS VAL MOD.4 handguard. Allows installation of tactical equipment.",
	weight = 0.05,
	value = 3030,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("val_kit.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_valmod4_topcover"] = {
	fullName = "AS VAL NB MOD.4 Kit top cover",
	displayName = "MOD.4",
	displayType = DISPLAYTYPE,
	description = "A custom mount for the AS VAL MOD.4. Allows installation of optics.",
	weight = 0.1,
	value = 3540,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("val_kit_cover.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vpo215_rail_optic"] = {
	fullName = "VPO-215 scope rail mount",
	displayName = "VPO-215 rail",
	displayType = DISPLAYTYPE,
	description = 'A universal rail mount for the VPO-215 "Gornostay" rifle, allows installation of various optics.',
	weight = 0.1,
	value = 1570,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vpo215_scope.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_fc1"] = {
	fullName = "DI Optical FC1 sight mount",
	displayName = "FC1 SM",
	displayType = DISPLAYTYPE,
	description = "A special mount for the FC1 reflex sight. Manufactured by DI Optical.",
	weight = 0.05,
	value = 1630,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("items/missing.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_fc1_spacer"] = {
	fullName = "DI Optical FC1 Spacer",
	displayName = "FC1 spc.",
	displayType = DISPLAYTYPE,
	description = "A riser for the FC1 reflex sight. Manufactured by DI Optical.",
	weight = 0.05,
	value = 1150,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("items/missing.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m590_rs_mount"] = {
	fullName = "M590 Precision Reflex Scope Mount",
	displayName = "PRI M590",
	displayType = DISPLAYTYPE,
	description = "A Weaver rail for the Mossberg 590 shotgun, installed on the receiver. Manufactured by Precision Reflex.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/68badf5030572e90770cd688.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m870_mount_toni"] = {
	fullName = "Toni System Tactical Barrel Clamp",
	displayName = "TS TBC",
	displayType = DISPLAYTYPE,
	description = "The Tactical Barrel Clamp is designed for mounting on tubular magazines and barrels with a diameter of 20-27 millimeters. Features a rail for attaching additional equipment. Manufactured by Toni System.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/676177b09cfcc4c25b027446.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_dovetail_rsr_top"] = {
	fullName = "RS Regulate AKR top mount",
	displayName = "AKR",
	displayType = DISPLAYTYPE,
	description = "The AKR 1913 Railed 0 MOA Mount, installed on the AK-303M Lower Mount. Manufactured by RS Regulate.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/65f1b2a5c14a07890801fc70.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_keymod_casv2"] = {
	fullName = "Vltor CASV 2 inch rail",
	displayName = 'Vltor 2"',
	displayType = DISPLAYTYPE,
	description = "The Vltor CASV 2 inch rail allows installation of additional equipment on the handguards with the standard CASV interface.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/5b7be4575acfc400161d0832.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_keymod_casv4"] = {
	fullName = "Vltor CASV 4 inch rail",
	displayName = 'Vltor 4"',
	displayType = DISPLAYTYPE,
	description = "The Vltor CASV 4 inch rail allows installation of additional equipment on the handguards with the standard CASV interface.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/5b7be4645acfc400170e2dcc.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_keymod_casv6"] = {
	fullName = "Vltor CASV 5 inch rail",
	displayName = 'Vltor 5"',
	displayType = DISPLAYTYPE,
	description = "The Vltor CASV 5 inch rail allows installation of additional equipment on the handguards equipped with a standard CASV interface.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/5b7be46e5acfc400170e2dcf.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_zenit_b2"] = {
	fullName = "Zenit B-2 rail",
	displayName = "B-2",
	displayType = DISPLAYTYPE,
	description = "A proprietary rail that allows installation of tactical equipment. Installed on the Basis series interface. Manufactured by Zenit.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/682317390ee6ef08a60e4547.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_zenit_b2u"] = {
	fullName = "Zenit B-2U rail",
	displayName = "B-2U",
	displayType = DISPLAYTYPE,
	description = "A proprietary rail that allows installation of tactical equipment. Installed on the Basis series interface. Manufactured by Zenit.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/682317428639961c6001dbf1.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_svt_addley1"] = {
	fullName = "SVT-40 Addley Precision Smith-less Scope Mount",
	displayName = "SVT SL",
	displayType = DISPLAYTYPE,
	description = "A scope mount designed for the SVT-40. Manufactured by Addley Precision.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/6888954ba66a069e0405a9aa.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_svt_addley2"] = {
	fullName = "SVT-40 Addley Precision Steel Scope Mount",
	displayName = "SVT S",
	displayType = DISPLAYTYPE,
	description = "A scope mount designed for the SVT-40. Manufactured by Addley Precision.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/68889c930b29b8032504f369.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_2d"] = {
	fullName = "Zenit KR-2 old gen mount",
	displayName = "KR-2",
	displayType = DISPLAYTYPE,
	description = "The KR-2 mount designed for installing various tactical illumination devices on Weaver type rails. Manufactured by Zenit.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/646f6322f43d0c5d62063715.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vpo215_stock_tac_hg"] = {
	fullName = "VPO-215 tactical chassis front rail",
	displayName = "VPO-215 tac.",
	displayType = DISPLAYTYPE,
	description = "A front rail for the VPO-215 tactical chassis. Allows installation of tactical equipment.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/68b97e7fd9dbc47f4808b09d.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vsk_hg_9a_tts_side"] = {
	fullName = "TTS System 2.5 inch rail",
	displayName = 'TTS 2.5"',
	displayType = DISPLAYTYPE,
	description = "A 2.5 inch rail that allows installation of additional equipment on the TTS System handguard. Manufactured by TTS System.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/688b7c1b0e99e554a90c0fb7.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vsk_hg_9a_tts_top"] = {
	fullName = "TTS System handguard top rail",
	displayName = "TTS top",
	displayType = DISPLAYTYPE,
	description = "A compact lightweight rail for the TTS System handguard, designed for installation of small optics or tactical devices. Manufactured by TTS System.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/688b7b0d934c59b7bf0af0b7.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}
