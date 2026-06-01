local DISPLAYTYPE = "Launcher"

EFGM.ITEMS["arc9_eft_fn40gl"] = {
	fullName = "FN40GL Mk2 40mm grenade launcher",
	displayName = "FN40GL",
	displayType = DISPLAYTYPE,
	weight = 2.9,
	value = 290000,
	levelReq = 48,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.PRIMARY.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/fn40gl.png", "smooth"),

	sizeX = 3,
	sizeY = 2,

	canPurchase = false,
	lootWeight = 25,

	caliber = "40x46",
	ammoID = "efgm_ammo_40x46",

	defAtts = "XQAAAQCrAAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LcZnpdAq+1HxvVFYM8yMuG3QVvnwhP32P3T9+b6yx6EtZbue8c+rXbC1/wisVwiACA9z7RE6ODiOAXKohmGfZ731lBAX2dwTm+1X5GW6w0B97mkHiGQA="
}

EFGM.ITEMS["arc9_eft_m32a1"] = {
	fullName = "Milkor M32A1 MSGL 40mm grenade launcher",
	displayName = "Milkor M32A1",
	displayType = DISPLAYTYPE,
	weight = 3.3,
	value = 600000,
	levelReq = 48,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.PRIMARY.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/m32a1.png", "smooth"),

	sizeX = 4,
	sizeY = 2,

	canPurchase = false,
	lootWeight = 25,

	caliber = "40x46",
	ammoID = "efgm_ammo_40x46",

	defAtts = "XQAAAQAJAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LcZnpdAq+1HxvVFYM8yMuG3QVvnwhP32P3T9+b6yx6EtZbue8dF7Fsj37UUn+7mk9v/HrNRAFGg6nQkIwWTKSU5Ht4euLD+2nV9cVQ5QTQEhTXHfBai51DvzIw0ZoLBPUIiwYXsBVck0Y40MSrORhD3wFxwGQfgA="
}

EFGM.ITEMS["arc9_eft_rshg2"] = {
	fullName = "RShG-2 72.5mm rocket launcher",
	displayName = "RShG-2",
	displayType = DISPLAYTYPE,
	weight = 3.8,
	value = 900000,
	levelReq = 48,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.PRIMARY.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/rshg2.png", "smooth"),

	sizeX = 4,
	sizeY = 1,

	canPurchase = false,
	lootWeight = 25,

	caliber = "72.5",
	ammoID = "efgm_ammo_725"
}
