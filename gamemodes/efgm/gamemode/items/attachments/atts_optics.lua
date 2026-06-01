local DISPLAYTYPE = "Optic"
local ATTICONPATH = "items/attachments/optics/"

local function AttMaterial(imgPath, paramOverride)
	if SERVER then return end
	return Material(ATTICONPATH .. imgPath, paramOverride or "smooth")
end

EFGM.ITEMS["arc9_att_eft_aug_scope_m1"] = {
	fullName = "Steyr AUG A3 M1 1.5x optic sight",
	displayName = "M1 1.5x",
	displayType = DISPLAYTYPE,
	description = "A standard optic sight for the AUG A3 M1 assault rifle. The sight provides a 1.5x zoom and has mounts for red dot sights and tactical equipment. Manufactured by Steyr-Daimler-Puch.",
	weight = 0.6,
	value = 7200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("augm1.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_hensoldt_sight"] = {
	fullName = "Hensoldt RV red dot sight",
	displayName = "RV",
	displayType = DISPLAYTYPE,
	description = "Hensoldt RV is part of the HKV sighting system. RV has a light accumulator, which allows it to operate from an external light source. The red dot manually switches to AA battery power in the absence of a sufficient level of illumination.",
	weight = 0.2,
	value = 8700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rvrd.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_top_15x"] = {
	fullName = "HK G36 Hensoldt HKV ZF 1.5x carry handle",
	displayName = "HKV 1.5x",
	displayType = DISPLAYTYPE,
	description = "The HKV carry handle with ZF optic sight and RV red dot carrier. The optical sight provides a 1.5x zoom and has a truly miniature 4 mm objective lens. Also includes open non-removable ironsights in the upper part of the carrying handle.",
	weight = 0.2,
	value = 11995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hkvzf1.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_top_3x"] = {
	fullName = "HK G36 Hensoldt HKV 3x carry handle",
	displayName = "HKV 3x",
	displayType = DISPLAYTYPE,
	description = "The HKV carry handle with ZF optic sight and RV red dot carrier. The optical sight provides a threefold zoom and has a truly miniature 4 mm objective lens. Also includes open non-removable ironsights in the upper part of the carrying handle.",
	weight = 0.2,
	value = 13390,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hkvzf3.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_scope_pu"] = {
	fullName = "PU 3.5x riflescope",
	displayName = "PU 3.5x",
	displayType = DISPLAYTYPE,
	description = "The PU 3.5x riflescope for Mosin sniper rifles.",
	weight = 0.1,
	value = 7910,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pu.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_553"] = {
	fullName = "EOTech 553 holographic sight",
	displayName = "EOT 553",
	displayType = DISPLAYTYPE,
	description = "Eotech 553 holographic collimator sight. Thanks to design features it can be used with a wide range of weapons even with non-folding sights. Compatible with night vision devices by the means of NV reticle mode. Utilized by US SOCOM as a primary sight for operations in confined spaces.",
	weight = 0.3,
	value = 40000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("eotech553.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_553_fde"] = {
	fullName = "EOTech 553 FDE holographic sight",
	displayName = "EOT 553 FDE",
	displayType = DISPLAYTYPE,
	description = "Eotech 553 holographic collimator sight. Thanks to design features it can be used with a wide range of weapons even with non-folding sights. Compatible with night vision devices by the means of NV reticle mode. Utilized by US SOCOM as a primary sight for operations in confined spaces.",
	weight = 0.3,
	value = 40000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("eotech553_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_acrop1"] = {
	fullName = "Aimpoint ACRO P-1 reflex sight",
	displayName = "ACRO P-1",
	displayType = DISPLAYTYPE,
	description = "The compact ACRO P-1 reflex sight by Aimpoint was designed for use with special mounts. Lightweight, compact, and durable.",
	weight = 0.1,
	value = 25000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("acrop1.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_boss"] = {
	fullName = "Wilcox BOSS Xe reflex sight",
	displayName = "BOSS Xe",
	displayType = DISPLAYTYPE,
	description = "The Ballistically Optimized Sighting System reflex sight that combines the functions of a red dot, tactical block and iron sights. Manufactured by Wilcox.",
	weight = 0.2,
	value = 68000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("boss.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_compm4"] = {
	fullName = "Aimpoint CompM4 reflex sight",
	displayName = "CompM4",
	displayType = DISPLAYTYPE,
	description = "The Aimpoint CompM4 series of sights are the toughest sights that Aimpoint has ever produced and they are the standard infantry soldier sight in many NATO countries. These optics are extremely rugged and operate continuously for up to 8 years using a single AA battery. The Aimpoint CompM4s is the latest version of the U.S. Army's M68CCO (Close-Combat Optic), continuing a legacy that Aimpoint has maintained since 1997.",
	weight = 0.3,
	value = 22500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("compm4.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_deltapoint"] = {
	fullName = "Leupold DeltaPoint Reflex Sight",
	displayName = "Delta",
	displayType = DISPLAYTYPE,
	description = "Compact DeltaPoint Reflex Sight by Leupold knows almost no limits in the range of application. Originally designed for use on pump-action shotguns in competitions and practical shooting, it was recognized for good performance on a wide range of weapons. From shotguns and handguns to AR-based rifles, as a main or auxiliary sight, it will show excellent results.",
	weight = 0.1,
	value = 50000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("deltapoint.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_elcan_hco"] = {
	fullName = "ELCAN Specter HCO sight",
	displayName = "HCO",
	displayType = DISPLAYTYPE,
	description = "The Specter Holographic Combat Optic sight. Manufactured by ELCAN.",
	weight = 0.4,
	value = 51000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hco.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_exps3"] = {
	fullName = "EOTech EXPS3 holographic sight",
	displayName = "EXPS3",
	displayType = DISPLAYTYPE,
	description = "Eotech EXPS3 holo sight. Thanks to design features it can be used with a wide range of weapons even with non-folding sights. Compatible with night vision devices by the means of NV reticle mode. Utilized by US SOCOM as a sight for operations in confined spaces.",
	weight = 0.3,
	value = 45000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("exps3_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_exps3_tan"] = {
	fullName = "EOTech EXPS3 holographic sight (TAN)",
	displayName = "EXPS3 TAN",
	displayType = DISPLAYTYPE,
	description = "Eotech EXPS3 holo sight. Thanks to design features it can be used with a wide range of weapons even with non-folding sights. Compatible with night vision devices by the means of NV reticle mode. Utilized by US SOCOM as a sight for operations in confined spaces.",
	weight = 0.3,
	value = 45000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("exps3.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_falke"] = {
	fullName = "FALKE LE reflex sight",
	displayName = "FALKE LE",
	displayType = DISPLAYTYPE,
	description = "A rugged reflex sight made for withstanding harsh environmental conditions, compatible with NVGs and various weapon builds. Manufactured by FALKE.",
	weight = 0.2,
	value = 42550,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("falke.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_ff3"] = {
	fullName = "Burris FastFire 3 reflex sight",
	displayName = "FF3",
	displayType = DISPLAYTYPE,
	description = "Light and tough, the FastFire series collimator puts a clear bright red dot on your target to give you an immediate speed and accuracy advantage. Can be used as a primary sight or mounted on top of an existing sight.",
	weight = 0.1,
	value = 30000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("fastfire3.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_h2"] = {
	fullName = "Aimpoint Micro H-2 reflex sight",
	displayName = "H-2",
	displayType = DISPLAYTYPE,
	description = "The Micro H-2 compact reflex sight by Aimpoint was designed for use with any kind of firearms and even with bows. Lightweight, compact, and durable.",
	weight = 0.2,
	value = 20000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aimpointh2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_hhs1"] = {
	fullName = "EOTech HHS-1 hybrid sight",
	displayName = "HHS-1",
	displayType = DISPLAYTYPE,
	description = "Holographic hybrid sight-1 (HHS-1) features EXPS3-4 holographic sight with a G33.STS magnifier. Produced by EOTech. Comes in Black and Tan.",
	weight = 0.6,
	value = 100000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hhs1_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_hhs1_tan"] = {
	fullName = "EOTech HHS-1 hybrid sight (Tan)",
	displayName = "HHS-1 (Tan)",
	displayType = DISPLAYTYPE,
	description = "Holographic hybrid sight-1 (HHS-1) features EXPS3-4 holographic sight with a G33.STS magnifier. Produced by EOTech. Comes in Black and Tan.",
	weight = 0.6,
	value = 100000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hhs1.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_hs401g5"] = {
	fullName = "Holosun HS401G5 reflex sight",
	displayName = "HS401G5",
	displayType = DISPLAYTYPE,
	description = "The HS401G5 reflex sight whith a built-in laser designator, manufactured by Holosun.",
	weight = 0.3,
	value = 20000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hs401g5.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_justice"] = {
	fullName = "SwampFox Justice reflex sight",
	displayName = "Justice",
	displayType = DISPLAYTYPE,
	description = "A rugged everyday carry reflex sight, made for use on pistols, carbines, or shotguns. Can be used as a main or backup sight, requires a corresponding Weaver mount. Manufactured by SwampFox.",
	weight = 0.05,
	value = 67230,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("justice.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_kobra"] = {
	fullName = "Axion Kobra EKP-8-18 reflex sight",
	displayName = "EKP-8-18",
	displayType = DISPLAYTYPE,
	description = "Kobra is a very popular reflex sight among security agencies and civilian shooters. It was designed for the armed forces of the Russian Federation, but was never formally adopted. Manufactured by Axion",
	weight = 0.2,
	value = 18000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("kobra.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_krechet"] = {
	fullName = "Valday Krechet reflex sight",
	displayName = "Krechet",
	displayType = DISPLAYTYPE,
	description = "The Krechet reflex sight, designed for precision shooting at day and at night when used in combination with a night vision device. Manufactured by Valday.",
	weight = 0.3,
	value = 16000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("krechet.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_mepro"] = {
	fullName = "MeproLight Mepro M21 reflex sight",
	displayName = "Mepro M21",
	displayType = DISPLAYTYPE,
	description = "A fiber optic red dot sight manufactured by MeproLight. Installed on a proprietary mount.",
	weight = 0.2,
	value = 20320,
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

EFGM.ITEMS["arc9_att_eft_optic_mrs"] = {
	fullName = "Walther MRS reflex sight",
	displayName = "MRS",
	displayType = DISPLAYTYPE,
	description = "The Walther MRS (Multi-Reticle Sight) reflex sight features 2 dots and 2 reticles with adjustable brightness levels. Cheap, accurate (but has to be zeroed every time the reticle type is switched), compact and offers good battery life - but not too sturdy and reliable.",
	weight = 0.1,
	value = 20000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mrs.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_okp7"] = {
	fullName = "OKP-7 reflex sight",
	displayName = "OKP-7",
	displayType = DISPLAYTYPE,
	description = "The original design of OKP sights allows firing from unstable positions in rapidly changing conditions, reduces the operator fatigue, and, if necessary, allows unhindered use of base mechanical sights. The key feature of this sight is a rimless reflector attachment that doesn't block any field of fire sections; instead, reflector is protected by thin and durable visor that is almost un-noticeable when firing.",
	weight = 0.2,
	value = 19000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("okp7.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_p1x42"] = {
	fullName = "VOMZ Pilad P1x42 Weaver reflex sight",
	displayName = "P1x42",
	displayType = DISPLAYTYPE,
	description = "An open-type reflex sight designed for precision aiming of sport and hunting weapons at different types of targets, including the fast-moving ones. Manufactured by VOMZ.",
	weight = 0.1,
	value = 21000,
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

EFGM.ITEMS["arc9_att_eft_optic_pk06"] = {
	fullName = "BelOMO PK-06 reflex sight",
	displayName = "PK-06",
	displayType = DISPLAYTYPE,
	description = "A modern open reflex sight with automatic reticle brightness adjustment and switching between 3 reticle types, manufactured by Zenit-BelOMO.",
	weight = 0.1,
	value = 19500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pk06.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_pk120"] = {
	fullName = "Valday PK-120 (1P87) holographic sight",
	displayName = "PK-120",
	displayType = DISPLAYTYPE,
	description = 'PK-120 (GRAU index - 1P87) is a holographic sight produced by Valday. It is part of the DPSK complex (day-night sight-observation complex) of the experimental design work "Ratnik".',
	weight = 0.3,
	value = 17500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pk120.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_pro"] = {
	fullName = "Aimpoint PRO reflex sight",
	displayName = "PRO",
	displayType = DISPLAYTYPE,
	description = "The Aimpoint PRO (Patrol Rifle Optic) reflex sight is installed on the QRP2 or LRP mount that attaches to picatinny rails without any additional tools. The optic has flip-up lens covers – the solid front and transparent rear – allowing the user to shoot with the lens caps closed and both eyes open in an emergency situation. The PRO sight is fully compatible with all generations of night vision devices.",
	weight = 0.2,
	value = 24500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pro.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_rmr"] = {
	fullName = "Trijicon RMR reflex sight",
	displayName = "RMR",
	displayType = DISPLAYTYPE,
	description = "RMR (Ruggedized Miniature Reflex) is a durable and lightweight compact reflex sight. Can be used as a main or backup sight. Requires a specific mount for installation on Weaver rails. Manufactured by Trijicon.",
	weight = 0.1,
	value = 25000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rmr.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_romeo4"] = {
	fullName = "SIG Sauer ROMEO4 reflex sight",
	displayName = "ROMEO4",
	displayType = DISPLAYTYPE,
	description = "SIG Sauer ROMEO4 is a reflex sight for fast and accurate target acquisition.",
	weight = 0.01,
	value = 22000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("romeo4.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_romeo8t"] = {
	fullName = "SIG Sauer ROMEO8T reflex sight",
	displayName = "ROMEO8T",
	displayType = DISPLAYTYPE,
	description = "The ROMEO8T reflex sight, designed for precision shooting for modern sporting rifles and shotguns. Manufactured by SIG Sauer.",
	weight = 0.4,
	value = 30000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("romeo8t.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_rusak"] = {
	fullName = "KOMZ Rusak reflex sight",
	displayName = "Rusak",
	displayType = DISPLAYTYPE,
	description = "A collimator sight manufactured by Kazan Optical-Mechanical Plant in the mid-90s for use on hunting weapons. Installed on the Dovetail type rail, adjustment only possible after full disassembly. Heavy, uncomfortable, foggy sight with horrible parallax - a real product of its time. However, it's still slightly more effective than shooting with iron sights.",
	weight = 0.2,
	value = 5155,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rusak.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_sig_romeo7"] = {
	fullName = "SIG Sauer ROMEO7 1x30 reflex sight (prototype)",
	displayName = "ROMEO7",
	displayType = DISPLAYTYPE,
	description = "An early prototype of the ROMEO7 1x30 reflex sight. Manufactured by SIG Sauer.",
	weight = 0.3,
	value = 28000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("romeo7.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_sro"] = {
	fullName = "Trijicon SRO reflex sight",
	displayName = "SRO",
	displayType = DISPLAYTYPE,
	description = "The SRO (Specialized Reflex Optic) is a rugged, compact reflex sight. It can be used as a primary or backup optic. Requires a compatible base to mount on Weaver-style rails. Manufactured by Trijicon.",
	weight = 0.05,
	value = 38720,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sro.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_sro_fde"] = {
	fullName = "Trijicon SRO reflex sight (FDE)",
	displayName = "SRO",
	displayType = DISPLAYTYPE,
	description = "The SRO (Specialized Reflex Optic) is a rugged, compact reflex sight. It can be used as a primary or backup optic. Requires a compatible base to mount on Weaver-style rails. Manufactured by Trijicon. Flat Dark Earth version.",
	weight = 0.05,
	value = 38720,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sro_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_srs02"] = {
	fullName = "Trijicon SRS-02 reflex sight",
	displayName = "SRS-02",
	displayType = DISPLAYTYPE,
	description = "The Trijicon SRS Sealed Reflex Sight is compact and takes up less rail space while maintaining durability and performance. The large 38mm aperture allows for a wide field of view and rapid target engagement. The Trijicon SRS Sealed Reflex Sight features a 1.75 MOA dot for precision. The SRS is powered by a solar cell and a single AA battery.",
	weight = 0.4,
	value = 23500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("srs02.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_t1"] = {
	fullName = "Aimpoint Micro T-1 reflex sight",
	displayName = "T-1",
	displayType = DISPLAYTYPE,
	description = "The Micro T-1 compact reflex sight by Aimpoint was designed for use with any kind of firearms and even with bows. Lightweight, compact, and durable.",
	weight = 0.1,
	value = 28000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("t1.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_t12w"] = {
	fullName = "Torrey Pines Logic T12W thermal reflex sight",
	displayName = "T12W",
	displayType = DISPLAYTYPE,
	description = "A compact termal reflex sight with a low frequency. Manufactured by Torrey Pines Logic.",
	weight = 0.1,
	value = 120000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("t12w.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 48,
	lootWeight = 100,
	canPurchase = false,
}

EFGM.ITEMS["arc9_att_eft_optic_targetring"] = {
	fullName = "VOMZ Pilad TargetRing reflex sight",
	displayName = "TargetRing",
	displayType = DISPLAYTYPE,
	description = "Designed for hunting birds or small game, for sport shooting at stationary or fast-moving targets. Ideal for this purpose, it creates a contrasting circle on the target, giving the shooter an opportunity to make the pre-direction and not to lose speed. It is mounted only on smoothbore (shotgun) weapons.",
	weight = 0.2,
	value = 6955,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("targetring.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_uh1"] = {
	fullName = "Vortex Razor AMG UH-1 holographic sight",
	displayName = "UH-1",
	displayType = DISPLAYTYPE,
	description = "The Vortex Razor AMG UH-1 holographic sight is not only made with futuristic design, but, according to its creators, is also a revolution among holographic and reflex sights.",
	weight = 0.3,
	value = 37000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uh1.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_utg"] = {
	fullName = "Leapers UTG reflex sight",
	displayName = "UTG",
	displayType = DISPLAYTYPE,
	description = "The UTG reflex sight with a Red/Green circle dot, manufactured by Leapers Inc. This model is a compact, small-size reflex sight, which mounts on Weaver/Picatinny rails.",
	weight = 0.2,
	value = 29000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("utg.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_xps3_0"] = {
	fullName = "EOTech XPS3-0 holographic sight",
	displayName = "XPS3-0",
	displayType = DISPLAYTYPE,
	description = "XPS3 is more compact than the other holographic sights, but just as effective. Moreover, such approach leaves more mounting space for additional equipment. Both hunters and armed forces operatives value it for small size and weight, which are particularly noticeable over long missions. The model 3-0 features a single-dot reticle of 1 MOA.",
	weight = 0.2,
	value = 49000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("xpse.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_xps3_2"] = {
	fullName = "EOTech XPS3-2 holographic sight",
	displayName = "XPS3-2",
	displayType = DISPLAYTYPE,
	description = "XPS3 is more compact than the other holographic sights, but just as effective; moreover, such approach leaves more mounting space for additional equipment. Both hunters and armed forces operatives value it for small size and weight, which are particularly noticeable over long missions. The model 3-2 features a two-dot reticle of 1 MOA.",
	weight = 0.2,
	value = 44500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("xpse2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_p90_scope"] = {
	fullName = "FN P90 Ring Sight reflex sight",
	displayName = "P90 Ring",
	displayType = DISPLAYTYPE,
	description = "Ring Sight is a reflex sight for the P90 SMG, manufactured by Fabrique Nationale Herstal.",
	weight = 0.3,
	value = 14110,
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

EFGM.ITEMS["arc9_att_eft_scope_25mm_pilad"] = {
	fullName = "VOMZ Pilad 4x32 25.4mm riflescope",
	displayName = "Pilad 4x32",
	displayType = DISPLAYTYPE,
	description = "Designed for shooting at small and medium distances. The sight will be practical for shooting at moving objects at a distance of up to 150m.",
	weight = 0.3,
	value = 11030,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vomz.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_30mm_march"] = {
	fullName = "March Tactical 2-24x42 FFP 30mm riflescope",
	displayName = "2-24x42 FFP",
	displayType = DISPLAYTYPE,
	description = "The March Tactical 2-24x42 FFP optical scope is reliable and accurate with ammunition of any power.",
	weight = 0.6,
	value = 42975,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ffp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_30mm_mark4"] = {
	fullName = "Leupold Mark 4 LR 6.5-20x50 30mm riflescope",
	displayName = "6.5-20x50",
	displayType = DISPLAYTYPE,
	description = "Precise, accurate, durable and dependable - the Leupold Mark 4 6.5-20x50 rifle scope. The model provides 6.5 - 20x magnification giving you a clear idea of the actual size of the targeted object.",
	weight = 0.6,
	value = 46665,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mark4lr.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_30mm_mark4mrt"] = {
	fullName = "Leupold Mark 4 MR/T TS-30A2 2.5-8x36 30mm riflescope",
	displayName = "TS-30A2",
	displayType = DISPLAYTYPE,
	description = "Precise, accurate, durable and dependable - the Mark 4 MR/T TS-30A2 rifle scope. The model provides 2.5-8x magnification giving you a clear idea of the actual size of the targeted object.",
	weight = 0.4,
	value = 38800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mrt.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_30mm_razor"] = {
	fullName = "Vortex Razor HD Gen.2 1-6x24 30mm riflescope",
	displayName = "Razor HD Gen.2",
	displayType = DISPLAYTYPE,
	description = "A tactical riflescope designed for quick target acquisition and maximum precision. Manufactured by Vortex Optics.",
	weight = 0.5,
	value = 109955,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("razorhd.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_30mm_razor_blk"] = {
	fullName = "Vortex Razor HD Gen.2 1-6x24 30mm riflescope",
	displayName = "Razor HD Gen.2",
	displayType = DISPLAYTYPE,
	description = "A tactical riflescope designed for quick target acquisition and maximum precision. Manufactured by Vortex Optics.",
	weight = 0.5,
	value = 109955,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("razorhd_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_30mm_sb_pmii1"] = {
	fullName = "Schmidt & Bender PM II 1-8x24 30mm riflescope",
	displayName = "PM II 1-8x24",
	displayType = DISPLAYTYPE,
	description = "The Schmidt & Bender PM II 1-8x24 riflescope was originally created for elite military forces for high-quality target acquisition and pinpoint accuracy.",
	weight = 0.9,
	value = 73355,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pmii_18.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_30mm_sb_pmii1_blk"] = {
	fullName = "Schmidt & Bender PM II 1-8x24 30mm riflescope",
	displayName = "PM II 1-8x24",
	displayType = DISPLAYTYPE,
	description = "The Schmidt & Bender PM II 1-8x24 riflescope was originally created for elite military forces for high-quality target acquisition and pinpoint accuracy.",
	weight = 0.9,
	value = 73355,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pmii_18_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_30mm_tac30"] = {
	fullName = "Burris FullField TAC30 1-4x24 30mm riflescope",
	displayName = "TAC30",
	displayType = DISPLAYTYPE,
	description = "The TAC30 offers a very wide field of view, and 1x magnification at the lower end - making for easy, fast target acquisition. The 4x full zoom and Ballistic CQ reticle make shots out to about 300 yards very practical. The illuminated center dot and large, bright circle allow for instant target engagement at close distances.",
	weight = 0.5,
	value = 50715,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tac30.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_30mm_tango6t"] = {
	fullName = "SIG TANGO6T 1-6x24 30mm riflescope",
	displayName = "TANGO6T",
	displayType = DISPLAYTYPE,
	description = "The TANGO6T is a rugged and well-built low power variable optic. This model features a 1x to 6x magnification and a first focal plane reticle. This rifle scope is ideal for short and medium distances, as well as for backcountry hunting. Manufactured by SIG Sauer.",
	weight = 0.6,
	value = 81005,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tango6.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_30mm_tango6t_blk"] = {
	fullName = "SIG TANGO6T 1-6x24 30mm riflescope",
	displayName = "TANGO6T",
	displayType = DISPLAYTYPE,
	description = "The TANGO6T is a rugged and well-built low power variable optic. This model features a 1x to 6x magnification and a first focal plane reticle. This rifle scope is ideal for short and medium distances, as well as for backcountry hunting. Manufactured by SIG Sauer.",
	weight = 0.6,
	value = 81005,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tango6_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_30mm_vudu"] = {
	fullName = "EOTech Vudu 1-6x24 30mm riflescope",
	displayName = "Vudu 1-6x24",
	displayType = DISPLAYTYPE,
	description = "The EOTech Vudu 1-6x24 riflescope, equally effective on AR platforms and bolt-action rifles. Its EOTech-style speed ring reticle is designed for fast target engagement at low power, while delivering the resolution and accuracy needed for longer range targets.",
	weight = 0.5,
	value = 72385,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vudu.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_34mm_atacr"] = {
	fullName = "Nightforce ATACR 5-35x56 34mm riflescope",
	displayName = "ATACR 5-35x56",
	displayType = DISPLAYTYPE,
	description = "The NightForce ATACR 5-35x56 versatile scope with an extensive magnification range and a wide field-of-view across the entire range making it easy to see and engage targets.",
	weight = 1.1,
	value = 89995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("atacr.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_34mm_hsff"] = {
	fullName = "Hensoldt FF 4-16x56 34mm riflescope",
	displayName = "FF 4-16",
	displayType = DISPLAYTYPE,
	description = "The Hensoldt FF 4-16x56 telescopic sight was developed to deliver maximum performance and high adjustment ranges while maintaining a short optical system. The FF version of the scope has the reticle placed in the first image plane, thus, the reticle pattern is also magnified when the magnification is changed. This makes it possible to determine the distance using the MIL-DOT without having to calculate.",
	weight = 0.9,
	value = 42500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hensoldt.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_34mm_sb_pmii3"] = {
	fullName = "Schmidt & Bender PM II 3-20x50 34mm riflescope",
	displayName = "PM II 3-20x50",
	displayType = DISPLAYTYPE,
	description = "The Schmidt & Bender PM II 3-20x50 riflescope was originally created for elite military forces for high-quality target acquisition and pinpoint accuracy.",
	weight = 0.9,
	value = 43100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pmii_320.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_34mm_sb_pmii3_blk"] = {
	fullName = "Schmidt & Bender PM II 3-20x50 34mm riflescope",
	displayName = "PM II 3-20x50",
	displayType = DISPLAYTYPE,
	description = "The Schmidt & Bender PM II 3-20x50 riflescope was originally created for elite military forces for high-quality target acquisition and pinpoint accuracy.",
	weight = 0.9,
	value = 43100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pmii_320_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_34mm_sb_pmii5"] = {
	fullName = "Schmidt & Bender PM II 5-25x56 34mm riflescope",
	displayName = "PM II 5-25x56",
	displayType = DISPLAYTYPE,
	description = "The Schmidt & Bender PM II 5-25x56 riflescope was originally created for elite military forces for high-quality target acquisition and pinpoint accuracy.",
	weight = 0.9,
	value = 43100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pmii_525.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_34mm_sb_pmii5_blk"] = {
	fullName = "Schmidt & Bender PM II 5-25x56 34mm riflescope",
	displayName = "PM II 5-25x56",
	displayType = DISPLAYTYPE,
	description = "The Schmidt & Bender PM II 5-25x56 riflescope was originally created for elite military forces for high-quality target acquisition and pinpoint accuracy.",
	weight = 0.9,
	value = 43100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pmii_525_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_35mm_5hd"] = {
	fullName = "Leupold Mark 5HD 5-25x56mm 35mm riflescope (FDE)",
	displayName = "5HD 5-25x56",
	displayType = DISPLAYTYPE,
	description = "The Mark 5HD 5-25x56 riflescope is known for being a lighter and more efficient optic than other scopes in its class. Featuring optical glass, full multi-coated lenses and an advanced light management system, the scope offers low-glare, high-contrast imaging. Installed on 35mm ring mounts. Manufactured by Leupold. Flat Dark Earth version.",
	weight = 0.85,
	value = 66180,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("5hd.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_acog_ta01"] = {
	fullName = "Trijicon ACOG TA01NSN 4x32 scope",
	displayName = "TA01NSN",
	displayType = DISPLAYTYPE,
	description = "ACOG TA01NSN 4x32 rifle scope manufactured by Trijicon. Comes in black and tan.",
	weight = 0.4,
	value = 35195,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ta01nsn.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_acog_ta01_tan"] = {
	fullName = "Trijicon ACOG TA01NSN 4x32 scope (TAN)",
	displayName = "TA01NSN TAN",
	displayType = DISPLAYTYPE,
	description = "ACOG TA01NSN 4x32 rifle scope manufactured by Trijicon. Comes in black and tan.",
	weight = 0.4,
	value = 35195,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ta01nsn_tan.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_acog_ta11d"] = {
	fullName = "Trijicon ACOG TA11D 3.5x35 scope",
	displayName = "TA11D",
	displayType = DISPLAYTYPE,
	description = "The ACOG 3.5x35 riflescope manufactured by Trijicon. Still remains a favorite among competitive shooters, law enforcement and freedom-loving civilians from everywhere around the world.",
	weight = 0.4,
	value = 40645,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ta11d.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_adop4"] = {
	fullName = "NcSTAR ADO P4 Sniper 3-9x42 riflescope",
	displayName = "ADO P4",
	displayType = DISPLAYTYPE,
	description = "The Advance Dual Optic (ADO) 3X-9X variable magnification scope with a 42mm objective lens. The ADO Scope features an integrated Red Dot Reflex Optic on top of the scope body. Manufactured by NcSTAR.",
	weight = 0.6,
	value = 35100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("adop4.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_adop4_blk"] = {
	fullName = "NcSTAR ADO P4 Sniper 3-9x42 riflescope",
	displayName = "ADO P4",
	displayType = DISPLAYTYPE,
	description = "The Advance Dual Optic (ADO) 3X-9X variable magnification scope with a 42mm objective lens. The ADO Scope features an integrated Red Dot Reflex Optic on top of the scope body. Manufactured by NcSTAR.",
	weight = 0.6,
	value = 35100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("adop4_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_bravo4"] = {
	fullName = "SIG Sauer BRAVO4 4x30 scope",
	displayName = "BRAVO4",
	displayType = DISPLAYTYPE,
	description = "Designed by SIG Sauer, the BRAVO4 4x30 optical scope sight features the uniquely large FOV, 43% wider than closest competitors. It also has an extra rail mount on top of it that allows installation of a backup compact sight.",
	weight = 0.4,
	value = 53365,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("bravo4.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_compactprism"] = {
	fullName = "Monstrum Tactical Compact Prism Scope 2x32",
	displayName = "Compact 2x32",
	displayType = DISPLAYTYPE,
	description = "A compact prismatic scope with 2x magnification manufactured by Monstrum Tactical.",
	weight = 0.4,
	value = 36850,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("compactprism.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_dovetail_1p78"] = {
	fullName = "NPZ 1P78-1 2.8x scope",
	displayName = "1P78-1",
	displayType = DISPLAYTYPE,
	description = "A 2.8x magnification day scope, installed on dovetail rails. Manufactured by NPZ.",
	weight = 0.6,
	value = 11000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("npz1p78.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_dovetail_ekp1s03"] = {
	fullName = "Axion Kobra EKP-1S-03 reflex sight (Dovetail)",
	displayName = "EKP-1S-03",
	displayType = DISPLAYTYPE,
	description = "Kobra is a highly popular red dot sight among law enforcement agencies and civilian shooters. It was developed for the Armed Forces of the Russian Federation. EKP-1S-03 has earned a reputation of reliable, fail-safe in the harshest field conditions among hunters, sports shooters, soldiers and collectors. This sight is designed for installation on the Dovetail type mounts. Manufactured by Axion.",
	weight = 0.2,
	value = 4990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ekp1s03.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_dovetail_ekp802"] = {
	fullName = "Axion Kobra EKP-8-02 reflex sight (dovetail)",
	displayName = "EKP-8-02",
	displayType = DISPLAYTYPE,
	description = "Cobra is a very popular reflex sight among security agencies and civilian shooters. It was designed for the armed forces of the Russian Federation, but was never formally adopted.",
	weight = 0.25,
	value = 10190,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("kobradovetail.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_dovetail_nspum"] = {
	fullName = "NSPU-M night vision scope",
	displayName = "NSPU-M",
	displayType = DISPLAYTYPE,
	description = "Russian nightvision scope for a AK series rifles with 3.5x magnification.",
	weight = 1.9,
	value = 15000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("nspum.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_dovetail_okp7"] = {
	fullName = "OKP-7 reflex sight (dovetail)",
	displayName = "OKP-7",
	displayType = DISPLAYTYPE,
	description = "The original design of OKP sights allows firing from unstable positions in rapidly changing conditions, reduces the operator fatigue, and, if necessary, allows unhindered use of base mechanical sights. The key feature of this sight is a rimless reflector attachment that doesn't block any field of fire sections; instead, reflector is protected by thin and durable visor that is almost un-noticeable when firing. This variant is installed on the dovetail type mount.",
	weight = 0.3,
	value = 16400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("okp7dovetail.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_dovetail_pk1"] = {
	fullName = 'NPZ PK1 "Obzor" reflex sight',
	displayName = "Obzor",
	displayType = DISPLAYTYPE,
	description = "A reflex sight designed for hunters for fast acquisition of the target while operating in highly cold temperatures, Installed on dovetail rails. Manufactured by NPZ.",
	weight = 0.5,
	value = 7680,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("npzpk1.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_dovetail_pkaa"] = {
	fullName = "BelOMO PK-AA reflex sight",
	displayName = "PK-AA",
	displayType = DISPLAYTYPE,
	description = "The PK-AA reflex sight, designed to fit any AK-style model with a dovetail rail mount. Manufactured by BelOMO.",
	weight = 0.45,
	value = 5355,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pkaa.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_dovetail_pso1"] = {
	fullName = "BelOMO PSO-1 4x24 scope",
	displayName = "PSO-1",
	displayType = DISPLAYTYPE,
	description = "Military grade sniper optical scope PSO 1M2, manufactured by Zenit-Belomo. This optical scope is designed for precision sight fire with Dragunov Sniper Rifle (SVD) on the variety of targets with 4x magnification and 6 degree FOV.",
	weight = 0.6,
	value = 18385,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pso1.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_dovetail_pso1m2"] = {
	fullName = "BelOMO PSO-1M2-1 4x24 scope",
	displayName = "PSO-1M2-1",
	displayType = DISPLAYTYPE,
	description = "Military grade sniper optical scope PSO 1M2-1, manufactured by Zenit-Belomo. This optical scope is designed for precision sight fire with Special Sniper Rifle (VSS) and Dragunov Sniper Rifle (SVD) on the variety of targets with 4x magnification and 6 degree FOV.",
	weight = 0.6,
	value = 17995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pso1m21.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_dovetail_pso1m2non1"] = {
	fullName = "BelOMO PSO-1M2 4x24 scope",
	displayName = "PSO-1M2",
	displayType = DISPLAYTYPE,
	description = "The PSO-1M2 military grade optical sniper scope, manufactured by BelOMO. This optical scope is designed for precision sight fire with the Dragunov Sniper Rifle (SVD) on the variety of targets with 4x magnification and 6 degree FOV.",
	weight = 0.6,
	value = 20400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pso1m2.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_dovetail_tulpan"] = {
	fullName = 'NPZ USP-1 "Tyulpan" 4x scope',
	displayName = "USP-1",
	displayType = DISPLAYTYPE,
	description = "Unified rifle sight USP-1 is designed to conduct accurate fire from AK-74N, AK-74 M, AN-94 and machine guns RPK-74N and PKMN in the daytime and at night on glowing and illuminated targets.",
	weight = 0.8,
	value = 15805,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp1.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_echo1"] = {
	fullName = "SIG Sauer ECHO1 1-2x30mm 30Hz thermal reflex scope",
	displayName = "ECHO1",
	displayType = DISPLAYTYPE,
	description = "The ECHO1 thermal reflex scope with many uses and advantages. Manufactured by SIG Sauer.",
	weight = 0.4,
	value = 499995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("echo.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 48,
	lootWeight = 100,
	canPurchase = false,
}

EFGM.ITEMS["arc9_att_eft_scope_elcan"] = {
	fullName = "ELCAN SpecterDR 1x/4x scope",
	displayName = "SpecterDR",
	displayType = DISPLAYTYPE,
	description = "The SpecterDR (Dual Role) 1x/4x scope from Specter scope series designed by ELCAN has marked a breakthrough in the optic sight development by becoming the first variable scope that truly has two work modes, switching from 4x magnification to 1x in one touch. Also features a backup iron sight.",
	weight = 0.6,
	value = 44310,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("elcan.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_elcan_fde"] = {
	fullName = "ELCAN SpecterDR 1x/4x scope (FDE)",
	displayName = "SpecterDR (F)",
	displayType = DISPLAYTYPE,
	description = "The SpecterDR (Dual Role) 1x/4x scope from Specter scope series designed by ELCAN has marked a breakthrough in the optic sight development by becoming the first variable scope that truly has two work modes, switching from 4x magnification to 1x in one touch. Also features a backup iron sight.",
	weight = 0.6,
	value = 44310,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("elcan_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_flir"] = {
	fullName = "FLIR RS-32 2.25-9x 35mm 60Hz thermal riflescope",
	displayName = "FLIR RS-32",
	displayType = DISPLAYTYPE,
	description = "A versatile thermal imaging telescope/sight with many uses and advantages. It can be installed on weapons for use as a sight, or on the helmet as a monocular via an adapter, or as a separate observation device.",
	weight = 0.4,
	value = 675550,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("flir.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 48,
	lootWeight = 100,
	canPurchase = false,
}

EFGM.ITEMS["arc9_att_eft_scope_hamr"] = {
	fullName = "Leupold Mark 4 HAMR 4x24mm DeltaPoint hybrid assault scope",
	displayName = "HAMR",
	displayType = DISPLAYTYPE,
	description = "Hybrid Leupold-produced scope comprises the Mark 4 HAMR 4x24mm optical sight with DeltaPoint reflex sight installed on top of it. It was developed for precision mid-range carbine fire using the 4x optics while being equally effective in close quarters thanks to use of compact reflex sight when necessary.",
	weight = 0.4,
	value = 43500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hamr.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_kmz_1p59"] = {
	fullName = "KMZ 1P59 3-10x riflescope",
	displayName = "KMZ 1P59",
	displayType = DISPLAYTYPE,
	description = 'The 1P59 "Hyperon" pancratic sight is designed to increase the effectiveness of firing from SVD in comparison with the standard PSO-1 sight by 1.3 ... 2 times (depending on the range and size of the target) due to a larger zoom, the use of a more accurate range finder, combining operations of measuring the distance to the target and entering the aiming angles, as well as placing the scale for entering the aiming angles in the sight field of view.',
	weight = 0.8,
	value = 16940,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("1p59.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_kmz_1p69"] = {
	fullName = "KMZ 1P69 3-10x riflescope",
	displayName = "KMZ 1P69",
	displayType = DISPLAYTYPE,
	description = 'The 1P69 "Hyperon" pancratic Sight is a further development of the "Hyperon" sights and is intended for installation on the SV-98 in order to increase the effectiveness on the battlefield. The sight has a flexible adjustment of the multiples, as well as a fairly accurate range finder, facilitating the operation of combining, measuring the distance to the target and entering the aiming angles.',
	weight = 0.9,
	value = 17220,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("1p69.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_pa_prism"] = {
	fullName = "Primary Arms Compact Prism scope 2.5x",
	displayName = "Prism 2.5x",
	displayType = DISPLAYTYPE,
	description = "ACOG TA01NSN 4x32 rifle scope manufactured by Trijicon. Comes in black and tan.",
	weight = 0.3,
	value = 20125,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("prism.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_reapir"] = {
	fullName = "Trijicon REAP-IR thermal scope",
	displayName = "REAP-IR",
	displayType = DISPLAYTYPE,
	description = "A versatile thermal imaging telescope/sight. It can be installed on weapons for use in the form of a riflesight, on a helmet - via adapter - as a monocular, and as a separate observation device.",
	weight = 0.6,
	value = 413555,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("reapir.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 48,
	lootWeight = 100,
	canPurchase = false,
}

EFGM.ITEMS["arc9_att_eft_scope_shakhin"] = {
	fullName = "Cyclone Shakhin 3.7x thermal scope",
	displayName = "Shakhin 3.7x",
	displayType = DISPLAYTYPE,
	description = "A 3.7x thermal scope manufactured by Central Research Institute Cyclone.",
	weight = 1,
	value = 199955,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("shakhin.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 48,
	lootWeight = 100,
	canPurchase = false,
}

EFGM.ITEMS["arc9_att_eft_scope_shakhin_blk"] = {
	fullName = "Cyclone Shakhin 3.7x thermal scope",
	displayName = "Shakhin 3.7x",
	displayType = DISPLAYTYPE,
	description = "A 3.7x thermal scope manufactured by Central Research Institute Cyclone.",
	weight = 1,
	value = 199955,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("shakhin_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 48,
	lootWeight = 100,
	canPurchase = false,
}

EFGM.ITEMS["arc9_att_eft_scope_swampfox"] = {
	fullName = "SwampFox Trihawk Prism Scope 3x30",
	displayName = "Trihawk 3x30",
	displayType = DISPLAYTYPE,
	description = "A prismatic scope with 3x magnification manufactured by SwampFox.",
	weight = 0.4,
	value = 26800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("trihawk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_valday_ps320"] = {
	fullName = "Valday PS-320 1/6x scope",
	displayName = "PS-320",
	displayType = DISPLAYTYPE,
	description = "PS-320 1x/6x is a prototype scope designed by Valday.",
	weight = 0.6,
	value = 42000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("valday.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_vulcan"] = {
	fullName = "Armasight Vulcan MG 3.5x Bravo night vision scope",
	displayName = "Vulcan 3.5x",
	displayType = DISPLAYTYPE,
	description = "Vulcan MG is a 3rd generation night vision scope with a 3.5x magnification manufactured by Armasight.",
	weight = 0.9,
	value = 33585,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vulcan.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scope_zeuspro"] = {
	fullName = "Armasight Zeus-Pro 640 2-16x50 thermal scope",
	displayName = "ZeusPro 640",
	displayType = DISPLAYTYPE,
	description = "The Zeus-Pro 640 is a thermal scope with a 1.8x and 2.1x magnification. Manufactured by Armasight.",
	weight = 0.9,
	value = 408175,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("zeus.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 48,
	lootWeight = 100,
	canPurchase = false,
}

EFGM.ITEMS["arc9_att_eft_sr2m_optic"] = {
	fullName = "SR-2M KP-SR2 reflex sight",
	displayName = "KP-SR2",
	displayType = DISPLAYTYPE,
	description = 'The KP-SR2 reflex sight is designed to increase the efficiency of firing SR-2M "Veresk" submachine gun. The sight facilitates the process of aiming a weapon at a target, especially in low light conditions, and allows you to increase combat efficiency. Manufactured by TsNIItochmash.',
	weight = 0.2,
	value = 13200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("kpsr2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_optic_fc1"] = {
	fullName = "DI Optical FC1 reflex sight",
	displayName = "FC1",
	displayType = DISPLAYTYPE,
	description = "A prismatic red dot reflex sight manufactured by DI Optical.",
	weight = 0.1,
	value = 20005,
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

EFGM.ITEMS["arc9_att_eft_optic_r1x"] = {
	fullName = "Steiner R1X reflex sight",
	displayName = "R1X",
	displayType = DISPLAYTYPE,
	description = "The R1X reflex sight, designed for precision shooting for modern sporting rifles and shotguns. Manufactured by Steiner.",
	weight = 0.3,
	value = 36150,
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
