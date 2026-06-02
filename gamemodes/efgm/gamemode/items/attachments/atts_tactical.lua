local DISPLAYTYPE = "Tactical"
local ATTICONPATH = "items/attachments/tacticals/"

local function AttMaterial(imgPath)
	if SERVER then return end
	return Material(ATTICONPATH .. imgPath, "smooth")
end

EFGM.ITEMS["arc9_att_eft_bipod_atlas_v8"] = {
	fullName = "BT10 V8 Atlas Bipod",
	displayName = "BT10",
	displayType = DISPLAYTYPE,
	description = "The Atlas V8 series BT10 bipod. Lightweight, foldable, adjustable. Manufactured by B&T Industries L.L.C.",
	weight = 0.3,
	value = 8510,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("bt10.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_bipod_harris"] = {
	fullName = 'Harris S-BRM 6-9" Bipod',
	displayName = "S-BRM",
	displayType = DISPLAYTYPE,
	description = 'The S-BRM 6-9" ultralight foldable bipod with a spring retraction mechanism. Used by service operators and civilian shooters worldwide. Manufactured by Harris.',
	weight = 0.2,
	value = 6090,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sbrm.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_hg_bipod"] = {
	fullName = "HK G36 bipod",
	displayName = "G36 bipod",
	displayType = DISPLAYTYPE,
	description = "A standard-issue bipod for the HK G36 assault rifle.",
	weight = 0.2,
	value = 5730,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36bipod.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m249_bipod"] = {
	fullName = "M249 Standard Bipod",
	displayName = "M249 Std.",
	displayType = DISPLAYTYPE,
	description = "Standard issue bipod for the M249 5.56x45 light machinegun.",
	weight = 0.2,
	value = 4750,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m249.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m60_bipod"] = {
	fullName = "M60 bipod",
	displayName = "M60 bipod",
	displayType = DISPLAYTYPE,
	description = "A standard-issue bipod for the M60 machine gun. Manufactured by U.S Ordnance.",
	weight = 0.5,
	value = 3490,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m60bipod.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_pkm_bipod"] = {
	fullName = "PK bipod",
	displayName = "PK bipod",
	displayType = DISPLAYTYPE,
	description = "A standard-issue bipod for Kalashnikov Machine gun. Manufactured by V.A. Degtyarev Plant.",
	weight = 0.4,
	value = 5200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pkbipod.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rpd_bipod"] = {
	fullName = "RPD bipod",
	displayName = "RPD bipod",
	displayType = DISPLAYTYPE,
	description = "A standard-issue bipod for the RPD machine gun. Manufactured by V.A. Degtyarev Plant.",
	weight = 0.4,
	value = 4000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rpdbipod.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sv98_bipodd"] = {
	fullName = "SV-98 bipod",
	displayName = "SV-98 bipod",
	displayType = DISPLAYTYPE,
	description = "A standard-issue Izhmash bipod for the SV-98 sniper rifle. Folded into the handguard when not used.",
	weight = 0.1,
	value = 4305,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sv98bipod.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_baldrpro"] = {
	fullName = "Olight Baldr Pro tactical flashlight with laser",
	displayName = "BaldrPro",
	displayType = DISPLAYTYPE,
	description = "The Baldr Pro flashlight by Olight is engineered to fit virtually any rail-equipped pistol or rifle. Combines a laser designator and a flashlight.",
	weight = 0.1,
	value = 9480,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("baldr.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_baldrpro_tan"] = {
	fullName = "Olight Baldr Pro tactical flashlight with laser (Tan)",
	displayName = "BaldrPro",
	displayType = DISPLAYTYPE,
	description = "The Baldr Pro flashlight by Olight is engineered to fit virtually any rail-equipped pistol or rifle. Combines a laser designator and a flashlight.",
	weight = 0.1,
	value = 9480,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("baldr_tan.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_dbal_pl"] = {
	fullName = "Steiner DBAL-PL tactical flashlight with laser",
	displayName = "DBAL-PL",
	displayType = DISPLAYTYPE,
	description = "The Steiner DBAL-PL tactical device with an LED flashlight and two laser designators (Red and Green), including an infrared illuminator.",
	weight = 0.1,
	value = 17120,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("dbal.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_gtl21"] = {
	fullName = "Glock GTL 21 tactical flashlight with laser",
	displayName = "GTL 21",
	displayType = DISPLAYTYPE,
	description = "An underbarrel-mounted LED flashlight with a laser aiming module manufactured by Glock.",
	weight = 0.1,
	value = 14995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("gtl.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_k2p"] = {
	fullName = "Zenit Klesch-2P flashlight with laser",
	displayName = "Klesch-2P",
	displayType = DISPLAYTYPE,
	description = 'An underbarrel-mounted LED flashlight "Klesch-2P + LAM" manufactured by Zenit.',
	weight = 0.1,
	value = 17220,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("klesch2p.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_k2u"] = {
	fullName = "Zenit Klesch-2U tactical flashlight",
	displayName = "Klesch-2U",
	displayType = DISPLAYTYPE,
	description = 'The "Klesch-2U" LED tactical flashlight with a mount on the Picatinny rail is designed to detect and illuminate the target (object) when observing, inspecting and firing at night and in conditions of limited visibility. Manufactured by Zenit.',
	weight = 0.2,
	value = 11395,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("klesch2u.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_la5b"] = {
	fullName = "LA-5B/PEQ tactical device",
	displayName = "LA-5B/PEQ",
	displayType = DISPLAYTYPE,
	description = "The Advanced Target Pointer Illuminator Aiming Laser (ATPIAL) produced by L3 Technologies is a rugged, combat-proven and easy-to-use aiming system with integrated infrared and visible aim lasers as well as an infrared illuminator.",
	weight = 0.2,
	value = 18400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("peq5b_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_la5b_blk"] = {
	fullName = "LA-5B/PEQ tactical device",
	displayName = "LA-5B/PEQ",
	displayType = DISPLAYTYPE,
	description = "The Advanced Target Pointer Illuminator Aiming Laser (ATPIAL) produced by L3 Technologies is a rugged, combat-proven and easy-to-use aiming system with integrated infrared and visible aim lasers as well as an infrared illuminator.",
	weight = 0.2,
	value = 18400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("peq5b_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_lastac2"] = {
	fullName = "Steiner LAS/TAC 2 tactical flashlight",
	displayName = "LAS/TAC 2",
	displayType = DISPLAYTYPE,
	description = "A tactical LED flashlight manufactured by Steiner.",
	weight = 0.05,
	value = 20000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("lastac.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_ls321"] = {
	fullName = "Holosun LS321 Tactical device",
	displayName = "LS321",
	displayType = DISPLAYTYPE,
	description = "Holosun LS321 is a multi-laser tactical device with green laser in the visible light spectrum, IR laser and IR searchlight.",
	weight = 0.2,
	value = 17900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ls321_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_ls321_blk"] = {
	fullName = "Holosun LS321 Tactical device",
	displayName = "LS321",
	displayType = DISPLAYTYPE,
	description = "Holosun LS321 is a multi-laser tactical device with green laser in the visible light spectrum, IR laser and IR searchlight.",
	weight = 0.2,
	value = 17900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ls321_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_mawlc"] = {
	fullName = "MAWL-C1+ tactical device",
	displayName = "MAWL-C1+",
	displayType = DISPLAYTYPE,
	description = "Modular Advanced Weapon Laser C1+ (MAWL-C1+) produced by B.E. Meyers is a rugged, combat-proven and easy-to-use aiming system with integrated infrared and visible aim lasers as well as an infrared illuminator.",
	weight = 0.2,
	value = 23400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mawl.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_nstar_tbl"] = {
	fullName = "NcSTAR Tactical blue laser LAM-module",
	displayName = "TBL",
	displayType = DISPLAYTYPE,
	description = "A compact tactical Laser Aiming Module with a blue dot. Mounts on any Picatinny/Weaver rail for precise target acquisition. Manufactured by NcSTAR.",
	weight = 0.05,
	value = 6650,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tbl.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_peq15"] = {
	fullName = "AN/PEQ-15 tactical device",
	displayName = "AN/PEQ-15",
	displayType = DISPLAYTYPE,
	description = "The Advanced Target Pointer Illuminator Aiming Laser (ATPIAL) produced by L3 Technologies is a rugged, combat-proven and easy-to-use aiming system with integrated infrared and visible aim lasers as well as an infrared illuminator.",
	weight = 0.2,
	value = 29000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("peq15_fde.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_peq15_blk"] = {
	fullName = "AN/PEQ-15 tactical device",
	displayName = "AN/PEQ-15",
	displayType = DISPLAYTYPE,
	description = "The Advanced Target Pointer Illuminator Aiming Laser (ATPIAL) produced by L3 Technologies is a rugged, combat-proven and easy-to-use aiming system with integrated infrared and visible aim lasers as well as an infrared illuminator.",
	weight = 0.2,
	value = 29000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("peq15_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_perst3"] = {
	fullName = "Zenit Perst-3 tactical device",
	displayName = "Perst-3",
	displayType = DISPLAYTYPE,
	description = "Perst-3 is a tactical device that combines laser designators in both visible and IR bands with IR searchlight. Manufactured by Zenit.",
	weight = 0.25,
	value = 13600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("perst.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_raptar"] = {
	fullName = "Wilcox RAPTAR ES Tactical Rangefinder",
	displayName = "RAPTAR",
	displayType = DISPLAYTYPE,
	description = 'The early generation of the tactical device called "RAPTAR" combined with a rangefinder. It has visible and IR lasers, as well as an infrared illuminator.',
	weight = 0.3,
	value = 23100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("raptar.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_raptar_blk"] = {
	fullName = "Wilcox RAPTAR ES Tactical Rangefinder",
	displayName = "RAPTAR",
	displayType = DISPLAYTYPE,
	description = 'The early generation of the tactical device called "RAPTAR" combined with a rangefinder. It has visible and IR lasers, as well as an infrared illuminator.',
	weight = 0.3,
	value = 23100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("raptar_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_scout"] = {
	fullName = "SureFire M600 Ultra Scout Light",
	displayName = "M600U",
	displayType = DISPLAYTYPE,
	description = "A modern lightweight tactical weapon light, installed on special compatible mounts. Manufactured by SureFire.",
	weight = 0.2,
	value = 12600,
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

EFGM.ITEMS["arc9_att_eft_tactical_ttprec"] = {
	fullName = "TT DLP Tactical Precision LAM-module",
	displayName = "DLP",
	displayType = DISPLAYTYPE,
	description = "A precision laser designator for the TT pistol, manufactured by DLP Tactical.",
	weight = 0.01,
	value = 3800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("dlp.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_wf501b"] = {
	fullName = "Ultrafire WF-501B flashlight",
	displayName = "WF501B",
	displayType = DISPLAYTYPE,
	description = "A simple but powerful LED flashlight with a sturdy body, durable enough for long-time daily usage.",
	weight = 0.1,
	value = 4550,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("wf50.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_wmx200"] = {
	fullName = "Insight WMX200 tactical flashlight",
	displayName = "WMX200",
	displayType = DISPLAYTYPE,
	description = "The WMX200 tactical flashlight manufactured by Insight Technologies, which combines a conventional flashlight and an IR searchlight.",
	weight = 0.2,
	value = 14440,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("wmx200.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_wmx200_blk"] = {
	fullName = "Insight WMX200 tactical flashlight",
	displayName = "WMX200",
	displayType = DISPLAYTYPE,
	description = "The WMX200 tactical flashlight manufactured by Insight Technologies, which combines a conventional flashlight and an IR searchlight.",
	weight = 0.2,
	value = 14440,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("wmx200_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_x400"] = {
	fullName = "SureFire X400 Ultra tactical flashlight with laser",
	displayName = "X400",
	displayType = DISPLAYTYPE,
	description = "The X400U flashlight by SureFire is engineered to fit virtually any rail-equipped pistol or rifle. Combines a laser designator and a flashlight.",
	weight = 0.15,
	value = 14900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("x400.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_xc1"] = {
	fullName = "SureFire XC1 tactical flashlight",
	displayName = "XC1",
	displayType = DISPLAYTYPE,
	description = "A compact tactical LED flashlight, manufactured by SureFire.",
	weight = 0.05,
	value = 15000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("xc1.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_xhp35"] = {
	fullName = "Armytek Predator Pro v3 XHP35 HI flashlight",
	displayName = "XHP35",
	displayType = DISPLAYTYPE,
	description = "A powerful flashlight in a heavy-duty frame, manufactured by Armytek.",
	weight = 0.1,
	value = 6900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("xhp35.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mdr_bipod_16"] = {
	fullName = "MDR BLK LBL ALX Bipod 16",
	displayName = "ALX 16",
	displayType = DISPLAYTYPE,
	description = "An integrated lightweight bipod for the ALX Bipod 16 handguard. Manufactured by BLK LBL.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/680f6d9a4d7624d36e06527b.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mdr_bipod_20"] = {
	fullName = "MDR BLK LBL ALX Bipod 20",
	displayName = "ALX 20",
	displayType = DISPLAYTYPE,
	description = "An integrated lightweight bipod for the ALX Bipod 20 handguard. Manufactured by BLK LBL.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/680f7e4aeee716732708e84e.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tactical_2d_flashlight"] = {
	fullName = "Zenit 2D flashlight",
	displayName = "2D",
	displayType = DISPLAYTYPE,
	description = "The 2D tactical flashlight, installed on a special mount. Manufactured by Zenit.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/tactical/kr2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}
