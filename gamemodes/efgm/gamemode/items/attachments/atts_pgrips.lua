local DISPLAYTYPE = "Pistol Grip"
local ATTICONPATH = "items/attachments/pgrips/"

local function AttMaterial(imgPath)
	if SERVER then return end
	return Material(ATTICONPATH .. imgPath, "smooth")
end

EFGM.ITEMS["arc9_att_eft_1911_pgrip_gene"] = {
	fullName = "M1911 Kiba Arms Geneburn custom side grips",
	displayName = "1911 Geneburn",
	displayType = DISPLAYTYPE,
	description = "Custom grip panels for the M1911 pistol, manufactured by Kiba Arms.",
	weight = 0.1,
	value = 41000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1911_geneburn.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_1911_pgrip_m45"] = {
	fullName = "M45A1 Mil-Tac GVT G10 side grips",
	displayName = "1911 G10",
	displayType = DISPLAYTYPE,
	description = "The GVT G10 fiberglass grip panels for the Colt M45A1 pistol, manufactured by Mil-Tac.",
	weight = 0.2,
	value = 810,
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

EFGM.ITEMS["arc9_att_eft_1911_pgrip_m45_blk"] = {
	fullName = "M45A1 Mil-Tac GVT G10 black side grips",
	displayName = "1911 G10 BLK",
	displayType = DISPLAYTYPE,
	description = "The GVT G10 fiberglass grip panels for the Colt M45A1 pistol, manufactured by Mil-Tac.",
	weight = 0.2,
	value = 810,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m45a1_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_1911_pgrip_pach"] = {
	fullName = "M1911 Pachmayr American Legend Grip #423",
	displayName = "1911 Pachmayr",
	displayType = DISPLAYTYPE,
	description = 'The "American Legend Grip #423" grips for the M1911 pistol, manufactured by Pachmayr.',
	weight = 0.1,
	value = 3800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("legend423.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_1911_pgrip_std"] = {
	fullName = "M1911A1 side grips",
	displayName = "1911 grip",
	displayType = DISPLAYTYPE,
	description = "Standard-issue side grip panels for the M1911A1 pistol, manufactured by Colt.",
	weight = 0.2,
	value = 450,
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

EFGM.ITEMS["arc9_att_eft_aek_grip_ergo"] = {
	fullName = "AEK series ergonomic polymer pistol grip",
	displayName = "Ergo",
	displayType = DISPLAYTYPE,
	description = "Ergonomic polymer pistol grip for the AEK series of assault rifles.",
	weight = 0.1,
	value = 9950,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aek_ergo.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aek_grip_grooved"] = {
	fullName = "AEK series grooved polymer pistol grip",
	displayName = "Grooved",
	displayType = DISPLAYTYPE,
	description = "Grooved polymer pistol grip for the AEK series of assault rifles.",
	weight = 0.1,
	value = 7100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aek_grooved.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aek_grip_plum"] = {
	fullName = "AEK series prototype polymer pistol grip",
	displayName = "Proto",
	displayType = DISPLAYTYPE,
	description = "Prototype polymer pistol grip for the AEK series of assault rifles.",
	weight = 0.1,
	value = 3950,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aek_proto.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aek_grip_std"] = {
	fullName = "AEK series polymer pistol grip",
	displayName = "Standard",
	displayType = DISPLAYTYPE,
	description = "Standard polymer pistol grip for the AEK series of assault rifles.",
	weight = 0.1,
	value = 2950,
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

EFGM.ITEMS["arc9_att_eft_aps_pg_std"] = {
	fullName = "APS bakelite side-pieces",
	displayName = "APS bak.",
	displayType = DISPLAYTYPE,
	description = "Standard-issue APS pistol bakelite side grips.",
	weight = 0.1,
	value = 490,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aps_bak.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_a1"] = {
	fullName = "AR-15 Colt A1 pistol grip",
	displayName = "A1",
	displayType = DISPLAYTYPE,
	description = "An older style polymer pistol grip manufactured by Colt.",
	weight = 0.1,
	value = 1930,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("colta1.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_colta2"] = {
	fullName = "AR-15 Colt A2 pistol grip",
	displayName = "Colt A2",
	displayType = DISPLAYTYPE,
	description = "Colt A2 polymer pistol grip can be installed on any weapon compatible with AR-15 grips. Standard service grip for all AR-15-based weapons of US Army and USMC.",
	weight = 0.1,
	value = 2170,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("colta2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_diecsfde"] = {
	fullName = "AR-15 Damage Industries ECS pistol grip (FDE)",
	displayName = "ESC FDE",
	displayType = DISPLAYTYPE,
	description = "The ECS polymer pistol grip can be installed on any weapon compatible with AR-15 grips. Flat Dark Earth version.",
	weight = 0.1,
	value = 2490,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("diecs_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_dlg123"] = {
	fullName = "AR-15 DLG Tactical DLG-123 pistol grip",
	displayName = "DLG-123",
	displayType = DISPLAYTYPE,
	description = "The DLG-123 pistol grip can be installed on any weapon compatible with AR-15 systems. Manufactured by DLG Tactical.",
	weight = 0.1,
	value = 2410,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("dlg123.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_dlg138"] = {
	fullName = "AR-15 DLG Tactical DLG-138 pistol grip (Black)",
	displayName = "DLG138",
	displayType = DISPLAYTYPE,
	description = "The DLG-138 pistol grip can be installed on any weapon compatible with AR-15 systems. Manufactured by DLG Tactical. Black version.",
	weight = 0.1,
	value = 2200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("dlg138.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_dlg138_fde"] = {
	fullName = "AR-15 DLG Tactical DLG-138 pistol grip (FDE)",
	displayName = "DLG138",
	displayType = DISPLAYTYPE,
	description = "The DLG-138 pistol grip can be installed on any weapon compatible with AR-15 systems. Manufactured by DLG Tactical. Flat Dark Earth version.",
	weight = 0.1,
	value = 2200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("dlg138_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_f1s1"] = {
	fullName = "AR-15 F1 Firearms Skeletonized Style 1 pistol grip",
	displayName = "F1 St1",
	displayType = DISPLAYTYPE,
	description = "A lightweight ergonomical pistol grip with finger grooves for AR-15 weapon systems, manufactured by F1 Firearms.",
	weight = 0.1,
	value = 9000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("f1s1.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_f1s2"] = {
	fullName = "AR-15 F1 Firearms Skeletonized Style 2 pistol grip",
	displayName = "F1 St2",
	displayType = DISPLAYTYPE,
	description = "A lightweight ergonomical pistol grip with finger grooves for AR-15 weapon systems, manufactured by F1 Firearms.",
	weight = 0.1,
	value = 16800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("f1s2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_f1s2pc"] = {
	fullName = "AR-15 F1 Firearms Skeletonized Style 2 PC pistol grip",
	displayName = "F1 St2 PC",
	displayType = DISPLAYTYPE,
	description = "A lightweight ergonomical pistol grip with finger grooves for AR-15 weapon systems, manufactured by F1 Firearms. Wrapped with paracord for maximum comfort and minimum hand slip.",
	weight = 0.1,
	value = 21000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("f1s2pc.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_f1s2pc_blk"] = {
	fullName = "AR-15 F1 Firearms Skeletonized Style 2 PC pistol grip",
	displayName = "F1 St2 PC",
	displayType = DISPLAYTYPE,
	description = "A lightweight ergonomical pistol grip with finger grooves for AR-15 weapon systems, manufactured by F1 Firearms. Wrapped with paracord for maximum comfort and minimum hand slip.",
	weight = 0.05,
	value = 18300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("f1s2pc_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_f1s2pc_red"] = {
	fullName = "AR-15 F1 Firearms Skeletonized Style 2 PC pistol grip",
	displayName = "F1 St2 PC",
	displayType = DISPLAYTYPE,
	description = "A lightweight ergonomical pistol grip with finger grooves for AR-15 weapon systems, manufactured by F1 Firearms. Wrapped with paracord for maximum comfort and minimum hand slip.",
	weight = 0.05,
	value = 18300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("f1s2pc_red.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_f1s2pc_wht"] = {
	fullName = "AR-15 F1 Firearms Skeletonized Style 2 PC pistol grip",
	displayName = "F1 St2 PC",
	displayType = DISPLAYTYPE,
	description = "A lightweight ergonomical pistol grip with finger grooves for AR-15 weapon systems, manufactured by F1 Firearms. Wrapped with paracord for maximum comfort and minimum hand slip.",
	weight = 0.05,
	value = 18300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("f1s2pc_wht.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_grals"] = {
	fullName = "AR-15 Naroh Arms GRAL-S pistol grip",
	displayName = "GRAL-S",
	displayType = DISPLAYTYPE,
	description = "The GRAL-S polymer pistol grip by Naroh Arms can be installed on any weapon that is compatible with the AR-15 pistol grips.",
	weight = 0.1,
	value = 26050,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("gral5.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_hexgrip"] = {
	fullName = "AR-15 Tactical Dynamics Hexgrip pistol grip",
	displayName = "Hexgrip",
	displayType = DISPLAYTYPE,
	description = "The Hexgrip ergonomical pistol grip for the AR-15 platform weapon systems, manufactured by Tactical Dynamics.",
	weight = 0.1,
	value = 6710,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hexgrip.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_hg15"] = {
	fullName = "AR-15 Hera Arms HG-15 pistol grip",
	displayName = "HG-15",
	displayType = DISPLAYTYPE,
	description = "The Hera Arms HG-15 pistol grip can be installed on any weapon compatible with AR-15 grips.",
	weight = 0.1,
	value = 7800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hexgrip.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_hkbg"] = {
	fullName = "AR-15 HK Battle Grip pistol grip",
	displayName = "Battle Grip",
	displayType = DISPLAYTYPE,
	description = "The HK Battle Grip pistol grip can be installed on any weapon compatible with AR-15 grips.",
	weight = 0.1,
	value = 2300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hkbg.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_hkbgbeav"] = {
	fullName = "AR-15 HK Battle Grip Beavertail pistol grip",
	displayName = "Beavertail",
	displayType = DISPLAYTYPE,
	description = "The HK Battle Grip pistol grip with Beavertail can be installed on any weapon compatible with AR-15 grips.",
	weight = 0.1,
	value = 6100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("beaver.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_hkbgbeavral"] = {
	fullName = "AR-15 HK Battle Grip Beavertail pistol grip (RAL 8000)",
	displayName = "Beavertail",
	displayType = DISPLAYTYPE,
	description = "The HK Battle Grip pistol grip with Beavertail can be installed on any weapon compatible with AR-15 grips. RAL 8000 color version.",
	weight = 0.1,
	value = 6100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("beaverral.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_hkv2"] = {
	fullName = "AR-15 HK V2 pistol grip",
	displayName = "HK V2",
	displayType = DISPLAYTYPE,
	description = "The HK V2 pistol grip can be installed on any weapon compatible with AR-15 grips. Manufactured by Heckler & Koch.",
	weight = 0.1,
	value = 2830,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hkv2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_hkv2_blk"] = {
	fullName = "AR-15 HK V2 pistol grip",
	displayName = "HK V2",
	displayType = DISPLAYTYPE,
	description = "The HK V2 pistol grip can be installed on any weapon compatible with AR-15 grips. Manufactured by Heckler & Koch.",
	weight = 0.1,
	value = 2830,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hkv2_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_hog"] = {
	fullName = "Hogue OverMolded Rubber Grip (Black)",
	displayName = "OMRG",
	displayType = DISPLAYTYPE,
	description = "A fiberglass rubber-overmolded anti-slip pistol grip for AR systems, manufactured by Hogue. Black version.",
	weight = 0.1,
	value = 8430,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hog_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_hogfde"] = {
	fullName = "Hogue OverMolded Rubber Grip (FDE)",
	displayName = "OMRG FDE",
	displayType = DISPLAYTYPE,
	description = "A fiberglass rubber-overmolded anti-slip pistol grip for AR systems, manufactured by Hogue. Flat Dark Earth version.",
	weight = 0.1,
	value = 8430,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hog_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_hogge"] = {
	fullName = "Hogue OverMolded Rubber Grip (Ghillie Earth)",
	displayName = "OMRG GE",
	displayType = DISPLAYTYPE,
	description = "A fiberglass rubber-overmolded anti-slip pistol grip for AR systems, manufactured by Hogue. Ghillie Earth version.",
	weight = 0.1,
	value = 8430,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hog_ge.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_hoggg"] = {
	fullName = "Hogue OverMolded Rubber Grip (Ghillie Green)",
	displayName = "OMRG GG",
	displayType = DISPLAYTYPE,
	description = "A fiberglass rubber-overmolded anti-slip pistol grip for AR systems, manufactured by Hogue. Ghillie Green version.",
	weight = 0.1,
	value = 8430,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hog_gg.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_hogod"] = {
	fullName = "Hogue OverMolded Rubber Grip (Olive Drab)",
	displayName = "OMRG OD",
	displayType = DISPLAYTYPE,
	description = "A fiberglass rubber-overmolded anti-slip pistol grip for AR systems, manufactured by Hogue. Olive Drab version.",
	weight = 0.1,
	value = 8430,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hog_od.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_mcx"] = {
	fullName = "MCX pistol grip",
	displayName = "MCX",
	displayType = DISPLAYTYPE,
	description = "A polymer pistol grip for MCX assault rifles, manufactured by SIG Sauer.",
	weight = 0.1,
	value = 1995,
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

EFGM.ITEMS["arc9_att_eft_ar_pgrip_miad"] = {
	fullName = "AR-15 Magpul MIAD pistol grip (FDE)",
	displayName = "MIAD",
	displayType = DISPLAYTYPE,
	description = "The Magpul MIAD (Mission Adaptable) polymer pistol grip can be installed on any weapon compatible with AR-15 grips. Flat Dark Earth version.",
	weight = 0.05,
	value = 5790,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("miad_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_miad_blk"] = {
	fullName = "AR-15 Magpul MIAD pistol grip (BLK)",
	displayName = "MIAD",
	displayType = DISPLAYTYPE,
	description = "The Magpul MIAD (Mission Adaptable) polymer pistol grip can be installed on any weapon compatible with AR-15 grips. Black version.",
	weight = 0.05,
	value = 5790,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("miad_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_moe"] = {
	fullName = "AR-15 Magpul MOE pistol grip (Black)",
	displayName = "MOE AR15",
	displayType = DISPLAYTYPE,
	description = "The polymer Magpul MOE (Magpul Original Equipment) pistol grip can be installed on any weapon compatible with AR-15 pistol grips. Thanks to the ergonomic shape and anti-slip texture, it makes the weapon grip and control more comfortably. The inside of the grip contains free space for spare parts, tools, batteries, and an accessories kit.",
	weight = 0.05,
	value = 8995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("moe_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_moefde"] = {
	fullName = "AR-15 Magpul MOE pistol grip (FDE)",
	displayName = "MOE AR15",
	displayType = DISPLAYTYPE,
	description = "The Magpul MOE (Magpul Original Equipment) polymer pistol grip can be installed on any weapon compatible with AR-15 pistol grips. Thanks to the ergonomic shape and anti-slip texture, it makes weapon grip and control more comfortable. Inside of the grip contains free space for spare parts, tools and accessories kit or batteries.",
	weight = 0.05,
	value = 8995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("moe_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_orion"] = {
	fullName = "AR-15 Aeroknox Orion pistol grip",
	displayName = "Orion",
	displayType = DISPLAYTYPE,
	description = "The Orion pistol grip can be installed on any weapon compatible with AR-15 grips. Manufactured Aeroknox.",
	weight = 0.1,
	value = 12990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("orion.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_psg1"] = {
	fullName = "AR-15 HK Ergo PSG-1 style pistol grip",
	displayName = "Ergo PSG-1",
	displayType = DISPLAYTYPE,
	description = "The Ergo PSG-1 style pistol grip can be installed on any weapon compatible with AR-15 grips.",
	weight = 0.1,
	value = 27805,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("psg1.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_sig"] = {
	fullName = "AR-15 SIG M400 Reduced Angle Pistol Grip (Coyote Tan) ",
	displayName = "M400",
	displayType = DISPLAYTYPE,
	description = "The polymer M400 Reduced Angle Pistol Grip fits any weapon compatible with AR-15 system. Manufactured by SIG Sauer. Coyote Tan version.",
	weight = 0.1,
	value = 4290,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sig.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_sig_blk"] = {
	fullName = "AR-15 SIG M400 Reduced Angle Pistol Grip (Black) ",
	displayName = "M400",
	displayType = DISPLAYTYPE,
	description = "The polymer M400 Reduced Angle Pistol Grip fits any weapon compatible with AR-15 system. Manufactured by SIG Sauer. Black version.",
	weight = 0.1,
	value = 4290,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sig_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_spr"] = {
	fullName = "AR-15 Sierra Precision SPR pistol grip",
	displayName = "SP SPR",
	displayType = DISPLAYTYPE,
	description = "The polymer SPR Handgrip can be installed on any weapon compatible with AR-15 pistol grips. Manufactured by Sierra Precision.",
	weight = 0.1,
	value = 11910,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("spspr.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_stark"] = {
	fullName = "AR-15 Stark AR Rifle Grip (Black)",
	displayName = "Stark AR",
	displayType = DISPLAYTYPE,
	description = "The AR Rifle Grip polymer pistol grip by Stark can be installed on any weapon that is compatible with the AR-15 pistol grips. Black version.",
	weight = 0.1,
	value = 10100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("stark_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_starkfde"] = {
	fullName = "AR-15 Stark AR Rifle Grip (FDE)",
	displayName = "Stark AR",
	displayType = DISPLAYTYPE,
	description = "The Stark AR Rifle Grip polymer pistol grip can be installed on any weapon that is compatible with the AR-15 pistol grips. Flat Dark Earth version.",
	weight = 0.1,
	value = 10100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("stark_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_tdskelet"] = {
	fullName = "AR-15 Tactical Dynamics Skeletonized pistol grip",
	displayName = "TD120001",
	displayType = DISPLAYTYPE,
	description = "A lightweight skeletonized pistol grip for AR-15 weapon systems and compatibles, manufactured by Tactical Dynamics.",
	weight = 0.05,
	value = 8030,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tdskele.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_axmc_grip"] = {
	fullName = "AI AXMC pistol grip",
	displayName = "AXMC PG",
	displayType = DISPLAYTYPE,
	description = "A pistol grip for the AXMC sniper rifle, manufactured by Accuracy International.",
	weight = 0.2,
	value = 3620,
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

EFGM.ITEMS["arc9_att_eft_axmc_gripar"] = {
	fullName = "AI AXMC GTAC AR-type pistol grip adapter",
	displayName = "GTAC",
	displayType = DISPLAYTYPE,
	description = "An adapter that allows AR-type pistol grips installation on the AXMC sniper rifle.",
	weight = 0.1,
	value = 41300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("gtac.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_6p1sb8"] = {
	fullName = "AK polymer pistol grip (6P1 Sb.8)",
	displayName = "6P1 Sb.8",
	displayType = DISPLAYTYPE,
	description = "An Izhmash polymer pistol grip for AK and compatibles, designed to replace the old bakelite grip.",
	weight = 0.05,
	value = 820,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("6p1sb8.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_6p1sb8v"] = {
	fullName = "AK bakelite pistol grip (6P1 Sb.8V)",
	displayName = "6P1 Sb.8v",
	displayType = DISPLAYTYPE,
	description = "An Izhmash-manufactured bakelite pistol grip for the AK automatic rifle and compatible weapon systems.",
	weight = 0.1,
	value = 800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("6p1.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_6p4sb9"] = {
	fullName = "AK bakelite pistol grip (6P4 Sb.9)",
	displayName = "6P4 Sb.9",
	displayType = DISPLAYTYPE,
	description = "A bakelite Izhmash-manufatured pistol grip for the AK automatic rifles and compatible weapon systems.",
	weight = 0.1,
	value = 800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("6p4sb9.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_aeroknox"] = {
	fullName = "AK Aeroknox Scorpius pistol grip",
	displayName = "Scorpius",
	displayType = DISPLAYTYPE,
	description = "A lightweight ergonomic pistol grip for AK-family automatic rifles, manufactured by Aeroknox.",
	weight = 0.1,
	value = 11200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_scorpius.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_agr47"] = {
	fullName = "AK FAB Defense AGR-47 pistol grip",
	displayName = "AGR47",
	displayType = DISPLAYTYPE,
	description = "The AGR-47 pistol grip for AK-family automatic rifles and compatibles, manufactured by FAB Defense.",
	weight = 0.1,
	value = 3450,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("agr47.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_agr47_blk"] = {
	fullName = "AK FAB Defense AGR-47 pistol grip",
	displayName = "AGR47",
	displayType = DISPLAYTYPE,
	description = "The AGR-47 pistol grip for AK-family automatic rifles and compatibles, manufactured by FAB Defense.",
	weight = 0.1,
	value = 3450,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("agr47_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_ags74"] = {
	fullName = "AK Custom Arms AGS-74 PRO + Sniper Kit pistol grip",
	displayName = "AGS-74",
	displayType = DISPLAYTYPE,
	description = 'A lightweight ergonomic pistol grip for AK series weapon systems, features the "Sniper Kit" palm shelf for user comfort and hand rest. Manufactured by Custom Arms.',
	weight = 0.1,
	value = 16675,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_ags74.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_ak12"] = {
	fullName = "AK-12 pistol grip",
	displayName = "AK-12",
	displayType = DISPLAYTYPE,
	description = "A standard-issue Izhmash-manufactured pistol grip for AK-12 automatic rifles and compatible weapon systems.",
	weight = 0.05,
	value = 2160,
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

EFGM.ITEMS["arc9_att_eft_grip_ak_ak_b"] = {
	fullName = "AK bakelite pistol grip",
	displayName = "Bakelite",
	displayType = DISPLAYTYPE,
	description = "A bakelite pistol grip for AK assault rifles and compatible weapon systems, manufactured by Molot Arms.",
	weight = 0.1,
	value = 920,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_bakelite.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_akepg"] = {
	fullName = "AK Strike Industries Enhanced Pistol Grip (Black)",
	displayName = "AK-EPG",
	displayType = DISPLAYTYPE,
	description = 'The AK-EPG (AK Enhanced Pistol Grip) ergonomic polymer pistol grip for AK-family automatic rifles. Manufactured by Strike Industries.',
	weight = 0.1,
	value = 5355,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_strike.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_akepg_fde"] = {
	fullName = "AK Strike Industries Enhanced Pistol Grip (FDE)",
	displayName = "AK-EPG (FDE)",
	displayType = DISPLAYTYPE,
	description = "The AK-EPG (AK Enhanced Pistol Grip) ergonomic polymer pistol grip for AK-family automatic rifles. Manufactured by Strike Industries.",
	weight = 0.1,
	value = 5355,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_strike_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_akm_b"] = {
	fullName = "AKM bakelite pistol grip",
	displayName = "AKM Bak.",
	displayType = DISPLAYTYPE,
	description = "A bakelite Izhmash-manufactured pistol grip for AKM automatic rifles.",
	weight = 0.1,
	value = 425,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("akm_bakelite.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_akm_w"] = {
	fullName = "AKM wooden pistol grip",
	displayName = "AKM Wood",
	displayType = DISPLAYTYPE,
	description = "A wooden Izhmash-manufactured pistol grip for AK-compatible weapons. Originally installed on AKM and AKMS.",
	weight = 0.1,
	value = 665,
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

EFGM.ITEMS["arc9_att_eft_grip_ak_cg101"] = {
	fullName = "AK CG101 AR-type pistol grip adapter",
	displayName = "CG101",
	displayType = DISPLAYTYPE,
	description = "An adapter that allows AR-type pistol grips installation on the AK rifles.",
	weight = 0.05,
	value = 1500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_cg101.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_mft"] = {
	fullName = "AK Mission First Tactical ENGAGE AK47 pistol grip",
	displayName = "MFT47",
	displayType = DISPLAYTYPE,
	description = "The ENGAGE AK47 pistol grip for AK-family automatic rifles and compatibles, manufactured by Mission First Tactical.",
	weight = 0.1,
	value = 4775,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_mft47.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_mg47"] = {
	fullName = "AK KGB MG-47 pistol grip",
	displayName = "MG-47",
	displayType = DISPLAYTYPE,
	description = "A machined aluminum grip with styling queues taken from triangle side folding stocks. Manufactured by Kraft Gun Builders.",
	weight = 0.1,
	value = 21090,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mg47_y.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_mg47_ar"] = {
	fullName = "AK KGB MG-47 pistol grip (Anodized Red)",
	displayName = "MG-47 (AR)",
	displayType = DISPLAYTYPE,
	description = "A machined aluminum grip with styling queues taken from triangle side folding stocks. Manufactured by Kraft Gun Builders.",
	weight = 0.1,
	value = 21090,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mg47_red.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_mg47_blk"] = {
	fullName = "AK KGB MG-47 pistol grip (Black)",
	displayName = "MG-47 (BLK)",
	displayType = DISPLAYTYPE,
	description = "A machined aluminum grip with styling queues taken from triangle side folding stocks. Manufactured by Kraft Gun Builders.",
	weight = 0.1,
	value = 21090,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mg47_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_moe"] = {
	fullName = "AK Magpul MOE pistol grip (Black)",
	displayName = "MOE",
	displayType = DISPLAYTYPE,
	description = "The MOE (Magpul Original Equipment) lightweight pistol grip for AK weapon systems, manufactured by Magpul.",
	weight = 0.1,
	value = 7600,
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

EFGM.ITEMS["arc9_att_eft_grip_ak_pp19"] = {
	fullName = 'PP-19-01 "Vityaz" pistol grip',
	displayName = "PP-19-01",
	displayType = DISPLAYTYPE,
	description = "An Izhmash-manufactured pistol grip for PP-19-01 Vityaz SMGs and Saiga-9 carbines.",
	weight = 0.1,
	value = 980,
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

EFGM.ITEMS["arc9_att_eft_grip_ak_puf"] = {
	fullName = "AK PUFGUN SG-M2 pistol grip",
	displayName = "SG-M2",
	displayType = DISPLAYTYPE,
	description = "The SG-M2 pistol grip for AK and compatible rifles. Manufactured by PUFGUN.",
	weight = 0.1,
	value = 6800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pufgun.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_rk3"] = {
	fullName = "AK Zenit RK-3 pistol grip",
	displayName = "RK-3",
	displayType = DISPLAYTYPE,
	description = "The RK-3 Klassika anatomic pistol grip features a built-in hermetically sealed battery storage compartment and is designed for installation as a replacement for the standard AK pistol grip.",
	weight = 0.2,
	value = 11880,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_rk3.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_tangodown"] = {
	fullName = "AK TangoDown Battle Grip pistol grip",
	displayName = "TD BG",
	displayType = DISPLAYTYPE,
	description = "A lightweight pistol grip for AK assault rifles, manufactured by TangoDown.",
	weight = 0.1,
	value = 8625,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_td.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_tangodown_fde"] = {
	fullName = "AK TangoDown Battle Grip pistol grip (FDE)",
	displayName = "TD BG (FDE)",
	displayType = DISPLAYTYPE,
	description = "A lightweight pistol grip for AK assault rifles, manufactured by TangoDown.",
	weight = 0.1,
	value = 8625,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_td_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_tapco_saw"] = {
	fullName = "AK TAPCO SAW-Style pistol grip (Black)",
	displayName = "TAPCO SAW",
	displayType = DISPLAYTYPE,
	description = "An anatomical pistol grip for AK series assault rifles, inspired by the M249 SAW LMG grip, manufactured by TAPCO.",
	weight = 0.1,
	value = 5115,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_tapco.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_tapco_saw_fde"] = {
	fullName = "AK TAPCO SAW-Style pistol grip (FDE)",
	displayName = "TAPCO SAW (FDE)",
	displayType = DISPLAYTYPE,
	description = "An anatomical pistol grip for AK series assault rifles, inspired by the M249 SAW LMG grip, manufactured by TAPCO.",
	weight = 0.1,
	value = 5115,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_tapco_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_us_palm"] = {
	fullName = "AK US Palm pistol grip",
	displayName = "US Palm",
	displayType = DISPLAYTYPE,
	description = "A light pistol grip for AK assault rifles, manufactured by US Palm.",
	weight = 0.1,
	value = 10430,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_palm.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_m9a3_std"] = {
	fullName = "M9A3 polymer side grips",
	displayName = "M9A3",
	displayType = DISPLAYTYPE,
	description = "Standard-issue polymer side grip panels for Beretta M9A3 pistols.",
	weight = 0.1,
	value = 400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m9a3.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_mp443_std"] = {
	fullName = "MP-443 Grach polymer pistol grip",
	displayName = "MP-443",
	displayType = DISPLAYTYPE,
	description = "Standard service pistol grip for MP-443 manufactured by Izhmekh.",
	weight = 0.05,
	value = 700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp443.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_p226_axel"] = {
	fullName = "P226 Axelson Tactical MK25 pistol grip",
	displayName = "P226 Axelson",
	displayType = DISPLAYTYPE,
	description = "An enhanced version of the SIG Sauer P226 MK25 pistol grip, manufactured by Axelson Tactical. Limited edition.",
	weight = 0.1,
	value = 3000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_axelson.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_p226_emp"] = {
	fullName = "P226 Emperor Scorpion pistol grip",
	displayName = "P226 Emperor",
	displayType = DISPLAYTYPE,
	description = "The Emperor Scorpion polymer grip panels for P226 pistols, manufactured by SIG Sauer.",
	weight = 0.1,
	value = 2500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_emperor.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_p226_fde"] = {
	fullName = "P226 Combat pistol grip (FDE)",
	displayName = "P226 FDE",
	displayType = DISPLAYTYPE,
	description = "Brown Flat Dark Earth polymer SIG Sauer grip panels for P226 pistols. Used as the standard service grip on the Combat P226.",
	weight = 0.1,
	value = 1000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_combat.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_p226_g10"] = {
	fullName = "P226 Hogue G10 Chain Link pistol grip",
	displayName = "P226 G10",
	displayType = DISPLAYTYPE,
	description = "The G10 Chain Link pistol grip for P226 pistols. Manufactured by Hogue.",
	weight = 0.1,
	value = 7450,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_g10.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_p226_hog"] = {
	fullName = "P226 Hogue Rubberized pistol grip",
	displayName = "P226 Hogue",
	displayType = DISPLAYTYPE,
	description = "A rubber pistol grip with finger grooves for SIG Sauer P226 pistols, manufactured by Hogue.",
	weight = 0.1,
	value = 3200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_hogue.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_p226_stain"] = {
	fullName = "P226 Stainless Elite Wooden pistol grip",
	displayName = "P226 Wooden",
	displayType = DISPLAYTYPE,
	description = "Wooden side grip panels from the Stainless Elite kit for P226 pistols, manufactured by SIG Sauer.",
	weight = 0.1,
	value = 2060,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_wooden.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_p226_std"] = {
	fullName = "P226 polymer pistol grip (Black)",
	displayName = "P226",
	displayType = DISPLAYTYPE,
	description = "Standard black polymer SIG Sauer side grip panels for the P226 pistols. Manufacturer Part Code: GRIP226BLKPOL.",
	weight = 0.1,
	value = 515,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_toz106"] = {
	fullName = "TOZ-106 002 pistol grip",
	displayName = "TOZ106",
	displayType = DISPLAYTYPE,
	description = "The TOZ 002 pistol grip for the TOZ-106 bolt-action shotgun.",
	weight = 0.1,
	value = 375,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("toz106.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_kedr_pg"] = {
	fullName = 'PP-91 "Kedr" polymer pistol grip',
	displayName = "Kedr PG",
	displayType = DISPLAYTYPE,
	description = "A ZMZ-produced polymer pistol grip for PP-91 Kedr family weapons.",
	weight = 0.1,
	value = 660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pp91.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ks23_stock_pistol"] = {
	fullName = "KS-23M pistol grip",
	displayName = "KS23M",
	displayType = DISPLAYTYPE,
	description = "A polymer pistol grip for the KS-23M shotgun, manufactured by TOZ.",
	weight = 0.1,
	value = 1225,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ks23.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_pgrip_sage"] = {
	fullName = "M14 SAGE International M14ALCS (MOD-0) pistol grip",
	displayName = "M14ALCS grip",
	displayType = DISPLAYTYPE,
	description = "The M14ALCS (MOD-0) pistol grip for M14 rifles from the Enhanced Battle Rifle (EBR) kit, manufactured by SAGE International.",
	weight = 0.1,
	value = 2695,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m14_sage.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m249_grip_std"] = {
	fullName = "M249 Standard Grip",
	displayName = "M249 SAW",
	displayType = DISPLAYTYPE,
	description = "Polymer pistol grip designed for the M249 SAW.",
	weight = 0.1,
	value = 7455,
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

EFGM.ITEMS["arc9_att_eft_m3s90_pg_std"] = {
	fullName = "Benelli M3 telescopic stock pistol grip",
	displayName = "M3 PGrip",
	displayType = DISPLAYTYPE,
	description = "A special pistol grip for M3 telescopic stocks manufactured by Benelli.",
	weight = 0.1,
	value = 2210,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m3.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m60_pg_e4"] = {
	fullName = "M60E4 pistol grip",
	displayName = "M60E4 grip",
	displayType = DISPLAYTYPE,
	description = "A standard-issue pistol grip for the M60E4 light machine gun. Manufactured by U.S Ordnance.",
	weight = 0.05,
	value = 5220,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m60e4.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m60_pg_e6"] = {
	fullName = "M60E6 pistol grip",
	displayName = "M60E6 grip",
	displayType = DISPLAYTYPE,
	description = "A standard-issue lightweight pistol grip for the M60E6 light machine gun. Manufactured by U.S Ordnance.",
	weight = 0.05,
	value = 5985,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m60e6.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m60_pg_e6_fde"] = {
	fullName = "M60E6 pistol grip (FDE)",
	displayName = "M60E6 grip (F)",
	displayType = DISPLAYTYPE,
	description = "A standard-issue lightweight pistol grip for the M60E6 light machine gun. Manufactured by U.S Ordnance. Flat Dark Earth version.",
	weight = 0.05,
	value = 5985,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m60e6_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m60_trigger_e4"] = {
	fullName = "M60E4 trigger group",
	displayName = "M60E4 trig.",
	displayType = DISPLAYTYPE,
	description = "A trigger group for the M60E4 machine gun with an adapter that allows the installation of pistol grips from the M60. Manufactured by U.S. Ordnance.",
	weight = 0.1,
	value = 10010,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m60e4_tg.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m60_trigger_e6"] = {
	fullName = "M60E6 trigger group",
	displayName = "M60E6 trig.",
	displayType = DISPLAYTYPE,
	description = "A trigger group for the M60E6 machine gun with an adapter that allows the installation of pistol grips from the M60. Manufactured by U.S. Ordnance.",
	weight = 0.1,
	value = 11200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m60e6_tg.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m60_trigger_e6_fde"] = {
	fullName = "M60E6 trigger group (FDE)",
	displayName = "M60E6 trig. (F)",
	displayType = DISPLAYTYPE,
	description = "A trigger group for the M60E6 machine gun with an adapter that allows the installation of pistol grips from the M60. Manufactured by U.S. Ordnance. Flat Dark Earth version.",
	weight = 0.1,
	value = 11200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m60e6_tg_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_pro700_pistol_grip"] = {
	fullName = "M700 Magpul Pro 700 pistol grip",
	displayName = "Pro 700",
	displayType = DISPLAYTYPE,
	description = "A polymer pistol grip for installation on the Pro 700 chassis for the Remington M700 sniper rifle. Manufactured by Magpul.",
	weight = 0.1,
	value = 2135,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700_pro.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m870_stock_agr"] = {
	fullName = "M870 FAB Defense AGR-870 pistol grip",
	displayName = "AGR-870",
	displayType = DISPLAYTYPE,
	description = "The AGR-870 pistol grip for Remington 870 pump-action shotgun, manufactured by FAB Defense.",
	weight = 0.1,
	value = 3390,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m870_agr.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mdr_pg_blk"] = {
	fullName = "MDR pistol grip",
	displayName = "MDR black",
	displayType = DISPLAYTYPE,
	description = "Desert Tech pistol grip can be installed at MDR.",
	weight = 0.1,
	value = 2325,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mdr.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mdr_pg_fde"] = {
	fullName = "MDR pistol grip (FDE)",
	displayName = "MDR",
	displayType = DISPLAYTYPE,
	description = "Desert Tech pistol grip can be installed at MDR. Flat dark earth.",
	weight = 0.1,
	value = 2325,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mdr_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_pgrip_tacfire"] = {
	fullName = "Mosin Rifle Tacfire pistol grip",
	displayName = "Mosin",
	displayType = DISPLAYTYPE,
	description = "A polymer pistol grip for the Mosin rifle, manufactured by Tacfire.",
	weight = 0.2,
	value = 2470,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_tacfire.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_pgrip_std"] = {
	fullName = "MPX pistol grip",
	displayName = "MPX",
	displayType = DISPLAYTYPE,
	description = "A polymer MPX pistol grip is fit for installation on the first and second generations of MPX. Manufactured by SIG Sauer.",
	weight = 0.1,
	value = 1820,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_pb_pg_std"] = {
	fullName = "PB bakelite side grips",
	displayName = "PB bak.",
	displayType = DISPLAYTYPE,
	description = "Standard-issue bakelite side grip panels for the PB pistol, manufactured by TsNIITochMash.",
	weight = 0.1,
	value = 1090,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pb.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_pg_deagle_ergo"] = {
	fullName = "Desert Eagle Hogue Rubber Grip with finger grooves",
	displayName = "DE RGFG",
	displayType = DISPLAYTYPE,
	description = "A rubberized grip with finger grooves for the Desert Eagle pistol. Manufactured by Hogue.",
	weight = 0.1,
	value = 3105,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("deagle_groove.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_pg_deagle_std"] = {
	fullName = "Desert Eagle Hogue Rubber Grip",
	displayName = "DE RG",
	displayType = DISPLAYTYPE,
	description = "A rubberized grip for the Desert Eagle pistol. Manufactured by Hogue.",
	weight = 0.1,
	value = 2950,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("deagle.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_pg_pk"] = {
	fullName = "PK pistol grip",
	displayName = "PK",
	displayType = DISPLAYTYPE,
	description = "A standard-issue pistol grip for Kalashnikov Machine gun. Manufactured by V.A. Degtyarev Plant.",
	weight = 0.1,
	value = 850,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_pg_pkb"] = {
	fullName = "PK pistol grip (Black)",
	displayName = "PK (B)",
	displayType = DISPLAYTYPE,
	description = "A standard-issue black pistol grip for Kalashnikov Machine gun. Manufactured by V.A. Degtyarev Plant.",
	weight = 0.1,
	value = 850,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pk_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_pgrip_g17_tgg"] = {
	fullName = "Glock Pachmayr Tactical Grip Glove",
	displayName = "G TGG",
	displayType = DISPLAYTYPE,
	description = "The Pachmayr tactical rubber grip increases the handling and ergonomics of a pistol, designed to fit Glock family pistols.",
	weight = 0.1,
	value = 1315,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_tgg.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_pm_pg_fab"] = {
	fullName = "PM FAB Defense PM-G pistol grip",
	displayName = "PM-G",
	displayType = DISPLAYTYPE,
	description = "A PM grip by FAB Defense with a built-in magazine release mechanism that turns the Soviet classic into a modern handy pistol, significantly improving ergonomics.",
	weight = 0.05,
	value = 3600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pm_fab.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_pm_pg_fab_od"] = {
	fullName = "PM FAB Defense PM-G pistol grip (Olive Drab)",
	displayName = "PM-G OD",
	displayType = DISPLAYTYPE,
	description = "A PM grip by FAB Defense with a built-in magazine release mechanism that turns the Soviet classic into a modern handy pistol, significantly improving ergonomics. Olive Drab version.",
	weight = 0.05,
	value = 3600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pm_fab_od.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_pm_pg_laser"] = {
	fullName = "PM PM-Laser grip with laser sight",
	displayName = "PM-L",
	displayType = DISPLAYTYPE,
	description = "A Makarov Pistol grip with built-in magazine release mechanism and laser designator. Manufactured by PM-Laser.",
	weight = 0.1,
	value = 2800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pm_l.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_pm_pg_std"] = {
	fullName = "PM bakelite side grips",
	displayName = "PM bak.",
	displayType = DISPLAYTYPE,
	description = "Standard-issue bakelite side grip panels for the PM pistol.",
	weight = 0.1,
	value = 800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pm.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_pm_pg_tk"] = {
	fullName = "PM Tactic Kit pistol grip",
	displayName = "PM TK",
	displayType = DISPLAYTYPE,
	description = "An ergonomic Makarov Pistol grip. Provides a comfortable grip and allows installation of additional accessories under the barrel. Manufactured by Gun Custom Tuning.",
	weight = 0.1,
	value = 4500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pm_tactic.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rhino_pgrip_poly"] = {
	fullName = "Chiappa Rhino plastic pistol grip",
	displayName = "CR pl.",
	displayType = DISPLAYTYPE,
	description = 'A standard-issue plastic pistol grip for Rhino revolvers, produced by "Chiappa Firearms".',
	weight = 0.1,
	value = 670,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("chiappa_plastic.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rhino_pgrip_std"] = {
	fullName = "Chiappa Rhino wooden pistol grip",
	displayName = "CR wood",
	displayType = DISPLAYTYPE,
	description = 'Wooden pistol grip for Rhino revolvers, produced by "Chiappa Firearms".',
	weight = 0.1,
	value = 415,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("chiappa.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rpd_pg"] = {
	fullName = "RPD wooden pistol grip",
	displayName = "RPD PG",
	displayType = DISPLAYTYPE,
	description = "A standard-issue wooden pistol grip for the RPD machine gun. Manufactured by V.A. Degtyarev Plant.",
	weight = 0.05,
	value = 945,
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

EFGM.ITEMS["arc9_att_eft_rsh12_pgrip_std"] = {
	fullName = "RSh-12 pistol grip",
	displayName = "RSh-12",
	displayType = DISPLAYTYPE,
	description = "A standard-issue plastic pistol grip for the RSh-12 revolver, manufactured by the KBP Instrument Design Bureau.",
	weight = 0.1,
	value = 840,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rsh12.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_pgrip_fab"] = {
	fullName = "SA-58 FAB Defense AG-FAL pistol grip",
	displayName = "AG-FAL",
	displayType = DISPLAYTYPE,
	description = "The AG-FAL anatomical pistol grip for SA-58 rifles manufactured by FAB Defense.",
	weight = 0.1,
	value = 9715,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_fab.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_pgrip_saw"] = {
	fullName = "SA-58 SAW-style pistol grip (Black)",
	displayName = "SAW SA58",
	displayType = DISPLAYTYPE,
	description = "An anatomical pistol grip for SA-58 assault rifles, inspired by the M249 SAW LMG grip, manufactured by DS Arms.",
	weight = 0.1,
	value = 3300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_saw.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_pgrip_std"] = {
	fullName = "SA-58 pistol grip",
	displayName = "SA58",
	displayType = DISPLAYTYPE,
	description = "A standard pistol grip for SA-58 rifles manufactured by DS Arms.",
	weight = 0.1,
	value = 1100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_pgrip_fab"] = {
	fullName = "SKS/VZ-58 FAB Defense AG-58 pistol grip",
	displayName = "SKS AG-58",
	displayType = DISPLAYTYPE,
	description = "A light ergonomic pistol grip for VZ-58 carbines, but it is also compatible with the UAS SKS stock. Manufactured by FAB Defense.",
	weight = 0.1,
	value = 7530,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sks_fab.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_pgrip_tapco"] = {
	fullName = "SKS TAPCO Intrafuse SAW-Style pistol grip",
	displayName = "SAW SKS",
	displayType = DISPLAYTYPE,
	description = "An anatomical pistol grip inspired by the M249 SAW LMG grip. Designed for the Intrafuse SKS stock system. Manufactured by TAPCO.",
	weight = 0.1,
	value = 3440,
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

EFGM.ITEMS["arc9_att_eft_sr2m_pg_blk"] = {
	fullName = "SR-2M pistol grip (Black)",
	displayName = "SR-2M (B)",
	displayType = DISPLAYTYPE,
	description = 'A standard-issue pistol grip for SR-2M "Veresk". Manufactured by TsNIItochmash.',
	weight = 0.05,
	value = 980,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr2m.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sr2m_pg_std"] = {
	fullName = "SR-2M pistol grip",
	displayName = "SR-2M",
	displayType = DISPLAYTYPE,
	description = 'A standard-issue pistol grip for SR-2M "Veresk". Manufactured by TsNIItochmash.',
	weight = 0.05,
	value = 980,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr2m_plum.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_svds_pgrip_adap"] = {
	fullName = "SVDS Lynx Arms AK-series pistol grip adapter",
	displayName = "Lynx",
	displayType = DISPLAYTYPE,
	description = "An adapter that allows installation of AK-series pistol grips on SVDS. Manufactured by Lynx Arms.",
	weight = 0.05,
	value = 1300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svds_lynx.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_svds_pgrip_std"] = {
	fullName = "SVDS pistol grip",
	displayName = "SVDS",
	displayType = DISPLAYTYPE,
	description = "An Izhmash pistol grip for SVDS and compatible weapon systems.",
	weight = 0.1,
	value = 440,
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

EFGM.ITEMS["arc9_att_eft_t5000_pg_std"] = {
	fullName = "ORSIS T-5000M pistol grip",
	displayName = "T-5000 grip",
	displayType = DISPLAYTYPE,
	description = "An ergonomic pistol grip for the T-5000M bolt-action sniper rifle, manufactured by ORSIS.",
	weight = 0.1,
	value = 1500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("t5000.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tt33_pg_206"] = {
	fullName = "TT PM-Laser TT-206 side grips with laser sight",
	displayName = "TT-206",
	displayType = DISPLAYTYPE,
	description = "The TT-206 side grips with a laser aiming module, designed for TT pistols. Manufactured by PM-Laser.",
	weight = 0.1,
	value = 3580,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tt_206.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tt33_pg_hogue"] = {
	fullName = "TT Hogue-like rubber grip",
	displayName = "Hogue-like",
	displayType = DISPLAYTYPE,
	description = "Hogue-like rubber grips made for TT pistol.",
	weight = 0.1,
	value = 2780,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tt_hogue.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tt33_pg_razor"] = {
	fullName = "TT Razor Arms rubber grip",
	displayName = "TT RazorA",
	displayType = DISPLAYTYPE,
	description = "A rubber grip for TT pistols, manufactured by Razor Arms.",
	weight = 0.05,
	value = 4990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tt_razor.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tt33_pg_std"] = {
	fullName = "TT side grips",
	displayName = "TT grips",
	displayType = DISPLAYTYPE,
	description = "Standard post-war issue TT pistol side grips.",
	weight = 0.05,
	value = 200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tt.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tt33_pg_swag"] = {
	fullName = "TT ornated side grips",
	displayName = "TT swag",
	displayType = DISPLAYTYPE,
	description = "Ornated side grips for the TT pistol. So fancy and swaggy.",
	weight = 0.1,
	value = 7070,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tt_swag.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_grip_std"] = {
	fullName = "UZI pistol grip cover",
	displayName = "UZI grip",
	displayType = DISPLAYTYPE,
	description = "A standard cover panel for the UZI submachine gun pistol grip. Manufactured by Israel Weapon Industries.",
	weight = 0.05,
	value = 590,
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

EFGM.ITEMS["arc9_att_eft_val_grip_black"] = {
	fullName = "AS VAL pistol grip (Black)",
	displayName = "AS VAL",
	displayType = DISPLAYTYPE,
	description = "A standard-issue polymer pistol grip for AS VAL, manufactured by TSNIITochMash.",
	weight = 0.1,
	value = 1625,
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

EFGM.ITEMS["arc9_att_eft_val_grip_rk3"] = {
	fullName = "AS VAL Zenit RK-3 pistol grip",
	displayName = "RK-3k",
	displayType = DISPLAYTYPE,
	description = "A custom Zenit pistol grip for the AS VAL. Replaces the standard pistol grip.",
	weight = 0.2,
	value = 14285,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("val_rk3.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_val_grip_rotor"] = {
	fullName = "AS VAL Rotor 43 pistol grip & buffer tube",
	displayName = "Rotor 43",
	displayType = DISPLAYTYPE,
	description = "A pistol grip with an integrated Mil-Spec buffer tube for AS VAL, manufactured by Rotor 43.",
	weight = 0.1,
	value = 38485,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("val_rotor.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_val_grip_std"] = {
	fullName = "AS VAL pistol grip (Plum)",
	displayName = "AS VAL",
	displayType = DISPLAYTYPE,
	description = 'A standard-issue polymer pistol grip for AS VAL, manufactured by TSNIITochMash. Made out of plum-colored polymer, earning the nickname "Sliva" (Plum).',
	weight = 0.1,
	value = 1625,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("val_plum.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vsk_grip_std"] = {
	fullName = "9A-91 pistol grip",
	displayName = "9A-91 PG",
	displayType = DISPLAYTYPE,
	description = "A standard-issue pistol grip for the 9A-91 assault rifle. Manufactured by Tula KPB Instrument Design Bureau.",
	weight = 0.1,
	value = 695,
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

EFGM.ITEMS["arc9_att_eft_scorpion_pgrip_moe"] = {
	fullName = "Magpul MOE-EVO CZ Scorpion EVO 3 pistol grip",
	displayName = "MOE",
	displayType = DISPLAYTYPE,
	description = "Optimized drop-in pistol grip upgrade for the CZ Scorpion EVO 3 family of pistols and carbines.",
	weight = 0.05,
	value = 10920,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_moe.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_pgrip_std"] = {
	fullName = "CZ Scorpion EVO 3 pistol grip",
	displayName = "EVO 3 Grip",
	displayType = DISPLAYTYPE,
	description = "Standard polymer pistol grip for the CZ Scorpion Evo 3 A1 9x19 submachine gun.",
	weight = 0.05,
	value = 8000,
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

EFGM.ITEMS["arc9_att_eft_scorpion_pgrip_ye"] = {
	fullName = "Yeti Wurks Switchback CZ Scorpion EVO 3 pistol grip",
	displayName = "Switchback",
	displayType = DISPLAYTYPE,
	description = "An ergonomic pistol grip for the CZ Scorpion EVO 3 9x19 submachine gun, manufactured by Yeti Wurks.",
	weight = 0.05,
	value = 12205,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_wurks.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_chevron_blk"] = {
	fullName = "AR-15 Tyrant Designs MOD Chevron pistol grip (Black)",
	displayName = "Chevron",
	displayType = DISPLAYTYPE,
	description = "An aluminium rubber-overmolded anti-slip pistol grip for AR systems, manufactured by Tyrant Designs. Black version.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/tyrb.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_chevron_red"] = {
	fullName = "AR-15 Tyrant Designs MOD Chevron pistol grip (Red)",
	displayName = "Chevron",
	displayType = DISPLAYTYPE,
	description = "An aluminium rubber-overmolded anti-slip pistol grip for AR systems, manufactured by Tyrant Designs. Red version.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/tyrr.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_pgrip_chevron_ylw"] = {
	fullName = "AR-15 Tyrant Designs MOD Chevron pistol grip (Yellow)",
	displayName = "Chevron",
	displayType = DISPLAYTYPE,
	description = "An aluminium rubber-overmolded anti-slip pistol grip for AR systems, manufactured by Tyrant Designs. Yellow version.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/tyry.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_ags74_redline"] = {
	fullName = "AK Custom Arms AGS-74 PRO + Sniper Kit pistol grip (Redline)",
	displayName = "AGS-74 RL",
	displayType = DISPLAYTYPE,
	description = "A lightweight ergonomic pistol grip for AK series weapon systems, features the 'Sniper Kit' palm shelf for user comfort and hand rest. Manufactured by Custom Arms.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_ak_attachments/grip/agsrl.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_gladman"] = {
	fullName = "AK Gladman Skeleton pistol grip",
	displayName = "Skeleton",
	displayType = DISPLAYTYPE,
	description = "A lightweight ergonomic pistol grip for AK-family automatic rifles, manufactured by Gladman.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/gladman.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}
