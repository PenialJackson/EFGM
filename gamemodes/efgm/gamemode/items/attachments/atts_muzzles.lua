local DISPLAYTYPE = "Muzzle"
local ATTICONPATH = "items/attachments/muzzles/"

local function AttMaterial(imgPath, paramOverride)
	if SERVER then return end
	return Material(ATTICONPATH .. imgPath, paramOverride or "smooth")
end

EFGM.ITEMS["arc9_att_eft_57_silencer"] = {
	fullName = "Gemtech SFN-57 5.7x28 sound suppressor",
	displayName = "SFN-57",
	displayType = DISPLAYTYPE,
	description = "SFN-57 is a compact, high-performance sound suppressor for modern 5.7 mm semi-automatic pistols. Produced by Gemtech.",
	weight = 0.1,
	value = 38000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("57silencer.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aa12_chok"] = {
	fullName = "AA-12 12ga choke",
	displayName = "AA-12 choke",
	displayType = DISPLAYTYPE,
	description = "A special muzzle device for the Auto Assault-12 shotgun.",
	weight = 0.1,
	value = 4000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aa12_choke.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aa12_thr"] = {
	fullName = "AA-12 thread protector",
	displayName = "AA-12 thr.",
	displayType = DISPLAYTYPE,
	description = "A barrel thread protector for the Auto Assault-12 12ga shotgun.",
	weight = 0.05,
	value = 200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aa12_thread.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aek_muzzle_std"] = {
	fullName = "AEK-971 5.45x39 muzzle brake-compensator",
	displayName = "AEK-971",
	displayType = DISPLAYTYPE,
	description = "A standard muzzle brake-compensator for the AEK-971 5.45x39mm assault rifle.",
	weight = 0.1,
	value = 2600,
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

EFGM.ITEMS["arc9_att_eft_ak12_muzzle_std"] = {
	fullName = "AK-12 5.45x39 muzzle brake",
	displayName = "AK-12 MB",
	displayType = DISPLAYTYPE,
	description = "A standard-issue muzzle brake for AK-12 automatic rifles. Manufactured by Izhmash.",
	weight = 0.1,
	value = 1200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak12_brake.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ak12_silencer_std"] = {
	fullName = "AK-12 5.45x39 sound suppressor",
	displayName = "AK-12",
	displayType = DISPLAYTYPE,
	description = "An Izhmash standard-issue sound suppressor for AK-12 automatic rifles.",
	weight = 0.4,
	value = 29000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak12silencer.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ak50_mz_std"] = {
	fullName = "AK-50 .BMG muzzle brake",
	displayName = "AK-50 MB",
	displayType = DISPLAYTYPE,
	description = "A muzzle brake for the AK-50. Reduces recoil and muzzle rise. Manufactured by The AK Guy LTD.",
	weight = 0.2,
	value = 8640,
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

EFGM.ITEMS["arc9_att_eft_aksu_muzzle_ak_std"] = {
	fullName = "AKS-74U 5.45x39 muzzle brake",
	displayName = "6P26 0-20",
	displayType = DISPLAYTYPE,
	description = "A standard-issue IzhMash muzzle brake for the AKS-74U and AKS-74UN, installed on 24x1.5 mm threading.",
	weight = 0.1,
	value = 390,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aks74u_brake.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_apb_silencer_std"] = {
	fullName = "APB 9x18PM sound suppressor",
	displayName = "APB supp.",
	displayType = DISPLAYTYPE,
	description = "A standard-issue detachable APB pistol sound suppressor.",
	weight = 0.5,
	value = 5225,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("apb.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ash12_muzzle_silencer"] = {
	fullName = "ASh-12 12.7x55 sound suppressor",
	displayName = "ASh supp",
	displayType = DISPLAYTYPE,
	description = "Tactical suppressor manufactured by CKIB for ASh-12 12.7x55 automatic rifle.",
	weight = 0.7,
	value = 31605,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ash12_silencer.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ash12_muzzle_std"] = {
	fullName = "ASh-12 12.7x55 muzzle brake-compensator",
	displayName = "ASh MB",
	displayType = DISPLAYTYPE,
	description = "Regular muzzle brake for ASh-12, produced by CKIB.",
	weight = 0.1,
	value = 6690,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ash12_brake.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_dvl10_muzzle_brake"] = {
	fullName = "DVL-10 M2 7.62x51 muzzle brake",
	displayName = "DVL-10 brake",
	displayType = DISPLAYTYPE,
	description = "A standard-issue DVL-10 M2 sniper rifle muzzle brake, manufactured by Lobaev Arms.",
	weight = 0.1,
	value = 3100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("dvl_brake.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_dvl10_muzzle_cap"] = {
	fullName = "DVL-10 7.62x51 muzzle device",
	displayName = "DVL-10 muzzle",
	displayType = DISPLAYTYPE,
	description = "A standard-issue muzzle device for the DVL-10 sniper rifle, manufactured by Lobaev Arms.",
	weight = 0.1,
	value = 990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("dvl_device.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g28_muzzle_std"] = {
	fullName = "HK Prolonged 7.62x51 flash hider",
	displayName = "HK Prolonged",
	displayType = DISPLAYTYPE,
	description = 'The Heckler & Koch "Prolonged" 7.62x51 flash hider. Effectively suppresses flash and can also serve as a platform for the B&T QD sound suppressor.',
	weight = 0.1,
	value = 6730,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("prolonged.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g28_silencer_blk"] = {
	fullName = "HK G28 B&T QD 7.62x51 sound suppressor",
	displayName = "B&T QD",
	displayType = DISPLAYTYPE,
	description = "A quick-detach 7.62x51 silencer manufactured by Brugger & Thomet. Installed on the HK Prolonged flash hider.",
	weight = 0.4,
	value = 38820,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("btqd_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g28_silencer_std"] = {
	fullName = "HK G28 B&T QD 7.62x51 sound suppressor",
	displayName = "B&T QD",
	displayType = DISPLAYTYPE,
	description = "A quick-detach 7.62x51 silencer manufactured by Brugger & Thomet. Installed on the HK Prolonged flash hider.",
	weight = 0.4,
	value = 38820,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("btqd.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_muzzle_4"] = {
	fullName = "HK G36 5.56x45 4-prong flash hider",
	displayName = "G36 long",
	displayType = DISPLAYTYPE,
	description = "A four-prong flash hider for G36 manufactured by Heckler & Koch. Significantly reduces muzzle flash.",
	weight = 0.05,
	value = 6600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36_prong.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_muzzle_c"] = {
	fullName = "HK G36C 5.56x45 4-prong flash hider",
	displayName = "G36C shor",
	displayType = DISPLAYTYPE,
	description = "A four-prong flash hider for G36C manufactured by Heckler & Koch. Reduces muzzle flash.",
	weight = 0.05,
	value = 7255,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36c_prong.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_muzzle_std"] = {
	fullName = "HK G36 5.56x45 flash hider",
	displayName = "G36 std",
	displayType = DISPLAYTYPE,
	description = "A regular flash hider for the G36 assault rifle. Manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 4945,
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

EFGM.ITEMS["arc9_att_eft_kedr_silencer"] = {
	fullName = 'PP-91-01 "Kedr-B" 9x18PM sound suppressor',
	displayName = "Kedr-B",
	displayType = DISPLAYTYPE,
	description = "A standard-issue detachable PP-91-01 Kedr-B 9x18PM sound suppressor. It can be removed for compact carrying purposes.",
	weight = 0.1,
	value = 13220,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pp91_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_kedr_silmount"] = {
	fullName = 'PP-91-01 "Kedr-B" threaded suppressor adapter',
	displayName = "Kedr-B",
	displayType = DISPLAYTYPE,
	description = 'A muzzle thread piece for the PP-91-01 "Kedr-B" submachine gun with an expansion chamber, allows installation of sound suppressors.',
	weight = 0.05,
	value = 1000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pp91_threaded.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_muzzle_brakecomp"] = {
	fullName = "M1A SOCOM 16 7.62x51 muzzle brake-compensator",
	displayName = "SOCOM 16",
	displayType = DISPLAYTYPE,
	description = "A muzzle brake-compensator for M1A rifles, manufactured by Springfield Armory.",
	weight = 0.1,
	value = 2840,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1a_socom.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_muzzle_fsup"] = {
	fullName = "M1A National Match 7.62x51 flash suppressor",
	displayName = "M1A flash",
	displayType = DISPLAYTYPE,
	description = "A muzzle brake-compensator for M1A rifles, manufactured by Springfield Armory.",
	weight = 0.1,
	value = 5660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1a_national.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_muzzle_gas"] = {
	fullName = "M1A Smith Enterprise SOCOM 16 7.62x51 threaded muzzle brake & gas block",
	displayName = "M1A brake&gas",
	displayType = DISPLAYTYPE,
	description = "A muzzle brake/gas block for M1A rifles, manufactured by Smith Enterprise.",
	weight = 0.1,
	value = 4910,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1a_smith_block.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_muzzle_good"] = {
	fullName = "M14 Smith Enterprise Good Iron 7.62x51 muzzle brake",
	displayName = "M14 brake",
	displayType = DISPLAYTYPE,
	description = "A muzzle brake-compensator for M14 rifles, manufactured by Smith Enterprise.",
	weight = 0.1,
	value = 8045,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1a_good.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_muzzle_jp"] = {
	fullName = "M14 JP Enterprises 7.62x51 Tactical Compensator",
	displayName = "M14 comp.",
	displayType = DISPLAYTYPE,
	description = "A muzzle brake-compensator for M14 rifles, manufactured by JP Enterprises.",
	weight = 0.1,
	value = 9440,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1a_jp.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_muzzle_vortex"] = {
	fullName = "M14 Smith Enterprise Vortex 7.62x51 muzzle brake",
	displayName = "M14 Vortex",
	displayType = DISPLAYTYPE,
	description = "A muzzle brake-compensator for M14 rifles, manufactured by Smith Enterprise.",
	weight = 0.05,
	value = 5400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1a_vortex.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_muzzle_yan"] = {
	fullName = "M14 Yankee Hill Phantom 7.62x51 flash hider",
	displayName = "M14 Phantom",
	displayType = DISPLAYTYPE,
	description = "A muzzle brake-compensator manufactured by Yankee Hill to fit M14 rifles.",
	weight = 0.05,
	value = 6485,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m1a_yankee.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m249_muzzle_std"] = {
	fullName = "M249 5.56x45 standard flash hider",
	displayName = "M249 Std.",
	displayType = DISPLAYTYPE,
	description = "Standard flash hider muzzle device for the M249 5.56x45 light machinegun.",
	weight = 0.1,
	value = 4000,
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

EFGM.ITEMS["arc9_att_eft_m60_muzzle_e3"] = {
	fullName = "M60E3 7.62x51 flash hider",
	displayName = "M60E3 flash",
	displayType = DISPLAYTYPE,
	description = "A standard-issue flash hider for the M60E3 light machine gun. Manufactured by U.S Ordnance.",
	weight = 0.1,
	value = 6900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m60e3.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m60_muzzle_e6"] = {
	fullName = "M60E6 7.62x51 flash hider",
	displayName = "M60E6 flash",
	displayType = DISPLAYTYPE,
	description = "A standard-issue flash hider for the M60E6 light machine gun. Manufactured by U.S Ordnance.",
	weight = 0.1,
	value = 8000,
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

EFGM.ITEMS["arc9_att_eft_m700_muzzle_thr"] = {
	fullName = "M700 thread protection cap",
	displayName = "M700 thr.",
	displayType = DISPLAYTYPE,
	description = "A threading protection cap for the Remington M700 7.62x51 sniper rifle barrels.",
	weight = 0.05,
	value = 500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700_cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_muzzle_thrs"] = {
	fullName = "M700 thread protection cap (Stainless steel)",
	displayName = "M700 thr. steel",
	displayType = DISPLAYTYPE,
	description = "A stainless steel threading protection cap for the Remington M700 7.62x51 barrels.",
	weight = 0.05,
	value = 500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700_cap_stainless.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_muzzle_bramit"] = {
	fullName = "Mosin Rifle Bramit 7.62x54R sound suppressor",
	displayName = "Bramit",
	displayType = DISPLAYTYPE,
	description = "A standard sound suppressor for the Mosin rifle.",
	weight = 1.1,
	value = 26680,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_bramit.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_muzzle_kiba"] = {
	fullName = "Mosin Rifle Kiba Arms 7.62x54R custom thread adapter",
	displayName = "Mosin thr.",
	displayType = DISPLAYTYPE,
	description = "A muzzle brake for the Mosin rifle, manufactured by Witt Machine.",
	weight = 0.1,
	value = 1575,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_kiba.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_muzzle_tanker"] = {
	fullName = "Mosin Rifle Tacfire Tanker Style 7.62x54R muzzle brake",
	displayName = "Mosin Tanker",
	displayType = DISPLAYTYPE,
	description = "The Tanker style muzzle brake for the Mosin rifle. Manufactured by Tacfire.",
	weight = 0.2,
	value = 3710,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_tanker.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_muzzle_tpp"] = {
	fullName = "Mosin Rifle Texas Precision Products 7.62x54R muzzle brake",
	displayName = "Mosin TPP",
	displayType = DISPLAYTYPE,
	description = "A muzzle brake designed for installation on the Mosin rifle, manufactured by Texas Precision Products.",
	weight = 0.2,
	value = 7095,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_texas.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_muzzle_tr"] = {
	fullName = "Mosin Rifle Tiger Rock 7.62x51 thread adapter",
	displayName = "TR thr.",
	displayType = DISPLAYTYPE,
	description = "The Tiger Rock muzzle device adapter. Provides the ability to install modern 7.62x51 NATO muzzle devices on the Mosin rifle.",
	weight = 0.05,
	value = 3100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_tiger.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_muzzle_wm"] = {
	fullName = "Mosin Rifle Witt Machine 7.62x54R muzzle brake",
	displayName = "Mosin WM",
	displayType = DISPLAYTYPE,
	description = "A muzzle brake for the Mosin rifle, manufactured by Witt Machine.",
	weight = 0.2,
	value = 10730,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_witt.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_muzzle_wt"] = {
	fullName = "Mosin Rifle Weapon Tuning 7.62x39 thread adapter",
	displayName = "WT1052",
	displayType = DISPLAYTYPE,
	description = "The Weapon Tuning muzzle adapter. Provides the ability to install modern 7.62x39 muzzle devices on the Mosin rifle.",
	weight = 0.05,
	value = 1995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_tuning.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_usp_elite"] = {
	fullName = "HK USP .45 ACP Elite compensator",
	displayName = "USP45EL",
	displayType = DISPLAYTYPE,
	description = 'The Elite compensator from the special USP Elite pistol kit will add additional weight to the front of your gun assisting to reduce vertical recoil "bounce". Manufactured by Heckler & Koch.',
	weight = 0.3,
	value = 4000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp_elite.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mount_usp_match"] = {
	fullName = "HK USP .45 ACP Match compensator",
	displayName = "USP45M",
	displayType = DISPLAYTYPE,
	description = 'The Match compensator from the special USP Match pistol kit will add additional weight to the front of your gun assisting to reduce vertical recoil "bounce". Features a mount for installation of additional tactical equipment. Manufactured by Heckler & Koch.',
	weight = 0.3,
	value = 8260,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp_match.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp5_muzzle_3lug"] = {
	fullName = "HK MP5 3-lug thread protector",
	displayName = "MP5 3-lug",
	displayType = DISPLAYTYPE,
	description = "A thread protector for MP5 barrels with three lugs for installation of sound suppressors. Manufactured by Heckler & Koch.",
	weight = 0.1,
	value = 1000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp5_lug.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp5_muzzle_navy"] = {
	fullName = "HK MP5 Navy Style 3-lug suppressor adapter",
	displayName = "MP5 Navy Style",
	displayType = DISPLAYTYPE,
	description = "A 3-lug threaded adapter for installing various sound suppressors on the MP5 SMG. Manufactured by Heckler & Koch.",
	weight = 0.1,
	value = 2970,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp5_navy.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp5_muzzle_noveske"] = {
	fullName = "HK MP5 Noveske-style 9x19 muzzle brake-compensator",
	displayName = "Noveske",
	displayType = DISPLAYTYPE,
	description = 'The "Noveske style" muzzle brake-compensator for MP5 SMGs and compatibles. Manufactured by Heckler & Koch.',
	weight = 0.4,
	value = 8000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp5_noveske.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp5_muzzle_qd"] = {
	fullName = "HK MP5 B&T QD 9x19 muzzle brake",
	displayName = "B&T QD",
	displayType = DISPLAYTYPE,
	description = "A muzzle brake for MP5-based weapons with a quick-detach lever for easy removal and installation. Manufactured by Brugger & Thomet.",
	weight = 0.1,
	value = 7420,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp5_bt.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp5_muzzle_sd"] = {
	fullName = "HK MP5SD 9x19 sound suppressor",
	displayName = "MP5SD sup.",
	displayType = DISPLAYTYPE,
	description = "A standard MP5SD sound suppressor manufactured by Heckler & Koch.",
	weight = 0.5,
	value = 34020,
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

EFGM.ITEMS["arc9_att_eft_mp7_fh"] = {
	fullName = "HK MP7A1 4.6x30 flash hider",
	displayName = "MP7A1",
	displayType = DISPLAYTYPE,
	description = "A flash hider designed for installation on the MP7 SMGs chambered in 4.6x30mm, manufactured by Heckler & Koch.",
	weight = 0.1,
	value = 920,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp7a1.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp7_silencer"] = {
	fullName = "HK MP7 B&T Rotex 2 4.6x30 sound suppressor",
	displayName = "Rotex 2",
	displayType = DISPLAYTYPE,
	description = "Rotex 2 is a 4.6x30mm sound suppressor manufactured by Brügger & Thomet. Installed on the HK MP7 submachine guns.",
	weight = 0.6,
	value = 72135,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp7_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp9_silencer"] = {
	fullName = "MP9 9x19 sound suppressor",
	displayName = "MP9 sup.",
	displayType = DISPLAYTYPE,
	description = "A sound suppressor for the MP9 9x19 SMG, manufactured by Brügger & Thomet.",
	weight = 0.3,
	value = 36155,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp9_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_muzzle_a2"] = {
	fullName = "MPX A2 9x19 flash hider",
	displayName = "MPX A2",
	displayType = DISPLAYTYPE,
	description = "The A2 Bird Cage flash hider, designed for installation on MPX 9x19 SMGs, manufactured by SIG Sauer.",
	weight = 0.05,
	value = 1265,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_a2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_sd_silencer"] = {
	fullName = "MPX-SD 9x19 integrated sound suppressor",
	displayName = "MPX-SD",
	displayType = DISPLAYTYPE,
	description = 'An integrated sound suppressor manufactured by SIG Sauer for the special "silent" version of the MPX, designated as MPX-SD.',
	weight = 0.6,
	value = 11955,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_sd.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_sd_silencer_ronin12"] = {
	fullName = "MPX 9x19 Ronin Arms 12 inch SD Suppressor",
	displayName = "Ronin 12",
	displayType = DISPLAYTYPE,
	description = "An 12 inch suppressor from the MPX-SD conversion kit designed for installation over the custom ported barrel. Manufactured by Ronin Arms.",
	weight = 0.4,
	value = 13125,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_ronin_12.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mpx_sd_silencer_ronin8"] = {
	fullName = "MPX 9x19 Ronin Arms 8 inch SD Suppressor",
	displayName = "Ronin 8",
	displayType = DISPLAYTYPE,
	description = "An 8 inch suppressor from the MPX-SD conversion kit designed for installation over the custom ported barrel. Manufactured by Ronin Arms.",
	weight = 0.4,
	value = 9990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpx_ronin_8.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mts255_muzzle_std"] = {
	fullName = "MTs-255-12 12ga choke",
	displayName = "MTs-255-12",
	displayType = DISPLAYTYPE,
	description = "A cylinder bore choke designed for MTs-255 12 gauge shotguns. Manufactured by TsKIB.",
	weight = 0.1,
	value = 5000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mts255.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_12g_chokeapadter"] = {
	fullName = "SilencerCo Salvo 12 choke adapter",
	displayName = "12ga adpt.",
	displayType = DISPLAYTYPE,
	description = "The SilencerCo choke adapter for Salvo 12g sound suppressors.",
	weight = 0.1,
	value = 1200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("12ga_salvo_choke.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_12g_claw"] = {
	fullName = "Tromix Monster Claw 12ga muzzle brake",
	displayName = "Monster Claw",
	displayType = DISPLAYTYPE,
	description = "The Monster Claw muzzle brake from Tromix significantly reduces recoil and can be used for breaking tempered glass.",
	weight = 0.3,
	value = 8795,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("12ga_claw.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_12g_gk02"] = {
	fullName = "GK-02 12ga muzzle brake",
	displayName = "GK-02",
	displayType = DISPLAYTYPE,
	description = "The Ilyin GK-02 muzzle brake is a modernized and improved version of Vsevolod Ilyins muzzle brake, with enhanced recoil and muzzle climb reduction capabilities.",
	weight = 0.2,
	value = 4245,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("12ga_gk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_12g_hexasup"] = {
	fullName = "Hexagon 12K 12ga sound suppressor",
	displayName = "Hexagon 12K",
	displayType = DISPLAYTYPE,
	description = "A sound moderator for 12ga shotguns and carbines (Saiga, Vepr and others), manufactured by Hexagon.",
	weight = 0.5,
	value = 26500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("12ga_hexagon.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_12g_mecyl"] = {
	fullName = "ME Cylinder 12ga muzzle adapter",
	displayName = "Cylinder 12ga",
	displayType = DISPLAYTYPE,
	description = "A muzzle thread adapter for 12ga barrels, designed for installing additional muzzle devices.",
	weight = 0.05,
	value = 2260,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("12ga_cylinder.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_12g_rtc"] = {
	fullName = "Remington Tactical Choke 12ga",
	displayName = "RTC 12ga",
	displayType = DISPLAYTYPE,
	description = "Remington Tactical Choke 12ga is designed specifically for use on tactical shotguns and home-defense shotguns. Combines the properties of both cylinder and flash hider.",
	weight = 0.05,
	value = 3200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("12ga_rtc.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_12g_salvo"] = {
	fullName = "SilencerCo Salvo 12 12ga sound suppressor",
	displayName = "Salvo 12",
	displayType = DISPLAYTYPE,
	description = "A sound moderator made by SilencerCo for 12ga shotguns and carbines (Saiga, Vepr and others). Quite heavy, but very effective nonetheless. Requires an adapter.",
	weight = 1,
	value = 35655,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("12ga_salvo_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_12g_threadapadter"] = {
	fullName = "SilencerCo Salvo 12 thread adapter",
	displayName = "12ga thr.",
	displayType = DISPLAYTYPE,
	description = "The SilencerCo choke adapter for Salvo 12g sound suppressors.",
	weight = 0.1,
	value = 800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("12ga_salvo_adapter.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_1911_anarcj"] = {
	fullName = "M1911 Anarchy Outdoors .45 ACP muzzle brake",
	displayName = "1911 brake",
	displayType = DISPLAYTYPE,
	description = "A muzzle brake for the M1911A1 pistol, manufactured by Anarchy Outdoors.",
	weight = 0.1,
	value = 2900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("1911_brake.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_ak101_std"] = {
	fullName = "AK-101 5.56x45 muzzle brake-compensator",
	displayName = "AK-101",
	displayType = DISPLAYTYPE,
	description = "A standard Izhmash-produced muzzle brake and compensator for the AK-101 and weapon systems based on it.",
	weight = 0.1,
	value = 480,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak101.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_ak102_std"] = {
	fullName = "AK-102 5.56x45 muzzle brake-compensator",
	displayName = "6P44 0-20",
	displayType = DISPLAYTYPE,
	description = "A standard Izhmash-produced muzzle brake and compensator for the AK-102 assault rifle.",
	weight = 0.1,
	value = 480,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak102.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_ak103_std"] = {
	fullName = "AK-103 7.62x39 muzzle brake-compensator",
	displayName = "AK-103",
	displayType = DISPLAYTYPE,
	description = "A standard Izhmash-produced muzzle brake and compensator for the AK-103.",
	weight = 0.1,
	value = 565,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak103.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_ak104_std"] = {
	fullName = "AK-104 7.62x39 muzzle brake-compensator",
	displayName = "6P46 0-20",
	displayType = DISPLAYTYPE,
	description = "A standard Izhmash-produced muzzle brake and compensator for the AK-104 7.62x39 assault rifle.",
	weight = 0.1,
	value = 480,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak104.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_ak105_std"] = {
	fullName = "AK-105 5.45x39 muzzle brake-compensator",
	displayName = "6P44 0-20",
	displayType = DISPLAYTYPE,
	description = "A standard Izhmash-produced muzzle brake and compensator for the AK-105.",
	weight = 0.1,
	value = 435,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak105.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_ak74_pws_cqb"] = {
	fullName = "PWS CQB 74 5.45x39 muzzle brake",
	displayName = "PWS CQB 74",
	displayType = DISPLAYTYPE,
	description = "The PWS CQB 74 5.45x39mm muzzle brake is designed specifically for compact arms and use in confined spaces. This version is intended for AK series based weapons.",
	weight = 0.2,
	value = 15615,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_pws.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_ak74_srvv"] = {
	fullName = "AK-74 SRVV MBR Jet 5.45x39 muzzle brake",
	displayName = "SRVV AK74",
	displayType = DISPLAYTYPE,
	description = "An SRVV-produced muzzle brake for AK-74 5.45x39 assault rifles and compatibles.",
	weight = 0.1,
	value = 5760,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_mbr.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_ak74_std"] = {
	fullName = "AK-74 5.45x39 muzzle brake-compensator",
	displayName = "6P20 0-20",
	displayType = DISPLAYTYPE,
	description = "A standard Izhmash-produced muzzle brake and compensator for the AK-74 and weapon systems based on it.",
	weight = 0.1,
	value = 390,
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

EFGM.ITEMS["arc9_att_eft_muzzle_ak_ak74m_std"] = {
	fullName = "AK-74M 5.45x39 muzzle brake-compensator",
	displayName = "6P20 0-20",
	displayType = DISPLAYTYPE,
	description = "A standard Izhmash-produced muzzle brake and compensator for the AK-74M.",
	weight = 0.1,
	value = 390,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak74m.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_akm_srvv"] = {
	fullName = "AK SRVV 7.62x39 muzzle brake-compensator",
	displayName = "SRVV AKM",
	displayType = DISPLAYTYPE,
	description = "An SRVV-produced muzzle brake and compensator for AK assault rifles and compatibles.",
	weight = 0.1,
	value = 5970,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_srvv.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_akm_std"] = {
	fullName = "AKM 7.62x39 muzzle brake-compensator",
	displayName = "6P1 0-14",
	displayType = DISPLAYTYPE,
	description = "A standard Izhmash-produced muzzle brake-compensator for AKM automatic rifles and weapon systems based on it.",
	weight = 0.05,
	value = 500,
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

EFGM.ITEMS["arc9_att_eft_muzzle_ak_akml"] = {
	fullName = "AKML system 7.62x39 flash hider",
	displayName = "AKML",
	displayType = DISPLAYTYPE,
	description = "A slot-like flash suppressor designed specifically for AKML arms system to reduce the muzzle flash flare on the NRS-3 night vision scope.",
	weight = 0.05,
	value = 660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_akml.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_antidote"] = {
	fullName = "AK 7.62x39 Venom Tactical Antidote muzzle brake-compensator",
	displayName = "Antidote",
	displayType = DISPLAYTYPE,
	description = "The Antidote muzzle brake & compensator by Venom Tactical and Rifle Dynamics is designed for installation on classic AK-based weapon systems. Reduces recoil and counters the barrel climb.",
	weight = 0.1,
	value = 11330,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_venom.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_cncwar"] = {
	fullName = "AK 5.56x45 CNC Warrior muzzle device adapter",
	displayName = "CNC War.",
	displayType = DISPLAYTYPE,
	description = "The CNC Warrior AK adapter allows to install different AR-15 specific muzzle devices on 5.56x45 AK automatic rifles.",
	weight = 0.1,
	value = 2615,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_cnc.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_dgnak47b"] = {
	fullName = "AK 7.62x39 Lantac Drakon muzzle brake-compensator",
	displayName = "DGNAK47B",
	displayType = DISPLAYTYPE,
	description = "The Drakon muzzle brake-compensator by Lantac is designed for installation on 7.62x39 AK-based weapon systems. Reduces recoil and counters the muzzle climb.",
	weight = 0.1,
	value = 13855,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_lantac.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_dtk1"] = {
	fullName = "AK Zenit DTK-1 7.62x39/5.45x39 muzzle brake-compensator",
	displayName = "DTK-1",
	displayType = DISPLAYTYPE,
	description = "The DTK-1 muzzle brake-compensator by Zenit is designed to be installed on 7.62x39 and 5.45x39 AK-based weapon systems. It reduces recoil and counters barrel climb. The crown on the DTK nose is meant for breaking through tempered glass. It has 24x1.5 mm threading. ©Zenit",
	weight = 0.1,
	value = 4865,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_dtk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_dynacomp"] = {
	fullName = "AK Spikes Tactical Dynacomp 7.62x39 muzzle brake-compensator",
	displayName = "Dynacomp AK",
	displayType = DISPLAYTYPE,
	description = "The Dynacomp muzzle brake-compensator is designed for installation on 7.62x39 AK-based weapon systems. Reduces recoil and counters the barrel climb. Manufactured by Spikes Tactical.",
	weight = 0.1,
	value = 3900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_dynacomp.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_kibaarms_308"] = {
	fullName = "AKM 7.62x39 Kiba Arms .308 muzzle device adapter",
	displayName = "AKM 308",
	displayType = DISPLAYTYPE,
	description = 'The Kiba Arms "Samson" adapter that allows installation of various .308 (7.62x51) muzzle devices on 7.62x39 AKM-type automatic rifles.',
	weight = 0.1,
	value = 4050,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_kiba.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_reactor"] = {
	fullName = 'AK Hexagon "Reactor" 5.45x39 muzzle brake',
	displayName = "Reactor",
	displayType = DISPLAYTYPE,
	description = 'The "Reactor" prototype muzzle brake manufactured by Hexagon for 5.45x39 AK platforms. Features mounts required for installation of the "Wafflemaker" sound suppressor.',
	weight = 0.1,
	value = 11040,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_reactor.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_rrd4c"] = {
	fullName = "AKM thread type JMac Customs RRD-4C 7.62x39 muzzle brake",
	displayName = "RRD-4C",
	displayType = DISPLAYTYPE,
	description = "The RRD-4C 7.62x39 muzzle brake by JMac Customs is designed for installation on AK or AKM type thread weapon systems. Reduces recoil and counters the barrel climb.",
	weight = 0.1,
	value = 13050,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_jmac.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_rrd4c74"] = {
	fullName = "AK-74 thread type JMac Customs RRD-4C multi-caliber muzzle brake",
	displayName = "RRD-4C",
	displayType = DISPLAYTYPE,
	description = "The RRD-4C muzzle brake by JMac Customs is designed for installation on modern AK-74 type thread weapon systems. The universal muzzle brake can be used with 5.45x39, 5.56x45 and 7.62x39 (requires an adapter mount) ammunition. Reduces recoil and counters the barrel climb.",
	weight = 0.1,
	value = 11800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_jmac_multi.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_tt_ak"] = {
	fullName = "AK 7.62x39 Taktika Tula muzzle adapter",
	displayName = "TT AK",
	displayType = DISPLAYTYPE,
	description = "The Taktika Tula muzzle device adapter. Provides the means of installing modern muzzle devices on AK and AKM.",
	weight = 0.1,
	value = 705,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_taktika.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_vpo136_std"] = {
	fullName = 'VPO-136 "Vepr-KM" 7.62x39 muzzle brake & compensator',
	displayName = "VPO136",
	displayType = DISPLAYTYPE,
	description = "A standard muzzle brake/compensator manufactured by Molot Arms for VPO-136 Vepr KM 7.62x39 carbines. Also fits the AK family automatic rifles of the same caliber.",
	weight = 0.05,
	value = 600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vpo136.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_vpo209"] = {
	fullName = "VPO-209 thread protector",
	displayName = "209 thr.",
	displayType = DISPLAYTYPE,
	description = "A thread protector for muzzle brake/compensator for VPO-209 AKM carbines. Also fits the AKM 7.62x39 series automatic rifles.",
	weight = 0.05,
	value = 430,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vpo209.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_vr05"] = {
	fullName = "AK Vector VR-05T 7.62x39 muzzle brake",
	displayName = "VR-05T",
	displayType = DISPLAYTYPE,
	description = "A muzzle brake for AK 7.62x39 assault rifles and compatibles. Manufactured by Vector 7.62.",
	weight = 0.1,
	value = 16120,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_vr.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar10_30cb"] = {
	fullName = "AR-10 Thunder Beast Arms 30CB 7.62x51 muzzle brake",
	displayName = "30CB",
	displayType = DISPLAYTYPE,
	description = 'Thunder Beast Arms 30CB is an effective muzzle brake that also serves as a platform for attaching the Quick Detach "Ultra 5" sound suppressor.',
	weight = 0.1,
	value = 13585,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_30cb.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar10_aac51t"] = {
	fullName = "AR-10 AAC Blackout 51T 7.62x51 flash hider",
	displayName = "51T 762",
	displayType = DISPLAYTYPE,
	description = "The Advanced Armament Corporation (AAC) Blackout 51T flash hider is an effective flash suppressor that also serves as an attachment platform for the AAC 762-SDN-6 sound suppressor. Can be installed on AR-10-based rifles.",
	weight = 0.1,
	value = 6260,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_blackout.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar10_atlas"] = {
	fullName = "AR-10 Odin Works ATLAS-7 7.62x51 muzzle brake",
	displayName = "ATLAS-7",
	displayType = DISPLAYTYPE,
	description = "The ATLAS-7 muzzle brake designed for installation on AR-10-type systems and compatibles. Manufactured by Odin Works.",
	weight = 0.1,
	value = 16400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_odin.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar10_bmda3"] = {
	fullName = "Lantac BMD Blast Mitigation Device A3 direct thread adapter",
	displayName = "BMD A3",
	displayType = DISPLAYTYPE,
	description = "The A3 adapter by Lantac designed for installation of the BMD Blast Mitigation Device.",
	weight = 0.05,
	value = 4490,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_bmd.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar10_cmmgsv"] = {
	fullName = "AR-10 CMMG SV Brake 7.62x51 muzzle brake",
	displayName = "SV Brake",
	displayType = DISPLAYTYPE,
	description = "The CMMG SV Brake muzzle compensator is an effective single port brake designed specifically for .308 caliber AR-10 weapon systems. The large port presents a broad surface for gasses to impact against, which keeps the muzzle down and the sights on target.",
	weight = 0.1,
	value = 7160,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_cmmg.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar10_keymount"] = {
	fullName = "AR-10 Dead Air Keymount 7.62x51 muzzle brake",
	displayName = "Keymount",
	displayType = DISPLAYTYPE,
	description = "A muzzle brake by Dead Air Silencers designed for installation on AR-10-type systems and compatibles. The muzzle brake greatly reduces both recoil impulse and muzzle rise so that the user's weapon tracks straight back to keep them on target for faster shot-to-shot recovery.",
	weight = 0.1,
	value = 12020,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_keymount.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar10_lantac"] = {
	fullName = "AR-10 Lantac Drakon 7.62x51 muzzle brake-compensator",
	displayName = "DGN762B",
	displayType = DISPLAYTYPE,
	description = "The Drakon muzzle brake by Lantac is designed for installation on 7.62x51mm weapon systems. Reduces recoil and counters the muzzle climb.",
	weight = 0.1,
	value = 30340,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_lantac.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar10_m11"] = {
	fullName = "AR-10 Precision Armanent M11 Severe-Duty 7.62x51 muzzle brake",
	displayName = "M11",
	displayType = DISPLAYTYPE,
	description = "The M11 muzzle brake designed for installation on AR-10-type systems and compatibles. Manufactured by Precision Armament.",
	weight = 0.1,
	value = 12325,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_severe.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar10_mdr"] = {
	fullName = "Desert Tech 7.62x51 flash hider",
	displayName = "MDR 762",
	displayType = DISPLAYTYPE,
	description = "A flash hider developed by Desert Tech specifically for the MDR 7.62x51 (.308) assault rifles.",
	weight = 0.2,
	value = 3965,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_mdr.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar10_procomp"] = {
	fullName = "AR-10 SureFire ProComp 7.62x51 muzzle brake",
	displayName = "ProComp 762",
	displayType = DISPLAYTYPE,
	description = "The ProComp muzzle brake designed for installation on AR-10-type systems and compatibles. The muzzle brake greatly reduces both recoil impulse and muzzle rise so that the user's weapon tracks straight back to keep them on target for faster shot-to-shot recovery. Manufactured by SureFire.",
	weight = 0.1,
	value = 11920,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_procomp.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar10_qdc_brake"] = {
	fullName = "AR-10 KAC QDC 7.62x51 Muzzle Brake Kit",
	displayName = "QDC 762",
	displayType = DISPLAYTYPE,
	description = "Knight's Armament Company Muzzle Brake Kit is an effective muzzle brake that also serves as a platform for attaching the PRS QDC sound suppressor. It can be Installed on AR-10 platform weapons.",
	weight = 0.1,
	value = 16200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_qdc_brake.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar10_qdc_sup"] = {
	fullName = "AR-10 KAC QDC 7.62x51 Flash Suppressor Kit",
	displayName = "KAC QDC",
	displayType = DISPLAYTYPE,
	description = "Knight's Armament Company Flash Suppressor Kit is an effective flash hider that also serves as a platform for attaching a PRS QDC sound suppressor. It can be Installed on AR-10 platform weapons.",
	weight = 0.1,
	value = 8365,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_qdc_flash.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar10_red"] = {
	fullName = "AR-10 Fortis RED Brake 7.62x51 muzzle brake",
	displayName = "RED 762",
	displayType = DISPLAYTYPE,
	description = "The RED Brake muzzle brake designed for installation on AR-10-type systems and compatibles. Manufactured by Fortis.",
	weight = 0.1,
	value = 20400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_fortis.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar10_scarsd"] = {
	fullName = "AAC SCAR-SD 51T 7.62x51 flash hider",
	displayName = "SCAR-SD 762",
	displayType = DISPLAYTYPE,
	description = "The Advanced Armament Corporation (AAC) SCAR-SD 51T flash hider is an effective flash suppressor that also serves as an attachment platform for the AAC 762-SDN-6 sound suppressor. Can be installed on AR-10-based rifles.",
	weight = 0.2,
	value = 5700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_scarsd.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar10_shrewed"] = {
	fullName = "AR-10 Keeno Arms SHREWD 7.62x51 muzzle brake",
	displayName = "SHREWD 762",
	displayType = DISPLAYTYPE,
	description = "The SHREWD muzzle brake designed for installation on AR-10-type systems and compatibles. Manufactured by Keeno Arms.",
	weight = 0.1,
	value = 14740,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_shrewd.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar10_sig_taperlok"] = {
	fullName = "SIG Sauer Taper-LOK 7.62x51/.300 BLK muzzle adapter",
	displayName = "T-LOK",
	displayType = DISPLAYTYPE,
	description = 'The patented "Taper-LOK" mounting system allows the installation of various muzzle devices on 7.62x51 and .300 Blackout chambered weapons. Manufactured by SIG Sauer.',
	weight = 0.1,
	value = 4860,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_tlok.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar10_vette"] = {
	fullName = "AR-10 Nordic Components Corvette 7.62x51 compensator",
	displayName = "Vette 762",
	displayType = DISPLAYTYPE,
	description = "The Corvette 7.62x51 Compensator Muzzle Brake from Nordic Components reduces recoil and muzzle flip by directing gases upward and to the side.",
	weight = 0.1,
	value = 8400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_vette.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar10_warden"] = {
	fullName = "AR-10 SureFire Warden 7.62x51 blast regulator",
	displayName = "War 762",
	displayType = DISPLAYTYPE,
	description = "The SureFire Warden blast regulator features a stainless steel body that enhances the overall appearance while protecting the inner parts from harm. This blast regulator prevents dirt, dust, debris, etc., from causing internal damage.",
	weight = 0.2,
	value = 9000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_war.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar10_wave"] = {
	fullName = "AR-10 Daniel Defense WAVE 7.62x51 muzzle brake",
	displayName = "WAVE 762",
	displayType = DISPLAYTYPE,
	description = "The Daniel Defense WAVE muzzle brake is designed to securely mount the Daniel Defense WAVE suppressor to the host firearm, but also functions effectively without it. It's manufactured from aerospace 17-4 PH stainless steel and had a salt bath nitride finish for minimal corrosion.",
	weight = 0.1,
	value = 7980,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_wave.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar10_x3"] = {
	fullName = "AR-10 2A Armanent X3 7.62x51 compensator",
	displayName = "X3 762",
	displayType = DISPLAYTYPE,
	description = "The X3 compensator designed for installation on AR-10-type systems and compatibles. Manufactured by 2A Armament.",
	weight = 0.05,
	value = 7500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_x3.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar10_zk38"] = {
	fullName = "AR-10 TAA ZK-38 7.62x51 muzzle brake",
	displayName = "ZK-38",
	displayType = DISPLAYTYPE,
	description = "The ZK is single-chamber highly effective slant face muzzle brake manufactured by Tactical Advantage Armory. The front is rather pointy and doubles as a CQB threat deterrent and soft target weapon. Not recommended for situations where high concussion is a concern.",
	weight = 0.05,
	value = 9300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_zk38.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_223cb"] = {
	fullName = "AR-15 Thunder Beast Arms 223CB 5.56x45 muzzle brake",
	displayName = "223CB",
	displayType = DISPLAYTYPE,
	description = "Thunder Beast 223CB is an effective muzzle brake that also serves as a platform for attaching a QD sound suppressor.",
	weight = 0.1,
	value = 9535,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_cb.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_aac51t"] = {
	fullName = "AR-15 AAC Blackout 51T 5.56x45 flash hider",
	displayName = "Blackout 51T",
	displayType = DISPLAYTYPE,
	description = "Advanced Armament Corp. Blackout 51T 5.56x45 flash hider is an effective flash suppressor that also serves as a platform for attaching a 5.56x45 SDN-6 sound suppressor. Can be Installed on weapons based on AR-15 rifles.",
	weight = 0.1,
	value = 9770,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_blackout.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_adar"] = {
	fullName = "AR-15 ADAR 2-15 5.56x45 flash hider",
	displayName = "ADAR FH",
	displayType = DISPLAYTYPE,
	description = "The 5.56x45 ADAR 2-15 Flashhider.",
	weight = 0.05,
	value = 1040,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_adar.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_alien"] = {
	fullName = "AR-15 AlienTech 5.56x45 muzzle brake",
	displayName = "AlienTech",
	displayType = DISPLAYTYPE,
	description = "A competition steel muzzle brake with one closed and five open ports designed by George Gubich, a six-time champion in practical shooting in Russia. Installed on AR-15 family weapons.",
	weight = 0.1,
	value = 37455,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_alien.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_annih"] = {
	fullName = "Yankee Hill Annihilator multi-caliber flash hider",
	displayName = "Annihilator",
	displayType = DISPLAYTYPE,
	description = "Multicaliber flash hider designed for AR-15 platform by Yankee Hill.",
	weight = 0.1,
	value = 58000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_annihilator.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_asr"] = {
	fullName = "AR-15 SilencerCo ASR 5.56x45 flash hider",
	displayName = "ASR 556",
	displayType = DISPLAYTYPE,
	description = "SilencerCo ASR 5.56x45 flash-hider is an effective flash suppressor that also serves as a platform for attaching a SilencerCo Saker 556 sound suppressor. Can be Installed on AR-15 weapon systems.",
	weight = 0.1,
	value = 13585,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_asr.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_blitz"] = {
	fullName = "AR-15 HK BLITZ 5.56x45 flash hider",
	displayName = "BLITZ 556",
	displayType = DISPLAYTYPE,
	description = "A flash hider for use on AR-15 style platforms. The BLITZ compensator is one of the most effective designs available and a great upgrade for a stock AR-15.",
	weight = 0.1,
	value = 9300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_blitz.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_butter"] = {
	fullName = "AR-15 Aeroknox Butterfly 5.56x45 muzzle brake",
	displayName = "Aeroknox",
	displayType = DISPLAYTYPE,
	description = "The Butterfly muzzle brake designed for 5.56x45 caliber barrels. Reduces recoil and barrel rise. Manufactured by Aeroknox.",
	weight = 0.05,
	value = 11090,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_butterfly.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_claymore"] = {
	fullName = "AR-15 TROY Claymore 5.56x45 muzzle brake",
	displayName = "Claymore",
	displayType = DISPLAYTYPE,
	description = "Claymore is an effective muzzle brake for an AR-15 base weapon system, produced by TROY.",
	weight = 0.05,
	value = 7595,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_claymore.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_corvette"] = {
	fullName = "AR-15 Nordic Components Corvette 5.56x45 compensator",
	displayName = "Corvette",
	displayType = DISPLAYTYPE,
	description = "Corvette is an effective compensator for an AR-15 based weapon systems. Produced by Nordic.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_nordic.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_crd"] = {
	fullName = "Ferfrans CRD 5.56x45 Concussion Reduction Device",
	displayName = "CRD",
	displayType = DISPLAYTYPE,
	description = 'Muzzle device "Concussion Reduction Device" manufactured by Ferfrans.',
	weight = 0.1,
	value = 12980,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_crd.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_ferfrans"] = {
	fullName = "AR-15 Ferfrans CQB 5.56x45 muzzle brake",
	displayName = "Ferfrans M",
	displayType = DISPLAYTYPE,
	description = "A muzzle brake manufactured by Ferfrans. Can also be equipped with Ferfrans Modular Concussion Reduction Device.",
	weight = 0.1,
	value = 11400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_ferfrans.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_fh556rc"] = {
	fullName = "AR-15 SureFire SF4P FH556RC 5.56x45 flash hider",
	displayName = "FH556RC",
	displayType = DISPLAYTYPE,
	description = "The advanced SureFire FH556RC-556 four-prong flash hider, which fits M4/M16 weapons and variants, features a greatly reduces muzzle flash. The SF3P-556 also serves as a rock-solid mounting adapter for SureFire SOCOM Series 5.56 mm Fast-Attach suppressors.",
	weight = 0.05,
	value = 6865,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_sf4p.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_glok"] = {
	fullName = "AR-15 Griffin Armament Gate-LOK Hammer 5.56x45 flash hider",
	displayName = "G-LOK",
	displayType = DISPLAYTYPE,
	description = "The Gate-LOK Hammer reduces recoil and ensures the maximum service life of the suppressor. Manufactured by Griffin Armament.",
	weight = 0.05,
	value = 8855,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_glok.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_jailbreak"] = {
	fullName = "AR-15 SAI JailBrake 5.56x45 muzzle device",
	displayName = "Jail Brake",
	displayType = DISPLAYTYPE,
	description = "The JailBrake muzzle device manufactured by Salient Arms International. Can be installed only on compatible SAI handguards for AR-15.",
	weight = 0.05,
	value = 16795,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_jailbrake.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_kacqdc"] = {
	fullName = "AR-15 KAC QDC 5.56x45 Flash Suppressor Kit",
	displayName = "QDC 556",
	displayType = DISPLAYTYPE,
	description = "The KAC 5.56 QD muzzle compensator/flash hider is an effective flash suppressor that also serves as a platform for attaching a KAC quick detach QDSS-NT4 sound suppressor. Installed on weapons based on AR-15/M16/M4.",
	weight = 0.05,
	value = 7170,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_qdc_flash.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_kx3"] = {
	fullName = "AR-15 Noveske KX3 5.56x45 flash hider",
	displayName = "KX3 556",
	displayType = DISPLAYTYPE,
	description = "The Noveske KX3 Flash hider, aka the Burning Pig, is designed to increase reliability in short-barreled members of AR-15 family by increasing backpressure and directing the muzzle blast forward of the shooter. Although originally designed for short-barreled AR-15s, it will work on any barrel length and have since been introduced for a variety of mounts. This particular KX3 may be used on 5.56mm barrels with 1/2x28 threading.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_kx3.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_lantac"] = {
	fullName = "AR-15 Lantac Dragon 5.56x45 muzzle brake",
	displayName = "DGN556B",
	displayType = DISPLAYTYPE,
	description = "The Dragon muzzle brake by Lantac is designed for installation on 5.56x45mm weapon systems. Reduces recoil and counters the muzzle climb.",
	weight = 0.1,
	value = 15670,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_lantac.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_mdr"] = {
	fullName = "Desert Tech 5.56x45 flash hider",
	displayName = "MDR 556",
	displayType = DISPLAYTYPE,
	description = "Flash hider developed by Desert Tech company specifically for MDR.",
	weight = 0.2,
	value = 3360,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_mdr.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_nero"] = {
	fullName = "AR-15 WDR NERO 556 5.56x45 muzzle brake",
	displayName = "NERO 556",
	displayType = DISPLAYTYPE,
	description = "The NERO 556 5.56x45 Muzzle Brake from Walker Defense Research reduces recoil and muzzle flip by directing gases upward and to the side.",
	weight = 0.1,
	value = 17360,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_nero.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_onemount"] = {
	fullName = "Gemtech ONE Direct Thread Mount adapter",
	displayName = "ONE Mount",
	displayType = DISPLAYTYPE,
	description = "Direct Thread Mount adapter for installation of Gemtech ONE silencer directly onto the barrel threading.",
	weight = 0.1,
	value = 5120,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_one.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_phantom"] = {
	fullName = "AR-15 Yankee Hill Phantom 5.56x45 flash hider",
	displayName = "Phantom",
	displayType = DISPLAYTYPE,
	description = "The Phantom flash hider designed for the AR-15 platform, manufactured by Yankee Hill. Fits 5.56x45 barrels.",
	weight = 0.05,
	value = 5000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_phantom.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_psr556"] = {
	fullName = "AR-15 AWC PSR 5.56x45 muzzle brake",
	displayName = "PSR-556",
	displayType = DISPLAYTYPE,
	description = "PSR is an effective muzzle brake manufactured by AWC Silencers for 5.56x45. Reduces recoil and counters the muzzle rise. The brake is threaded and compatible with AWC PSR THOR sound suppressors.",
	weight = 0.1,
	value = 10590,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_psr.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_qdc3"] = {
	fullName = "KAC QDC 5.56x45 3-Prong Flash Eliminator",
	displayName = "QDC-3 556",
	displayType = DISPLAYTYPE,
	description = "Knight's Armament QDC 3-Prong 5.56x45 flash hider is an effective flash suppressor that also serves as a platform for attaching KAC QDC 556 sound suppressor. Can be Installed on AR-15 weapon systems.",
	weight = 0.05,
	value = 9480,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_qdc.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_sf3p"] = {
	fullName = "AR-15 SureFire SF3P 5.56x45 Flash hider",
	displayName = "SF3P-556",
	displayType = DISPLAYTYPE,
	description = "The advanced SureFire SF3P-556 three-prong flash hider, which fits M4/M16 weapons and variants, features a greatly reduces muzzle flash. The SF3P-556 also serves as a rock-solid mounting adapter for SureFire SOCOM Series 5.56 mm Fast-Attach suppressors.",
	weight = 0.05,
	value = 6320,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_sf3p.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_st6012"] = {
	fullName = "AR-15 Bulletec ST-6012 5.56x45 muzzle brake",
	displayName = "ST6012",
	displayType = DISPLAYTYPE,
	description = "ST-6012 is an effective muzzle brake for an AR-15 base weapon system, produced by Bulletec.",
	weight = 0.1,
	value = 14760,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_st.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_usgia2"] = {
	fullName = "AR-15 Colt USGI A2 5.56x45 flash hider",
	displayName = "USGI A2",
	displayType = DISPLAYTYPE,
	description = "The 5.56x45 Colt USGI A2 Flash hider a.k.a. Bird Cage is designed for mounting on 5.56x45 weapons built on AR-15 system. However, it can be installed on other weapons of the same caliber, provided that barrel has the same threading for muzzle devices. A service muzzle device for M4A1.",
	weight = 0.05,
	value = 1340,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_a2.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_vp09"] = {
	fullName = "AR-15 Vendetta Precision VP-09 Interceptor 5.56x45 muzzle brake",
	displayName = "VP-09 556",
	displayType = DISPLAYTYPE,
	description = "Muzzle brake developed by Vendetta precision company specifically for the civilian market.",
	weight = 0.2,
	value = 6915,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_vp.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_warcomp"] = {
	fullName = "AR-15 SureFire WarComp 5.56x45 flash hider",
	displayName = "WarComp",
	displayType = DISPLAYTYPE,
	description = "WarComp flash hider for AR-15 produced by Surefire.",
	weight = 0.05,
	value = 5520,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_war.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_warden"] = {
	fullName = "AR-15 SureFire Warden 5.56x45 blast regulator",
	displayName = "War 556",
	displayType = DISPLAYTYPE,
	description = "The SureFire Warden blast regulator features a stainless steel body that enhances the overall appearance while protecting the inner parts from harm. This blast regulator prevents dirt, dust, debris, etc., from causing internal damage.",
	weight = 0.2,
	value = 8000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_warden.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_wave"] = {
	fullName = "AR-15 Daniel Defense WAVE 5.56x45 muzzle brake",
	displayName = "Wave MB",
	displayType = DISPLAYTYPE,
	description = "Daniel Defense Wave is a very effective muzzle brake that also serves as a platform for attaching a QD Wave sound suppressor.",
	weight = 0.1,
	value = 9335,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_wave.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_zk23"] = {
	fullName = "AR-15 TAA ZK-23 5.56x45 muzzle brake",
	displayName = "ZK-23 556",
	displayType = DISPLAYTYPE,
	description = "The ZK is single-chamber highly effective slant face muzzle brake manufactured by Tactical Advantage Armory. The front is rather pointy and doubles as a CQB threat deterrent and soft target weapon. Not recommended for situations where high concussion is a concern.",
	weight = 0.05,
	value = 10600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_taa.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_asr338ac858"] = {
	fullName = "SilencerCo AC-858 ASR .338 LM muzzle brake",
	displayName = "AC-858",
	displayType = DISPLAYTYPE,
	description = "A .338 LM muzzle brake developed by SilencerCo.",
	weight = 0.1,
	value = 8520,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ac858.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_aug_ase"] = {
	fullName = "Steyr AUG Ase Utra S Series SL7i 5.56x45 sound suppressor",
	displayName = "SL7i",
	displayType = DISPLAYTYPE,
	description = "The S Series SL7i sound suppressor for Steyr AUG 5.56x45 rifles. Manufactured by Ase Utra.",
	weight = 0.5,
	value = 41800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("augsl71.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_aug_brake"] = {
	fullName = "Steyr AUG A3 5.56x45 muzzle brake",
	displayName = "A3 brake",
	displayType = DISPLAYTYPE,
	description = "A muzzle brake designed specifically for the AUG A3, manufactured by Steyr-Daimler-Puch. Significantly reduces recoil and barrel rise. Fits AUG 5.56x45 caliber barrels.",
	weight = 0.05,
	value = 12600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("auga3_brake.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_aug_fh_a1"] = {
	fullName = "Steyr AUG A1 5.56x45 closed flash hider",
	displayName = "A1 flash hider",
	displayType = DISPLAYTYPE,
	description = "A standard AUG A1 flash hider, manufactured by Steyr-Daimler-Puch. Effectively suppresses muzzle flash. Fits AUG 5.56x45 caliber barrels.",
	weight = 0.05,
	value = 3330,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("auga1_flash.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_aug_fh_a3"] = {
	fullName = "Steyr AUG A3 5.56x45 closed flash hider",
	displayName = "A3 flash hider",
	displayType = DISPLAYTYPE,
	description = "A standard AUG A3 flash hider, manufactured by Steyr-Daimler-Puch. Effectively suppresses muzzle flash. Fits AUG 5.56x45 caliber barrels.",
	weight = 0.05,
	value = 3330,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("auga3_flash.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_aug_rat"] = {
	fullName = "Steyr AUG RAT Worx 5.56x45 muzzle device adapter",
	displayName = "RAT Worx",
	displayType = DISPLAYTYPE,
	description = "The RAT Worx adapter allows to install various AR-15 muzzle devices on 5.56x45 AUG rifles. Manufactured by Research And Testing Worx.",
	weight = 0.1,
	value = 4700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("worx.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_aug_t4"] = {
	fullName = "Steyr AUG Relfex T4AUG Ranger 5.56x45 sound suppressor",
	displayName = "T4AUG",
	displayType = DISPLAYTYPE,
	description = "The T4AUG Ranger silencer is designed for 20-inch AUG 5.56x45 barrel. T4AUG can be installed with standard AUG A1 and AUG A3 muzzle. Manufactured by Reflex Suppressors.",
	weight = 0.4,
	value = 37140,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("t4aug.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_axmccap"] = {
	fullName = "AI AXMC thread protection cap",
	displayName = "AXMC cap",
	displayType = DISPLAYTYPE,
	description = "A threading protection cap for the AXMC barrel. Manufactured by Accuracy International.",
	weight = 0.1,
	value = 840,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("axmc_cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_bmd_bmd762"] = {
	fullName = "Lantac BMD 7.62x51 Blast Mitigation Device",
	displayName = "BMD 762",
	displayType = DISPLAYTYPE,
	description = "The A3 adapter by Lantac designed for installation of the BMD Blast Mitigation Device.",
	weight = 0.2,
	value = 13180,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("bmd.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_borelock338"] = {
	fullName = "Ase Utra BoreLock .338 LM muzzle brake",
	displayName = "BoreLock",
	displayType = DISPLAYTYPE,
	description = "A muzzle brake manufactured by Ase Utra for .338 LM (8.6x70). Reduces recoil and counters the muzzle rise. The brake is threaded and compatible with BoreLock-type sound suppressors.",
	weight = 0.2,
	value = 25790,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("borelock.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_borelock338_cap"] = {
	fullName = "Ase Utra BoreLock thread protector",
	displayName = "BoreLock",
	displayType = DISPLAYTYPE,
	description = "A threading protection cap for Ase Utra BoreLock muzzle brakes.",
	weight = 0.05,
	value = 985,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("borelock_cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_borelock338_sup"] = {
	fullName = "Ase Utra SL7i-BL BoreLock .338 LM sound suppressor",
	displayName = "SL7i-BL .338",
	displayType = DISPLAYTYPE,
	description = "The SL7i-BL sound suppressor, installed on compatible BoreLock muzzle brakes. Manufactured by Ase Utra.",
	weight = 0.6,
	value = 47815,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("borelock_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_carlson_ar15"] = {
	fullName = "AR-15 DoubleStar Carlson Tac Comp 5.56x45 compensator",
	displayName = "Carlson Tac",
	displayType = DISPLAYTYPE,
	description = "The Carlson Tac Comp compensator designed for AR-15 and compatible systems. Reduces recoil impulse and muzzle rise. Ideal for short barrel weapons. Manufactured by DoubleStar.",
	weight = 0.2,
	value = 7770,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_carlson.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_deltatek_dtk_ar10"] = {
	fullName = "AR-10 Delta-Tek DTK-AR10 7.62x51 muzzle brake",
	displayName = "DTK-AR10",
	displayType = DISPLAYTYPE,
	description = "The DTK-AR10 muzzle brake, designed for AR-10 and compatible systems. Greatly reduces recoil and muzzle rise due to the special compensation chamber. Manufactured by Delta-Tek.",
	weight = 0.1,
	value = 9650,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_dtk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_deltatek_dtk_ar15"] = {
	fullName = "AR-15 Delta-Tek DTK-M16 5.56x45 muzzle brake",
	displayName = "DTK-M16",
	displayType = DISPLAYTYPE,
	description = "The DTK-M16 muzzle brake, designed for AR-15 and compatible systems. Greatly reduces recoil and muzzle rise due to the special compensation chamber. Manufactured by Delta-Tek.",
	weight = 0.1,
	value = 9865,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_dtk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_dthybrid"] = {
	fullName = "SilencerCo Hybrid 46 Direct Thread Mount adapter",
	displayName = "DT Hybrid",
	displayType = DISPLAYTYPE,
	description = "The Direct Thread Mount adapter for installation of SilencerCo Hybrid 46 silencer directly onto the barrel threading.",
	weight = 0.1,
	value = 4020,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("dt_mount.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_g17_3port"] = {
	fullName = 'Glock 9x19 CARVER Custom "Decelerator 3 Port" compensator',
	displayName = "G 3Port",
	displayType = DISPLAYTYPE,
	description = "A compensator manufactured by CARVER Custom. The model is only compatible with the 3rd generation 9x19 pistols.",
	weight = 0.05,
	value = 8740,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("carvercustom.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_g17_3port_blk"] = {
	fullName = 'Glock 9x19 CARVER Custom "Decelerator 3 Port" compensator',
	displayName = "G 3Port",
	displayType = DISPLAYTYPE,
	description = "A compensator manufactured by CARVER Custom. The model is only compatible with the 3rd generation 9x19 pistols.",
	weight = 0.05,
	value = 8740,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("carvercustom_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_g17_aw"] = {
	fullName = "Glock 9x19 Alpha Wolf Bullnose compensator",
	displayName = "G AW",
	displayType = DISPLAYTYPE,
	description = "The Alpha Wolf compensator manufactured by Lone Wolf. Can only be installed with the slides that have the bullnosed slide face.",
	weight = 0.05,
	value = 3660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_bullnose.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_g17_aw_thr"] = {
	fullName = "Glock 9x19 Alpha Wolf thread protector",
	displayName = "G AW thr.",
	displayType = DISPLAYTYPE,
	description = "A thread protector for threaded barrels of Glock Alpha Wolf pistols produced by Lone Wolf.",
	weight = 0.05,
	value = 700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_aw_cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_g17_cc4p"] = {
	fullName = 'Glock 9x19 CARVER Custom "4 Port" muzzle brake',
	displayName = "G CC 4P",
	displayType = DISPLAYTYPE,
	description = "A custom compensator manufactured by CARVER Custom. The compensator includes 4 ports on the top with 3 exhaust ports on each side, totaling 10 ports. Can only fit 3rd generation Glock pistols.",
	weight = 0.05,
	value = 10580,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("carvercustom4.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_g17_cc4p_blk"] = {
	fullName = 'Glock 9x19 CARVER Custom "4 Port" muzzle brake',
	displayName = "G CC 4P",
	displayType = DISPLAYTYPE,
	description = "A custom compensator manufactured by CARVER Custom. The compensator includes 4 ports on the top with 3 exhaust ports on each side, totaling 10 ports. Can only fit 3rd generation Glock pistols.",
	weight = 0.05,
	value = 10580,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("carvercustom4_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_g17_dd_fh"] = {
	fullName = "Glock 9x19 Double Diamond flash hider",
	displayName = "G DD FH",
	displayType = DISPLAYTYPE,
	description = "A simple, inexpensive, but still quite effective compensator for the Glock family of pistols.",
	weight = 0.05,
	value = 7820,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ddflash.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_g17_dd_fh_blk"] = {
	fullName = "Glock 9x19 Double Diamond flash hider",
	displayName = "G DD FH",
	displayType = DISPLAYTYPE,
	description = "A simple, inexpensive, but still quite effective compensator for the Glock family of pistols.",
	weight = 0.05,
	value = 7820,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ddflash_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_g17_dd_thr"] = {
	fullName = "Glock 9x19 Double Diamond thread protector",
	displayName = "G DD thr.",
	displayType = DISPLAYTYPE,
	description = "A thread protector for threaded barrels of Glock family pistols, manufactured by Double Diamond.",
	weight = 0.05,
	value = 705,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_dd_cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_g17_g4"] = {
	fullName = "Glock 9x19 Strike Industries G4 SlideComp compensator",
	displayName = "G G4",
	displayType = DISPLAYTYPE,
	description = "A unique compensator for Glock family pistols which can be mounted on a slide and not require a threaded barrel, manufactured by Strike Industries.",
	weight = 0.1,
	value = 8100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_g4.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_g17_lwd_comp9"] = {
	fullName = "Glock 9x19 Lone Wolf LWD-COMP9 compensator",
	displayName = "LWD-COMP9",
	displayType = DISPLAYTYPE,
	description = "A Glock 9x19 compensator manufactured by Lone Wolf.",
	weight = 0.05,
	value = 4200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_lwd.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_g17_sai_thr"] = {
	fullName = "Glock SAI 9x19 thread protector",
	displayName = "G SAI thr.",
	displayType = DISPLAYTYPE,
	description = "A thread protector for threaded barrels of Glock family pistols, manufactured by Salient Arms International.",
	weight = 0.05,
	value = 695,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_sai_cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_m9a3_blk"] = {
	fullName = "M9A3 thread protection cap",
	displayName = "M9A3 cap",
	displayType = DISPLAYTYPE,
	description = "A threading protection cap for the Beretta M9A3 9x19 barrel.",
	weight = 0.05,
	value = 290,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m9a3cap_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_m9a3_std"] = {
	fullName = "M9A3 thread protection cap",
	displayName = "M9A3 cap",
	displayType = DISPLAYTYPE,
	description = "A threading protection cap for the Beretta M9A3 9x19 barrel.",
	weight = 0.05,
	value = 290,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m9a3cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_omegaadapter"] = {
	fullName = "SilencerCo Omega 45k Direct Thread Mount adapter",
	displayName = "DT Omega",
	displayType = DISPLAYTYPE,
	description = "The Direct Thread Mount adapter for installation of SilencerCo Omega 45k sound suppressor directly onto the barrel threading.",
	weight = 0.1,
	value = 3750,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("omega_mount.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_omegasilencer"] = {
	fullName = "SilencerCo Omega 45k .45 ACP sound suppressor",
	displayName = "Omega 45K",
	displayType = DISPLAYTYPE,
	description = "The SilencerCo Omega 45K is an exceptionally versatile suppressor and is the smallest, lightest, and quietest silencer in its class. Full auto rated and usable with pistols, rifles, and submachine guns, the Omega 45K offers extreme durability in an ultra compact package.",
	weight = 0.3,
	value = 37580,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("omega_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_p226_std"] = {
	fullName = "P226 thread protection cap",
	displayName = "P226 cap",
	displayType = DISPLAYTYPE,
	description = "A threading protection cap for the P226 9x19 barrel.",
	weight = 0.05,
	value = 400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_p226_tjs"] = {
	fullName = "P226 TJs Custom 9x19 compensator",
	displayName = "TJs Custom",
	displayType = DISPLAYTYPE,
	description = "A compensator manufactured by TJs Custom Gunworks for the SIG Sauer P226 pistols.",
	weight = 0.05,
	value = 2800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p226_tjc.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_pkm_dtk1p"] = {
	fullName = "PK Zenit DTK-1P 7.62x54R muzzle brake",
	displayName = "DTK-1P",
	displayType = DISPLAYTYPE,
	description = "The DTK-1P muzzle brake, designed for installation on PK, PKM, and PKP machine guns. Manufactured by Zenit.",
	weight = 0.1,
	value = 8440,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pkm_dtk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_pkm_fh"] = {
	fullName = "PKM 7.62x54R slotted flash hider",
	displayName = "PKM",
	displayType = DISPLAYTYPE,
	description = "A standard-issue flash hider for Kalashnikov Machine gun. Manufactured by V.A. Degtyarev Plant.",
	weight = 0.05,
	value = 1330,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pkm_flash.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_pkm_mb"] = {
	fullName = "PKM 7.62x54R muzzle brake",
	displayName = "PKM",
	displayType = DISPLAYTYPE,
	description = "A standard-issue muzzle brake-compensator for Kalashnikov Machine gun. Manufactured by V.A. Degtyarev Plant.",
	weight = 0.05,
	value = 2290,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pkm_brake.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_psr338"] = {
	fullName = "AWC PSR .338 LM muzzle brake",
	displayName = "PSR 338",
	displayType = DISPLAYTYPE,
	description = "PSR is an effective muzzle brake manufactured by AWC Silencers for .338 LM (8.6x70). Reduces recoil and counters the muzzle rise. The brake is threaded and compatible with AWC PSR THOR sound suppressors.",
	weight = 0.2,
	value = 22425,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("psr.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_psr_protector"] = {
	fullName = "AWC PSR muzzle brake protector",
	displayName = "PSR prot",
	displayType = DISPLAYTYPE,
	description = "A thread protector for PSR muzzle brakes manufactured by AWC Silencers.",
	weight = 0.05,
	value = 1150,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("psr_cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_pws_cqb"] = {
	fullName = "PWS CQB 5.56x45 muzzle brake",
	displayName = "PWS CQB",
	displayType = DISPLAYTYPE,
	description = "The PWS CQB 5.56x45mm muzzle brake is designed specifically for compact arms and use in confined spaces.",
	weight = 0.2,
	value = 13790,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_pws.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_rfb_fh"] = {
	fullName = "RFB 7.62x51 flash hider",
	displayName = "RFB",
	displayType = DISPLAYTYPE,
	description = "A standard bird cage flash hider designed for installation on RFB 7.62x51 rifles. Manufactured by Kel-Tec.",
	weight = 0.05,
	value = 1540,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rfb.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_sa58_3pr"] = {
	fullName = "SA-58 3-Prong Trident 7.62x51 flash hider",
	displayName = "SA58 3-pr.",
	displayType = DISPLAYTYPE,
	description = "A three-prong flash hider for SA-58 assault rifles, manufactured by DS Arms.",
	weight = 0.05,
	value = 1600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_flash.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_sa58_aut"] = {
	fullName = "SA-58 Austrian Style 7.62x51 muzzle brake",
	displayName = "SA58 AUT",
	displayType = DISPLAYTYPE,
	description = "An Austrian Style muzzle brake manufactured by DS Arms for SA-58 assault rifles.",
	weight = 0.1,
	value = 2340,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_aut.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_scar_fh"] = {
	fullName = "FN SCAR-L 5.56x45 flash hider",
	displayName = "Mk16 556",
	displayType = DISPLAYTYPE,
	description = "A 3-prong flash hider designed specifically for the SCAR-series 5.56x45 assault rifles. Can be equipped with a proprietary suppressor. Manufactured by Fabrique Nationale Herstal.",
	weight = 0.1,
	value = 3500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scarl.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_spr_brake"] = {
	fullName = "AR-15 Allen Engineering SPR Brake 5.56x45",
	displayName = "SPR Brake",
	displayType = DISPLAYTYPE,
	description = "The SPR muzzle brake for the AR-15 platform. Manufactured by Allen Engineering.",
	weight = 0.1,
	value = 13170,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_spr.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_spr_collar"] = {
	fullName = "AR-15 Allen Engineering SPR Collar suppressor mount",
	displayName = "SPR Collar",
	displayType = DISPLAYTYPE,
	description = "A special AR-15 barrel mount required for installation of Allen Engineering suppressors. Manufactured by Allen Engineering.",
	weight = 0.1,
	value = 3540,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_collar.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_spr_sup"] = {
	fullName = "Allen Engineering AEM-5 5.56x45 sound suppressor",
	displayName = "AEM-5",
	displayType = DISPLAYTYPE,
	description = "The Allen Engineering AEM-5 5.56x45/.223 sound suppressor. Can only be installed on compatible Allen Engineering muzzle devices, and also requires a proprietary SPR Collar on the barrel.",
	weight = 0.6,
	value = 42730,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("556_aem.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_spr_thr"] = {
	fullName = "Allen Engineering SPR Brake thread protector",
	displayName = "SPR thr.",
	displayType = DISPLAYTYPE,
	description = "A thread protector for the SPR Brake, manufactured by Allen Engineering.",
	weight = 0.05,
	value = 960,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("spr_cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_stm9_std"] = {
	fullName = "STM-9 9x19 muzzle brake",
	displayName = "STM-9 muzzle",
	displayType = DISPLAYTYPE,
	description = "A standard-issue muzzle brake for the Soyuz-TM STM-9 9x19 carbines.",
	weight = 0.1,
	value = 2000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("stm.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_svds_adap"] = {
	fullName = "SVDS Rotor 43 thread adapter",
	displayName = "SVDS thr.",
	displayType = DISPLAYTYPE,
	description = "A special thread adapter manufactured by Rotor 43. Allows installation of the Rotor 43 muzzle brake on the SVDS sniper rifle.",
	weight = 0.2,
	value = 1800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svds_rotor.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_svds_std"] = {
	fullName = "SVDS 7.62x54R muzzle brake-compensator",
	displayName = "SVDS",
	displayType = DISPLAYTYPE,
	description = "A standard Izhmash-produced muzzle brake and compensator for the SVDS.",
	weight = 0.1,
	value = 655,
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

EFGM.ITEMS["arc9_att_eft_muzzle_svds_suppressor"] = {
	fullName = "Rotor 43 7.62x54R muzzle brake-compensator",
	displayName = "R43 7.62x54R",
	displayType = DISPLAYTYPE,
	description = "The Rotor 43 muzzle brake is designed for installation on SVD 7.62x54R. Although positioned as a muzzle brake, it also works as a sound suppressor.",
	weight = 0.8,
	value = 113500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svds_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_taccom"] = {
	fullName = "TACCOM Carbine Brake multi-caliber muzzle brake",
	displayName = "TACCOM",
	displayType = DISPLAYTYPE,
	description = 'The "Carbine Brake" muzzle brake manufactured by TACCOM for SIG MPX. It can also be used with compatible .308 rifles.',
	weight = 0.1,
	value = 14400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("taccom.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_tkpd_std"] = {
	fullName = "TKPD 9.3x64 muzzle brake",
	displayName = "TKPD",
	displayType = DISPLAYTYPE,
	description = "A muzzle brake for the TKPD assault carbine.",
	weight = 0.3,
	value = 3860,
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

EFGM.ITEMS["arc9_att_eft_muzzle_tlok_3prong"] = {
	fullName = "SIG Sauer 7.62x51 3-prong flash hider",
	displayName = "3-pr 762",
	displayType = DISPLAYTYPE,
	description = "The SIG Sauer 3-prong flash hider can be installed on a patented Taper-LOK mounting system.",
	weight = 0.05,
	value = 2540,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sig_tlok.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_tlok_mirco"] = {
	fullName = "SIG Sauer Micro Brake 7.62x51 muzzle brake",
	displayName = "Micro 762",
	displayType = DISPLAYTYPE,
	description = "The SIG Sauer Micro Brake muzzle brake that can be installed on the patented Taper-LOK mounting system.",
	weight = 0.05,
	value = 2690,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sig_tlok_micro.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_tlok_tpb"] = {
	fullName = "SIG Sauer Two Port Brake 7.62x51 muzzle brake",
	displayName = "TPB 762",
	displayType = DISPLAYTYPE,
	description = "The SIG Sauer Two Port Brake can be installed on a patented Taper-LOK mounting system.",
	weight = 0.1,
	value = 8100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sig_tpb.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_tmb338lm"] = {
	fullName = "AI .338 LM Tactical Muzzle Brake",
	displayName = "TMB 338LM",
	displayType = DISPLAYTYPE,
	description = "A muzzle brake manufactured by Accuracy International for .338 LM (8.6x70). Reduces recoil and counters the muzzle rise.",
	weight = 0.2,
	value = 13135,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tmb.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_trg_cap"] = {
	fullName = "Sako TRG .338 LM thread protector",
	displayName = "TRG thr.",
	displayType = DISPLAYTYPE,
	description = "A threading protection cap for the Sako TRG .338 LM rifle barrel.",
	weight = 0.05,
	value = 540,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("trg_cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_trg_cgs"] = {
	fullName = "CGS Hekate DT .338 LM sound suppressor",
	displayName = "Hekate .338LM",
	displayType = DISPLAYTYPE,
	description = "The Hekate DT .338 LM suppressor boasts great noise and flash reduction for large caliber rifles. Manufactured by CGS Group.",
	weight = 0.5,
	value = 49660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("trg_hekate.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_trg_coretac"] = {
	fullName = "Sako TRG Coretac CoreBrake .338 LM muzzle brake",
	displayName = "CoreBrake",
	displayType = DISPLAYTYPE,
	description = "A .338 LM muzzle brake for the TRG sniper rifle. Manufactured by Coretac Solutions.",
	weight = 0.3,
	value = 7980,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("trg_coretac.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_trg_pgm"] = {
	fullName = "Sako TRG PGM Precision .338 LM sound suppressor",
	displayName = "PGM .338LM",
	displayType = DISPLAYTYPE,
	description = "A sound suppressor manufactured by PGM Precision, designed to fit .338 Lapua Magnum weapons",
	weight = 0.7,
	value = 60055,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("trg_pgm.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_trg_std"] = {
	fullName = "Sako TRG 22/42/M10 .338 LM muzzle brake",
	displayName = "TRG .338",
	displayType = DISPLAYTYPE,
	description = "A TRG .338 LM sniper rifle muzzle brake, manufactured by Sako.",
	weight = 0.3,
	value = 5280,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("trg.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_tsm338lm"] = {
	fullName = "AI .338 LM Tactical Sound Moderator",
	displayName = "TSM .338LM",
	displayType = DISPLAYTYPE,
	description = "A sound moderator manufactured by Accuracy International, designed to fit .338 Lapua Magnum weapons.",
	weight = 0.7,
	value = 63495,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tsm_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ump_oem"] = {
	fullName = "HK UMP B&T OEM .45 ACP sound suppressor",
	displayName = "UMP OEM",
	displayType = DISPLAYTYPE,
	description = "A hard to find sound suppressor, designed for the HK UMP 45 submachine gun and utilizes a locking gate QD to allow for quick attachment and removal. Imported by H&K from Brugger & Thomet Switzerland.",
	weight = 0.5,
	value = 44150,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ump_oem_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_usgi_a1"] = {
	fullName = "AR-15 Colt USGI A1 3-prong 5.56x45 flash hider",
	displayName = "USGI A1 3-pr",
	displayType = DISPLAYTYPE,
	description = "A three-prong flash hider for the AR-15 series rifles, manufactured by Colt. The classic earlier A1 variant made in the 60s, which was later replaced by the more famous Bird Cage type.",
	weight = 0.05,
	value = 1560,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_a1.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_usp_cap"] = {
	fullName = "HK USP Tactical thread protector",
	displayName = "USP45T",
	displayType = DISPLAYTYPE,
	description = "A thread protector for the Tactical barrel for the USP pistol, manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 1100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("usp_cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_vector9_cap"] = {
	fullName = "KRISS Vector 9x19 thread protection cap",
	displayName = "Vector cap",
	displayType = DISPLAYTYPE,
	description = "A thread protector cap for the KRISS Vector 9x19 barrel.",
	weight = 0.05,
	value = 460,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vector9_cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_vector9_fh"] = {
	fullName = "KRISS Vector 9x19 flash hider",
	displayName = "Vector 9x19",
	displayType = DISPLAYTYPE,
	description = "A standard-issue flash hider for the KRISS Vector .45 ACP SMG.",
	weight = 0.05,
	value = 1000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vector9.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_vector_cap"] = {
	fullName = "KRISS Vector .45 ACP thread protection cap",
	displayName = "Vector cap",
	displayType = DISPLAYTYPE,
	description = "A thread protector cap for the KRISS Vector .45 ACP barrel.",
	weight = 0.05,
	value = 460,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vector45_cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_vector_fh"] = {
	fullName = "KRISS Vector .45 ACP flash hider",
	displayName = "Vector .45",
	displayType = DISPLAYTYPE,
	description = "A standard-issue flash hider for the KRISS Vector .45 ACP SMG.",
	weight = 0.05,
	value = 1545,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vector45.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_p90_muzzle_std"] = {
	fullName = "FN P90 5.7x28 flash hider",
	displayName = "P90",
	displayType = DISPLAYTYPE,
	description = "A regular flash hider for the P90 SMG. Manufactured by Fabrique Nationale Herstal.",
	weight = 0.1,
	value = 1600,
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

EFGM.ITEMS["arc9_att_eft_p90_silencer"] = {
	fullName = "FN Attenuator 5.7x28 sound suppressor",
	displayName = "Attenuator",
	displayType = DISPLAYTYPE,
	description = "Attenuator is a 5.7x28 mm sound suppressor manufactured by Fabrique Nationale Herstal.",
	weight = 0.7,
	value = 38645,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p90_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_pb_silencer"] = {
	fullName = "PB 9x18PM sound suppressor",
	displayName = "PB supp.",
	displayType = DISPLAYTYPE,
	description = "A standard-issue detachable sound suppressor for the PB pistol.",
	weight = 0.1,
	value = 10605,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pb_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rfb_muzzle_spacer"] = {
	fullName = "RFB thread spacer",
	displayName = "RFB spacer",
	displayType = DISPLAYTYPE,
	description = "Thread spacer for an RFB rifle, manufactured by Kel-Tec. It is required for installation of different muzzle devices.",
	weight = 0.1,
	value = 2500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rfb_spacer.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rfb_muzzle_thr"] = {
	fullName = "RFB thread protector",
	displayName = "RFB cap",
	displayType = DISPLAYTYPE,
	description = "A threading protection cap for the Kel-Tec RFB 7.62x51 rifle barrel.",
	weight = 0.05,
	value = 480,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rfb_cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rpd_muzzle"] = {
	fullName = "RPD barrel thread protector",
	displayName = "RPD thr.",
	displayType = DISPLAYTYPE,
	description = "A standard-issue barrel thread protector for the RPD machine gun. Manufactured by V.A. Degtyarev Plant.",
	weight = 0.05,
	value = 820,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rpd_cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rpk16_muzzle_std"] = {
	fullName = "RPK-16 5.45x39 muzzle brake-compensator",
	displayName = "RPK-16",
	displayType = DISPLAYTYPE,
	description = "A standard Izhmash-produced muzzle brake-compensator for the RPK-16 LMG.",
	weight = 0.1,
	value = 1320,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rpk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_saiga12_muzzle_std"] = {
	fullName = "SOK-12 thread protection tube",
	displayName = "SOK-12 thr.",
	displayType = DISPLAYTYPE,
	description = "A standard-issue threading protection tube for SOK-12.",
	weight = 0.05,
	value = 730,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sok12_cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sil_pl15"] = {
	fullName = "PL-15 9x19 sound suppressor",
	displayName = "PL-15",
	displayType = DISPLAYTYPE,
	description = "A standard-issue sound suppressor for the PL-15 pistol.",
	weight = 0.3,
	value = 28620,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pl15_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ak_ak74_hexagon"] = {
	fullName = "AK-74 Hexagon 5.45x39 sound suppressor",
	displayName = "Hexagon AK74",
	displayType = DISPLAYTYPE,
	description = "A sound moderator for AK-74 automatic rifles, manufactured by Hexagon.",
	weight = 0.5,
	value = 29055,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak74_hexagon_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ak_akm_hexagon"] = {
	fullName = "AKM Hexagon 7.62x39 sound suppressor",
	displayName = "Hexagon AKM",
	displayType = DISPLAYTYPE,
	description = "A sound moderator for AKM 7.62x39 automatic rifles, manufactured by Hexagon.",
	weight = 0.5,
	value = 32270,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("akm_hexagon_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ak_dtk4m"] = {
	fullName = "Zenit DTK-4M 7.62x39 muzzle brake-compensator",
	displayName = "DTK-4M",
	displayType = DISPLAYTYPE,
	description = "The Zenit DTK-4M muzzle brake, manufactured from titanium alloy, is designed for installation on modern 7.62x39 AK assault rifles. Although positioned as a muzzle brake, it can only be purchased by the staff of particular authorities.",
	weight = 0.4,
	value = 41965,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_dtk_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ak_hexagon_dtkp"] = {
	fullName = "AK Hexagon DTKP MK.2 7.62x39 sound suppressor",
	displayName = "DTKP MK.2",
	displayType = DISPLAYTYPE,
	description = "The DTKP 7.62x39 sound suppressor manufactured by Hexagon. Designed for modern modification of AK with a 24x1.5 thread.",
	weight = 0.4,
	value = 29500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_hexagon_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ak_pbs1"] = {
	fullName = "PBS-1 7.62x39 sound suppressor",
	displayName = "PBS-1",
	displayType = DISPLAYTYPE,
	description = 'PBS-1 (Pribór Besshúmnoy Strel is a sound suppressor manufactured by TsNIITochMash for noiseless and flash-free fire with 7.62x39mm AK family assault rifles.',
	weight = 0.4,
	value = 26330,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_pbs1.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ak_pbs4"] = {
	fullName = "PBS-4 5.45x39 sound suppressor",
	displayName = "PBS-4",
	displayType = DISPLAYTYPE,
	description = 'The PBS-4 (Pribór Besshúmnoy Strel sound suppressor, manufactured by TsNIITochMash for use as a part of the "Canary" assault rifle grenade launcher system.',
	weight = 0.7,
	value = 21330,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_pbs4.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ak_r43_366"] = {
	fullName = "Rotor 43 .366 TKM sound suppressor",
	displayName = "R43 .366TKM",
	displayType = DISPLAYTYPE,
	description = "Rotor 43 muzzle brake, is designed for installation on VPO-209 .366TKM. Although positioned as muzzle brake, it also works as a sound supressor.",
	weight = 0.6,
	value = 21640,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_rotor3_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ak_r43_762"] = {
	fullName = "Rotor 43 7.62x39 muzzle brake-compensator",
	displayName = "R43 7.62x39",
	displayType = DISPLAYTYPE,
	description = "Rotor 43 muzzle brake, is designed for installation on AK 7.62x39. Although positioned as muzzle brake, it also works as a sound supressor.",
	weight = 0.6,
	value = 32700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_rotor7_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ak_tgpa"] = {
	fullName = "AK 5.45x39 TGP-A muzzle device-suppressor",
	displayName = "TGP-A",
	displayType = DISPLAYTYPE,
	description = 'The TGP-A tactical muzzle device/suppressor, manufactured by State R&D Agency "Special devices and Comms" for AK-based 5.45x39 automatic rifles.',
	weight = 0.7,
	value = 44400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_tgp_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ak_wafflemaker"] = {
	fullName = 'AK Hexagon "Wafflemaker" 5.45x39 sound suppressor',
	displayName = "Wafflemaker",
	displayType = DISPLAYTYPE,
	description = 'The "Wafflemaker" prototype sound suppressor manufactured by Hexagon, designed for installation on the Hexagon "Reactor" muzzle brake.',
	weight = 0.3,
	value = 59880,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_waffle_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_alpha9"] = {
	fullName = "Alpha Dog Alpha 9 9x19 sound suppressor",
	displayName = "Alpha 9",
	displayType = DISPLAYTYPE,
	description = "A pistol sound suppressor with a Weaver rail made for mounting an alternative sight. Manufactured by Alpha Dog.",
	weight = 0.3,
	value = 34160,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("9_alpha_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ar10_prsqdc"] = {
	fullName = "KAC PRS/QDC 7.62x51 sound suppressor",
	displayName = "PRS QDC",
	displayType = DISPLAYTYPE,
	description = "Knight's Armament Company PRS QDC sound suppressor, which can be installed on compatible QDC Flash Suppressor Kit and QDC Muzzle Brake Kit muzzle devices.",
	weight = 0.6,
	value = 72315,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_prs_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ar10_srdti"] = {
	fullName = "SIG Sauer SRD762Ti 7.62x51 sound suppressor",
	displayName = "SRD762",
	displayType = DISPLAYTYPE,
	description = "SRD762Ti is a Grade 5 titanium sound suppressor designed for use with .308/7.62/300BLK barrels, manufactured by SIG Sauer.",
	weight = 0.5,
	value = 55145,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_srd_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ar10_tlok_srd"] = {
	fullName = "SIG Sauer SRD762-QD 7.62x51 sound suppressor",
	displayName = "SRD762-QD",
	displayType = DISPLAYTYPE,
	description = "SRD762-QD is a Grade 5 titanium suppressor that uses quick-release muzzle devices to attach the suppressor to the gun. Manufactured by SIG Sauer.",
	weight = 0.5,
	value = 36540,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_tlok_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ar15_kacqdssnt4"] = {
	fullName = "KAC QDSS NT-4 5.56x45 sound suppressor (Black)",
	displayName = "NT-4 BLK",
	displayType = DISPLAYTYPE,
	description = "The Knight's Armament Company QDSS NT-4 5.56x45 and .223 sound suppressor can only be installed on compatible KAC muzzle devices.",
	weight = 0.7,
	value = 29440,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_nt4_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ar15_kacqdssnt4_f"] = {
	fullName = "KAC QDSS NT-4 5.56x45 sound suppressor (FDE)",
	displayName = "NT-4 FDE",
	displayType = DISPLAYTYPE,
	description = "The Knight's Armament Company QDSS NT-4 5.56x45 and .223 sound suppressor can only be installed on compatible KAC muzzle devices.",
	weight = 0.7,
	value = 29440,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_nt4_supp_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ar15_m4sdk"] = {
	fullName = "AR-15 Griffin Armament M4SD-K 5.56x45 sound suppressor",
	displayName = "M4SD-K",
	displayType = DISPLAYTYPE,
	description = "The M4SD-K sound suppressor, designed for use with 5.56x45 caliber weapon systems. Can only be installed on the SDQD mounting interface flash hiders. Manufactured by Griffin Armament.",
	weight = 0.4,
	value = 98000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_m4sd_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ar15_qdc556"] = {
	fullName = "KAC QDC 5.56x45 sound suppressor",
	displayName = "QDC 556",
	displayType = DISPLAYTYPE,
	description = "The Knight's Armament Company QDC 556 sound suppressor, designed for use with 5.56x45 caliber weapon systems. Can only be installed on the KAC QDC 3-Prong Flash Eliminator.",
	weight = 0.4,
	value = 54000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("kacqdc.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ar15_qdc556_blk"] = {
	fullName = "KAC QDC 5.56x45 sound suppressor",
	displayName = "QDC 556",
	displayType = DISPLAYTYPE,
	description = "The Knight's Armament Company QDC 556 sound suppressor, designed for use with 5.56x45 caliber weapon systems. Can only be installed on the KAC QDC 3-Prong Flash Eliminator.",
	weight = 0.4,
	value = 54000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("kacqdc_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ar15_sakerasr"] = {
	fullName = "SilencerCo Saker ASR 556 5.56x45 sound suppressor",
	displayName = "SAKER ASR 556",
	displayType = DISPLAYTYPE,
	description = "The Saker ASR 556 sound suppressor, designed for use with 5.56x45 caliber weapon systems. Can be installed on ASR-compatible muzzle devices.",
	weight = 0.5,
	value = 78660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_saker_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ar15_socommini"] = {
	fullName = "SureFire SOCOM556-MINI MONSTER 5.56x45 sound suppressor",
	displayName = "556-MINI",
	displayType = DISPLAYTYPE,
	description = "Surefire SOCOM556-MINI MONSTER 5.56x45 and .223 silencer is a shorter version of the SOCOM556-MONSTER. Can only be installed on compatible Surefire muzzle devices.",
	weight = 0.4,
	value = 40620,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_mini_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ar15_socommonster"] = {
	fullName = "SureFire SOCOM556-MONSTER 5.56x45 sound suppressor",
	displayName = "556-MONSTER",
	displayType = DISPLAYTYPE,
	description = "Surefire SOCOM556-MONSTER 5.56x45 and .223 silencer, can only be installed on compatible Surefire muzzle devices.",
	weight = 0.5,
	value = 29535,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_monster_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ar15_socomrc2"] = {
	fullName = "SureFire SOCOM556-RC2 5.56x45 sound suppressor",
	displayName = "RC2",
	displayType = DISPLAYTYPE,
	description = "Surefire SOCOM556-RC2 5.56x45 and .223 silencer, can only be installed on compatible Surefire muzzle devices.",
	weight = 0.5,
	value = 44150,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("socomrc2.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ar15_socomrc2_blk"] = {
	fullName = "SureFire SOCOM556-RC2 5.56x45 sound suppressor",
	displayName = "RC2",
	displayType = DISPLAYTYPE,
	description = "Surefire SOCOM556-RC2 5.56x45 and .223 silencer, can only be installed on compatible Surefire muzzle devices.",
	weight = 0.5,
	value = 44150,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("socomrc2_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_dthybrid"] = {
	fullName = "SilencerCo Hybrid 46 multi-caliber silencer",
	displayName = "Hybrid 46",
	displayType = DISPLAYTYPE,
	description = "The SilencerCo Hybrid 46 multi-caliber silencer is designed for use with pistols from 9mm to .45 ACP and rifles from 5.56mm to .45. Respective adapter required for installation on the system.",
	weight = 0.5,
	value = 70000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hybrid_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_fd917"] = {
	fullName = "Glock 9x19 Fischer Development FD917 sound suppressor",
	displayName = "G FD917",
	displayType = DISPLAYTYPE,
	description = "A quick detach sound suppressor for Glock 17 9x19 pistols, manufactured by Fischer Development.",
	weight = 0.3,
	value = 27560,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_fischer_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_gemtechone"] = {
	fullName = "Gemtech ONE multi-caliber sound suppressor",
	displayName = "Gemtech ONE",
	displayType = DISPLAYTYPE,
	description = "Gemtech ONE sound suppressor designed for use with a 7.62x51 NATO, but also compatible with a most popular rifle calibers. Can only be installed on compatible devices.",
	weight = 0.5,
	value = 40580,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("one_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_illusion"] = {
	fullName = "AAC Illusion 9 9x19 sound suppressor",
	displayName = "AAC Illusion9",
	displayType = DISPLAYTYPE,
	description = "Illusion 9 is a compact, high performance sound suppressor for modern 9mm semi-automatic pistols. Manufactured by Advanced Armament Corporation.",
	weight = 0.3,
	value = 29980,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("9_aac_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_osprey9"] = {
	fullName = "SilencerCo Osprey 9 9x19 sound suppressor",
	displayName = "Osprey 9",
	displayType = DISPLAYTYPE,
	description = "A light sound suppressor for 9x19 pistols and SMGs, manufactured by SilencerCo.",
	weight = 0.3,
	value = 32810,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("9_osprey_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_r43_556"] = {
	fullName = "Rotor 43 5.56x45 muzzle brake-compensator",
	displayName = "R43 556",
	displayType = DISPLAYTYPE,
	description = "The Rotor 43 muzzle brake is designed for installation on AR- or AK- based 5.56x45 rifles. Although positioned as a muzzle brake, it also works as a sound suppressor.",
	weight = 0.6,
	value = 40990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rotor5_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_r43_9x19"] = {
	fullName = "Rotor 43 9x19 muzzle brake-compensator",
	displayName = "R43 9x19",
	displayType = DISPLAYTYPE,
	description = "The Rotor 43 muzzle brake, designed for installation on PP-19-01 Vityaz 9x19 SMGs. Although positioned as a muzzle brake, it also works as a sound suppressor.",
	weight = 0.5,
	value = 22390,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rotor9_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_sdn6"] = {
	fullName = "AAC 762-SDN-6 multi-caliber sound suppressor",
	displayName = "SDN-6",
	displayType = DISPLAYTYPE,
	description = 'AAC 762 SDN-6 sound suppressor designed for use with a 7.62x51 NATO, but also functions as a superb multi-caliber suppressor for multiple hosts, providing excellent performance on 7.62 NATO, .300 AAC, 6.8 SPC, 6.5, and 5.56mm NATO. can only be installed on compatible with a "51T" devices.',
	weight = 0.6,
	value = 50060,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sdn_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_sr1mp"] = {
	fullName = "SR-1MP 9x21 sound suppressor",
	displayName = "SR-1MP",
	displayType = DISPLAYTYPE,
	description = "A standard-issue sound suppressor from the SR-1MP pistol kit. Requires a rail mount to be installed on the weapon.",
	weight = 0.5,
	value = 17400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr1mp_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_srd9"] = {
	fullName = "SIG Sauer SRD9 9x19 sound suppressor",
	displayName = "SRD9",
	displayType = DISPLAYTYPE,
	description = "SRD9 is a 9x19 caliber sound suppressor manufactured by SIG Sauer.",
	weight = 0.3,
	value = 37415,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("9_srd_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_thorpsr"] = {
	fullName = "AWC Thor PSR XL multi-caliber sound suppressor",
	displayName = "Thor PSR",
	displayType = DISPLAYTYPE,
	description = "The Thor PSR XL sound suppressor is designed for use with 7.62x51 NATO rounds, but is also compatible with several other calibers. Requires an AWC PSR muzzle brake for installation. Manufactured by AWC Silencers.",
	weight = 0.7,
	value = 81850,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("thor_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ultra5"] = {
	fullName = "Thunder Beast Arms Ultra 5 sound suppressor",
	displayName = "Ultra 5",
	displayType = DISPLAYTYPE,
	description = "The Ultra 5 sound suppressor is designed for use with 7.62x51 NATO rounds, but also functions as a superb multi-caliber suppressor for multiple hosts, providing excellent performance on 7.62 NATO, .300, 6.8 SPC, 6.5, and 5.56mm NATO. Can only be installed on compatible muzzle devices made by Thunder Beast Arms.",
	weight = 0.2,
	value = 41820,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ultra_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_waveqd"] = {
	fullName = "Daniel Defense WAVE QD sound suppressor",
	displayName = "Wave QD",
	displayType = DISPLAYTYPE,
	description = "Daniel Defence Wave QD sound suppressor, which can be installed over a Wave muzzle brake.",
	weight = 0.5,
	value = 54300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("wave_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_muzzle_hexa"] = {
	fullName = "SKS Hexagon 7.62x39 sound suppressor",
	displayName = "Hexagon SKS",
	displayType = DISPLAYTYPE,
	description = "A sound moderator for SKS carbines, manufactured by Hexagon.",
	weight = 0.5,
	value = 51280,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sks_hexagon_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_muzzle_wt"] = {
	fullName = "SKS Weapon Tuning 7.62x39 thread adapter",
	displayName = "WT0032_1",
	displayType = DISPLAYTYPE,
	description = "The Weapon Tuning muzzle adapter that provides the ability to install modern 7.62x39 muzzle devices on the SKS carbines.",
	weight = 0.05,
	value = 1935,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sks_tuning.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_spear_mz_std"] = {
	fullName = "MCX SPEAR Clutch-Lok QD 6.8x51 Shouldered Flash Hider",
	displayName = "CLQD",
	displayType = DISPLAYTYPE,
	description = "The SPEAR Clutch-Lok Shouldered Flash Hider is an effective flash suppressor that also serves as an attachment platform for the SLX/SLH sound suppressor. Manufactured by SIG Sauer.",
	weight = 0.1,
	value = 6440,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("spear_clqd.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_spear_silencer_std"] = {
	fullName = "MCX SPEAR SLX68-MG-QD 6.8x51 sound suppressor",
	displayName = "SLX68",
	displayType = DISPLAYTYPE,
	description = "The SLX68-MG-QD suppressor is designed for use with the 6.8x51 (.277 FURY) caliber cartridge. Can only be mounted on Clutch-Lok flash hiders. Manufactured by SIG Sauer.",
	weight = 0.6,
	value = 93760,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("spear_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sr2m_handstop"] = {
	fullName = "SR-2M 9x21 hand stopper",
	displayName = "SR-2M",
	displayType = DISPLAYTYPE,
	description = 'A hand stopper for the barrel of the SR-2M "Veresk" 9x21 submachine gun. Manufactured by TsNIItochmash. Protects the shooters hand from moving forward and getting possible burns by powder gases.',
	weight = 0.1,
	value = 3200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr2m_stop.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sr2m_silencer"] = {
	fullName = "SR-2M 9x21 sound suppressor (SV-1381)",
	displayName = "SV-1381",
	displayType = DISPLAYTYPE,
	description = 'A silencer for the SR-2M "Veresk" 9x21 submachine gun, manufactured by TsNIItochmash.',
	weight = 0.6,
	value = 45900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr2m_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sr3_supp"] = {
	fullName = "SR-3M 9x39 sound suppressor",
	displayName = "SR-3M",
	displayType = DISPLAYTYPE,
	description = "A standard-issue sound suppressor for the SR-3M assault rifle.",
	weight = 0.6,
	value = 66070,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr3m_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sv98_muzzle_sil"] = {
	fullName = "SV-98 7.62x54R sound suppressor",
	displayName = "SV-98",
	displayType = DISPLAYTYPE,
	description = "A standard SV-98 sound suppressor, manufactured by Izhmash.",
	weight = 0.3,
	value = 54820,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sv98_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sv98_muzzle_srvv"] = {
	fullName = "SV-98 SRVV Mk.2.0 7.62x54R muzzle brake-compensator",
	displayName = "SRVV Mk.2.0",
	displayType = DISPLAYTYPE,
	description = "The Mk.2.0 compensator produced by SRVV for SV-98 sniper rifles.",
	weight = 0.5,
	value = 7480,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sv98_srvv.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sv98_muzzle_std"] = {
	fullName = "SV-98 7.62x54R muzzle device",
	displayName = "SV-98 Muzzle",
	displayType = DISPLAYTYPE,
	description = "A standard-issue muzzle device for the SV-98 bolt-action sniper rifle.",
	weight = 0.1,
	value = 1230,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sv98.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sv98_muzzle_thr"] = {
	fullName = "SV-98 7.62x54R thread adapter",
	displayName = "SV-98 thr.",
	displayType = DISPLAYTYPE,
	description = "A standard-issue threaded adapter for 7.62x54R sound suppressor installation on the SV-98 sniper rifle.",
	weight = 0.05,
	value = 6300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sv98_adapter.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_svt_muzzle"] = {
	fullName = "SVT-40 7.62x54R muzzle brake",
	displayName = "SVT",
	displayType = DISPLAYTYPE,
	description = "A standard-issue muzzle brake for the SVT rifle.",
	weight = 0.1,
	value = 7070,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svt.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_t5000_muzzle_brake"] = {
	fullName = "ORSIS T-5000M 7.62x51 muzzle brake-compensator",
	displayName = "T-5000 brake",
	displayType = DISPLAYTYPE,
	description = "A standard-issue muzzle brake for the T-5000M bolt-action sniper rifle, manufactured by ORSIS.",
	weight = 0.1,
	value = 4000,
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

EFGM.ITEMS["arc9_att_eft_tt33_asilencer"] = {
	fullName = "TT 7.62x25 makeshift sound suppressor",
	displayName = "TT supp.",
	displayType = DISPLAYTYPE,
	description = "A makeshift sound suppressor for TT with a homespun barrel. Install and operate at your own discretion.",
	weight = 0.3,
	value = 11400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tt_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_tt33_dtk"] = {
	fullName = "TT PM-Laser DTK-TT muzzle brake-compensator",
	displayName = "DTK-TT",
	displayType = DISPLAYTYPE,
	description = "A custom compensator for TT pistols manufactured by PM-Laser.",
	weight = 0.05,
	value = 2665,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("tt_dtk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_muzzle_3nut"] = {
	fullName = "UZI 9x19 3-lug barrel retaining nut",
	displayName = "3-lug nut",
	displayType = DISPLAYTYPE,
	description = "A special 3-lug nut required to install 9x19 barrels on the UZI submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.1,
	value = 560,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_3nut.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_muzzle_3thr"] = {
	fullName = "UZI 9x19 3-lug barrel thread protector",
	displayName = "UZI 3-lug thr.",
	displayType = DISPLAYTYPE,
	description = "A thread protector for UZI submachine gun 3-lug barrels. Manufactured by Israel Weapon Industries.",
	weight = 0.1,
	value = 325,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_3cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_muzzle_nut"] = {
	fullName = "UZI 9x19 barrel retaining nut",
	displayName = "UZI nut",
	displayType = DISPLAYTYPE,
	description = "A special nut required to install 9x19 barrels on the UZI submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.1,
	value = 420,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_nut.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_muzzle_shroud"] = {
	fullName = "UZI vented barrel shroud",
	displayName = "UZI shroud",
	displayType = DISPLAYTYPE,
	description = "A vented barrel shroud for the UZI submachine gun, which allows to reduce barrel heat when firing in bursts. Manufactured by Israel Weapon Industries.",
	weight = 0.1,
	value = 7600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_shroud.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_muzzle_sup"] = {
	fullName = "UZI 9x19 sound suppressor",
	displayName = "UZI sup.",
	displayType = DISPLAYTYPE,
	description = "A standard-issue sound suppressor for the UZI submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.7,
	value = 24685,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzipro_muzzle_masada"] = {
	fullName = "UZI PRO 9x19 Masada thread protector",
	displayName = "Masada thr.",
	displayType = DISPLAYTYPE,
	description = "The Masada thread protector for UZI PRO submachine gun barrels. Manufactured by Israel Weapon Industries.",
	weight = 0.05,
	value = 475,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzipro_masada.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzipro_muzzle_nut"] = {
	fullName = "UZI PRO 9x19 barrel retaining nut",
	displayName = "UZI PRO nut",
	displayType = DISPLAYTYPE,
	description = "A special nut required to install 9x19 barrels on UZI PRO. Manufactured by Israel Weapon Industries.",
	weight = 0.1,
	value = 560,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzipro_nut.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_val_supp_val"] = {
	fullName = "AS VAL 9x39 integral barrel-suppressor",
	displayName = "AS VAL",
	displayType = DISPLAYTYPE,
	description = "A TsNIITochMash-manufactured integral barrel-suppressor module for AS VAL.",
	weight = 0.5,
	value = 30000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("val_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_valmod4_brake"] = {
	fullName = "AS VAL 9x39 NB MOD.4 muzzle brake",
	displayName = "MOD.4",
	displayType = DISPLAYTYPE,
	description = "A custom muzzle brake for the AS VAL MOD.4.",
	weight = 0.1,
	value = 12965,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("val_mod4_brake.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_valmod4_jailbrake"] = {
	fullName = "AS VAL 9x39 NB MOD.4 JailBrake muzzle device",
	displayName = "MOD.4 JB",
	displayType = DISPLAYTYPE,
	description = "A custom muzzle device for the AS VAL MOD.4, installed on the MOD.4 handguard.",
	weight = 0.1,
	value = 35880,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("val_mod4_jailbrake.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_valmod4_supcap"] = {
	fullName = "AS VAL MOD.4 9x39 suppressor cap",
	displayName = "MOD.4",
	displayType = DISPLAYTYPE,
	description = "A muzzle cap for the AS VAL MOD.4 sound suppressor.",
	weight = 0.05,
	value = 1800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("val_mod4_cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_valmod4_suppressor"] = {
	fullName = "AS VAL MOD.4 9x39 integral barrel-suppressor",
	displayName = "MOD.4",
	displayType = DISPLAYTYPE,
	description = "An integral barrel-suppressor module for the AS VAL MOD.4.",
	weight = 0.3,
	value = 9340,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("val_mod4_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vityaz_muzzle_saiga9"] = {
	fullName = "Saiga-9 9x19 muzzle brake-compensator",
	displayName = "Saiga-9",
	displayType = DISPLAYTYPE,
	description = "A standard muzzle brake-compensator made by Izhmash for Saiga-9 carbines.",
	weight = 0.05,
	value = 535,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("saiga.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vityaz_muzzle_std"] = {
	fullName = 'PP-19-01 "Vityaz" 9x19 muzzle brake-compensator',
	displayName = "PP-19-01",
	displayType = DISPLAYTYPE,
	description = "A standard muzzle brake/compensator made by Izhmash for PP-19-01 Vityaz 9x19 SMG.",
	weight = 0.05,
	value = 640,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vityaz.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vityaz_silencer_std"] = {
	fullName = 'PP-19-01 "Vityaz" 9x19 sound suppressor',
	displayName = "Vityaz supp.",
	displayType = DISPLAYTYPE,
	description = "An Izhmash-produced sound suppressing device for PP-19-01 Vityaz 9x19 SMG of previous generations.",
	weight = 0.5,
	value = 23000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vityaz_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vpo101_sup_std"] = {
	fullName = "VPO-101 Rotor 43 7.62x51 sound suppressor",
	displayName = "Rotor 43",
	displayType = DISPLAYTYPE,
	description = "The Rotor 43 muzzle brake, designed for installation on VPO 7.62x51 family rifles. Although positioned as a muzzle brake, it also works as a sound suppressor.",
	weight = 0.9,
	value = 23990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vpo101_rotor_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vpo215_muzzle_brake"] = {
	fullName = "VPO-215 thread protector",
	displayName = "VPO-215 thr.",
	displayType = DISPLAYTYPE,
	description = "A threading protection cap for the VPO-215 .366TKM rifle barrel.",
	weight = 0.05,
	value = 215,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vpo215_cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vsk_retainer"] = {
	fullName = "9A-91 handguard retainer",
	displayName = "VSS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue handguard retainer for the 9A-91 compact assault rifle and compatible models. Manufactured by Tula KPB Instrument Design Bureau.",
	weight = 0.05,
	value = 515,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("9a91_retainer.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vsk_supp"] = {
	fullName = "9A-91 9x39 sound suppressor",
	displayName = "9A-91",
	displayType = DISPLAYTYPE,
	description = "A detachable sound suppressor for the 9A-91 compact assault rifle and compatible models. Manufactured by Tula KPB Instrument Design Bureau.",
	weight = 0.5,
	value = 21800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("9a91_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_muzzle_comp"] = {
	fullName = "CZ Scorpion EVO 3 A1 carbine compensator",
	displayName = "Carbine Comp",
	displayType = DISPLAYTYPE,
	description = "Standard multi-port compensator for the CZ Scorpion EVO 3 carbine.",
	weight = 0.05,
	value = 5100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_comp.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_muzzle_fh"] = {
	fullName = "CZ Scorpion EVO 3 A1 flash hider",
	displayName = "EVO 3 FH",
	displayType = DISPLAYTYPE,
	description = "Standard bird-cage style flash hider for the CZ Scorpion Evo 3 A1 9x19 submachine gun.",
	weight = 0.05,
	value = 3775,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_flash.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_sc9"] = {
	fullName = "Innovative Arms IA-SC9 integral suppressor",
	displayName = "IA-SC9",
	displayType = DISPLAYTYPE,
	description = "Integral suppressor designed specifically for the CZ Scorpion EVO 3 platform. Functioning similarly to an MP5-SD or other integral suppressor systems, the suppressor reduces velocity of standard cartridges to subsonic speeds to reduce overall sound signature.",
	weight = 0.3,
	value = 58900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_int.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_shroud"] = {
	fullName = "CZ Scorpion EVO 3 barrel shroud",
	displayName = "Shroud",
	displayType = DISPLAYTYPE,
	description = "A barrel shroud designed to be used on the CZ Scorpion integral barrel when the weapon is operating without an integral suppressor.",
	weight = 0.2,
	value = 14000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_shroud.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar10_potomac"] = {
	fullName = "AR-10 Potomac Armory M110 7.62x51 flash hider",
	displayName = "M110 FH",
	displayType = DISPLAYTYPE,
	description = "A 7.62x51 NATO flash hider for the M110 semi-automatic sniper system. Manufactured by Potomac Armory.",
	weight = 0.1,
	value = 2780,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_m110_flash.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ar10_m110"] = {
	fullName = "AR-10 KAC SR-25/Mk.11 7.62x51 sound suppressor",
	displayName = "Mk.11",
	displayType = DISPLAYTYPE,
	description = "A rifle caliber sound suppressor designed for SR-25 pattern rifles, manufactured by Knight's Armament Company. Can only be installed on the compatible gas block system.",
	weight = 0.8,
	value = 47600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_m110_supp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_silencer_ar10_m110_fde"] = {
	fullName = "AR-10 KAC SR-25/Mk.11 7.62x51 sound suppressor (Taupe)",
	displayName = "Mk.11",
	displayType = DISPLAYTYPE,
	description = "A rifle caliber sound suppressor designed for SR-25 pattern rifles, manufactured by Knight's Armament Company. Can only be installed on the compatible gas block system. Coated in cerakote Taupe color.",
	weight = 0.8,
	value = 47600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar10_m110_supp_taupe.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ak12_muzzle_adapter"] = {
	fullName = "AK-12 BRT M24 thread muzzle adapter",
	displayName = "BRT M24",
	displayType = DISPLAYTYPE,
	description = "A muzzle thread adapter that allows installation of various modern AK 5.45x39 muzzle devices on the bayonet type barrel thread of the AK-12 and its civilian versions. Manufactured by BRT.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/68235b0b7d3ccc3ca20f4d01.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ak_ars4p"] = {
	fullName = "AK 7.62x39 Arsenal 4 Piece Flash Hider",
	displayName = "ARS 4P",
	displayType = DISPLAYTYPE,
	description = "A well-known muzzle device commonly called 'The Bulgarian' in Russia. Its reverse-cone shape makes it highly effective at reducing muzzle flash, and it also slightly lessens the concussive effect when firing indoors. Compatible with any caliber from 5.45 to 7.62 on the AK-74 platform, or with the appropriate adapter on AKM or AK-12 assault rifles.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/68540aae1e5c6ff6f1051477.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_muzzle_ar15_psr762"] = {
	fullName = "AR-15 AWC PSR 7.62x51 muzzle brake",
	displayName = "PSR-762",
	displayType = DISPLAYTYPE,
	description = "PSR is an effective muzzle brake manufactured by AWC Silencers for 7.62x51. Reduces recoil and counters the muzzle rise. The brake is threaded and compatible with AWC PSR THOR sound suppressors.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_ar15_attachments/muzzle/ar15_awc_psr_556x45_muzzle_brake.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rpd_muzzle_ds"] = {
	fullName = "RPD 7.62x51 DS Arms Belgian Style Muzzle Brake",
	displayName = "RPD BEL",
	displayType = DISPLAYTYPE,
	description = "A Belgian type muzzle brake for the custom threaded .308 barrel for the RPD machine gun. Manufactured by DS Arms.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/6830606e84a12bb973021fd0.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vpo215_muzzle_tac"] = {
	fullName = "VPO-215 tactical thread protector",
	displayName = "215 tac thr.",
	displayType = DISPLAYTYPE,
	description = "A tactical threading protection cap for the VPO-215 .366TKM rifle barrel.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/68b985da5133d696f7032d37.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}
