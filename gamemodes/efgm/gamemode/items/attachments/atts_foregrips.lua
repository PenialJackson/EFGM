local DISPLAYTYPE = "Foregrip"
local ATTICONPATH = "items/attachments/fgrips/"

local function AttMaterial(imgPath)
	if SERVER then return end
	return Material(ATTICONPATH .. imgPath, "smooth")
end

EFGM.ITEMS["arc9_att_eft_aug_grip"] = {
	fullName = "Steyr AUG vertical foregrip",
	displayName = "AUG grip",
	displayType = DISPLAYTYPE,
	description = "A vertical foregrip for the Steyr AUG assault rifle.",
	weight = 0.1,
	value = 3560,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aug.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_axmc_pad"] = {
	fullName = "AI AXMC padded handguard grip",
	displayName = "AXMC pad",
	displayType = DISPLAYTYPE,
	description = "A standard-issue padded grip for the AXMC sniper rifle, manufactured by Accuracy International.",
	weight = 0.1,
	value = 3010,
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

EFGM.ITEMS["arc9_att_eft_foregrip_afg"] = {
	fullName = "Magpul AFG tactical foregrip Black",
	displayName = "AFG BLK",
	displayType = DISPLAYTYPE,
	description = "The Magpul AFG (Angled Fore Grip) tactical grip enables a more natural grip against the barrel axis. Thanks to that, recoil is reduced and weapon control is improved. Black version.",
	weight = 0.1,
	value = 12000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("afg_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_afg_fde"] = {
	fullName = "Magpul AFG tactical foregrip Flat Dark Earth",
	displayName = "AFG FDE",
	displayType = DISPLAYTYPE,
	description = "The Magpul AFG (Angled Fore Grip) tactical grip enables a more natural grip against the barrel axis. Thanks to that, recoil is reduced and weapon control is improved. Flat Dark Earth version.",
	weight = 0.1,
	value = 12000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("afg_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_afg_fg"] = {
	fullName = "Magpul AFG tactical foregrip Forest Green",
	displayName = "AFG FG",
	displayType = DISPLAYTYPE,
	description = "The Magpul AFG (Angled Fore Grip) tactical grip enables a more natural grip against the barrel axis. Thanks to that, recoil is reduced and weapon control is improved. Forest Green version.",
	weight = 0.1,
	value = 12000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("afg_fg.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_afg_od"] = {
	fullName = "Magpul AFG tactical foregrip Olive Drab",
	displayName = "AFG OD",
	displayType = DISPLAYTYPE,
	description = "The Magpul AFG (Angled Fore Grip) tactical grip enables a more natural grip against the barrel axis. Thanks to that, recoil is reduced and weapon control is improved. Olive Drab version.",
	weight = 0.1,
	value = 12000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("afg_od.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_ash12"] = {
	fullName = "ASh-12 vertical foregrip",
	displayName = "ASh-12",
	displayType = DISPLAYTYPE,
	description = "ASh-12 vertical pistol grip.",
	weight = 0.1,
	value = 2340,
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

EFGM.ITEMS["arc9_att_eft_foregrip_b25u"] = {
	fullName = "Zenit RK-1 tactical foregrip on B-25U mount",
	displayName = "B-25U RK-1",
	displayType = DISPLAYTYPE,
	description = "The RK-1 foregrip can be installed on the lower part of handguards with a Weaver rail. It provides better operational control of a weapon during firing. Installed on B-25U mount for easier handling of LMGs. Manufactured by Zenit.",
	weight = 0.1,
	value = 48500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("b25rk1.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_bcm"] = {
	fullName = "BCM GUNFIGHTER MOD 3 vertical foregrip",
	displayName = "MOD3",
	displayType = DISPLAYTYPE,
	description = "Lightweight polymer tactical grip produced by BCM.",
	weight = 0.05,
	value = 4900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mod3.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_bgv"] = {
	fullName = "TangoDown Stubby BGV-MK46K foregrip Black",
	displayName = "BGV-MK46K",
	displayType = DISPLAYTYPE,
	description = "Tango Down Stubby BGV-MK46K tactical grip. Short grip for use with weapons of close and extra close quarters combat. Ideally fits assault shotguns. Contains a compartment for batteries or SPTA. Black edition.",
	weight = 0.05,
	value = 4800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tangostubby_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_bgv_fde"] = {
	fullName = "TangoDown Stubby BGV-MK46K foregrip Flat Dark Earth",
	displayName = "BGV-MK46K",
	displayType = DISPLAYTYPE,
	description = "Tango Down Stubby BGV-MK46K tactical grip. Short grip for use with weapons of close and extra close quarters combat. Ideally fits assault shotguns. Contains a compartment for batteries or SPTA. Flat Dark Earth edition.",
	weight = 0.05,
	value = 4800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tangostubby_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_bgv_qditi"] = {
	fullName = "TangoDown Stubby BGV-QDITI foregrip",
	displayName = "BGV-QDITI",
	displayType = DISPLAYTYPE,
	description = "The BGV-QDITI vertical grip with a compartment for batteries or small items. Manufactured by TangoDown. Black version.",
	weight = 0.1,
	value = 4745,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("bgvqditi_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_bgv_qditi_fde"] = {
	fullName = "TangoDown Stubby BGV-QDITI foregrip (FDE)",
	displayName = "BGV-QDITI (FDE)",
	displayType = DISPLAYTYPE,
	description = "The BGV-QDITI vertical grip with a compartment for batteries or small items. Manufactured by TangoDown. Flat Dark Earth version.",
	weight = 0.1,
	value = 4745,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("bgvqditi_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_bgv_qdk"] = {
	fullName = "TangoDown Stubby BGV-QDK foregrip (Black)",
	displayName = "BGV-QDK",
	displayType = DISPLAYTYPE,
	description = "The Stubby BGV-QDK is a short grip for use with weapons in close and extra close quarters combat. Сontains a compartment for batteries or small items. Manufactured by TangoDown. Black version.",
	weight = 0.1,
	value = 4360,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("bgvqdk_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_bgv_qdk_fde"] = {
	fullName = "TangoDown Stubby BGV-QDK foregrip (FDE)",
	displayName = "BGV-QDK (FDE)",
	displayType = DISPLAYTYPE,
	description = "The Stubby BGV-QDK is a short grip for use with weapons in close and extra close quarters combat. Сontains a compartment for batteries or small items. Manufactured by TangoDown. Flat Dark Earth version.",
	weight = 0.1,
	value = 4360,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("bgvqdk_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_bgv_sg"] = {
	fullName = "TangoDown Stubby BGV-MK46K foregrip Stealth Gray",
	displayName = "BGV-MK46K",
	displayType = DISPLAYTYPE,
	description = "Tango Down Stubby BGV-MK46K tactical grip. Short grip for use with weapons of close and extra close quarters combat. Ideally fits assault shotguns. Contains a compartment for batteries or SPTA. Stealth Gray edition.",
	weight = 0.05,
	value = 4800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tangostubby_g.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_cobra"] = {
	fullName = "Strike Industries Cobra Tactical foregrip",
	displayName = "Cobra",
	displayType = DISPLAYTYPE,
	description = "The Cobra tactical vertical grip integrates the form with functionality. Its hybrid-designed shape works both as a regular foregrip and as a comfortable hand stop when going with the thumb over method. The grip allows you to handle the weapon with the confidence and the organic design enables the operator to manipulate the rifle in a way that's most comfortable at any given moment.",
	weight = 0.1,
	value = 10050,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("cobra_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_cqr"] = {
	fullName = "Hera Arms CQR tactical foregrip",
	displayName = "CQR",
	displayType = DISPLAYTYPE,
	description = "The CQR front grip is an easy to install, lightweight, and compact frontgrip, manufactured by Hera Arms. In combination with the CQR Buttstock, operators will get a lightweight and ergonomic SBR system.",
	weight = 0.1,
	value = 36340,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("heracqr.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_fortis"] = {
	fullName = "Fortis Shift tactical foregrip",
	displayName = "Shift",
	displayType = DISPLAYTYPE,
	description = "The Shift vertical grip integrates the form with functionality. Its hybrid-designed shape works both as a regular foregrip and as a comfortable hand stop when going with the thumb over method. The grip allows you to handle the weapon with the confidence and the organic design enables the operator to manipulate the rifle in a way that's most comfortable at any given moment.",
	weight = 0.1,
	value = 29400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("shift.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_kac"] = {
	fullName = "KAC vertical foregrip",
	displayName = "KAC VFG",
	displayType = DISPLAYTYPE,
	description = "A vertical grip manufactured by Knight's Armament Company.",
	weight = 0.1,
	value = 5800,
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

EFGM.ITEMS["arc9_att_eft_foregrip_keymod_monstrum"] = {
	fullName = "Monstrum Tactical Vertical Fore Grip KeyMod",
	displayName = "MT VFG",
	displayType = DISPLAYTYPE,
	description = "A tactical foregrip manufactured by Monstrum Tactical. Compatible with KeyMod interface handguards.",
	weight = 0.05,
	value = 6900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("monstrum.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_keymod_mvf"] = {
	fullName = "A3 Tactical MVF001 KeyMod vertical foregrip (Black)",
	displayName = "MVF001 A3",
	displayType = DISPLAYTYPE,
	description = "The A3 tactical grip MVF001 A3. The grip was designed specifically for the KeyMod interface.",
	weight = 0.05,
	value = 6900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mvf.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_keymod_sig"] = {
	fullName = "SIG Sauer Vertical Foregrip KeyMod (Black)",
	displayName = "SSVFK blk.",
	displayType = DISPLAYTYPE,
	description = "Sig Sauer Vertical Foregrip tactical grip for Keymod interface. The Sig Sauer Vertical Foregrip grip is made from the highest grade materials and is of Sig Sauer quality.",
	weight = 0.05,
	value = 9800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ssvfk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_mlok_afg"] = {
	fullName = "Magpul M-LOK AFG tactical foregrip (Black)",
	displayName = "AFG M-LOK",
	displayType = DISPLAYTYPE,
	description = "The Magpul M-LOK AFG tactical grip. It can only be installed on Magpul licensed M-LOK slots on applicable equipment. Black edition.",
	weight = 0.05,
	value = 12900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("afgm_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_mlok_afg_fde"] = {
	fullName = "Magpul M-LOK AFG tactical foregrip (Flat Dark Earth)",
	displayName = "AFG M-LOK",
	displayType = DISPLAYTYPE,
	description = "The Magpul M-LOK AFG tactical grip. It can only be installed on Magpul licensed M-LOK slots on applicable equipment. Flat Dark Earth edition.",
	weight = 0.05,
	value = 12900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("afgm_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_mlok_afg_od"] = {
	fullName = "Magpul M-LOK AFG tactical foregrip (Olive Drab)",
	displayName = "AFG M-LOK",
	displayType = DISPLAYTYPE,
	description = "The Magpul M-LOK AFG tactical grip. It can only be installed on Magpul licensed M-LOK slots on applicable equipment. Olive Drab.",
	weight = 0.05,
	value = 12900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("afgm_od.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_mlok_afg_sg"] = {
	fullName = "Magpul M-LOK AFG tactical foregrip (Stealth Gray)",
	displayName = "AFG M-LOK",
	displayType = DISPLAYTYPE,
	description = "The Magpul M-LOK AFG tactical grip. It can only be installed on Magpul licensed M-LOK slots on applicable equipment. Stealth Gray.",
	weight = 0.05,
	value = 12900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("afgm_sg.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_mlok_dd"] = {
	fullName = "Daniel Defense Enhanced M-LOK Vertical Foregrip (Black)",
	displayName = "DD M-LOK",
	displayType = DISPLAYTYPE,
	description = "The Enhanced M-LOK Vertical Foregrip, installed on M-LOK interface handguards. Manufactured by Daniel Defense. Black version.",
	weight = 0.05,
	value = 12200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ddmlok_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_mlok_dd_fde"] = {
	fullName = "Daniel Defense Enhanced M-LOK Vertical Foregrip (Coyote Brown)",
	displayName = "DD M-LOK (C)",
	displayType = DISPLAYTYPE,
	description = "The Enhanced M-LOK Vertical Foregrip, installed on M-LOK interface handguards. Manufactured by Daniel Defense. Coyote Brown version.",
	weight = 0.05,
	value = 12200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ddmlok_cb.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_mlok_mod3"] = {
	fullName = "BCM GUNFIGHTER MOD 3 M-LOK foregrip",
	displayName = "MOD 3",
	displayType = DISPLAYTYPE,
	description = "A lightweight polymer tactical foregrip. Mounted on handguards with M-LOK interface. Manufactured by Bravo Company Manufacturing. Black color version.",
	weight = 0.05,
	value = 4600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mod3mlok_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_mlok_mod3f"] = {
	fullName = "BCM GUNFIGHTER MOD 3 M-LOK foregrip (FDE)",
	displayName = "MOD 3",
	displayType = DISPLAYTYPE,
	description = "A lightweight polymer tactical foregrip. Mounted on handguards with M-LOK interface. Manufactured by Bravo Company Manufacturing. Flat bark earth color version.",
	weight = 0.05,
	value = 4600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mod3mlok_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_rk0"] = {
	fullName = "Zenit RK-0 tactical foregrip",
	displayName = "RK-0",
	displayType = DISPLAYTYPE,
	description = "The RK-0 foregrip can be installed on the lower part of handguards with a Weaver rail. Its provides better operational control of a weapon during firing. Manufactured by Zenit.",
	weight = 0.1,
	value = 7400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rk0.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_rk1"] = {
	fullName = "Zenit RK-1 tactical foregrip",
	displayName = "RK-1",
	displayType = DISPLAYTYPE,
	description = "The RK-1 foregrip can be installed on the lower part of handguards with a Weaver rail. Its provides better operational control of a weapon during firing. Manufactured by Zenit.",
	weight = 0.1,
	value = 24800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rk1.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_rk2"] = {
	fullName = "Zenit RK-2 tactical foregrip",
	displayName = "RK-2",
	displayType = DISPLAYTYPE,
	description = "The RK-2 foregrip can be installed on the lower part of handguards with a Weaver rail. Its provides better operational control of a weapon during firing. Manufactured by Zenit.",
	weight = 0.2,
	value = 32400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rk2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_rk4"] = {
	fullName = "Zenit RK-4 tactical foregrip",
	displayName = "RK-4",
	displayType = DISPLAYTYPE,
	description = "The RK-4 foregrip can be installed on the lower part of handguards with a Weaver rail. Its provides better operational control of a weapon during firing. Manufactured by Zenit.",
	weight = 0.1,
	value = 9100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rk4.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_rk5"] = {
	fullName = "Zenit RK-5 tactical foregrip",
	displayName = "RK-5",
	displayType = DISPLAYTYPE,
	description = "The RK-5 foregrip can be installed on the lower part of handguards with a Weaver rail. Its provides better operational control of a weapon during firing. Manufactured by Zenit.",
	weight = 0.1,
	value = 6900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rk5.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_rk6"] = {
	fullName = "Zenit RK-6 tactical foregrip",
	displayName = "RK-6",
	displayType = DISPLAYTYPE,
	description = "The RK-6 foregrip can be installed on the lower part of handguards with a Weaver rail. Its provides better operational control of a weapon during firing. Manufactured by Zenit.",
	weight = 0.1,
	value = 7260,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rk6.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_rtm"] = {
	fullName = "RTM Pillau tactical foregrip",
	displayName = "Pillau",
	displayType = DISPLAYTYPE,
	description = "Lightweight aluminium tactical grip produced by RTM.",
	weight = 0.05,
	value = 4025,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pillau_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_rtm_fde"] = {
	fullName = "RTM Pillau tactical foregrip (Sand)",
	displayName = "Pillau (Sand)",
	displayType = DISPLAYTYPE,
	description = "Lightweight aluminium tactical grip produced by RTM. Sand version.",
	weight = 0.05,
	value = 4025,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pillau_s.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_rtm_oso"] = {
	fullName = "RTM Osovets P-2 tactical foregrip",
	displayName = "Osovets",
	displayType = DISPLAYTYPE,
	description = "An aluminum tactical grip manufactured by RTM.",
	weight = 0.1,
	value = 14200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("osovets.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_rtm_oso_khaki"] = {
	fullName = "RTM Osovets P-2 tactical foregrip (Khaki)",
	displayName = "Osovets (K)",
	displayType = DISPLAYTYPE,
	description = "An aluminum tactical grip manufactured by RTM. Khaki version.",
	weight = 0.1,
	value = 14200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("osovets_k.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_rtm_p2"] = {
	fullName = "RTM Pillau P-2 tactical foregrip",
	displayName = "P-2",
	displayType = DISPLAYTYPE,
	description = "The Pillau second generation lightweight aluminum tactical grip. Manufactured by RTM. Red color version.",
	weight = 0.05,
	value = 21050,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pillaup2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_rtm_p2_blk"] = {
	fullName = "RTM Pillau P-2 tactical foregrip",
	displayName = "P-2",
	displayType = DISPLAYTYPE,
	description = "The Pillau second generation lightweight aluminum tactical grip. Manufactured by RTM. Black color version.",
	weight = 0.05,
	value = 21050,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pillaup2_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_rvg"] = {
	fullName = "Magpul RVG foregrip Black",
	displayName = "RVG blk.",
	displayType = DISPLAYTYPE,
	description = "Magpul RVG (Rail Vertical Grip) tactical grip. Common, unsophisticated and inexpensive, ergonomically shaped vertical foregrip. Black edition.",
	weight = 0.1,
	value = 16900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rvg_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_rvg_fde"] = {
	fullName = "Magpul RVG foregrip Flat Dark Earth",
	displayName = "RVG FDE",
	displayType = DISPLAYTYPE,
	description = "Magpul RVG (Rail Vertical Grip) tactical grip. Common, unsophisticated and inexpensive, ergonomically shaped vertical foregrip. Flat Dark Earth edition.",
	weight = 0.1,
	value = 16900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rvg_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_se5"] = {
	fullName = "Stark SE-5 Express Forward foregrip",
	displayName = "SE-5",
	displayType = DISPLAYTYPE,
	description = "STARK SE-5 Express tactical grip. Enables a more natural grip against the barrel axis. Thanks to that, it reduces recoil and improves the weapon control.",
	weight = 0.1,
	value = 24900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("se5_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_se5_fde"] = {
	fullName = "Stark SE-5 Express Forward foregrip (FDE)",
	displayName = "SE-5 (FDE)",
	displayType = DISPLAYTYPE,
	description = "STARK SE-5 Express tactical grip. Enables a more natural grip against the barrel axis. Thanks to that, it reduces recoil and improves the weapon control. Flat Dark Earth edition.",
	weight = 0.1,
	value = 24900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("se5_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_sturm"] = {
	fullName = "HK Sturmgriff foregrip",
	displayName = "Sturmgriff",
	displayType = DISPLAYTYPE,
	description = "The Sturmgriff vertical foregrip. Manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 18300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sturmgriff.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_sturm_blk"] = {
	fullName = "HK Sturmgriff foregrip",
	displayName = "Sturmgriff",
	displayType = DISPLAYTYPE,
	description = "The Sturmgriff vertical foregrip. Manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 18300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sturmgriff_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_td"] = {
	fullName = "Tactical Dynamics Skeletonized Foregrip",
	displayName = "TD",
	displayType = DISPLAYTYPE,
	description = "Lightweight aluminium tactical grip produced by Tactical Dynamics.",
	weight = 0.1,
	value = 13600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sfg.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_uvg"] = {
	fullName = "Viking Tactics UVG tactical foregrip",
	displayName = "UVG",
	displayType = DISPLAYTYPE,
	description = "An extremely lightweight skeletonized tactical grip made from light alloy, manufactured by Viking Tactics.",
	weight = 0.1,
	value = 7500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uvg.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_gp25"] = {
	fullName = 'GP-25 "Kostyor" 40x53mm underbarrel grenade launcher',
	displayName = "GP-25",
	displayType = DISPLAYTYPE,
	description = "An underbarrel grenade launcher for 40x53mm VOG-25 grenades, designed for installation on all full length AK automatic rifles.",
	weight = 1.4,
	value = 199950,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("gp25.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 48,
	lootWeight = 100,
	canPurchase = false,
}

EFGM.ITEMS["arc9_att_eft_m203"] = {
	fullName = "M203 40x46mm underbarrel grenade launcher",
	displayName = "M203",
	displayType = DISPLAYTYPE,
	description = "A single-shot 40x46mm underbarrel grenade launcher, designed for installation on M16 and M4 assault rifles.",
	weight = 1.3,
	value = 243995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m203.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 48,
	lootWeight = 100,
	canPurchase = false,
}

EFGM.ITEMS["arc9_att_eft_mp9_fg"] = {
	fullName = "MP9-N vertical foregrip",
	displayName = "MP9 grip",
	displayType = DISPLAYTYPE,
	description = "A standard-issue detachable vertical foregrip for the MP9-N submachine gun. Manufactured by Brügger & Thomet.",
	weight = 0.05,
	value = 4000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp9n.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sako_pad"] = {
	fullName = "Sako TRG M10 grip pad",
	displayName = "M10 pad",
	displayType = DISPLAYTYPE,
	description = "A standard-issue padded grip for the TRG M10 sniper rifle, manufactured by Sako. Comes with a hex and torx key set for quick access.",
	weight = 0.1,
	value = 3700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m10_pad.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sr3_fg_black"] = {
	fullName = "SR-3M polymer foregrip (Black)",
	displayName = "SR-3M",
	displayType = DISPLAYTYPE,
	description = "A standard-issue polymer foregrip for the SR-3M assault rifle.",
	weight = 0.1,
	value = 2345,
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

EFGM.ITEMS["arc9_att_eft_sr3_fg_std"] = {
	fullName = "SR-3M polymer foregrip (Plum)",
	displayName = "SR-3M",
	displayType = DISPLAYTYPE,
	description = 'A standard-issue polymer foregrip for the SR-3M assault rifle. Made out of plum-colored polymer, earning the nickname "Sliva" (Plum).',
	weight = 0.1,
	value = 2345,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr3m_plum.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_t5000_hg2_std"] = {
	fullName = "ORSIS T-5000M padded handguard grip",
	displayName = "T-5000 pad",
	displayType = DISPLAYTYPE,
	description = "A standard-issue padded grip for the T-5000M sniper rifle, manufactured by ORSIS.",
	weight = 0.1,
	value = 2185,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("t5000_padded.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_cobra_fde"] = {
	fullName = "Strike Industries Cobra Tactical foregrip FDE",
	displayName = "Cobra FDE",
	displayType = DISPLAYTYPE,
	description = "The Cobra tactical vertical grip integrates the form with functionality. Its hybrid-designed shape works both as a regular foregrip and as a comfortable hand stop when going with the thumb over method. The grip allows you to handle the weapon with the confidence and the organic design enables the operator to manipulate the rifle in a way that's most comfortable at any given moment. Flat Dark Earth.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/655dccfdbdcc6b5df71382b6.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_irbis30"] = {
	fullName = "IRBIS-GUN 30AL Foregrip",
	displayName = "30AL",
	displayType = DISPLAYTYPE,
	description = "A lightweight aluminum tactical foregrip manufactured by IRBIS-GUN.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/30.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_foregrip_irbis45"] = {
	fullName = "IRBIS-GUN 45AL Foregrip",
	displayName = "45AL",
	displayType = DISPLAYTYPE,
	description = "A lightweight aluminum tactical foregrip manufactured by IRBIS-GUN.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/45.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}
