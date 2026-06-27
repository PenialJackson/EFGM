local DISPLAYTYPE = "Stock"
local ATTICONPATH = "items/attachments/stocks/"

local function AttMaterial(imgPath)
	if SERVER then return end
	return Material(ATTICONPATH .. imgPath, "smooth")
end

EFGM.ITEMS["arc9_att_eft_aa12_stock_fde"] = {
	fullName = "AA-12 stock assembly (FDE)",
	displayName = "AA-12 stock (F)",
	displayType = DISPLAYTYPE,
	description = "A standard-issue stock assembly for the Auto Assault-12 shotgun. Flat Dark Earth version.",
	weight = 0.9,
	value = 6000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aa12_fde.png"),

	sizeX = 4,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aa12_stock_labs"] = {
	fullName = "AA-12 stock assembly (TerraGroup)",
	displayName = "AA-12 stock (TG)",
	displayType = DISPLAYTYPE,
	description = "A standard-issue stock assembly for the Auto Assault-12 shotgun. TerraGroup version.",
	weight = 0.9,
	value = 8900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aa12_labs.png"),

	sizeX = 4,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aa12_stock_std"] = {
	fullName = "AA-12 stock assembly",
	displayName = "AA-12 stock",
	displayType = DISPLAYTYPE,
	description = "A standard-issue stock assembly for the Auto Assault-12 shotgun.",
	weight = 0.9,
	value = 6000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aa12.png"),

	sizeX = 4,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aek_stock_marksman"] = {
	fullName = "AEK Marksman Folding Stock",
	displayName = "DMR",
	displayType = DISPLAYTYPE,
	description = "A marksman rifle stock for the AEK series platform of assault rifles.",
	weight = 0.3,
	value = 9910,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aek_dmr.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aek_stock_pkm"] = {
	fullName = "AEK PKM Folding Stock",
	displayName = "PKM",
	displayType = DISPLAYTYPE,
	description = "A PKM style rifle stock for the AEK series platform of assault rifles.",
	weight = 0.4,
	value = 12000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aek_pkm.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aek_stock_proto"] = {
	fullName = "AEK Prototype Folding Stock",
	displayName = "Prototype",
	displayType = DISPLAYTYPE,
	description = "Prototype polymer stock for the AEK series platform of assault rifles.",
	weight = 0.4,
	value = 8900,
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

EFGM.ITEMS["arc9_att_eft_aek_stock_std"] = {
	fullName = "AEK Standard Folding Stock",
	displayName = "Standard",
	displayType = DISPLAYTYPE,
	description = "Standard metal skeletonized stock for the AEK series of assault rifles.",
	weight = 0.3,
	value = 6300,
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

EFGM.ITEMS["arc9_att_eft_ak12_stock_tube"] = {
	fullName = "AK-12 buffer tube",
	displayName = "AK-12 BT",
	displayType = DISPLAYTYPE,
	description = "A standard-issue buffer tube for AK-12 automatic rifles, manufactured by Izhmash.",
	weight = 0.1,
	value = 4400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak12buffer.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aksu_stock_std"] = {
	fullName = "AKS-74U metal skeleton stock",
	displayName = "6P26 Sb.5",
	displayType = DISPLAYTYPE,
	description = "A standard-issue metal skeleton stock for AKS-74U, AKS-74UN, and AKS-74UB, manufactured by Izhmash.",
	weight = 0.2,
	value = 750,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aks74u_std.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_an94_stock_buffertube"] = {
	fullName = "AN-94 Buffer Tube",
	displayName = "AN-94 Buffer",
	displayType = DISPLAYTYPE,
	description = "A foldable buffer tube system for the AN-94 5.45x39mm assault rifle.",
	weight = 0.3,
	value = 16000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("an94_tube.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_an94_stock_kirov"] = {
	fullName = "AN-94 Skeletonized Folding Stock",
	displayName = "AN-94 Fold",
	displayType = DISPLAYTYPE,
	description = "A skeletonized folding stock for the AN-94 5.45x39mm assault rifle.",
	weight = 0.4,
	value = 8750,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("an94_skele.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_an94_stock_std"] = {
	fullName = "AN-94 Polymer Folding Stock",
	displayName = "AN-94",
	displayType = DISPLAYTYPE,
	description = "Standard polymer folding stock for the AN-94 5.45x39mm assault rifle.",
	weight = 0.3,
	value = 12130,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("an94.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_aps_stock_std"] = {
	fullName = "APB detachable wire stock",
	displayName = "APB stock",
	displayType = DISPLAYTYPE,
	description = "A standard-issue wire stock for APB pistols.",
	weight = 0.15,
	value = 3395,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("apb_wire.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_buffertube_a2"] = {
	fullName = "AR-15 Colt A2 buffer tube",
	displayName = "CS2",
	displayType = DISPLAYTYPE,
	description = "Colt Receiver Extension Buffer Tube, Mil-Spec diameter will fit any AR-15-based carbine or rifle.",
	weight = 0.1,
	value = 3930,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("colta2.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_buffertube_adar"] = {
	fullName = "AR-15 ADAR 2-15 buffer tube",
	displayName = "ADAR St.",
	displayType = DISPLAYTYPE,
	description = "ADAR Receiver Extension Buffer Tube, 4-position, will fit any AR-15-based carbine.",
	weight = 0.2,
	value = 920,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("adar_buffer.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_buffertube_arfx"] = {
	fullName = "AR-15 DoubleStar ACE ARFX Skeleton Stock",
	displayName = "ACE ARFX",
	displayType = DISPLAYTYPE,
	description = "The lightweight ACE ARFX Skeleton Stock provides comfort, balance and aesthetics. Fits both the Mil-Spec and civilian M/AR platform. Manufactured by DoubleStar.",
	weight = 0.5,
	value = 8670,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("arfx.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_buffertube_baskak"] = {
	fullName = "Armacon Baskak stock",
	displayName = "Baskak",
	displayType = DISPLAYTYPE,
	description = "A Russian-made light tube stock of very spartan-like design for use with AK systems that can be installed both on Mil-Spec and Com-Spec M/AR standard receiver adapters.",
	weight = 0.2,
	value = 6340,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("baskak.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_buffertube_cgnl"] = {
	fullName = "AR-15 Custom Guns buffer tube",
	displayName = "CGNL",
	displayType = DISPLAYTYPE,
	description = "An AR-15 mil-spec buffer tube for installation of various telescopic buttstocks. Manufactured by Custom Guns.",
	weight = 0.1,
	value = 4370,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("cgnl_buffer.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_buffertube_cgnl_fde"] = {
	fullName = "AR-15 Custom Guns buffer tube (FDE)",
	displayName = "CGNL",
	displayType = DISPLAYTYPE,
	description = "An AR-15 mil-spec buffer tube for installation of various telescopic buttstocks. Manufactured by Custom Guns. Flat Dark Earth version.",
	weight = 0.1,
	value = 4370,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("cgnl_buffer_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_buffertube_cmmg"] = {
	fullName = "CMMG buffer tube",
	displayName = "CMMG",
	displayType = DISPLAYTYPE,
	description = "A Mil-Spec buffer tube for attaching various buttstocks. Manufactured by CMMG.",
	weight = 0.1,
	value = 4280,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("cmmg_buffer.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_buffertube_f93pro"] = {
	fullName = "ERGO F93 PRO stock",
	displayName = "F93 PRO stock",
	displayType = DISPLAYTYPE,
	description = "The F93 PRO telescoping stock, manufactured by ERGO.",
	weight = 0.6,
	value = 11050,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("f93.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_buffertube_hkenh"] = {
	fullName = "HK Enhanced Tube buffer tube",
	displayName = "Enhanced Tube",
	displayType = DISPLAYTYPE,
	description = "Heckler & Koch Receiver Extension Buffer Tube, Mil-Spec diameter will fit any 416-based carbine or rifle.",
	weight = 0.15,
	value = 4990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hke_buffer.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_buffertube_m7a1"] = {
	fullName = "TROY M7A1 PDW stock (Black)",
	displayName = "M7A1PDW",
	displayType = DISPLAYTYPE,
	description = "The TROY M7A1 PDW Stock kit is a retractable stock made to elevate 5.56 carbines, making them compact, measuring 3” shorter than traditional carbine stocks. Reduces the overall weapon size and recoil buffer. Black version.",
	weight = 0.4,
	value = 5600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m7a1_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_buffertube_m7a1f"] = {
	fullName = "TROY M7A1 PDW stock (Flat Dark Earth)",
	displayName = "M7A1PDW",
	displayType = DISPLAYTYPE,
	description = "The TROY M7A1 PDW Stock kit is a retractable stock made to elevate 5.56 carbines, making them compact, measuring 3” shorter than traditional carbine stocks. Reduces the overall weapon size and recoil buffer. Flat Dark Earth version.",
	weight = 0.4,
	value = 5600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m7a1_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_buffertube_rtm"] = {
	fullName = "AR-15 RTM ATP buffer tube",
	displayName = "ATP",
	displayType = DISPLAYTYPE,
	description = "The ATP buffer tube, 6-position, Mil-Spec diameter, will fit any AR-15-based carbine. Manufactured by RTM.",
	weight = 0.1,
	value = 4300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("atp_buffer.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_buffertube_siadv"] = {
	fullName = "Strike Industries Advanced Receiver Extension buffer tube",
	displayName = "Advanced Tube",
	displayType = DISPLAYTYPE,
	description = "The Advanced Receiver Extension buffer tube, Mil-Spec diameter will fit any AR-15-based carbine or rifle. The buffer tube has a distinctive scalloping that decreases friction with the stock and reduces weight while retaining strength in areas that get the most stress. Manufactured by Strike Industries.",
	weight = 0.1,
	value = 9980,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("strike_buffer.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_buffertube_siadvred"] = {
	fullName = "Strike Industries Advanced Receiver Extension buffer tube (Anodized Red)",
	displayName = "Advanced Tube",
	displayType = DISPLAYTYPE,
	description = "The Advanced Receiver Extension buffer tube, Mil-Spec diameter will fit any AR-15-based carbine or rifle. The buffer tube has a distinctive scalloping that decreases friction with the stock and reduces weight while retaining strength in areas that get the most stress. Manufactured by Strike Industries. Anodized Red version.",
	weight = 0.1,
	value = 28900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("strike_buffer_red.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_buffertube_socom"] = {
	fullName = "AR-15 DoubleStar ACE SOCOM Gen.4 stock",
	displayName = "Gen.4 stock",
	displayType = DISPLAYTYPE,
	description = "The 4th generation of a recently famous SOCOM stock manufactured by DoubleStar. The stock features a sturdy integral buffer tube and a closed cell foam overtube cover that provides a comfortable cheek weld.",
	weight = 0.4,
	value = 7050,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("acesocom.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_buffertube_std"] = {
	fullName = "Colt Carbine buffer tube",
	displayName = "CST",
	displayType = DISPLAYTYPE,
	description = "Colt Receiver Extension Buffer Tube, 4-position, Mil-Spec diameter will fit any AR-15-based carbine.",
	weight = 0.1,
	value = 4550,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("coltcarbine.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_buffertube_ubrgen2"] = {
	fullName = "Magpul UBR GEN2 stock (Black)",
	displayName = "UBR GEN2",
	displayType = DISPLAYTYPE,
	description = "The UBR GEN2 telescoping stock, manufactured by Magpul. Black version.",
	weight = 0.6,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ubr_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_buffertube_ubrgen2f"] = {
	fullName = "Magpul UBR GEN2 stock (Flat Dark Earth)",
	displayName = "UBR GEN2",
	displayType = DISPLAYTYPE,
	description = "The UBR GEN2 telescoping stock, manufactured by Magpul. Flat Dark Earth version.",
	weight = 0.6,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ubr_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_buffertube_viperpdw"] = {
	fullName = "Strike Industries Viper PDW stock",
	displayName = "Viper PDW",
	displayType = DISPLAYTYPE,
	description = "The Strike Industries Viper PDW stock kit is a retractable stock installed on AR-15 weapon systems. Reduces the overall weapon size and recoil buffer.",
	weight = 0.5,
	value = 9100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("viper.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_7"] = {
	fullName = "AR-15 Colt M16A1 Type 7 stock",
	displayName = "Type 7",
	displayType = DISPLAYTYPE,
	description = "A standard-issue buttstock for the early-issue M16A1 assault rifles, compatible with AR-15 and AR-10 platforms.",
	weight = 0.45,
	value = 8200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m16_type7.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_a2"] = {
	fullName = "AR-15 Colt A2 stock",
	displayName = "A2",
	displayType = DISPLAYTYPE,
	description = "The A2 type buttstock for the AR-15. Standard-issue for M16A2 assault rifles. Manufactured by Colt.",
	weight = 0.4,
	value = 7000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("colta2_stock.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_adar"] = {
	fullName = "ADAR 2-15 wooden stock",
	displayName = "ADAR",
	displayType = DISPLAYTYPE,
	description = "A wooden SVD-style stock for ADAR 2-15 carbines.",
	weight = 0.7,
	value = 4000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("adar_wood.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_ak12"] = {
	fullName = "AK-12 stock",
	displayName = "AK-12",
	displayType = DISPLAYTYPE,
	description = "A standard-issue telescopic stock for AK-12 automatic rifles, manufactured by Izhmash.",
	weight = 0.1,
	value = 5600,
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

EFGM.ITEMS["arc9_att_eft_ar_stock_b5"] = {
	fullName = "AR-15 B5 Systems Precision stock",
	displayName = "Precision",
	displayType = DISPLAYTYPE,
	description = "The Precision telescoping stock manufactured by B5 Systems. Designed to be installed on AR-system weapons.",
	weight = 0.1,
	value = 14505,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("systemsb5.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_buttpad"] = {
	fullName = "Magpul MOE Carbine rubber buttpad",
	displayName = "RBP",
	displayType = DISPLAYTYPE,
	description = "A standard rubber butt-pad for the Magpul MOE Carbine stock series. However, it can also be installed on other models of the series.",
	weight = 0.05,
	value = 13100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("moe_buttpad.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_ctr"] = {
	fullName = "Magpul CTR Carbine stock (Black)",
	displayName = "CTR",
	displayType = DISPLAYTYPE,
	description = 'A drop-in replacement buttstock for AR-15/M16 carbines by Magpul Original Equipment. Uses mil-spec sized receiver extension tubes. Frame profile avoids snagging and shields the release latch to prevent accidental activation, includes a standard 0.30" thick rubber butt-pad to prevent slippage even with body armor or modular gear. Black version.',
	weight = 0.2,
	value = 31000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ctr_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_ctrf"] = {
	fullName = "Magpul CTR Carbine stock (Flat Dark Earth)",
	displayName = "CTR",
	displayType = DISPLAYTYPE,
	description = 'A drop-in replacement buttstock for AR-15/M16 carbines by Magpul Original Equipment. Uses mil-spec sized receiver extension tubes. Frame profile avoids snagging and shields the release latch to prevent accidental activation, includes a standard 0.30" thick rubber butt-pad to prevent slippage even with body armor or modular gear. Flat Dark Earth version.',
	weight = 0.2,
	value = 31000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ctr_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_ddecb"] = {
	fullName = "AR-15 Daniel Defense Enhanced Collapsible Buttstock (Black)",
	displayName = "DD ECB",
	displayType = DISPLAYTYPE,
	description = "A quick detach buttstock for AR-15 carbines. Manufactured by Daniel Defense. Black version.",
	weight = 0.2,
	value = 17995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ddecb_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_ddecb_f"] = {
	fullName = "AR-15 Daniel Defense Enhanced Collapsible Buttstock (FDE)",
	displayName = "DD ECB (FDE)",
	displayType = DISPLAYTYPE,
	description = "A quick detach buttstock for AR-15 carbines. Manufactured by Daniel Defense. Flat Dark Earth version.",
	weight = 0.2,
	value = 17995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ddecb_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_ds150"] = {
	fullName = "KRISS Defiance DS150 stock (Black)",
	displayName = "DS150",
	displayType = DISPLAYTYPE,
	description = 'A drop-in replacement buttstock for AR-15/M16 carbines. It uses mil-spec sized receiver extension tubes. The frame profile avoids snagging and shields the release latch, preventing accidental activation. It includes a standard 0.30" thick rubber butt-pad to prevent slippage even with body armor or modular gear. Black version.',
	weight = 0.4,
	value = 14100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ds150_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_ds150f"] = {
	fullName = "KRISS Defiance DS150 stock (Flat Dark Earth)",
	displayName = "DS150",
	displayType = DISPLAYTYPE,
	description = 'A drop-in replacement buttstock for AR-15/M16 carbines. It uses mil-spec sized receiver extension tubes. The frame profile avoids snagging and shields the release latch, preventing accidental activation. It includes a standard 0.30" thick rubber butt-pad to prevent slippage even with body armor or modular gear. Flat Dark Earth version.',
	weight = 0.4,
	value = 14100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ds150_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_e1"] = {
	fullName = "AR-15 HK E1 buttstock",
	displayName = "HK E1",
	displayType = DISPLAYTYPE,
	description = "The E1 telescopic stock is designed as a replacement for standard HK416 stocks. Made of high grade nylon fiber with a twist off rubber butt pad and ambidextrous sling attachment point. Can be installed on any AR-15 weapon system. Manufactured by Heckler & Koch.",
	weight = 0.4,
	value = 20000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("hke1.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_emod"] = {
	fullName = "Vltor EMOD stock",
	displayName = "EMOD",
	displayType = DISPLAYTYPE,
	description = "The EMOD buttstock designed for AR-15 weapon systems. Manufactured by Vltor.",
	weight = 0.4,
	value = 16100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("emod.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_glcore"] = {
	fullName = "FAB Defense GL-CORE buttstock",
	displayName = "GL CORE",
	displayType = DISPLAYTYPE,
	description = "A telescopic stock, manufactured by FAB Defense. The integrated cheek weld, ergonomic buttpad and an interchanging tube adapter provide an unmatched fit on Mil-Spec and Commercial buffer tubes, with a high level of efficiency and comfort. Includes an ergonomically shaped rubberized butt-pad for quick shouldering and easy maneuvering of the weapon.",
	weight = 0.2,
	value = 4900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("fabdefense.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_glr16s"] = {
	fullName = "FAB Defense GLR-16-S stock",
	displayName = "GLR-16-S",
	displayType = DISPLAYTYPE,
	description = "The GLR-16-S telescoping buttstock. Manufactured by FAB Defense.",
	weight = 0.2,
	value = 8990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glr16s.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_glshock"] = {
	fullName = "FAB Defense GL-SHOCK buttstock",
	displayName = "GL SHOCK",
	displayType = DISPLAYTYPE,
	description = "A telescopic stock with an adjustable cheek rest kit, manufactured by FAB Defense.",
	weight = 0.3,
	value = 12900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glshock.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_heracqr"] = {
	fullName = "AR-15 Hera Arms CQR pistol grip/buttstock",
	displayName = "CQR",
	displayType = DISPLAYTYPE,
	description = "Designed for the cilvilian market as well as for military use, to create one of the most rigid and compact Rifle Systems based on the widely available AR-15 platform. The CQR Riflestock is an easy to install replacement buttstock for Mil-Spec AR-15 Rifles using a Mil-Spec Carbine buffer tube.",
	weight = 0.5,
	value = 41010,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("heracqr.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_m4ss"] = {
	fullName = "High Standard M4SS Stock",
	displayName = "M4SS",
	displayType = DISPLAYTYPE,
	description = "The High Standard M4SS telescoping stock closely follows the classic M4A1 stock except for a few geometry details.",
	weight = 0.6,
	value = 4655,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m4ss.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_magpul_acs"] = {
	fullName = "AR-15 Magpul ACS Carbine stock (Black)",
	displayName = "ACS",
	displayType = DISPLAYTYPE,
	description = "A quick-detach buttstock for AR-15/M16 carbines with a mil-spec telescoping tube, manufactured by Magpul Original Equipment. The frame design prevents binding and accidental release of the locking lever, while the standard-thickness rubber buttpad reduces slipping on armor or gear. Black version.",
	weight = 0.3,
	value = 35445,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("acs.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_magpul_acs_fde"] = {
	fullName = "AR-15 Magpul ACS Carbine stock (FDE)",
	displayName = "ACS",
	displayType = DISPLAYTYPE,
	description = "A quick-detach buttstock for AR-15/M16 carbines with a mil-spec telescoping tube, manufactured by Magpul Original Equipment. The frame design prevents binding and accidental release of the locking lever, while the standard-thickness rubber buttpad reduces slipping on armor or gear. Flat Dark Earth version.",
	weight = 0.3,
	value = 35445,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("acs_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_magpul_slk"] = {
	fullName = "AR-15 Magpul MOE SL-K buttstock (Coyote Tan)",
	displayName = "MOE SL-K",
	displayType = DISPLAYTYPE,
	description = "A quick-detach buttstock for AR-15/M16 rifles with mil-spec buffer tube. Manufactured by Magpul Original Equipment. Coyote Tan version.",
	weight = 0.2,
	value = 18050,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("slk_ct.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_magpul_slk_blk"] = {
	fullName = "AR-15 Magpul MOE SL-K buttstock (Black)",
	displayName = "MOE SL-K",
	displayType = DISPLAYTYPE,
	description = "A quick-detach buttstock for AR-15/M16 rifles with mil-spec buffer tube. Manufactured by Magpul Original Equipment. Black version.",
	weight = 0.2,
	value = 18050,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("slk_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_magpulmoe"] = {
	fullName = "Magpul MOE Carbine stock (Black)",
	displayName = "MOE",
	displayType = DISPLAYTYPE,
	description = 'A drop-in replacement buttstock for AR-15/M16 carbines by Magpul Original Equipment. Uses mil-spec sized receiver extension tubes. Frame profile avoids snagging and shields the release latch to prevent accidental activation, includes a standard 0.30" thick rubber butt-pad to prevent slippage even with body armor or modular gear. Black version.',
	weight = 0.2,
	value = 16660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpmoe_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_magpulmoe_fde"] = {
	fullName = "Magpul MOE Carbine stock (Flat Dark Earth)",
	displayName = "MOE",
	displayType = DISPLAYTYPE,
	description = 'A drop-in replacement buttstock for AR-15/M16 carbines by Magpul Original Equipment. Uses mil-spec sized receiver extension tubes. Frame profile avoids snagging and shields the release latch to prevent accidental activation, includes a standard 0.30" thick rubber butt-pad to prevent slippage even with body armor or modular gear. Flat Dark Earth version.',
	weight = 0.2,
	value = 16660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpmoe_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_magpulmoe_fg"] = {
	fullName = "Magpul MOE Carbine stock (Foliage Green)",
	displayName = "MOE",
	displayType = DISPLAYTYPE,
	description = 'A drop-in replacement buttstock for AR-15/M16 carbines by Magpul Original Equipment. Uses mil-spec sized receiver extension tubes. Frame profile avoids snagging and shields the release latch to prevent accidental activation, includes a standard 0.30" thick rubber butt-pad to prevent slippage even with body armor or modular gear. Foliage Green version.',
	weight = 0.2,
	value = 16660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpmoe_fg.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_magpulmoe_od"] = {
	fullName = "Magpul MOE Carbine stock (Olive Drab)",
	displayName = "MOE",
	displayType = DISPLAYTYPE,
	description = 'A drop-in replacement buttstock for AR-15/M16 carbines by Magpul Original Equipment. Uses mil-spec sized receiver extension tubes. Frame profile avoids snagging and shields the release latch to prevent accidental activation, includes a standard 0.30" thick rubber butt-pad to prevent slippage even with body armor or modular gear. Olive Drab version.',
	weight = 0.2,
	value = 16660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpmoe_od.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_magpulmoe_sg"] = {
	fullName = "Magpul MOE Carbine stock (Stealth Gray)",
	displayName = "MOE",
	displayType = DISPLAYTYPE,
	description = 'A drop-in replacement buttstock for AR-15/M16 carbines by Magpul Original Equipment. Uses mil-spec sized receiver extension tubes. Frame profile avoids snagging and shields the release latch to prevent accidental activation, includes a standard 0.30" thick rubber butt-pad to prevent slippage even with body armor or modular gear. Stealth Gray version.',
	weight = 0.2,
	value = 16660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mpmoe_sg.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_mftbus"] = {
	fullName = "MFT BUS stock",
	displayName = "BUS",
	displayType = DISPLAYTYPE,
	description = "The BATTLELINK Utility Stock polymer buttstock manufactured by Mission First Tactical. Adapts and changes based on environment or operational needs, from storing additional items in the rear compartment to utilizing custom accessory mounts.",
	weight = 0.2,
	value = 9000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mftbus.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_n1"] = {
	fullName = "AR-15 Colt N1 Stock",
	displayName = "N1",
	displayType = DISPLAYTYPE,
	description = "A telescopic buttstock, second generation of the classic stock for CAR-15. Manufactured by Colt.",
	weight = 0.12,
	value = 9015,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("coltn1.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_n1_buttpad"] = {
	fullName = "AR-15 John Masen Recoil Pad",
	displayName = "N1 RP",
	displayType = DISPLAYTYPE,
	description = "A rubber buttpad for the Colt N1 series stocks, improves ergonomics and cushions felt recoil. Manufactured by John Masen Co.",
	weight = 0.07,
	value = 6600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("johnmasen.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_prsgen2f"] = {
	fullName = "Magpul PRS GEN2 stock (FDE)",
	displayName = "PRS GEN2",
	displayType = DISPLAYTYPE,
	description = "The PRS GEN2 stock manufactured by Magpul. Flat Dark Earth version.",
	weight = 0.8,
	value = 21400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("prsgen2_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_prsgen2f_blk"] = {
	fullName = "Magpul PRS GEN2 stock (BLK)",
	displayName = "PRS GEN2",
	displayType = DISPLAYTYPE,
	description = "The PRS GEN2 stock manufactured by Magpul. Black version.",
	weight = 0.8,
	value = 21400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("prsgen2_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_prsgen3"] = {
	fullName = "Magpul PRS GEN3 stock (Black)",
	displayName = "PRS GEN3",
	displayType = DISPLAYTYPE,
	description = "The Magpul Precision Rifle/Sniper GEN3 is a field precision stock for AR-15/M16 and AR-10/SR-25 platforms. Featuring tool-less length of pull and cheek piece height adjustments via aluminum detent knobs, the PRS GEN3 stock provides a stable interface intended for semi-automatic sniper or varmint rifles. Black version.",
	weight = 0.7,
	value = 39330,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("gen3_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_prsgen3g"] = {
	fullName = "Magpul PRS GEN3 stock (Grey)",
	displayName = "PRS GEN3",
	displayType = DISPLAYTYPE,
	description = "The Magpul Precision Rifle/Sniper GEN3 is a field precision stock for AR-15/M16 and AR-10/SR-25 platforms. Featuring tool-less length of pull and cheek piece height adjustments via aluminum detent knobs, the PRS GEN3 stock provides a stable interface intended for semi-automatic sniper or varmint rifles. Grey version.",
	weight = 0.7,
	value = 39330,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("gen3_g.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_ripstop"] = {
	fullName = "CMMG RipStock buttstock",
	displayName = "RipStock",
	displayType = DISPLAYTYPE,
	description = "The RipStock minimalistic telescopic buttstock, engineered for lightning-fast deployment to the users personal setting. Manufactured by CMMG.",
	weight = 0.2,
	value = 10020,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ripstop.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_sba3"] = {
	fullName = "SB Tactical SBA3 brace",
	displayName = "SBA3",
	displayType = DISPLAYTYPE,
	description = "The SBA3 Pistol Stabilizing Brace, designed and manufactured by SB Tactical. Installed on AR-15 weapon systems.",
	weight = 0.2,
	value = 9990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sba3.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_slim"] = {
	fullName = "AR-15 HK Slim Line buttstock",
	displayName = "Slim Line",
	displayType = DISPLAYTYPE,
	description = "A telescoping stock from the Slim Line series, designed and manufactured by Heckler & Koch.",
	weight = 0.2,
	value = 11010,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("slim.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_sopmod"] = {
	fullName = "LMT SOPMOD stock",
	displayName = "SOPMOD",
	displayType = DISPLAYTYPE,
	description = "A telescoping stock manufactured by LMT Defense. Part of SOPMOD Block 0.",
	weight = 0.1,
	value = 5400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sopmod.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_vipermod1"] = {
	fullName = "Strike Industries Viper Mod 1 stock",
	displayName = "Viper Mod.1",
	displayType = DISPLAYTYPE,
	description = "The Viper Mod 1 telescopic stock designed and produced by Strike Industries. The stock is made for the AR-15 platforms and will fit on all Mil-Spec dimension receiver extension tubes. The stock has been redesigned to achieve a lighter and a more compact design.",
	weight = 0.2,
	value = 21010,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vmod1.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_axmc_stock"] = {
	fullName = "AI AXMC AX buttstock",
	displayName = "AXMC",
	displayType = DISPLAYTYPE,
	description = "The AX buttstock for the AXMC sniper rifle, manufactured by Accuracy International.",
	weight = 0.5,
	value = 3800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("axmc_ax.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_dd_buttpad_14"] = {
	fullName = "Daniel Defense TCS 12mm Buttpad",
	displayName = "TCS 12",
	displayType = DISPLAYTYPE,
	description = "The 12mm Thicker Convex Shape Buttpad for Daniel Defense buttstocks. Manufactured by Daniel Defense.",
	weight = 0.05,
	value = 9465,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("dd_buttpad_12.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_dd_buttpad_20"] = {
	fullName = "Daniel Defense TCS 20mm Buttpad",
	displayName = "TCS 20",
	displayType = DISPLAYTYPE,
	description = "The 20mm Thicker Convex Shape Buttpad for Daniel Defense buttstocks. Manufactured by Daniel Defense.",
	weight = 0.05,
	value = 13455,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("dd_buttpad_20.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_dvl10_stock_std"] = {
	fullName = "DVL-10 Lobaev Arms stock",
	displayName = "DVL-10 stock",
	displayType = DISPLAYTYPE,
	description = "A standard-issue universal stock for sniper rifles manufactured by Lobaev Arms.",
	weight = 0.1,
	value = 5390,
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

EFGM.ITEMS["arc9_att_eft_g28_buffer_std"] = {
	fullName = "HK G28 buffer tube",
	displayName = "G28",
	displayType = DISPLAYTYPE,
	description = "A receiver extension buffer tube for installation of Mil-Spec buttstocks, fits both HK417 and G28.",
	weight = 0.1,
	value = 1360,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g28buffer.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g28_stock_adj"] = {
	fullName = "HK417 Adjustable Buttstock",
	displayName = "HK417 Adj.",
	displayType = DISPLAYTYPE,
	description = "An adjustable stock designed and manufactured by Heckler & Koch. This stock is fully adjustable for length of pull as well as the cheek height. Features a mount for installation of a cheek rest.",
	weight = 0.9,
	value = 12705,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("417adjustable.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g28_stock_cheek"] = {
	fullName = "HK Adjustable Buttstock cheek rest",
	displayName = "HK cheek",
	displayType = DISPLAYTYPE,
	description = "The HK adjustable stock cheek piece provides optimum versatility in use.",
	weight = 0.05,
	value = 6300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("417_rest.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g28_stock_e2"] = {
	fullName = "HK417 E2 buttstock",
	displayName = "HK417 E2",
	displayType = DISPLAYTYPE,
	description = "The E2 telescopic stock is designed as a replacement for standard HK417 stocks. Made of high-grade nylon fiber with a twist-off rubber butt pad and an ambidextrous sling attachment point. Can be installed on HK417/G28 weapon system buffer tubes. Manufactured by Heckler & Koch.",
	weight = 0.4,
	value = 9660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("e2buttstock.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_stock_buffer"] = {
	fullName = "HK G36 Tommy Built AR Stock Adapter",
	displayName = "Tommy AR",
	displayType = DISPLAYTYPE,
	description = "An adapter for installing AR style buttstocks to the G36 assault rifle. Manufactured by Tommy Built.",
	weight = 0.1,
	value = 7190,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36_tommy.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_stock_idz"] = {
	fullName = "HK G36 IDZ adjustable stock",
	displayName = "G36 IDZ",
	displayType = DISPLAYTYPE,
	description = "A polymer adjustable 4-position stock for the G36, manufactured by Heckler & Koch.",
	weight = 0.4,
	value = 11560,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36_idz.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_stock_idz_butt_cave"] = {
	fullName = "HK G36 IDZ Concave Buttpad",
	displayName = "IDZ Concave",
	displayType = DISPLAYTYPE,
	description = "A concave buttpad designed for installation on IDZ stocks for the G36 assault rifle. Manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 3245,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36_idz_concave.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_stock_idz_butt_vex"] = {
	fullName = "HK G36 IDZ Convex Buttpad",
	displayName = "IDZ Convex",
	displayType = DISPLAYTYPE,
	description = "An extended convex buttpad designed for installation on IDZ stocks for the G36 assault rifle. Manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 5220,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36_idz_convex.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_stock_kv"] = {
	fullName = "HK G36 KV adjustable stock",
	displayName = "G36 KV",
	displayType = DISPLAYTYPE,
	description = "A polymer adjustable 4-position stock for the G36, manufactured by Heckler & Koch.",
	weight = 0.9,
	value = 12500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36_kv.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_g36_stock_std"] = {
	fullName = "HK G36 polymer stock",
	displayName = "G36",
	displayType = DISPLAYTYPE,
	description = "A polymer stock for the G36, manufactured by Heckler & Koch.",
	weight = 0.4,
	value = 8020,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("g36_polymer.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_grip_ak_cqr47"] = {
	fullName = "AKM/AK-74 Hera Arms CQR47 pistol grip/buttstock",
	displayName = "CQR47",
	displayType = DISPLAYTYPE,
	description = "Designed for both the civilian market and military use. The CQR47 stock can be easily mounted in place of the standard attachment of the AK/AKM non-folding stock. Manufactured by Hera Arms.",
	weight = 0.5,
	value = 26715,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_cqr47.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ks23_stock_steel"] = {
	fullName = "KS-23M wire stock",
	displayName = "KS23M steel",
	displayType = DISPLAYTYPE,
	description = "A steel wired stock for the KS-23M shotgun, manufactured by TOZ.",
	weight = 0.2,
	value = 1995,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ks23_wire.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ks23_stock_wood"] = {
	fullName = "KS-23 wooden stock",
	displayName = "KS23 wood",
	displayType = DISPLAYTYPE,
	description = "A wooden stock for the KS-23 shotgun with a rubber butt-plate.",
	weight = 0.4,
	value = 1265,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ks23_wood.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_stock_sage_stock"] = {
	fullName = "M14 SAGE International M14ALCS (MOD-0) stock",
	displayName = "M14ALCS stock",
	displayType = DISPLAYTYPE,
	description = "The M14ALCS (MOD-0) stock for M14 rifles from the Enhanced Battle Rifle (EBR) kit, manufactured by SAGE International.",
	weight = 1,
	value = 11975,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m14_mod0.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m1a_stock_std"] = {
	fullName = "M1A SOCOM 16 stock",
	displayName = "SOCOM 16",
	displayType = DISPLAYTYPE,
	description = "The SOCOM 16 polymer stock for M1A rifles, manufactured by Springfield Armory.",
	weight = 1,
	value = 15440,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m14_socom.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m249_stock_buffer"] = {
	fullName = "M249 Custom Buffer Tube",
	displayName = "M249 Buffer",
	displayType = DISPLAYTYPE,
	description = "A custom buffer tube for the M249 to allow mounting of AR-15 style stocks.",
	weight = 0.2,
	value = 2150,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m249_tube.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m249_stock_moe"] = {
	fullName = "AR-15 Magpul MOE Custom Carbine Stock",
	displayName = "MOE Chk.",
	displayType = DISPLAYTYPE,
	description = "A customized Magpul MOE Carbine stock with cheek rest. For use with the M249 SAW.",
	weight = 0.2,
	value = 11240,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m249_moe.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m249_stock_para"] = {
	fullName = "M249 Paratrooper Adjustable Stock",
	displayName = "M249 Para.",
	displayType = DISPLAYTYPE,
	description = "Shortened ergonomic buttstock for the M249 5.56x45mm light machinegun designed for airborne and close quarters combat operations.",
	weight = 0.9,
	value = 9500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m249_para.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m249_stock_solid"] = {
	fullName = "M249 Polymer Stock",
	displayName = "M249 Poly",
	displayType = DISPLAYTYPE,
	description = "Standard polymer stock for the M249 5.56x45mm light machinegun.",
	weight = 1.5,
	value = 8795,
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

EFGM.ITEMS["arc9_att_eft_m3s90_stock_std"] = {
	fullName = "Benelli M3 telescopic stock",
	displayName = "M3 tel.",
	displayType = DISPLAYTYPE,
	description = "An adjustable stock for M3 S90 shotguns, manufactured by Benelli.",
	weight = 0.8,
	value = 2990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m3_tele.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m3s90_stock_urba"] = {
	fullName = "Benelli M3 Mesa Tactical Urbino stock",
	displayName = "M3 Urbino",
	displayType = DISPLAYTYPE,
	description = "The Urbino fixed-length stock with a pistol grip for the Benelli M3 S90 shotgun manufactured by Mesa Tactical.",
	weight = 1,
	value = 6890,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m3_mesa.png"),

	sizeX = 2,
	sizeY = 2,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m590_stock_leo"] = {
	fullName = "Mossberg 590A1 Mesa Tactical LEO gen.1 stock adapter",
	displayName = "Mesa LEO",
	displayType = DISPLAYTYPE,
	description = "Mesa Tactical’s Telescoping Stock Conversion Kit replaces the standard buttstock with an adapter that accepts AR style collapsible stocks and pistol grips.",
	weight = 0.3,
	value = 2600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("590_mesa.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m590_stock_sga"] = {
	fullName = "Mossberg 590A1 Magpul SGA stock",
	displayName = "Magpul SGA",
	displayType = DISPLAYTYPE,
	description = "An ergonomic polymer stock for the Mossberg 590A1 shotgun with a rubber butt-plate, manufactured by Magpul.",
	weight = 0.7,
	value = 8825,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("590_sga.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m590_stock_std"] = {
	fullName = "Mossberg 590A1 polymer stock",
	displayName = "590 stock",
	displayType = DISPLAYTYPE,
	description = "A classical-looking polymer stock for Mossberg 590A1 shotguns with a rubber butt-plate.",
	weight = 0.6,
	value = 1300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("590_polymer.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m60_stock_e4"] = {
	fullName = "M60E4 buttstock",
	displayName = "M60E4 butt.",
	displayType = DISPLAYTYPE,
	description = "A lightweight buttstock for the M60E4 light machine gun with articulated shoulder rest and improved buffer mounting mechanism. Manufactured by U.S. Ordnance.",
	weight = 0.3,
	value = 7050,
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

EFGM.ITEMS["arc9_att_eft_m60_stock_e6"] = {
	fullName = "M60E6 buttstock",
	displayName = "M60E6 butt.",
	displayType = DISPLAYTYPE,
	description = "A lightweight buttstock for the M60E6 light machine gun with articulated shoulder rest and improved buffer mounting mechanism. Manufactured by U.S. Ordnance.",
	weight = 0.2,
	value = 9405,
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

EFGM.ITEMS["arc9_att_eft_m60_stock_e6_fde"] = {
	fullName = "M60E6 buttstock (FDE)",
	displayName = "M60E4 butt. (F)",
	displayType = DISPLAYTYPE,
	description = "A lightweight buttstock for the M60E6 light machine gun with articulated shoulder rest and improved buffer mounting mechanism. Manufactured by U.S. Ordnance. Flat Dark Earth version.",
	weight = 0.2,
	value = 9405,
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

EFGM.ITEMS["arc9_att_eft_m700_buffer_adap_gen3"] = {
	fullName = "M700 AB Arms MOD*X buffer tube side folder adapter",
	displayName = "MOD*X buffer",
	displayType = DISPLAYTYPE,
	description = "A foldable adapter for installation of telescopic stock buffer tubes on the Remington M700 MOD*X kit by AB Arms.",
	weight = 0.1,
	value = 4700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700modxfolder.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_buffer_adap_gen3_blk"] = {
	fullName = "M700 AB Arms MOD*X buffer tube side folder adapter",
	displayName = "MOD*X buffer",
	displayType = DISPLAYTYPE,
	description = "A foldable adapter for installation of telescopic stock buffer tubes on the Remington M700 MOD*X kit by AB Arms.",
	weight = 0.1,
	value = 4700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700modxfolder_blk.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_pro700_folding"] = {
	fullName = "M700 Magpul Pro 700 folding stock",
	displayName = "Pro 700",
	displayType = DISPLAYTYPE,
	description = "A folding stock for the Pro 700 chasiss for the Remington M700 sniper rifle, manufactured by Magpul.",
	weight = 0.4,
	value = 5405,
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

EFGM.ITEMS["arc9_att_eft_m700_stock_hogue"] = {
	fullName = "M700 Hogue Overmolded Ghillie stock",
	displayName = "Overmolded Ghillie",
	displayType = DISPLAYTYPE,
	description = "The Overmolded Ghillie stock for the Remington Model 700 bolt-action sniper rifle. Manufactured by Hogue.",
	weight = 1.8,
	value = 5790,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700hogue.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_stock_hogue_blk"] = {
	fullName = "M700 Hogue Overmolded Ghillie stock",
	displayName = "Overmolded Ghillie",
	displayType = DISPLAYTYPE,
	description = "The Overmolded Ghillie stock for the Remington Model 700 bolt-action sniper rifle. Manufactured by Hogue.",
	weight = 1.8,
	value = 5790,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700hogue_blk.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_stock_hogue_green"] = {
	fullName = "M700 Hogue Overmolded Ghillie stock",
	displayName = "Overmolded Ghillie",
	displayType = DISPLAYTYPE,
	description = "The Overmolded Ghillie stock for the Remington Model 700 bolt-action sniper rifle. Manufactured by Hogue.",
	weight = 1.8,
	value = 5790,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700hogue_g.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m700_stock_hogue_wht"] = {
	fullName = "M700 Hogue Overmolded Ghillie stock",
	displayName = "Overmolded Ghillie",
	displayType = DISPLAYTYPE,
	description = "The Overmolded Ghillie stock for the Remington Model 700 bolt-action sniper rifle. Manufactured by Hogue.",
	weight = 1.8,
	value = 5790,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m700hogue_w.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m870_stock_agr_tube"] = {
	fullName = "FAB Defense buffer tube for AGR-870",
	displayName = "AGR-870 tube",
	displayType = DISPLAYTYPE,
	description = "The FAB Defense 4-position buffer tube, made to fit the AGR-870 pistol grip.",
	weight = 0.2,
	value = 1230,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("agr870.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m870_stock_leo"] = {
	fullName = "M870 Mesa Tactical LEO stock adapter",
	displayName = "M870 LEO",
	displayType = DISPLAYTYPE,
	description = "Mesa Tactical’s Telescoping Stock Conversion Kit replaces the standard buttstock with an adapter that accepts AR style collapsible stocks and pistol grips.",
	weight = 0.4,
	value = 2510,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m870_leo.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m870_stock_raptor"] = {
	fullName = "M870 Shockwave Raptor grip",
	displayName = "870 Raptor",
	displayType = DISPLAYTYPE,
	description = "A short polymer grip for the Remington Model 870 shotgun manufactured by Shockwave Technologies.",
	weight = 0.2,
	value = 2500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m870_shockwave.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m870_stock_sga"] = {
	fullName = "M870 Magpul SGA polymer stock",
	displayName = "M870 SGA",
	displayType = DISPLAYTYPE,
	description = "An ergonomic polymer stock for the Remington Model 870 shotgun with a rubber butt-plate, manufactured by Magpul.",
	weight = 0.7,
	value = 8925,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m870_sga.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_m870_stock_sps"] = {
	fullName = "M870 SPS polymer stock",
	displayName = "M870 SPS",
	displayType = DISPLAYTYPE,
	description = "A classical-looking polymer stock for the Remington Model 870 shotgun, equipped with a rubber butt-pad. Manufactured by Remington.",
	weight = 0.6,
	value = 1440,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("m870_sps.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mcx_stock_adap"] = {
	fullName = "MPX/MCX retractable stock pipe adapter",
	displayName = "MPX/MCX",
	displayType = DISPLAYTYPE,
	description = "An adapter for attaching telescopic tube stocks to the rail mount, manufactured by SIG Sauer.",
	weight = 0.2,
	value = 4280,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx_knuckle.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mcx_stock_brace"] = {
	fullName = "MPX/MCX SB Tactical Pistol Stabilizing Brace",
	displayName = "MPX brace",
	displayType = DISPLAYTYPE,
	description = "A telescopic retractable brace stock for MCX/MPX manufactured by SB Tactical.",
	weight = 0.4,
	value = 6460,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx_brace.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mcx_stock_colap"] = {
	fullName = "MPX/MCX collapsing/telescoping stock",
	displayName = "MPX/MCX",
	displayType = DISPLAYTYPE,
	description = "A telescopic retractable stock for early issues of MCX/MPX manufactured by SIG Sauer.",
	weight = 0.4,
	value = 3825,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx_tele.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mcx_stock_cqb"] = {
	fullName = "MPX/MCX Maxim Defense CQB telescoping stock",
	displayName = "MPX/MCX CQB",
	displayType = DISPLAYTYPE,
	description = "A telescopic retractable CQB stock for MPX/MCX weapons, manufactured by Maxim Defense.",
	weight = 0.5,
	value = 5090,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx_maxim.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mcx_stock_hinge"] = {
	fullName = "MCX/MPX Stock Locking Hinge Assembly",
	displayName = "MPX/MCX",
	displayType = DISPLAYTYPE,
	description = "A folding stock adapter for SIG rifles and SMGs. Manufactured by SIG Sauer.",
	weight = 0.2,
	value = 4645,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx_hinge.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mcx_stock_light"] = {
	fullName = "MPX/MCX lightweight stock",
	displayName = "MPX/MCX light",
	displayType = DISPLAYTYPE,
	description = "A thin and lightweight stock for MCX/MPX manufactured by SIG Sauer.",
	weight = 0.3,
	value = 7930,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx_light.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mcx_stock_tele"] = {
	fullName = "MPX/MCX telescoping stock",
	displayName = "MPX/MCX tele",
	displayType = DISPLAYTYPE,
	description = "A telescopic stock for MPX/MCX manufactured by SIG Sauer.",
	weight = 0.3,
	value = 4845,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx_tfs.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mcx_stock_ucs"] = {
	fullName = "Magpul UCS buttstock (Black)",
	displayName = "UCS",
	displayType = DISPLAYTYPE,
	description = "A telescopic buttstock designed for installation on 1913 Picatinny rails. Manufactured by Magpul. Black version.",
	weight = 0.5,
	value = 22700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ucs.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mcx_stock_ucs_fde"] = {
	fullName = "Magpul UCS buttstock (FDE)",
	displayName = "UCS",
	displayType = DISPLAYTYPE,
	description = "A telescopic buttstock designed for installation on 1913 Picatinny rails. Manufactured by Magpul. Flat Dark Earth version.",
	weight = 0.5,
	value = 22700,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ucs_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mcx_stock_ulss"] = {
	fullName = "MPX/MCX PMM ULSS foldable stock",
	displayName = "ULSS",
	displayType = DISPLAYTYPE,
	description = "ULSS (UltraLight Skeleton Stock) is a foldable stock for MCX/MPX manufactured by Parker Mountain Machine.",
	weight = 0.4,
	value = 8330,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mcx_ulss.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_butt_aim"] = {
	fullName = "Mosin Rifle AIM Sports Recoil Pad",
	displayName = "Mosin RPad",
	displayType = DISPLAYTYPE,
	description = "A rubberized recoil pad for the Mosin rifle. Produced by AIM Sports.",
	weight = 0.2,
	value = 4090,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_aim_pad.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_stock_carbine"] = {
	fullName = "Mosin Rifle carbine stock",
	displayName = "Mosin carbine",
	displayType = DISPLAYTYPE,
	description = "A wooden stock for the Mosin carbine.",
	weight = 1.6,
	value = 3400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_carbine.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_stock_inf"] = {
	fullName = "Mosin Rifle Infantry stock",
	displayName = "Mosin inf. stock",
	displayType = DISPLAYTYPE,
	description = "An infantry wooden stock for the Mosin rifle.",
	weight = 1.8,
	value = 2300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_inf.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_stock_sawnoff"] = {
	fullName = "Mosin Rifle sawn-off stock",
	displayName = "Mosin sawn-off",
	displayType = DISPLAYTYPE,
	description = "A sawn-off wooden stock for the Mosin rifle. Compact and deadly.",
	weight = 0.8,
	value = 1500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_sawn.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_stock_sawnoff_sniper"] = {
	fullName = "Mosin Rifle sawn-off sniper stock",
	displayName = "Mosin sawn-off sniper",
	displayType = DISPLAYTYPE,
	description = "A sawn-off wooden sniper stock for the Mosin rifle. Compact and deadly.",
	weight = 0.8,
	value = 1540,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_sawn_sniper.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_stock_sniper_carbine"] = {
	fullName = "Mosin Rifle sniper carbine stock",
	displayName = "Mosin sniper carbine",
	displayType = DISPLAYTYPE,
	description = "A wooden stock for the sniper version of the Mosin rifle.",
	weight = 1.5,
	value = 3750,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin_sniper.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mosin_stock_std"] = {
	fullName = "Mosin Rifle standard stock",
	displayName = "Mosin stock",
	displayType = DISPLAYTYPE,
	description = "A regular wooden stock for the Mosin rifle.",
	weight = 1.7,
	value = 1740,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mosin.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp18_stock_poly"] = {
	fullName = "MP-18 polymer stock",
	displayName = "MP18 poly",
	displayType = DISPLAYTYPE,
	description = "A polymer stock for MP-18 hunting rifles. Manufactured by IzhMekh.",
	weight = 0.5,
	value = 1675,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp18_poly.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp18_stock_wood"] = {
	fullName = "MP-18 wooden stock",
	displayName = "MP18 wood",
	displayType = DISPLAYTYPE,
	description = "A wooden stock for MP-18 hunting rifles. Manufactured by IzhMekh.",
	weight = 0.6,
	value = 1435,
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

EFGM.ITEMS["arc9_att_eft_mp5_stock_a2"] = {
	fullName = "HK MP5 A2 stock",
	displayName = "MP5 A2",
	displayType = DISPLAYTYPE,
	description = "A standard fixed stock for the MP5A2 submachine gun manufactured by Heckler & Koch.",
	weight = 0.4,
	value = 8220,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp5_a2.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp5_stock_a3"] = {
	fullName = "HK MP5 A3 old model stock",
	displayName = "MP5 A3",
	displayType = DISPLAYTYPE,
	description = "A standard retracable stock for old versions of MP5A3 submachine gun manufactured by Heckler & Koch.",
	weight = 0.7,
	value = 8945,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp5_a3.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp5_stock_cap"] = {
	fullName = "HK MP5 End Cap stock",
	displayName = "MP5 Cap",
	displayType = DISPLAYTYPE,
	description = "A buttstock with a sling swivel for MP5 SMGs. Manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 2325,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp5_cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp5_stock_capk"] = {
	fullName = "HK MP5K End Cap stock",
	displayName = "MP5K Cap",
	displayType = DISPLAYTYPE,
	description = "A buttstock with a sling swivel for MP5K SMGs. Manufactured by Heckler & Koch.",
	weight = 0.05,
	value = 1755,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp5k_cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp7_stock_a1"] = {
	fullName = "HK MP7A1 stock",
	displayName = "A1",
	displayType = DISPLAYTYPE,
	description = "A standard-issue retractable stock for the MP7A1 submachine gun. Manufactured by Heckler & Koch.",
	weight = 0.2,
	value = 2100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp7_a1.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp7_stock_a2"] = {
	fullName = "HK MP7A2 stock",
	displayName = "A2",
	displayType = DISPLAYTYPE,
	description = "A standard-issue retractable stock for the MP7A2 submachine gun. Manufactured by Heckler & Koch.",
	weight = 0.2,
	value = 2100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp7_a2.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp7_stock_fd_ars"] = {
	fullName = "HK MP7 FAB Defense ARS stock adapter",
	displayName = "ARS",
	displayType = DISPLAYTYPE,
	description = "An adapter for HK MP7 submachine guns designed for installation of ARS type buttstocks. Manufactured by FAB Defense.",
	weight = 0.3,
	value = 28000,
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

EFGM.ITEMS["arc9_att_eft_mp7_stock_fd_fx_kpos"] = {
	fullName = "FAB Defense FX-KPOS ARS stock",
	displayName = "ARS",
	displayType = DISPLAYTYPE,
	description = "A telescoping buttstock designed for use with gas masks or helmet visors and mandibles. Manufactured by FAB Defense.",
	weight = 0.2,
	value = 37660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("items/missing.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mp9_stockk"] = {
	fullName = "MP9 stock",
	displayName = "MP9",
	displayType = DISPLAYTYPE,
	description = "A standard-issue foldable stock for the MP9 SMG. Manufactured by Brügger & Thomet.",
	weight = 0.1,
	value = 3000,
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

EFGM.ITEMS["arc9_att_eft_mr133_stock_adap"] = {
	fullName = "MP-133/153 Taktika Tula 12003 stock adapter",
	displayName = "TT 12003",
	displayType = DISPLAYTYPE,
	description = "The Taktika Tula 12003 stock adapter designed for mounting various FAB Defense stocks on MP-133/153 shotguns.",
	weight = 0.05,
	value = 2520,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp133_taktika.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr133_stock_pistol"] = {
	fullName = "MP-133/153 plastic pistol grip",
	displayName = "MP-133/153 pistol",
	displayType = DISPLAYTYPE,
	description = "A plastic pistol grip for MP-133 and MP-153 shotguns to replace the standard stock, manufactured by Izhmekh.",
	weight = 0.1,
	value = 6835,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp133_pistol.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr133_stock_plastic"] = {
	fullName = "MP-133/153 plastic stock",
	displayName = "MP-133/153 plastic",
	displayType = DISPLAYTYPE,
	description = "A plastic stock for MP-133 and MP-153 shotguns with a rubber butt-plate manufactured by Izhmekh.",
	weight = 0.5,
	value = 1180,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp133_plastic.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr133_stock_wood"] = {
	fullName = "MP-133/153 wooden stock",
	displayName = "MP-133/153 wood",
	displayType = DISPLAYTYPE,
	description = "A wooden stock for MP-133 and MP-153 shotguns with a rubber butt-plate manufactured by Izhmekh.",
	weight = 0.6,
	value = 900,
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

EFGM.ITEMS["arc9_att_eft_mr155_stock_std"] = {
	fullName = "MP-155 walnut stock",
	displayName = "MP-155 walnut",
	displayType = DISPLAYTYPE,
	description = "A Monte Carlo-style wooden walnut stock for MP-155 shotguns with a rubber butt-plate. Manufactured by Izhmekh.",
	weight = 0.6,
	value = 1000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp155_walnut.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr155_stock_ultima"] = {
	fullName = "MP-155 Ultima pistol grip",
	displayName = "Ultima grip",
	displayType = DISPLAYTYPE,
	description = 'The "Ultima" modification pistol grip for the MP-155 shotgun. Manufactured by Kalashnikov Group.',
	weight = 0.1,
	value = 2815,
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

EFGM.ITEMS["arc9_att_eft_mr155_stock_ultima_cap"] = {
	fullName = "MP-155 Ultima pistol grip rubber pad",
	displayName = "Ultima pad",
	displayType = DISPLAYTYPE,
	description = 'The "Ultima" modification ergonomical rubber pad for the MP-155 pistol grip. Manufactured by Kalashnikov Group.',
	weight = 0.05,
	value = 1550,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp155_ultima_pad.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr155_stock_ultima_padl"] = {
	fullName = "MP-155 Ultima large recoil pad",
	displayName = "Ultima large",
	displayType = DISPLAYTYPE,
	description = 'The "Ultima" modification large rubber recoil butt-pad for the MP-155 shotgun. Manufactured by Kalashnikov Group.',
	weight = 0.3,
	value = 6540,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp155_ultima_pad_l.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr155_stock_ultima_padm"] = {
	fullName = "MP-155 Ultima medium recoil pad",
	displayName = "Ultima medium",
	displayType = DISPLAYTYPE,
	description = 'The "Ultima" modification medium rubber recoil butt-pad for the MP-155 shotgun. Manufactured by Kalashnikov Group.',
	weight = 0.2,
	value = 3390,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp155_ultima_pad_m.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr155_stock_ultima_pads"] = {
	fullName = "MP-155 Ultima thin recoil pad",
	displayName = "Ultima thin",
	displayType = DISPLAYTYPE,
	description = 'The "Ultima" modification small rubber recoil butt-pad for the MP-155 shotgun. Manufactured by Kalashnikov Group.',
	weight = 0.1,
	value = 2340,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp155_ultima_pad_t.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr155_stock_ultima_stock"] = {
	fullName = "MP-155 Ultima polymer stock",
	displayName = "Ultima stock",
	displayType = DISPLAYTYPE,
	description = 'The "Ultima" modification polymer stock for the MP-155 shotgun. Manufactured by Kalashnikov Group.',
	weight = 0.5,
	value = 3450,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp155_ultima_poly.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mr43_butt"] = {
	fullName = "MP-43-1C buttpad",
	displayName = "43-1C butt",
	displayType = DISPLAYTYPE,
	description = "A standard-issue buttpad for MP-43 shotguns.",
	weight = 0.1,
	value = 1260,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mp43_pad.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mts255_stock_std"] = {
	fullName = "MTs-255-12 wooden stock",
	displayName = "MTs-255-12",
	displayType = DISPLAYTYPE,
	description = "A standard wooden stock for the MTs-255-12 shotgun, manufactured by TsKIB.",
	weight = 0.4,
	value = 1105,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mts255_wood.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_stock_magpul"] = {
	fullName = "M1895/MXLR Magpul ELG stock",
	displayName = "ELG",
	displayType = DISPLAYTYPE,
	description = "A polymer stock for M1895 and compatibles. Manufactured by Magpul.",
	weight = 0.5,
	value = 7480,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr_elg.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_stock_magpul_fde"] = {
	fullName = "M1895/MXLR Magpul ELG stock (FDE)",
	displayName = "ELG",
	displayType = DISPLAYTYPE,
	description = "A polymer stock for M1895 rifles and compatibles. Manufactured by Magpul. Flat Dark Earth version.",
	weight = 0.5,
	value = 7480,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr_elg_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_stock_rpp"] = {
	fullName = "M1895/MXLR Ranger Point Precision aluminum stock",
	displayName = "RPP alu",
	displayType = DISPLAYTYPE,
	description = "An aluminum stock for M1895 rifles and compatibles. Manufactured by Ranger Point Precision.",
	weight = 0.6,
	value = 9450,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr_rpp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_stock_rpp_fde"] = {
	fullName = "M1895/MXLR Ranger Point Precision aluminum stock (FDE)",
	displayName = "RPP alu",
	displayType = DISPLAYTYPE,
	description = "An aluminum stock for M1895 rifles and compatibles. Manufactured by Ranger Point Precision. Flat Dark Earth version.",
	weight = 0.6,
	value = 9450,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr_rpp_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_stock_rpp_green"] = {
	fullName = "M1895/MXLR Ranger Point Precision aluminum stock (Green)",
	displayName = "RPP alu",
	displayType = DISPLAYTYPE,
	description = "An aluminum stock for M1895 rifles and compatibles. Manufactured by Ranger Point Precision. Green version.",
	weight = 0.6,
	value = 9450,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr_rpp_green.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_mxlr_stock_std"] = {
	fullName = "MXLR standard stock",
	displayName = "MXLR",
	displayType = DISPLAYTYPE,
	description = "A standard stock for the Marlin MXLR rifle.",
	weight = 0.5,
	value = 6000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mxlr.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_p90_butt_di"] = {
	fullName = "FN P90 Damage Industries buttpad",
	displayName = "P90 DI",
	displayType = DISPLAYTYPE,
	description = "An ergonomic butt-pad for the FN P90 SMG, also serves as the stock extension. Manufactured by Damage Industries.",
	weight = 0.1,
	value = 4150,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p90_di_pad.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_p90_butt_std"] = {
	fullName = "FN P90 buttpad",
	displayName = "P90 butt",
	displayType = DISPLAYTYPE,
	description = "A standard-issue butt-pad for the P90 SMG, produced by Fabrique Nationale Herstal.",
	weight = 0.05,
	value = 2990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p90_pad.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_p90_stock_std"] = {
	fullName = "FN P90 stock",
	displayName = "P90",
	displayType = DISPLAYTYPE,
	description = "A standard-issue polymer stock for the P90 SMG, manufactured by Fabrique Nationale Herstal.",
	weight = 0.4,
	value = 4660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("p90.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ppsh41_stock"] = {
	fullName = "PPSh-41 stock",
	displayName = "PPSh41",
	displayType = DISPLAYTYPE,
	description = "A standard-issue wooden stock for the PPSh-41 submachine gun.",
	weight = 1,
	value = 1270,
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

EFGM.ITEMS["arc9_att_eft_ps90_stock"] = {
	fullName = "FN PS90 stock",
	displayName = "PS90",
	displayType = DISPLAYTYPE,
	description = "A polymer stock for the civilian PS90 SMG variant. Manufactured by Fabrique Nationale Herstal.",
	weight = 0.4,
	value = 4660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ps90.png"),

	sizeX = 3,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rpd_stock"] = {
	fullName = "RPD wooden stock",
	displayName = "RPD wood",
	displayType = DISPLAYTYPE,
	description = "A standard-issue wooden stock for the RPD machine gun. Manufactured by V.A. Degtyarev Plant.",
	weight = 1.1,
	value = 4645,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rpd.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_rpk16_stock_tube"] = {
	fullName = "RPK-16 buffer tube",
	displayName = "RPK-16",
	displayType = DISPLAYTYPE,
	description = "A standard buffer tube for RPK-16 LMG, manufactured by Izhmash.",
	weight = 0.1,
	value = 2900,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("rpk_tube.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_stock_adap"] = {
	fullName = "SA-58 buffer tube adapter",
	displayName = "SA58 adpt.",
	displayType = DISPLAYTYPE,
	description = "An adapter for installation of telescopic stock buffer tubes on SA-58 rifles. Manufactured by DS Arms.",
	weight = 0.3,
	value = 2620,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_tube.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_stock_brs"] = {
	fullName = "SA-58 BRS stock",
	displayName = "SA58 BRS",
	displayType = DISPLAYTYPE,
	description = "The BRS (Battle Rifle Stock) buttstock for SA-58 assault rifles. Manufactured by DS Arms.",
	weight = 0.8,
	value = 16150,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_brs.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_stock_fold"] = {
	fullName = "SA-58 folding stock",
	displayName = "SA58 folding",
	displayType = DISPLAYTYPE,
	description = "A folding steel stock for SA-58 assault rifles. Manufactured by DS Arms.",
	weight = 0.7,
	value = 9245,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_fold.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_stock_hump"] = {
	fullName = "SA-58 humpback polymer stock",
	displayName = "SA58 Hump",
	displayType = DISPLAYTYPE,
	description = "A polymer humpback-style stock for SA-58 assault rifles. Manufactured by DS Arms.",
	weight = 0.8,
	value = 2040,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_hump.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_stock_magpul"] = {
	fullName = "SA-58/FAL Magpul PRS 2 polymer stock",
	displayName = "SA58/FAL PRS2",
	displayType = DISPLAYTYPE,
	description = "The PRS 2 polymer stock for FAL series rifles. Manufactured by Magpul.",
	weight = 0.9,
	value = 21710,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_prs.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sa58_stock_spr"] = {
	fullName = "SA-58 SPR stock",
	displayName = "SA58 SPR",
	displayType = DISPLAYTYPE,
	description = "A polymer stock from the SPR (Special Purpose Rifle) kit for SA-58 assault rifles, manufactured by DS Arms.",
	weight = 1,
	value = 23440,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sa58_spr.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sag545_buffertube"] = {
	fullName = "AK-545 SAG buffer tube",
	displayName = "SAG tube",
	displayType = DISPLAYTYPE,
	description = "Sureshot Armament Group Receiver Extension Buffer Tube, 6-position, Mil-Spec diameter, designed specifically for AK-545.",
	weight = 0.2,
	value = 5655,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak545_tube.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_saiga12_stock_std"] = {
	fullName = "SOK-12 AK-style stock",
	displayName = "SOK12 AK",
	displayType = DISPLAYTYPE,
	description = "A folding polymer AK-styled stock for SOK-12, manufactured by Izhmash.",
	weight = 0.3,
	value = 1220,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sok12_ak.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_stock_base"] = {
	fullName = "FN SCAR folding polymer stock",
	displayName = "SCAR fold.",
	displayType = DISPLAYTYPE,
	description = "A folding polymer stock for the SCAR-series rifles, manufactured by Fabrique Nationale Herstal.",
	weight = 0.3,
	value = 8030,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_fold.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_stock_base_buff"] = {
	fullName = "FN SCAR Vltor RE-SCAR Stock Adapter",
	displayName = "RE-SCAR",
	displayType = DISPLAYTYPE,
	description = "An adapter with a five-position tube for installing AR buttstocks, designed for FN SCAR rifles. Manufactured by Vltor.",
	weight = 0.3,
	value = 9735,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_vltor.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_stock_base_bufff"] = {
	fullName = "FN SCAR Vltor RE-SCAR Stock Adapter FDE",
	displayName = "RE-SCAR F",
	displayType = DISPLAYTYPE,
	description = "An adapter with a five-position tube for installing AR buttstocks, designed for FN SCAR rifles. Manufactured by Vltor. flat gark eath.",
	weight = 0.3,
	value = 9735,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_vltor_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_stock_base_f"] = {
	fullName = "FN SCAR folding polymer stock (FDE)",
	displayName = "SCAR fold. (F)",
	displayType = DISPLAYTYPE,
	description = "A folding polymer stock for the SCAR-series rifles, manufactured by Fabrique Nationale Herstal. Flat Dark Earth version.",
	weight = 0.3,
	value = 8030,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_fold_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_stock_base_rail"] = {
	fullName = "FN SCAR JMac Customs RSA-SCAR 1913 Adapter",
	displayName = "RSA-SCAR",
	displayType = DISPLAYTYPE,
	description = "An adapter for installing 1913 Picatinny buttstocks, designed for FN SCAR rifles. Manufactured by JMac Customs.",
	weight = 0.1,
	value = 4335,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_jmac.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_stock_cheeck"] = {
	fullName = "FN SCAR cheek rest",
	displayName = "SCAR cheek",
	displayType = DISPLAYTYPE,
	description = "A standard cheek rest that is installed on top of the FN SCAR polymer stock. Manufactured by Fabrique Nationale Herstal.",
	weight = 0.05,
	value = 2820,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_rest.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_stock_cheeck_f"] = {
	fullName = "FN SCAR cheek rest (FDE)",
	displayName = "SCAR cheek (F)",
	displayType = DISPLAYTYPE,
	description = "A standard cheek rest that is installed on top of the FN SCAR polymer stock. Manufactured by Fabrique Nationale Herstal. Flat Dark Earth version.",
	weight = 0.05,
	value = 2820,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_rest_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_stock_ext"] = {
	fullName = "FN SCAR retractable polymer stock",
	displayName = "SCAR retr.",
	displayType = DISPLAYTYPE,
	description = "A retractable polymer stock for the SCAR-series assault rifles, manufactured by Fabrique Nationale Herstal.",
	weight = 0.3,
	value = 11420,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_polymer.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_stock_ext_f"] = {
	fullName = "FN SCAR retractable polymer stock (FDE)",
	displayName = "SCAR retr. (F)",
	displayType = DISPLAYTYPE,
	description = "A retractable polymer stock for the SCAR-series assault rifles, manufactured by Fabrique Nationale Herstal. Flat Dark Earth version.",
	weight = 0.3,
	value = 11420,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_polymer_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_stock_ext_vss"] = {
	fullName = "FN SCAR Vltor VSS-11 polymer stock",
	displayName = "VSS-11",
	displayType = DISPLAYTYPE,
	description = "The VSS-11 telescopic polymer buttstock for SCAR series rifles, manufactured by Vltor.",
	weight = 0.2,
	value = 14965,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_vss.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_stock_ext_vssf"] = {
	fullName = "FN SCAR Vltor VSS-11 polymer stock FDE",
	displayName = "VSS-11 F",
	displayType = DISPLAYTYPE,
	description = "The VSS-11 telescopic polymer buttstock for SCAR series rifles, manufactured by Vltor. flat dark eath.",
	weight = 0.2,
	value = 14965,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_vss_fde.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scar_stock_pad"] = {
	fullName = "FN SCAR rubber buttpad",
	displayName = "SCAR pad",
	displayType = DISPLAYTYPE,
	description = "A rubber buttpad for the SCAR-series assault rifle polymer stocks, manufactured by Fabrique Nationale Herstal.",
	weight = 0.1,
	value = 3380,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("scar_pad.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_stock_fab_stock"] = {
	fullName = "SKS FAB Defense UAS buttstock",
	displayName = "UAS SKS",
	displayType = DISPLAYTYPE,
	description = "A lightweight polymer folding buttstock for the SKS carbine. Manufactured by FAB Defense.",
	weight = 0.4,
	value = 15990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sks_uas.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_stock_op"] = {
	fullName = "OP-SKS wooden stock",
	displayName = "OP-SKS Wood",
	displayType = DISPLAYTYPE,
	description = "A standard-issue wooden stock for OP-SKS carbines, manufactured by Molot Arms.",
	weight = 0.7,
	value = 1135,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("opsks_wood.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_stock_std"] = {
	fullName = "SKS TOZ wooden stock (56-A-231 Sb.5)",
	displayName = "56-A-231 Sb.5",
	displayType = DISPLAYTYPE,
	description = "A standard-issue wooden stock for the SKS carbine, manufactured by TOZ.",
	weight = 0.7,
	value = 1135,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sks_wood.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sks_stock_tapco_buffer"] = {
	fullName = "SKS TAPCO Intrafuse buffer tube",
	displayName = "SKS TAPCO",
	displayType = DISPLAYTYPE,
	description = "An AR-15-styled Mil-Spec buffer tube designed for the Intrafuse SKS stock system, manufactured by TAPCO.",
	weight = 0.2,
	value = 1675,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sks_tapco.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_spear_buffertube_ct"] = {
	fullName = "MCX/MPX folding stock adapter buffer tube (Coyote Tan)",
	displayName = "MCX/MPX",
	displayType = DISPLAYTYPE,
	description = "A buffer tube for the folding stock adapter for SIG AR platform rifles and SMGs. Manufactured by SIG Sauer. Coyote Tan version.",
	weight = 0.2,
	value = 1690,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("spear_tube.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_spear_buffertube_ct_blk"] = {
	fullName = "MCX/MPX folding stock adapter buffer tube (Black)",
	displayName = "MCX/MPX (B)",
	displayType = DISPLAYTYPE,
	description = "A buffer tube for the folding stock adapter for SIG AR platform rifles and SMGs. Manufactured by SIG Sauer.",
	weight = 0.2,
	value = 1690,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("spear_tube_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sr2m_stock_mp"] = {
	fullName = "SR-2MP folding stock",
	displayName = "SR-2MP",
	displayType = DISPLAYTYPE,
	description = "A folding stock for SR-2MP submachine gun, manufactured by TsNIItochmash. The buttstock has a spring-loaded butt plate which reduces the time it takes to shoulder the weapon.",
	weight = 0.2,
	value = 2290,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("sr2mp.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sr2m_stock_std"] = {
	fullName = "SR-2M folding stock",
	displayName = "SR-2M",
	displayType = DISPLAYTYPE,
	description = "A folding stock for SR-2M submachine gun, manufactured by TsNIItochmash. The buttstock has a spring-loaded butt plate which reduces the time it takes to shoulder the weapon.",
	weight = 0.2,
	value = 1825,
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

EFGM.ITEMS["arc9_att_eft_stock_ak100_skelet"] = {
	fullName = "AK 100-series metal skeletonized stock",
	displayName = "AK 100",
	displayType = DISPLAYTYPE,
	description = "A metal triangle stock for the 100-series AKs, manufactured by Izhmash.",
	weight = 0.3,
	value = 1885,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_100_metal.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_ak74_polymer"] = {
	fullName = "AK-74 polymer stock (6P20 Sb.7)",
	displayName = "6P20 Sb.7",
	displayType = DISPLAYTYPE,
	description = "A standard-issue wooden stock for AK-74 automatic rifles, manufactured by Izhmash.",
	weight = 0.3,
	value = 2250,
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

EFGM.ITEMS["arc9_att_eft_stock_ak74_polymer_plum"] = {
	fullName = 'AK-74 "Plum" polymer stock (6P20 Sb.7)',
	displayName = "6P20 Sb.7",
	displayType = DISPLAYTYPE,
	description = 'A polymer stock for AK-74 automatic rifles, manufactured by Izhmash. Made out of plum-colored polymer, for which has earned the nickname "Sliva" ("Plum").',
	weight = 0.3,
	value = 2250,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak74_plum.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_ak74_std"] = {
	fullName = "AK-74 wooden stock (6P20 Sb.5)",
	displayName = "6P20 Sb.5",
	displayType = DISPLAYTYPE,
	description = "A standard-issue wooden stock for AK-74 automatic rifles, manufactured by Izhmash.",
	weight = 0.4,
	value = 1865,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak74_wood.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_ak74m_caa_akts"] = {
	fullName = "AK-74M CAA AKTS AK74 buffer tube",
	displayName = "CAA AKTS",
	displayType = DISPLAYTYPE,
	description = "CAA Receiver Extension Buffer Tube, 6-position, Mil-Spec diameter will fit any modern AK-based rifles with side-folding stock.",
	weight = 0.2,
	value = 7200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("akts.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_ak74m_std"] = {
	fullName = "AK-74M polymer stock (6P34 Sb.15)",
	displayName = "6P34 Sb.15",
	displayType = DISPLAYTYPE,
	description = "A polymer stock for AK-74M automatic rifles, manufactured by Izhmash.",
	weight = 0.3,
	value = 1800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("6p34sb15.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_ak74m_zenit_lock"] = {
	fullName = "AK-74M/AK-100 Zenit PT Lock",
	displayName = "PT Lock",
	displayType = DISPLAYTYPE,
	description = "The lock is designed to install the PT-1 and PT-3 stocks to the weapon. This model is designed for installation on the AK-74M and AK-100-series assault rifles. Manufactured by Zenit.",
	weight = 0.05,
	value = 3120,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_100_lock.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_ak_aktom4"] = {
	fullName = "AKM/AK-74 RD AK to M4 buffer tube adapter",
	displayName = "AKtoM4",
	displayType = DISPLAYTYPE,
	description = "CAA Receiver Extension Buffer Tube, 6-position, Mil-Spec diameter will fit any AK-based rifles with a fixed stock.",
	weight = 0.2,
	value = 4200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_m4.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_ak_evo"] = {
	fullName = "AK AK-EVO stock",
	displayName = "AK-EVO",
	displayType = DISPLAYTYPE,
	description = "A new polymer buttstock for the modern AK platform folding weapons. Manufactured by Kalashnikov Concern.",
	weight = 0.4,
	value = 16915,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_evo.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_ak_pad"] = {
	fullName = "AK GP-25 accessory kit recoil pad",
	displayName = "GP-25",
	displayType = DISPLAYTYPE,
	description = 'Recoil pad from the standard accessories kit of GP-25 under-barrel grenade launcher for AK, also known as the "Overshoe". Despite its original purpose, it can be installed on many AK models for recoil damping and thus made it into common use.',
	weight = 0.1,
	value = 4050,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("gp25.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_ak_pad_stef"] = {
	fullName = "AK Custom Arms ST-EF 74 skeleton stock extension",
	displayName = "ST-EF",
	displayType = DISPLAYTYPE,
	description = "A buttpad that extends the length of the standard metal frame folding buttstock of the AK-platform weapons. The advantage of this extension is that the width of the pad is equal to the width of the AK-100 series plastic pad. The buttpad adds comfort when shooting and reduces the recoil effect. Manufactured by Custom Arms.",
	weight = 0.05,
	value = 6315,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_stef.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_ak_skelet_cust"] = {
	fullName = "AK skeletonized stock (Customized)",
	displayName = "Med Stock",
	displayType = DISPLAYTYPE,
	description = "A metal skeleton stock equipped with a bandage and Esmarch tourniquet, the use of which, when carried this way, has been the subject of much debate and is still in question. A true old school.",
	weight = 0.3,
	value = 5555,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_med.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_akm_aa47"] = {
	fullName = "AKM/AK-74 ProMag Archangel OPFOR AA47 buttstock",
	displayName = "OPFOR AA47",
	displayType = DISPLAYTYPE,
	description = "The OPFOR AA47 stock from the Archangel kit for AKM/AK-74-type non-folding weapon systems. Manufactured by ProMag.",
	weight = 0.4,
	value = 19300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_opfor.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_akm_akts"] = {
	fullName = "AKM/AK-74 CAA AKTS AK buffer tube",
	displayName = "AKTS AK",
	displayType = DISPLAYTYPE,
	description = "CAA Receiver Extension Buffer Tube, 6-position, Mil-Spec diameter will fit any AK-based rifles with a fixed stock.",
	weight = 0.2,
	value = 6500,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_akts.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_akm_fabd_uas"] = {
	fullName = "AKM/AK-74 FAB Defense UAS stock",
	displayName = "UAS AK",
	displayType = DISPLAYTYPE,
	description = "The UAS stock for AKM/AK74-type non-folding assault rifles. Manufactured by FAB Defense.",
	weight = 0.4,
	value = 17140,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_uas.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_akm_kocherga"] = {
	fullName = 'AKM/AK-74 Hexagon "Kocherga" stock (Anodized Red)',
	displayName = "Kocherga AR",
	displayType = DISPLAYTYPE,
	description = 'The "Kocherga" lightweight stock for AKM/AK-74-type non-folding automatic rifles, manufactured by Hexagon.',
	weight = 0.1,
	value = 36200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("kocherga.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_akm_kocherga_blk"] = {
	fullName = 'AKM/AK-74 Hexagon "Kocherga" stock (Black)',
	displayName = "Kocherga BLK",
	displayType = DISPLAYTYPE,
	description = 'The "Kocherga" lightweight stock for AKM/AK-74-type non-folding automatic rifles, manufactured by Hexagon.',
	weight = 0.1,
	value = 36200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("kocherga_blk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_akm_me4"] = {
	fullName = "AKM/AK-74 ME4 buffer tube adapter",
	displayName = "ME4",
	displayType = DISPLAYTYPE,
	description = "An adapter for the installation of telescopic stock buffer tubes on AKs with non-folding stocks.",
	weight = 0.3,
	value = 5800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_me4.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_akm_pt_lock"] = {
	fullName = "AKM/AK-74 Zenit PT Lock",
	displayName = "PT AKM",
	displayType = DISPLAYTYPE,
	description = "The lock is designed to install the PT-1 and PT-3 stocks to the weapon. This model is designed for installation on the AKM and AK-74 non-folding assault rifles. Manufactured by Zenit.",
	weight = 0.05,
	value = 3665,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("akm_lock.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_akm_std"] = {
	fullName = "AKM wooden stock (6P1 Sb.5)",
	displayName = "6P1 Sb.5",
	displayType = DISPLAYTYPE,
	description = "A standard-issue wooden stock for AKM automatic rifles, manufactured by Izhmash.",
	weight = 0.4,
	value = 1535,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("akm_wood.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_akm_zhu_s"] = {
	fullName = "AKM/AK-74 Magpul Zhukov-S stock",
	displayName = "Zhukov-S",
	displayType = DISPLAYTYPE,
	description = "The Zhukov-S stock, designed for installation on AKM/AK-74-type non-folding assault rifles. Manufactured by Magpul.",
	weight = 0.4,
	value = 24805,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("akm_zhukov.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_akms"] = {
	fullName = "AKMS shoulder piece",
	displayName = "6P4 Sb.1-19",
	displayType = DISPLAYTYPE,
	description = "Izhmash-produced folding shoulder piece assembly for AKMS.",
	weight = 0.6,
	value = 1035,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("akms.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_akms_fab"] = {
	fullName = "AKMS FAB Defense M4-AKMS P stock adapter",
	displayName = "FAB AKMS",
	displayType = DISPLAYTYPE,
	description = "A buttstock adapter for the AKMS automatic rifle. Allows to install Com-Spec and Mil-Spec buttstocks on the weapon. Made of durable anodized aluminum. Manufactured by FAB Defense.",
	weight = 0.4,
	value = 2260,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("akms_fab.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_akmsn"] = {
	fullName = "AKMSN shoulder piece",
	displayName = "6P4N Sb.1-19",
	displayType = DISPLAYTYPE,
	description = "Izhmash-produced folding shoulder piece assembly for AKMSN.",
	weight = 0.6,
	value = 930,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("akmsn.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_aks74_std"] = {
	fullName = "AKS-74 metal skeleton stock",
	displayName = "6P21 Sb.5",
	displayType = DISPLAYTYPE,
	description = "A standard-issue metal skeleton stock for AKS-74U, AKS-74UN, and AKS-74UB, manufactured by Izhmash.",
	weight = 0.3,
	value = 1200,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aks74_metal.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_aks_zenit_lock"] = {
	fullName = "AKS-74/AKS-74U Zenit PT Lock",
	displayName = "PT Lock 74S",
	displayType = DISPLAYTYPE,
	description = "The lock is designed to install the PT-1 and PT-3 stocks to the weapon. This model is designed for installation on the AKS-74 and AKS-74U folding assault rifles. Manufactured by Zenit.",
	weight = 0.05,
	value = 3710,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("aks74_lock.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_g17_glr17"] = {
	fullName = "Glock FAB Defense GLR-17 stock",
	displayName = "GLR-17",
	displayType = DISPLAYTYPE,
	description = "The GLR-17 telescoping buttstock, manufactured by FAB Defense. Designed to fit Glock-family pistols.",
	weight = 0.4,
	value = 10580,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("glock_glr.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_pkm_pl"] = {
	fullName = "PKP polymer stock",
	displayName = "PKP",
	displayType = DISPLAYTYPE,
	description = 'A standard-issue stock for PKP "Pecheneg" machine gun. Manufactured by V.A. Degtyarev Plant.',
	weight = 0.5,
	value = 7820,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pkp_poly.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_pkm_wood"] = {
	fullName = "PKM wooden stock",
	displayName = "PKM",
	displayType = DISPLAYTYPE,
	description = "A standard-issue wooden stock for Kalashnikov Machine gun. Manufactured by V.A. Degtyarev Plant.",
	weight = 0.6,
	value = 2015,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pkm_wood.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_pkm_zenit"] = {
	fullName = 'PK Zenit PT-2 "Klassika" stock',
	displayName = "PT-2",
	displayType = DISPLAYTYPE,
	description = "The PT-2 telescopic stock made of aluminum alloy D16T replaces the standard PK stock, has a length adjustment mechanism and height adjustable cheek. Manufactured by Zenit.",
	weight = 0.6,
	value = 21245,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("pkm_zenit.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_toz106_full"] = {
	fullName = "MTs 20-01 stock",
	displayName = "MTs 20-01",
	displayType = DISPLAYTYPE,
	description = "A standard stock for MTs 20-01 hunting rifles, but can be also installed on various different shotguns including the bolt-action TOZ-106.",
	weight = 1.2,
	value = 2570,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("mts_20.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_toz106_gpcp"] = {
	fullName = "TOZ-106 FAB Defense GPCP cheek rest",
	displayName = "GPCP",
	displayType = DISPLAYTYPE,
	description = "A stripped-down version of the FAB Defense GPCP cheek pad for the TOZ-106 folding stock.",
	weight = 0.1,
	value = 1365,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("toz_gpcp.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_toz106_mosin"] = {
	fullName = "TOZ-106 custom cut Mosin stock",
	displayName = "TOZ106 Mosin",
	displayType = DISPLAYTYPE,
	description = 'A custom-made stock for the TOZ-106 hunting shotgun, made from the Mosin rifle stock base. It was made by ancient Russian dark magic called "Napiling".',
	weight = 1.3,
	value = 4990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("toz_mosin.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_toz106_std"] = {
	fullName = "TOZ-106 stock",
	displayName = "TOZ106",
	displayType = DISPLAYTYPE,
	description = "A standard-issue stock with a folding shoulder piece for the TOZ-106 hunting shotgun.",
	weight = 1.2,
	value = 600,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("toz.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_ump_std"] = {
	fullName = "HK UMP polymer stock",
	displayName = "UMP",
	displayType = DISPLAYTYPE,
	description = "A polymer stock for the UMP SMG, manufactured by Heckler & Koch.",
	weight = 0.2,
	value = 1220,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ump.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_vector_adap"] = {
	fullName = "KRISS Vector non-folding stock adapter",
	displayName = "Vector adap.",
	displayType = DISPLAYTYPE,
	description = "A non-folding adapter for the installation of telescopic stock buffer tubes on the KRISS Vector submachine gun.",
	weight = 0.3,
	value = 4585,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vector_adapter.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_vector_cap"] = {
	fullName = "KRISS Vector Pistol Sling adapter",
	displayName = "Vector Sling",
	displayType = DISPLAYTYPE,
	description = "A pistol sling adapter for the KRISS Vector SMG.",
	weight = 0.2,
	value = 1720,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vector_cap.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_vector_std"] = {
	fullName = "KRISS Vector Gen.2 folding stock",
	displayName = "Vector stock",
	displayType = DISPLAYTYPE,
	description = "A 2nd generation folding stock for the KRISS Vector submachine gun.",
	weight = 0.3,
	value = 7045,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vector.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_vpo136"] = {
	fullName = 'VPO-136 "Vepr-KM" wooden stock',
	displayName = "VPO136",
	displayType = DISPLAYTYPE,
	description = "A standard-issue wooden stock for VPO-136 Vepr KM carbines, manufactured by Molot Arms.",
	weight = 0.4,
	value = 2090,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vpo136.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_vpo209"] = {
	fullName = "VPO-209 wooden stock",
	displayName = "VPO209",
	displayType = DISPLAYTYPE,
	description = "A standard-issue wooden stock for VPO-209 AKM carbines, manufactured by Molot Arms.",
	weight = 0.4,
	value = 2090,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vpo209.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_zenit_pt1"] = {
	fullName = 'AK Zenit PT-1 "Klassika" stock',
	displayName = "PT-1 Klassika",
	displayType = DISPLAYTYPE,
	description = "The telescopic PT-1 stock is mounted on the standard place of the stock AK 103, 104, 105, 74M, AKS74U and PP Vityaz, has a length adjustment mechanism and an adjustable cheek. A special lock is required for installation. Manufactured by Zenit.",
	weight = 0.3,
	value = 13520,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_pt1.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_zenit_pt3"] = {
	fullName = 'AK Zenit PT-3 "Klassika" stock',
	displayName = "PT-3 Klassika",
	displayType = DISPLAYTYPE,
	description = "The PT-3 telescopic stock is mounted instead of the standard stock of AK-103, 104, 105, 74M, AKS74U, and PP Vityaz weapons. Features a length adjustment mechanism and an adjustable cheek. A special PT lock is required for installation. Manufactured by Zenit.",
	weight = 0.2,
	value = 22850,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ak_pt3.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_sv98_m12"] = {
	fullName = "CNC Guns OV-SV98 M12B stock",
	displayName = "M12B",
	displayType = DISPLAYTYPE,
	description = "A universal rear stock by CNC Guns for the OV-SV98 kit.",
	weight = 1,
	value = 6670,
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

EFGM.ITEMS["arc9_att_eft_svds_stock_adap"] = {
	fullName = "SVDS Lynx Arms Hinge buffer tube adapter",
	displayName = "SVDS adpt.",
	displayType = DISPLAYTYPE,
	description = "An adapter for installation of telescopic stock buffer tubes on the SVD sniper rifles and Rys carbines with folding stocks. Manufactured by Lynx Arms.",
	weight = 0.1,
	value = 3870,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("svds_adapter.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_svds_stock_std"] = {
	fullName = "SVDS polymer stock",
	displayName = "SVDS",
	displayType = DISPLAYTYPE,
	description = "A polymer stock for SVDS sniper rifles, manufactured by Izhmash.",
	weight = 0.3,
	value = 1830,
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

EFGM.ITEMS["arc9_att_eft_svt_stock_avt"] = {
	fullName = "AVT-40 wooden stock",
	displayName = "AVT wood",
	displayType = DISPLAYTYPE,
	description = "A standard-issue wooden stock for the AVT-40 rifle, manufactured by TOZ.",
	weight = 1.2,
	value = 2275,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("avt.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_t5000_stock_std"] = {
	fullName = "ORSIS T-5000M stock",
	displayName = "T-5000 stock",
	displayType = DISPLAYTYPE,
	description = "A universal standard-issue stock for T-5000M sniper rifles, manufactured by ORSIS.",
	weight = 0.3,
	value = 2890,
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

EFGM.ITEMS["arc9_att_eft_uzi_stock_t3"] = {
	fullName = "UZI Type 3 buttstock",
	displayName = "UZI Type 3",
	displayType = DISPLAYTYPE,
	description = "A wooden buttstock for the UZI submachine gun. A relic from the 60s, still smells like preservation grease. Manufactured by Israel Weapon Industries.",
	weight = 0.4,
	value = 2445,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_t3.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_stock_t5"] = {
	fullName = "UZI Type 5 buttstock",
	displayName = "UZI Type 5",
	displayType = DISPLAYTYPE,
	description = "A foldable buttstock for the UZI submachine gun. The most famous variant which has been involved in countless operations, from localized skirmishes on the southern continent, to protecting presidents during assassination attempts. Manufactured by Israel Weapon Industries.",
	weight = 0.6,
	value = 940,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_t5.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_stock_t6"] = {
	fullName = "UZI Type 6 buttstock",
	displayName = "UZI Type 6",
	displayType = DISPLAYTYPE,
	description = "A wire buttstock for the UZI submachine gun. Thats right, its just like those gangsters from the 80s. Manufactured by Israel Weapon Industries.",
	weight = 0.3,
	value = 1800,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_t6.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_stock_t7"] = {
	fullName = "UZI Type 7 buttstock",
	displayName = "UZI Type 7",
	displayType = DISPLAYTYPE,
	description = "A polymer buttstock for the UZI submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.4,
	value = 1850,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_t7.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzi_stock_wekz"] = {
	fullName = "UZI StormWerkz stock adapter",
	displayName = "UZI adap.",
	displayType = DISPLAYTYPE,
	description = "A Picatinny adapter designed for installation of various buttstocks on the UZI submachine gun. Manufactured by StormWerkz.",
	weight = 0.05,
	value = 1885,
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

EFGM.ITEMS["arc9_att_eft_uzipro_stock_a3"] = {
	fullName = "UZI PRO A3 Tactical Rear Stock Adapter",
	displayName = "A3 RSA",
	displayType = DISPLAYTYPE,
	description = "A Picatinny adapter designed for installation of various buttstocks on the UZI PRO submachine gun. Manufactured by A3 Tactical.",
	weight = 0.05,
	value = 855,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_pro_rear.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzipro_stock_a3brace"] = {
	fullName = "UZI PRO A3 Tactical Modular Folding Brace",
	displayName = "UZI A3 brace",
	displayType = DISPLAYTYPE,
	description = "A foldable pistol brace for the UZI PRO submachine gun. Manufactured by A3 Tactical.",
	weight = 0.1,
	value = 4300,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_pro_brace.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzipro_stock_backplate"] = {
	fullName = "UZI PRO backplate",
	displayName = "UZI PRO plate",
	displayType = DISPLAYTYPE,
	description = "A standard-issue receiver cover plate for the UZI PRO submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.05,
	value = 945,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_pro_plate.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzipro_stock_brace"] = {
	fullName = "UZI PRO Stabilizing Brace",
	displayName = "UZI PRO brace",
	displayType = DISPLAYTYPE,
	description = "A foldable pistol brace for the UZI PRO submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.4,
	value = 3640,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_pro_stab.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzipro_stock_csm"] = {
	fullName = "UZI PRO CSM stock adapter",
	displayName = "UZI CSM",
	displayType = DISPLAYTYPE,
	description = "A Picatinny adapter designed for installation of various buttstocks on the UZI PRO submachine gun. Manufactured by Custom Smith Manufacturing.",
	weight = 0.05,
	value = 1065,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_pro_csm.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_uzipro_stock_sbr"] = {
	fullName = "UZI PRO SBR buttstock",
	displayName = "UZI PRO SBR",
	displayType = DISPLAYTYPE,
	description = "A foldable buttstock for the UZI PRO submachine gun. Manufactured by Israel Weapon Industries.",
	weight = 0.4,
	value = 2350,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("uzi_pro_sbr.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_val_stock_nb"] = {
	fullName = "AS VAL NB stock adapter tube",
	displayName = "VAL tube",
	displayType = DISPLAYTYPE,
	description = "An adapter for installing aftermarket buttstocks on the AS VAL.",
	weight = 0.2,
	value = 18150,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("val_tube.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_val_stockk"] = {
	fullName = "AS VAL skeleton stock",
	displayName = "AS VAL",
	displayType = DISPLAYTYPE,
	description = "A standard-issue foldable skeleton stock for AS VAL, manufactured by TsNIITochMash.",
	weight = 0.3,
	value = 3390,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("val_skele.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_val_vss_stock"] = {
	fullName = "VSS wooden stock",
	displayName = "VSS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue wooden stock for VSS Vintorez sniper rifles, manufactured by TsNIITochMash.",
	weight = 0.6,
	value = 1940,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vsswood.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_val_vss_stock_dark"] = {
	fullName = "VSS wooden stock",
	displayName = "VSS",
	displayType = DISPLAYTYPE,
	description = "A standard-issue wooden stock for VSS Vintorez sniper rifles, manufactured by TsNIITochMash.",
	weight = 0.6,
	value = 1940,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vsswood_dark.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vityaz_stock_std"] = {
	fullName = 'PP-19-01 "Vityaz" metal skeleton stock',
	displayName = "PP-19-01",
	displayType = DISPLAYTYPE,
	description = "A skeletonized metal stock for PP-19-01 Vityaz SMGs and Saiga-9 carbines, manufactured by Izhmash.",
	weight = 0.2,
	value = 960,
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

EFGM.ITEMS["arc9_att_eft_vpo101_stock_std"] = {
	fullName = "VPO-101 wooden stock",
	displayName = "VPO-101 stock",
	displayType = DISPLAYTYPE,
	description = "A standard-issue stock for VPO-101 Vepr-Hunter carbines.",
	weight = 1.2,
	value = 1000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vpo101.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vpo101_stock_svd"] = {
	fullName = "VPO-101 SVD-style walnut stock",
	displayName = "VPO-101 SVD stock",
	displayType = DISPLAYTYPE,
	description = "An SVD-style wooden stock designed for VPO-101 Vepr-Hunter carbines.",
	weight = 1.1,
	value = 5270,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vpo101_walnut.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vpo215_stock_std"] = {
	fullName = "VPO-215 wooden stock",
	displayName = "VPO-215 stock",
	displayType = DISPLAYTYPE,
	description = 'A standard-issue stock for the VPO-215 "Gornostay" rifle.',
	weight = 1.2,
	value = 1510,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vpo215.png"),

	sizeX = 4,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vsk_stockk"] = {
	fullName = "VSK-94 stock",
	displayName = "VSK-94",
	displayType = DISPLAYTYPE,
	description = "A standard-issue stock for the VSK-94 marksman rifle. Manufactured by Tula KPB Instrument Design Bureau.",
	weight = 0.7,
	value = 1640,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("vsk.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_vsk_top_stock"] = {
	fullName = "9A-91 top-folding stock",
	displayName = "9A-91",
	displayType = DISPLAYTYPE,
	description = "A standard-issue top-folding stock for the 9A-91 assault rifle. Manufactured by Tula KPB Instrument Design Bureau.",
	weight = 0.5,
	value = 2400,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("9a91.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_stock_a1"] = {
	fullName = "CZ Scorpion EVO 3 A1 polymer stock",
	displayName = "EVO 3 Stock",
	displayType = DISPLAYTYPE,
	description = "Standard polymer folding stock for the CZ Scorpion EVO 3 A1 9x19 submachine gun.",
	weight = 0.4,
	value = 11900,
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

EFGM.ITEMS["arc9_att_eft_scorpion_stock_adv"] = {
	fullName = "CZ Scorpion EVO 3 A1 Advanced Combat stock",
	displayName = "EVO ACR",
	displayType = DISPLAYTYPE,
	description = "An ACR style polymer folding stock for the CZ Scorpion EVO 3 A1 9x19 submachine gun.",
	weight = 0.6,
	value = 24100,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_adv.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_stock_buff"] = {
	fullName = "CZ Scorpion EVO 3 folding buffer tube adapter",
	displayName = "EVO BUFFER",
	displayType = DISPLAYTYPE,
	description = "A folding buffer tube adapter for the CZ Scorpion EVO 3 A1 9x19 submachine gun.",
	weight = 0.1,
	value = 9935,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_tube.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_stock_pdw"] = {
	fullName = "CZ Scorpion EVO 3 A1 PDW collapsible stock",
	displayName = "PDW",
	displayType = DISPLAYTYPE,
	description = "An ergonomic PDW style collapsible stock for the CZ Scorpion EVO A3 9x19 submachine gun.",
	weight = 0.3,
	value = 17660,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_pdw.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_stock_slider"] = {
	fullName = "Manticore Arms CZ Scorpion EVO 3 A1 Slider stock",
	displayName = "Manticore",
	displayType = DISPLAYTYPE,
	description = "A collapsible stock for the CZ Scorpion EVO A3, inspired by the MP5A3 telescoping stock.",
	weight = 0.2,
	value = 18255,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_slider.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_stock_tac"] = {
	fullName = "CZ Scorpion EVO 3 A1 tactical stock",
	displayName = "EVO TAC",
	displayType = DISPLAYTYPE,
	description = "A tactical polymer folding stock for the CZ Scorpion EVO 3 A1 9x19 submachine gun.",
	weight = 0.5,
	value = 15990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_tac.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_scorpion_stock_zhu"] = {
	fullName = "CZ Scorpion EVO 3 A1 Magpul Zhukov stock adapter",
	displayName = "EVO ZHUKOV",
	displayType = DISPLAYTYPE,
	description = "Magpul Zhukov polymer stock fitted to a CZ Scorpion EVO 3 stock adapter.",
	weight = 0.5,
	value = 14990,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("evo_magpul.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_sass"] = {
	fullName = "AR-15 KAC SASS stock (Taupe)",
	displayName = "SASS",
	displayType = DISPLAYTYPE,
	description = "A specialized stock often used for DMR-style builds.",
	weight = 0.6,
	value = 14985,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = AttMaterial("ar15_sass_taupe.png"),

	sizeX = 2,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_buffertube_ere"] = {
	fullName = "AR-15 Magpul Enhanced Receiver Extension",
	displayName = "ERE",
	displayType = DISPLAYTYPE,
	description = "A mil-spec rifle length Magpul Receiver Extension buffer tube, will fit any AR-15-based carbine or rifle.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/5a33ca0fc4a282000d72292f.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_buffertube_hexone"] = {
	fullName = "AR-15 Phase5 Hexone buffer tube",
	displayName = "Hexone",
	displayType = DISPLAYTYPE,
	description = "A hexagonal buffer tube for attaching Phase5 buttstocks. Manufactured by Phase5.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/hexone.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_buffertube_mtc"] = {
	fullName = "Mesa Tactical Crosshair Hydraulic buffer tube",
	displayName = "MT Crosshair",
	displayType = DISPLAYTYPE,
	description = "The Crosshair Hydraulic buffer tube by Mesa Tactical. Has a moving hydraulic element that mitigates recoil. Requires a LEO stock adapter for installation.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/5ef1ba28c64c5d0dfc0571a5.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_buffertube_stm9"] = {
	fullName = "AR-15 Soyuz-TM buffer tube",
	displayName = "STM Tube",
	displayType = DISPLAYTYPE,
	description = "STM Arms Receiver Extension Buffer Tube, 4-position, Com-Spec diameter will fit any AR-15-based carbine.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/602e3f1254072b51b239f713.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_doublestar_buttpad"] = {
	fullName = "DoubleStar ACE recoil pad",
	displayName = "ACE pad",
	displayType = DISPLAYTYPE,
	description = "A short 0.5 inch recoil pad for DoubleStar ACE stocks.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/5d120a28d7ad1a1c8962e295.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_glcore_s"] = {
	fullName = "AR-15 FAB Defense GL-CORE S buttstock (Redline)",
	displayName = "GL-CORE S",
	displayType = DISPLAYTYPE,
	description = "A lightweight telescopic stock manufactured by FAB Defense. Features an ergonomically shaped rubber buttpad for quick shouldering and improved weapon handling. Red-colored decorative accents from JP himself give the stock a distinct personality.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/glcs.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_ravage_blk"] = {
	fullName = "AR-15 Lead Star Arms Ravage stock",
	displayName = "Ravage",
	displayType = DISPLAYTYPE,
	description = "A lightweight buttstock for AR patter weapons. Manufactured by Lead Star Arms.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/ravageb.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_ravage_red"] = {
	fullName = "AR-15 Lead Star Arms Ravage stock (Red)",
	displayName = "Ravage",
	displayType = DISPLAYTYPE,
	description = "A lightweight buttstock for AR patter weapons. Manufactured by Lead Star Arms. Red version.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/ravager.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_ravage_ylw"] = {
	fullName = "AR-15 Lead Star Arms Ravage stock (Yellow)",
	displayName = "Ravage",
	displayType = DISPLAYTYPE,
	description = "A lightweight buttstock for AR patter weapons. Manufactured by Lead Star Arms. Yellow version.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/ravagey.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_ums_blk"] = {
	fullName = "AR-15 Phase5 Universal Mini Stock",
	displayName = "UMS",
	displayType = DISPLAYTYPE,
	description = "A minimalistic buttstock manufactured by Phase5.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/umsb.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_ums_red"] = {
	fullName = "AR-15 Phase5 Universal Mini Stock (Red)",
	displayName = "UMS",
	displayType = DISPLAYTYPE,
	description = "A minimalistic buttstock manufactured by Phase5. Red version.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/umsr.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_ar_stock_ums_ylw"] = {
	fullName = "AR-15 Phase5 Universal Mini Stock (Yellow)",
	displayName = "UMS",
	displayType = DISPLAYTYPE,
	description = "A minimalistic buttstock manufactured by Phase5. Yellow version.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/umsy.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_ak74m_mono3"] = {
	fullName = "AK-74M Armacon Monolit 3 Gen.2 buffer tube adapter (Redline)",
	displayName = "Mono3 RL",
	displayType = DISPLAYTYPE,
	description = "The Monolit 3 Gen. 2 adapter for mounting telescopic stocks on modern AK-pattern rifles and their civilian variants. Manufactured by Armacon. A special version made for the Arena champion JP’s Saiga shotgun.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/monolit5.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_ak74m_rsa55"] = {
	fullName = "AK JMac Customs RSA-5.5 stock adapter",
	displayName = "RSA-5.5",
	displayType = DISPLAYTYPE,
	description = "An adapter for installing 1913 Picatinny buttstocks, designed for AK-style assault rifles with 5.5mm pin folding stocks. Manufactured by JMac Customs.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/688c9df121038434840a1e06.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_stock_akm_rtfsa"] = {
	fullName = "AK Samson Rear Trunnion Folding Stock Adapter",
	displayName = "RTFSA",
	displayType = DISPLAYTYPE,
	description = "A 1913 stock adapter, designed for installation on AK-series assault rifles. Manufactured by Samson Manufacturing.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/688cbdc341e2a57a8f0c1c6c.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}

EFGM.ITEMS["arc9_att_eft_svt_stock_svd"] = {
	fullName = "SVT-40 SVD style stock",
	displayName = "SVT-40 SVD",
	displayType = DISPLAYTYPE,
	description = "A wood stock for the SVT-40/AVT-40 rifles styled after the SVD sniper rifle.",
	weight = 0.1,
	value = 10000,
	equipType = EQUIPTYPE.Attachment,
	appearInInventory = true,
	stackSize = 1,
	stashStackSize = 100,
	icon = Material("entities/eft_attachments/6888ac0f5978b35e90010b49.png"),

	sizeX = 1,
	sizeY = 1,

	levelReq = 1,
	lootWeight = 100,
	canPurchase = true,
}
