local DISPLAYTYPE = "Gas Block"
local ATTICONPATH = "items/attachments/gasblocks/"

local function AttMaterial(imgPath)
	if SERVER then return end
	return Material(ATTICONPATH .. imgPath, "smooth")
end

EFGM.ITEMS["arc9_att_eft_ak12_gas_std"] = {
	fullName = "AK-12 gas tube",
	displayName = "AK-12 gas",
	displayType = DISPLAYTYPE,
	description = "A standard-issue gas tube for AK-12 automatic rifles. Gas tubes channel the travel direction of gas piston.",
	weight = 0.1,
	value = 2600,
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

EFGM.ITEMS["arc9_att_eft_ak50_gas_std"] = {
	fullName = "AK-50 M-LOK handguard with gas tube",
	displayName = "AK-50",
	displayType = DISPLAYTYPE,
	description = "A handguard and gas tube for the AK-50. The handguard is equipped with an M-LOK standard interface for attaching additional equipment, and also has picatinny rail for mounting tactical devices. Manufactured by The AK Guy LTD.",
	weight = 0.7,
	value = 6280,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak50.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aksu_gas_ak"] = {
	fullName = "AKS-74U gas tube",
	displayName = "6P26 Sb.1-2",
	displayType = DISPLAYTYPE,
	description = "A standard gas tube for AKS-74U automatic rifles. Gas tubes channel the travel direction of gas piston.",
	weight = 0.05,
	value = 1150,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aks74u.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_gas_cmmg"] = {
	fullName = "AR-10 CMMG low profile gas block",
	displayName = "CMMG",
	displayType = DISPLAYTYPE,
	description = "A low-profile gas block designed for AR-10 weapon systems and the Mk47 Mutant assault rifle. Manufactured by CMMG.",
	weight = 0.01,
	value = 4620,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("cmmg.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_gas_jp"] = {
	fullName = "AR-10 JP Enterprises Gas System-6",
	displayName = "GS-6",
	displayType = DISPLAYTYPE,
	description = "Installed as a standard AR-10/AR-15-based weapons gas block, adding a Picatinny rail that allows installing alternative accessory front sights.",
	weight = 0.05,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("gs_6.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_gas_kac"] = {
	fullName = "AR-10 KAC Low Profile Gas Block",
	displayName = "KAC",
	displayType = DISPLAYTYPE,
	description = "A low-profile gas block designed for use in SR-25 marksman rifles and AR-10 compatible weapon systems. Manufactured by Knight's Armament Company.",
	weight = 0.05,
	value = 8100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("kac.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g28_gas_std"] = {
	fullName = "HK417 low profile gas block",
	displayName = "HK417",
	displayType = DISPLAYTYPE,
	description = "A standard gas block for HK417 assault rifles and compatibles, manufactured by Heckler & Koch.",
	weight = 0.1,
	value = 3360,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hk417.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_gas_std"] = {
	fullName = "HK G36 gas block",
	displayName = "G36 block",
	displayType = DISPLAYTYPE,
	description = "A gas block designed for the G36 assault rifles, manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 1680,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_gas_ak_6p1"] = {
	fullName = "AKM gas tube (6P1 Sb.1-2)",
	displayName = "6P1 Sb.1-2",
	displayType = DISPLAYTYPE,
	description = "A standard gas tube for AKM automatic rifles. Gas tubes channel the travel direction of gas piston.",
	weight = 0.1,
	value = 2055,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("akm.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_gas_ak_6p20"] = {
	fullName = "AK-74 gas tube (6P20 Sb.1-2)",
	displayName = "6P20 Sb.1-2",
	displayType = DISPLAYTYPE,
	description = "A standard gas tube for AK-74 automatic rifles. Gas tubes channel the travel direction of gas piston.",
	weight = 0.1,
	value = 1000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak74.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_gas_ak_molot"] = {
	fullName = "Molot AKM-type gas tube",
	displayName = "Molot",
	displayType = DISPLAYTYPE,
	description = "A gas tube for AKM-type automatic rifles and Vepr carbines, manufactured by Molot Arms. Gas tubes channel the travel direction of gas piston.",
	weight = 0.1,
	value = 2275,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("molot.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_gas_ak_vdmcs"] = {
	fullName = "AK Kiba Arms VDM CS gas tube",
	displayName = "VDM CS",
	displayType = DISPLAYTYPE,
	description = "A custom gas tube for specific AK family handguards.",
	weight = 0.1,
	value = 2905,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vdmcs.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_gas_ar15_jp"] = {
	fullName = "AR-15 JP Enterprises Gas System-5B",
	displayName = "GS-5B",
	displayType = DISPLAYTYPE,
	description = "Low-profile gas system, which can be installed as regular on AR-15-based weapons.",
	weight = 0.05,
	value = 7800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("gs5b.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_gas_ar15_lopro"] = {
	fullName = "AR-15 Ballistic Advantage Lo-Pro Gas Block",
	displayName = "Lo-Pro",
	displayType = DISPLAYTYPE,
	description = "A Low-profile gas block for AR-15 system barrels. Manufactured by Ballistic Advantage.",
	weight = 0.05,
	value = 7770,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("lopro.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_gas_ar15_m4fs"] = {
	fullName = "M4A1 front sight with gas block",
	displayName = "M4 FS",
	displayType = DISPLAYTYPE,
	description = "Standard issued M4A1 front sight.",
	weight = 0.1,
	value = 2780,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m4fs.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_gas_ar15_mk12"] = {
	fullName = "AR-15 Daniel Defense MK12 Low Profile Gas Block",
	displayName = "MK12",
	displayType = DISPLAYTYPE,
	description = "The MK12 Gas Block is only compatible with the RIS II (M4A1 & MK18) family of rail systems manufactured by Daniel Defense. It is not compatible with any other Daniel Defense rail system. This is due to various clearance issues. This only applies to rail system lengths that would completely shroud the gas block. If you are mounting the gas block to the barrel without being shrouded by the rail system, then this does not apply. In that case, it will fit as long as the barrel's diameter is .750.",
	weight = 0.05,
	value = 4750,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mk12.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_gas_ar15_mk12g1"] = {
	fullName = "AR-15 Precision Reflex Mk12 Gen.1 Flip-Up Front Sight Gas Block",
	displayName = "Mk12 Gen.1",
	displayType = DISPLAYTYPE,
	description = "A gas block with an integrated foldable front sight for the AR-15 platform. Manufactured by Precision Reflex.",
	weight = 0.1,
	value = 8095,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mk12gen1.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_gas_ar15_rg"] = {
	fullName = "AR-15 Windham Weaponry Rail Gas Block",
	displayName = "RGBlock",
	displayType = DISPLAYTYPE,
	description = "Installed as replacement to standard AR-15-based weapons gas blocks, it adds a Picatinny rail that allows the installation of your own front sight.",
	weight = 0.1,
	value = 5440,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("windham.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_gas_ar15_sentry7"] = {
	fullName = "AR-15 SLR Rifleworks Sentry 7 gas block",
	displayName = "Sentry 7",
	displayType = DISPLAYTYPE,
	description = "A low-profile gas block that replaces the factory gas tube collar on AR-10/AR-15 family carbines and rifles. Manufactured by SLR Rifleworks.",
	weight = 0.05,
	value = 7590,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sentry.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_gas_hk416_std"] = {
	fullName = "HK 416A5 low profile gas block",
	displayName = "416A5",
	displayType = DISPLAYTYPE,
	description = "Regular HK416A5 Gas Block.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hk416.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mcx_gb"] = {
	fullName = "MCX gas block",
	displayName = "MCX block",
	displayType = DISPLAYTYPE,
	description = "A gas block designed for the MCX assault rifles, manufactured by SIG Sauer.",
	weight = 0.05,
	value = 4400,
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

EFGM.ITEMS["arc9_att_eft_mcx_gbcalx"] = {
	fullName = "MCX Cal-X Mid-Piston gas block",
	displayName = "MCX mid",
	displayType = DISPLAYTYPE,
	description = "A gas block with a medium length piston designed for the MCX assault rifles, manufactured by SIG Sauer.",
	weight = 0.05,
	value = 5175,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx_piston.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mk18_gas_std"] = {
	fullName = "Mk-18 gas block",
	displayName = "Mk18 block",
	displayType = DISPLAYTYPE,
	description = "A gas block designed for the Mk-18 rifle, manufactured by SWORD International.",
	weight = 0.1,
	value = 4500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mk18.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_nl545_gass"] = {
	fullName = "NL545 gas block",
	displayName = "NL545 gas",
	displayType = DISPLAYTYPE,
	description = "An adjustable gas block designed for NL545 series carbines and assault rifles. Manufactured by Custom Guns.",
	weight = 0.05,
	value = 6210,
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

EFGM.ITEMS["arc9_att_eft_sag545_gastube"] = {
	fullName = "AK-545 SAG Mk. 2.1 gas tube",
	displayName = "SAG Mk.2.1",
	displayType = DISPLAYTYPE,
	description = "The Mk. 2.1 gas tube for AK-545 carbines manufactured by Sureshot Armament Group.",
	weight = 0.1,
	value = 2645,
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

EFGM.ITEMS["arc9_att_eft_sks_gastube"] = {
	fullName = "SKS gas tube",
	displayName = "SKS gas",
	displayType = DISPLAYTYPE,
	description = "A standard gas tube for the SKS carbine manufactured by TOZ. Gas tubes channel the travel direction of gas piston.",
	weight = 0.1,
	value = 1900,
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

EFGM.ITEMS["arc9_att_eft_sks_gastube_op"] = {
	fullName = "OP-SKS gas tube",
	displayName = "OP-SKS gas",
	displayType = DISPLAYTYPE,
	description = "A standard gas tube for the OP-SKS carbine manufactured by Molot Arms. Gas tubes channel the travel direction of gas piston.",
	weight = 0.1,
	value = 1830,
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

EFGM.ITEMS["arc9_att_eft_spear_gas_std"] = {
	fullName = "MCX SPEAR Adjustable Gas Piston",
	displayName = "SPEAR gas",
	displayType = DISPLAYTYPE,
	description = "A gas piston for the MCX SPEAR assault rifle. Manufactured by SIG Sauer.",
	weight = 0.05,
	value = 6615,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcxspear.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_svds_gas_std"] = {
	fullName = "SVDS gas tube",
	displayName = "SVDS gas",
	displayType = DISPLAYTYPE,
	description = "A standard gas tube for SVDS sniper rifles. Gas tubes channel the travel direction of gas piston.",
	weight = 0.1,
	value = 2745,
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

EFGM.ITEMS["arc9_att_eft_tkpd_gas_std"] = {
	fullName = "TKPD gas tube",
	displayName = "TKPD gas",
	displayType = DISPLAYTYPE,
	description = "A standard gas tube for the TKPD assault carbine.",
	weight = 0.1,
	value = 2745,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tkpd.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vityaz_gas_sagmk1"] = {
	fullName = "PP-19-01 Vityaz SAG MK1 M-LOK handguard with gas tube",
	displayName = "SAG MK1",
	displayType = DISPLAYTYPE,
	description = "A combined kit consisting of a handguard and a milled gas tube designed to improve the performance of the PP-19-01 Vityaz and the Saiga-9 civilian carbine. The handguard is equipped with an M-LOK interface for installing additional equipment, and the gas tube has a picatinny rail for mounting sights and tactical units. Manufactured by Sureshot Armament Group.",
	weight = 0.3,
	value = 6970,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pp19_sag.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vityaz_gas_std"] = {
	fullName = 'PP-19-01 "Vityaz" gas tube',
	displayName = "19-01 gas",
	displayType = DISPLAYTYPE,
	description = "A standard gas tube for PP-19-01 Vityaz submachine guns. Gas tubes channel the travel direction of gas piston.",
	weight = 0.1,
	value = 1395,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pp19.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vpo101_gas_std"] = {
	fullName = "VPO-101 gas tube",
	displayName = "VPO-101",
	displayType = DISPLAYTYPE,
	description = "A standard gas tube for VPO-101 Vepr Hunter carbines. Gas tubes channel the travel direction of gas piston.",
	weight = 0.1,
	value = 1830,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vpo101.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_gas_m110"] = {
	fullName = "AR-10 KAC M110 Double High Picatinny Gas Block",
	displayName = "DHP",
	displayType = DISPLAYTYPE,
	description = "A gas block for AR-10 series rifles which adds a Picatinny rail for installation of various tactical devices. Manufactured by Knight's Armament Company.",
	weight = 0.1,
	value = 19600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("dhp.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar10_gas_m110_fde"] = {
	fullName = "AR-10 KAC M110 Double High Picatinny Gas Block (Taupe)",
	displayName = "DHP",
	displayType = DISPLAYTYPE,
	description = "A gas block for AR-10 series rifles which adds a Picatinny rail for installation of various tactical devices. Manufactured by Knight's Armament Company. Coated in cerakote Taupe color.",
	weight = 0.1,
	value = 19600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("dhp_taupe.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}
