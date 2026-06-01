local DISPLAYTYPE = "Pistol"

EFGM.ITEMS["arc9_eft_m9a3"] = {
	fullName = "Beretta M9A3 9x19 pistol",
	displayName = "M9A3",
	displayType = DISPLAYTYPE,
	weight = 0.2,
	value = 23000,
	levelReq = 1,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/m9a3.png", "smooth"),

	sizeX = 2,
	sizeY = 1,

	caliber = "9x19",
	ammoID = "efgm_ammo_9x19",

	defAtts = "XQAAAQCDAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+VxqdivwEJTPh3E+VFN6tQFSEw8nl+xsNZHkUqRC+DuxEPE4Hmq2ZF39I5/fW7oBi14Z7pNIIvvvTcmGH8EPSRl1Mgu31LkWQpOtv6A9h6lrhDeArrse4Q9wLpJvvlZzE2wk3jB1y52JTzihtkZKJlfFjhCjnhAA==",
	duelAtts = {
		"XQAAAQCDAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+VxqdivwEJTPh3E+VFN6tQFSEw8nl+xsNZHkUqRC+DuxEPE4Hmq2ZF39I5/fW7oBi14Z7pNIIvvvTcmGH8EPSRl1Mgu31LkWQpOtv6A9h6lrhDeArrse4Q9wLpJvvlZzE2wk3jB1y52JTzihtkZKJlfFjhCjnhAA==",
		"XQAAAQCYAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+VxqdivwEJTPh3E+VFN6tQFSEw8nl+xsNZHkUqRC993zXCzGjm0oiG3Rjnl1QVB49eYpgNoUdThJyUUxEQic/0JVWubBikJ1fuLdhZukqLMCl8PY8H8sGkZW0fBlMuPtmDkJWkvfAlN2nMSXXkGr4qT40apwirXwAjeEmCFABfhALQo6A=",
		"XQAAAQAqAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+VxqdivwEJTPh3E+VFN6tQFSEw8nl+xsNZHkUqRC+DuxEPE4Hmq0GXD717X3lMkG6u0+fLX0B0eMHv/iIveLj0x7jtlNjDew6nM77x13+qBH6lj4atjNx3EJ/Yx3+2H/VaQPRGNdWR7Xg737+WMU+ZhTTyFpVWKamULXy81I0e8CCmgKoaZCDfr3M1xs6g0CEo8g2QOVz4xcFxG8sFafiHXbiri9cF"
	}
}

EFGM.ITEMS["arc9_eft_pd20"] = {
	fullName = "20x1mm toy gun",
	displayName = "Blicky",
	displayType = DISPLAYTYPE,
	weight = 0.1,
	value = 100000,
	levelReq = 48,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/blicky.png", "smooth"),

	sizeX = 2,
	sizeY = 1,

	canPurchase = false,
	lootWeight = 50,

	caliber = "20x1",
	ammoID = "efgm_ammo_20x1",
}

EFGM.ITEMS["arc9_eft_m1911"] = {
	fullName = "Colt M1911A1 .45 ACP pistol",
	displayName = "M1911A1",
	displayType = DISPLAYTYPE,
	weight = 0.2,
	value = 19000,
	levelReq = 1,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/m1911.png", "smooth"),

	sizeX = 2,
	sizeY = 1,

	caliber = ".45",
	ammoID = "efgm_ammo_45",

	defAtts = "XQAAAQAJAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdiva/+T8TWXFyZ6L+YGhlUEFGCfP6ZxRzhhtO4thQe+Y8iks9vtbjX/1mlPDmp6O4OLhhuzMvFkTlrQfPfK3ivuCRfw5mF2t9J9NMfTJXBYIwDkT8TIZrYGTDnj2E5r2njE2qO1+VknMQZ+JwujYf7xqN5yt85euuFXh09YHiN3D6NJTg6xDdwtlRy",
	duelAtts = {
		"XQAAAQAJAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdiva/+T8TWXFyZ6L+YGhlUEFGCfP6ZxRzhhtO4thQe+Y8iks9vtbjX/1mlPDmp6O4OLhhuzMvFkTlrQfPfK3ivuCRfw5mF2t9J9NMfTJXBYIwDkT8TIZrYGTDnj2E5r2njE2qO1+VknMQZ+JwujYf7xqN5yt85euuFXh09YHiN3D6NJTg6xDdwtlRy",
		"XQAAAQCaAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdiva/+T8TVGz12MZlTBvfFuwVHr2M0vIvxQabJdixi//02kBQ2+EBuBeF++RbzJP5/Kimjlpj0WHt6wHSEeQ9GGXxPj8sC7o66KlTUrATqvoU4JLPrS5S/ImiYYdu4xSSDiKMBhaRPM4J+RGpvLud8ETQ3ereN3ogsIRazM8IcdCNVYSUPueU0XP3uoRPgnnVf4REq8QrSyXt3hz+N3kAkbtzQ4IoXuVLM/YQJGbU5+FrB/wtIYYrxv6Qz5cPbCLEK",
		"XQAAAQDfAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdiva/+T8TWXFyZ6L+YGhlUEFGCfP6ZxRzhhtO4thQe+Y8iks9vtbjX/1mlPDmp6O4OLhhu0KMy3FIbaFBqaOPS25yqXkakfI/2IExWGkFSKeL5hsh40xpyagDGAbIwKNBjEUu+/LCSxN5MVPZirkaEJwtayNoFZWCB+GAwjv2Ep7UHix94RJqsHXIWl1j74UiunOF/zkmBMGFPM6jy9RjrdOI/QcQV0KSYHGS4oEhw3mbgck3JjIG7eYKmA8rx3f9l/nqJcJkgfGLpTHrCg8Gc",
		"XQAAAQAwAwAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdiva/+T8TWmHF0Cly6AHG2UUIhFPYlMHI0DjQP6V0b+4xigeU3VTb/5bQ+FeGA0phdsXP1JIh9xiGYLvByb0+MbjryPAyFwNuzmATxsCDa1bVz5sSRKiqUpu0uNtWQNxei2Dv2D2A6gAwo8+q0jrkOXXspPBeFdU9O1dP6o8hjjImHKFfUDvd25UeVi8JaYTeu0rxYRJCoBhDZpzVcE6xUlTkY4DFgcgrKVGXJs2yW9XWlnwDF46TF2j5w4ajW6Kz0h5hsR7mcYJMCzKZF3Iwap4TQ3k+yqoGKeoBCOg=="
	}
}

EFGM.ITEMS["arc9_eft_m45"] = {
	fullName = "Colt M45A1 .45 ACP pistol",
	displayName = "M45A1",
	displayType = DISPLAYTYPE,
	weight = 0.2,
	value = 22000,
	levelReq = 4,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/m45.png", "smooth"),

	sizeX = 2,
	sizeY = 1,

	caliber = ".45",
	ammoID = "efgm_ammo_45",

	defAtts = "XQAAAQAJAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdiva/+T8TVGz12MZlTBvfFuwVHr2M0vIvxQabJdixi//02kBQvQE1BNSe+/x4UWJGqsdu0r0fjAJV8uPf4/9yf+Oa6i2nzhe+E/pAfpR4BznYJwkvGIHjKA6KtHKxQIslWZOjXQ7OqGi4qZT5NtitnZJtizjAPZf/nSJs9PdJfcS2+CyOZXDohKl62quGEQuCnXlubjg==",
	duelAtts = {
		"XQAAAQAJAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdiva/+T8TVGz12MZlTBvfFuwVHr2M0vIvxQabJdixi//02kBQvQE1BNSe+/x4UWJGqsdu0r0fjAJV8uPf4/9yf+Oa6i2nzhe+E/pAfpR4BznYJwkvGIHjKA6KtHKxQIslWZOjXQ7OqGi4qZT5NtitnZJtizjAPZf/nSJs9PdJfcS2+CyOZXDohKl62quGEQuCnXlubjg==",
		"XQAAAQB9AgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdiva/+T8TWmHF0Cly6AHG2UUIhFPYlMHI0DjQP6V0b+4xigeU3VTb/5bQ+FeGA0phdsXP1JIh9xiGYLvByb0+MbjryPAyFwNuzmATxsCDTMa5iWdtkLDZ70/T9MtqpMyyjSeDSbZbtFXWEDtBrOy2LN++zQBOB81nS2QBOdLXMl/jR92zKW8NxCvuZhKMR+gOQjzTH28YpXTKagChKwi9e4+97Uiyq6WY3xSkHs+lsjUP9Fyqt+w==",
		"XQAAAQB5AgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdiva/+T8TWXFyZ6L+YGhlUEFGCfP6ZxRzhhtO4thQe+Y8ihiiI0o/oPhY6VNYa4LvGUw/26WM1z2ZVqHk3i276s9oVv3+dIGmL1a8TJ2ppizDIzhfvfVlY6Li9ZM2sVSKpP+B4h87HX61h/tQTIaudSiJPFdiE2+j8UTCjEtpM/+uw0XBg8PUNzAy2KCCe5n9nXyeTS7541zqBv9IRsM/uCoGVJf42VFapvkDDA6OdjILGWYst9E7yUqo="
	}
}

EFGM.ITEMS["arc9_eft_deagle_l5"] = {
	fullName = "Magnum Research Desert Eagle L5 .357 pistol",
	displayName = "Desert Eagle L5",
	displayType = DISPLAYTYPE,
	weight = 0.5,
	value = 32000,
	levelReq = 6,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/deagle_l5.png", "smooth"),

	sizeX = 2,
	sizeY = 1,

	caliber = ".357",
	ammoID = "efgm_ammo_357",

	defAtts = "XQAAAQCOAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivswh+weqM2t5ghOvIx8KkqejxKzgldfViMxjx46Znco6smBqgrvGL0O8YJT4T7wgJccpjUYf5269cqJMCf+ilpumoHK8Ntg1+FepHm5oovFm5h8yqEygpQHVjnZ4Nrbct08Y75391QU/Vr6NU6avpWOzXnBRQcQDAA==",
	duelAtts = {
		"XQAAAQCOAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivswh+weqM2t5ghOvIx8KkqejxKzgldfViMxjx46Znco6smBqgrvGL0O8YJT4T7wgJccpjUYf5269cqJMCf+ilpumoHK8Ntg1+FepHm5oovFm5h8yqEygpQHVjnZ4Nrbct08Y75391QU/Vr6NU6avpWOzXnBRQcQDAA==",
		"XQAAAQB7AQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivswh+weqM2t5ghOvIx8KkqejxKzgldfViMxjx46aRmVA4KVPT9l2HpLFQcAIH7+AHwimVGovQL6bd8bM1S2CeOuaqtK0YUbOg0uuWp6STRWrPn1Yl1JsAy4a66sJmFiC1bhfTImbznkDEzNBfgEXxv+NmbpTVAOB1wd7+VnQASk=",
		"XQAAAQD0AQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivswh+weqM2t5ghOvIx8KkqejxKzgldfViMxjx46Znco6smBqgrvGL0O8YJT4T7wgOcGSpViv86vXwK3D9auBH888UCZ55yO4LbnVPZXribdSIYYlgA8wJnlDwrk8047JbR8m6eno7Jw8OrO1hGd6KADkhrXy0fOegpGVgJHiNFuINtXGS0TtunewQe4OOTfvaPM=",
		"XQAAAQCjAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivswh+weqM2t5ghOvIx8KkqejxKzgldfViMxjx46Znco6smBqgrvGL0O8YJT4T7wgOcGS2zPCBUcpMrLgbUmgcCrYfAdBNsmv4WwBI7btdnClyoSge1SUEp//APT1FesnlvutwmVXQP2UXHEYB+XfXdYPecaMi4SvyIWCNOCQ2y3BgZJ0iTI="
	}
}

EFGM.ITEMS["arc9_eft_deagle_l6"] = {
	fullName = "Magnum Research Desert Eagle L6 .50 AE pistol",
	displayName = "Desert Eagle L6",
	displayType = DISPLAYTYPE,
	weight = 0.6,
	value = 69030,
	levelReq = 8,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/deagle_l6.png", "smooth"),

	sizeX = 2,
	sizeY = 1,

	caliber = ".50 AE",
	ammoID = "efgm_ammo_50ae",

	defAtts = "XQAAAQB1AQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivswh+weqM2t5jQa6lgmam1bVV9wqHc/InvQl2sKu4I6dhqSCkrPRwoNttNR6fAeglycM1HiUxpoKzGlKvMjh+VEul0WOs3iIX3F3hb8XZ41U/VsWr8dMwwBnCgT27aU36knR7GmGNHv/+DtzE7QVQtyLiTVcbSs2OW3jLLzqAA==",
	duelAtts = {
		"XQAAAQB1AQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivswh+weqM2t5jQa6lgmam1bVV9wqHc/InvQl2sKu4I6dhqSCkrPRwoNttNR6fAeglycM1HiUxpoKzGlKvMjh+VEul0WOs3iIX3F3hb8XZ41U/VsWr8dMwwBnCgT27aU36knR7GmGNHv/+DtzE7QVQtyLiTVcbSs2OW3jLLzqAA==",
		"XQAAAQCNAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivswh+weqM2t5jQa6lgmam1bVV9wqHc/InvQl2sKu4PMzSBInf/tPCmla/f5I0Az0GDK6UDgZAfcRWjUvikob8eZo123xxmWslzTN2EsV7ucaUasOKqw+HthhFvvilDBJC9G/keJ6H8LMR6mrziQ4fBKUAB/XRhlrObU9Qyf7wrqbflXPvhS1yk30F144N+HxQQ==",
		"XQAAAQCMAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivswh+weqM2t5jQa6lgmam1bVV9wqHc/InvQl2sKu4I6dhqSCkrPRwoNttNR6fAeglzTdhEEqL0dgmUgN3wi+kkQ+K6jMsNXyn+NCKPnYI+DPysDYLDB2pej8Y/EoFnYt+xOYtl3LVDd4xfpVEqmbaJ80Ept+6ilCH8O5f7ZRoqJJa6PsMcPDHQjLAQ=="
	}
}

EFGM.ITEMS["arc9_eft_deagle_xix"] = {
	fullName = "Magnum Research Desert Eagle Mk XIX .50 AE pistol",
	displayName = "Desert Eagle Mk XIX",
	displayType = DISPLAYTYPE,
	weight = 0.8,
	value = 75070,
	levelReq = 10,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/deagle_xix.png", "smooth"),

	sizeX = 2,
	sizeY = 1,

	caliber = ".50 AE",
	ammoID = "efgm_ammo_50ae",

	defAtts = "XQAAAQBxAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivswh+weqM2xeCHfXrhUWtKNsXbe+5XDYmGj0t/koPy+Xq92uCt+K1b4FZ8g/hvjMTFuFnPQCMzIfl7bnx9LzZYJwze3ZyIDflOo/FE/iHGwU1UnEQfokAnehpB6GaY7U+lNnUOmYxuPR8miv/wQgfxpcx+Y=",
	duelAtts = {
		"XQAAAQBxAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivswh+weqM2xeCHfXrhUWtKNsXbe+5XDYmGj0t/koPy+Xq92uCt+K1b4FZ8g/hvjMTFuFnPQCMzIfl7bnx9LzZYJwze3ZyIDflOo/FE/iHGwU1UnEQfokAnehpB6GaY7U+lNnUOmYxuPR8miv/wQgfxpcx+Y=",
		"XQAAAQC2AQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivswh+weqM2xeCHfXrhUWtKNsXbe+5XDYmGj0t/koPy+Xq92uCt+K1b4FZ8iXVJ3YOj7Vkd9zQDqEnEAp6t01+xSJJFpyndzCDrAp+dNtOlDVS/TmxVl4p8US6G/Jh1bXIymTnQ3z7LF/cMoq5QOBMmRbHLWOMlWrV5G+7+VtbBHLPl6I8IsVDT4lCA==",
		"XQAAAQC2AQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivswh+weqM2xeCHfXrhUWtKNsXbe+5XDYmGj0t/koPy+Xq92uCt+K1b4FZ8iXVJ3YOj7fg3Pz7U0z2MKu3kOtZwE19jJESJZW+O6us+MuYAO8Zlz+DD6hzUizR+0LTgSZqi+rtL6F5zWUrjx3tCdvzXDonZh8ZJD5VByHsMaqsUEbca8HpCzaRhgJAA=="
	}
}

EFGM.ITEMS["arc9_eft_fn57"] = {
	fullName = "FN Five-seveN MK2 5.7x28 pistol",
	displayName = "FN 5-7",
	displayType = DISPLAYTYPE,
	weight = 0.2,
	value = 44000,
	levelReq = 12,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/fn57.png", "smooth"),

	sizeX = 2,
	sizeY = 1,

	caliber = "5.7x28",
	ammoID = "efgm_ammo_57x28",

	defAtts = "XQAAAQAMAQAAAAAAAAA9iIIiM7hMNz0dhIkbkvLjTdSR5gRNNIHH3iLx7t5wr3FFXY/9RrihzPm/gZGThPmW/5f0k3e4vh0z8FkTFaDqOgHBWJGFX3r6Fdlg/2RrXUciz4JBF5REP4W2XIDOp389OhAQn3eo0puY/4A=",
	duelAtts = {
		"XQAAAQAMAQAAAAAAAAA9iIIiM7hMNz0dhIkbkvLjTdSR5gRNNIHH3iLx7t5wr3FFXY/9RrihzPm/gZGThPmW/5f0k3e4vh0z8FkTFaDqOgHBWJGFX3r6Fdlg/2RrXUciz4JBF5REP4W2XIDOp389OhAQn3eo0puY/4A=",
		"XQAAAQB1AQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8EeEdm5bmiqTBRuzRxt+F8mWuW5pT78mO36a/rDlQkGjU+3hq3aegIneKy+1IKF2LMHngLd8aiNGBmm3jfLZLs4w7GCerFxvmNSw7qKQNDSt7C+vnFoA6hN/lcfUH4+u1tn2fBWqFNHNRJHAEs6QkK/XoA",
		"XQAAAQB5AQAAAAAAAAA9iIIiM7tupQCpjrtF9qJbeNZaSCEX4Y6O26Hmp1HRpqw8uiVK1lZSzBaRYOAZQHNuoJNmWcChMJv/hROHvt9J3dsU4EEkTF1fAYcTm9sy03hKmYq6jW0fKYtpM0DOuBV0stIrV5mYv/NdkLquoKbrd/h6XP24qjKRQ1lAIabxQsr8bOzvaL4=",
		"XQAAAQCpAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8EeEdm5bmiqTBRuzRxt+F8mWuW5pT78mO36a/rDlQkGjU+3hq3aegIneKy+1IKF2LMHngLd8aiNGBmm3jfEFmyHTxR095ynOre7GIqXni5HPynKnz4mPVd8Iy938mNHCvraBU4C+nZwQmtCh8MAjNEk/jQB/FgC5LxHXz+yDEmeTmq/hWzAABcV2jZAA=="
	}
}

EFGM.ITEMS["arc9_eft_glock17"] = {
	fullName = "Glock 17 9x19 pistol",
	displayName = "Glock 17",
	displayType = DISPLAYTYPE,
	weight = 0.2,
	value = 19000,
	levelReq = 1,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/glock17.png", "smooth"),

	sizeX = 2,
	sizeY = 1,

	caliber = "9x19",
	ammoID = "efgm_ammo_9x19",

	defAtts = "XQAAAQBCAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivt1xkDF9J/BRcigS9VhIYXZ5jzcY0QKC4UDg7zw2J4NcnLrn7qGmfbrcIn3ZOxTbRObyQ+TN50SFIJhk4W7/rr4DmKjva9hcJV4mRdtdDl5y7njjTqZ9/obcJWyBUMOHjtHNwFf6XAzu",
	duelAtts = {
		"XQAAAQBCAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivt1xkDF9J/BRcigS9VhIYXZ5jzcY0QKC4UDg7zw2J4NcnLrn7qGmfbrcIn3ZOxTbRObyQ+TN50SFIJhk4W7/rr4DmKjva9hcJV4mRdtdDl5y7njjTqZ9/obcJWyBUMOHjtHNwFf6XAzu",
		"XQAAAQDgAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivt1xkDFpxgxCVMmCc6mHJmbxBPopDqtTtrLsjxvhXEI6Zo64/LFub3fTXw4gUpCcwOFTJ/wbZ4pp9vZUjiDZj+/PZkNkPeivhaTyTFuRqikHPEYWn8iJ+BZzD78Q9CyuyCyE7zK83YhQeb00Gws7rQcmrASCaS+0yahnhs8ANxDAGDG5yCF059z5h2WXeJfz2yrAU9dKTTZtpdbLvmR4ElqgAA==",
		"XQAAAQBWAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivt1xkDFpxgxCVMmCc6mHJmbxBPopDqtTtrLsj5FW1ESGfIV4Y+Mxc9ze5q3p1kKw7fJ0OojkKMeQBEcE+uYSAs1ZRdIzDMz4N3jISLuNQIHKDn5Ow77gPvD9KDVwfNktJZ/SeYGLwyIm6ngZAAx7bTVTCLz9M4wlZ40quguafHYlMk3NHAMBK7QovwRNhQJZzFlngyvraCQZSFHg+P80+wdUXC5oxUUt1qRYkWEikcrAwurcArE7H29H5ahywA==",
		"XQAAAQAbAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivt1xkDFpxgxCVMmCc6mHJmbxBPopDqtTtrLsjxvhXD3IcIcA21yeJtO6yDLKPyy7j3Abfn1Ycaoxo+ifu7+1BK1C1sRlEizO8YsHI2AYAa4oNXUBfKd4BGZFczm80yNGvf3PqXvQhRhyYeaDfPJLRdV/cvA2/tKZUhXc/xJGmLiE8VVcZIJ6wECQq4OaF/S92spE6WuYsoaLtzX2oHCmPKjgeaOvvexrNcMBzg==",
		"XQAAAQDMAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivt1xkDF9J/BRcigS9VhIYXZ5jzcY0QKC4UDg7zw2J4LRqu477rHxlB9OeHyWHDvC2LDUz/lnjDME4iAvLhRB9WoOHcFqCMZosesU4lbCLYR2AODG5cNRzZ4yJpU+d1hgu1205s2tsDeNz0mJ5UX/F9Fl/RcBK6djy/5AIbX0LdC+B+XAPvqict2c6qj9XTA6XzCXluOdR8BUPQ==",
		"XQAAAQDkAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivt1xkDFljxK4mbKcc3/RWfv9dmOyGkRuCCNy87yWgpMHRzeGTDTyou9rQGO4NfKPsFDZjOc1xSVg7UkiV6j4yQ3yJsju75aTLvwa8jYm6VLrsJvWIdrtL1xQGq4rTzSkuORF/apwWFQKYZC/YKepuXzs8f0Z0YQSMkiUenjKh4y7k3kN+B0dsh130MrIgDLr8bJa61/MoiA="
	}
}

EFGM.ITEMS["arc9_eft_glock18c"] = {
	fullName = "Glock 18C 9x19 machine pistol",
	displayName = "Glock 18C",
	displayType = DISPLAYTYPE,
	weight = 0.2,
	value = 53665,
	levelReq = 4,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/glock18c.png", "smooth"),

	sizeX = 2,
	sizeY = 1,

	caliber = "9x19",
	ammoID = "efgm_ammo_9x19",

	defAtts = "XQAAAQAuAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivt1xk4SiRjwdbJ+RltR5p3e6xTPK4jcJw9qY6Bkjo4aprpMte/wKgyPzNA+TIK46D/sfb/qyPHGYEpI7eWlZZskfihX3L1xEWEH0uQhZ1CnIYjmkotENPSDug5CKHs0Ulr3f4g3lcmT07gA=",
	duelAtts = {
		"XQAAAQAuAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivt1xk4SiRjwdbJ+RltR5p3e6xTPK4jcJw9qY6Bkjo4aprpMte/wKgyPzNA+TIK46D/sfb/qyPHGYEpI7eWlZZskfihX3L1xEWEH0uQhZ1CnIYjmkotENPSDug5CKHs0Ulr3f4g3lcmT07gA=",
		"XQAAAQCGAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivt1xk4SiRjwdbJ+RltR5p3e6xTPK4jcJw9qY6Bkjo4aprpMte/wKgyPzNA+TIK4Y5dGpQtFuVW8VuP3xpwA4Ww8kjqEPKrUpeLUKo/SlRQJBQq4e94Ln/0aXyh/I4OTAKrcVqmi8jChOfoPajgNxEBRWa8RUgrP4WiPw6mMuAQUuht9k7EODUiNvNmQ=",
		"XQAAAQB+AQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivt1xk4SiRjwdbJ+RltR5p3e6xTPK4jcJw9qY6Bkjo4aprpMte/wKgyPzNA+TIK4Y5av0O10DHf5UzU3fQ7hJXEjBwii2DH940sfjw0SAy8LeT4T5luQOGo+JD6VB+UZa+dFTCkIPCEKPU35q4l1DQDa66Oo39wWDeStdi5vG4wU1QfVdpQz6M4qHwgA=",
		"XQAAAQDvAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivt1xk4SiRjwdbJ+RltR5p3e6xTPK4jcJw9qY6Bkjo4aprpMte/wKgyPzNA+TIK7w0JTa//gnyzNpQ/tS9WKcIgbKbfjr6RVHjRxnExhk9Wc0jEkWls/Pt5vkvbHpRK0z/s35BC3Nm80vWWAeMW8YB/T1Cn7GRCd0ynbCCVgEosvMroXSwV+tfwjQivH9/FMFvvsKAv0YyZLTO9+M5+vmoP8w5QA="
	}
}

EFGM.ITEMS["arc9_eft_glock19x"] = {
	fullName = "Glock 19X 9x19 pistol",
	displayName = "Glock 19X",
	displayType = DISPLAYTYPE,
	weight = 0.2,
	value = 21500,
	levelReq = 2,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/glock19x.png", "smooth"),

	sizeX = 2,
	sizeY = 1,

	caliber = "9x19",
	ammoID = "efgm_ammo_9x19",

	defAtts = "XQAAAQAqAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivt1xlyTi2kEhSDJ0/hjFF+ZhmDnWCz/XusxgpHtc5BJM3wDICpGycXMrvH9E1L9NKRh70J5M7syVS/SO+SoYGiVU1WhrrhKYepHGjrFocqvFzPAhbv6IyvMcLkdzussozVm0VRU=",
	duelAtts = {
		"XQAAAQAqAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivt1xlyTi2kEhSDJ0/hjFF+ZhmDnWCz/XusxgpHtc5BJM3wDICpGycXMrvH9E1L9NKRh70J5M7syVS/SO+SoYGiVU1WhrrhKYepHGjrFocqvFzPAhbv6IyvMcLkdzussozVm0VRU=",
		"XQAAAQBBAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivt1xlyTi2kEhSDJ0/hjFF+ZhmDnWCz/XusxgpHtc5BJM3wDICpGycXMrvH8wa0M293Xh9xlbpHZ67MnZYKA240OlYhhYxsci8OBBQmlDyCWLfz0leu27UEg1kCv8c2W2wZ3qs0drEWtz/Rf4oT2TYOsb/f7YO8wA",
		"XQAAAQDTAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivt1xlyTi2kEhSDJ0/hjFF+ZhmDnWCz/XusxgpHtc5BJM3wDICpGycXMrvH9E1L9NKRh70J5M7syVS/SO+SoYGiVU1WhrrhKYKurIgBKejQ4f4fGr5cpTTldeEENMpbkKizpN3GbyUlyYvgJ38PAIKXxnUG+haTnLThgGDWMfi5zKpG2dXvDN85KlNmvOroUfFA=="
	}
}

EFGM.ITEMS["arc9_eft_usp"] = {
	fullName = "HK USP .45 ACP pistol",
	displayName = "USP .45",
	displayType = DISPLAYTYPE,
	weight = 0.2,
	value = 26000,
	levelReq = 4,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/usp.png", "smooth"),

	sizeX = 2,
	sizeY = 1,

	caliber = ".45",
	ammoID = "efgm_ammo_45",

	defAtts = "XQAAAQCvAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+VxqdivzBHMTRxglFdvimLKcy1jyOrRsYPl3qRiyX4XvjyVJvyHklho+t8gVZExOXjbfMkt+e9MdetDvqhYhw4iEVFfHmEe4ABTlm9B4kQRHkUBMLkfXdinWNgD3hmkMtGlR4KynTRLT3yBnmgN2LpPMtWEaBY52V7UG6lgA==",
	duelAtts = {
		"XQAAAQCvAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+VxqdivzBHMTRxglFdvimLKcy1jyOrRsYPl3qRiyX4XvjyVJvyHklho+t8gVZExOXjbfMkt+e9MdetDvqhYhw4iEVFfHmEe4ABTlm9B4kQRHkUBMLkfXdinWNgD3hmkMtGlR4KynTRLT3yBnmgN2LpPMtWEaBY52V7UG6lgA==",
		"XQAAAQC0AgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+VxqdivzBHMTR2TEtlOqQIs8UVemBdqRlN8srGGNpzS/0YO3wUlo4Yru6Js7l0h+dNl42m7wEjFYkHeFrELJh1fzTVi6VYmYyXwS6dXq+p5NEDRssUnQ78byLtVF2rasmfVR3Ncb6F+J9VYGcsok6wChT5A/eHrz+jP15DbpTPXi8T6lrIgVXO0YGegsAnCiX/nO3cYUeednfWz1OMslCnvaIEVYURSAoLO71T2RWT3K3Vc7sh/UrQ1efXwvwlkzYfwrPtp/GE2ng4cBQ=",
		"XQAAAQD8AQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+VxqdivzBHMTRSlQg+APRZ8sqkax4RYs5p7Oih4r5NWOtIthU1rGG15I2j6iY/65K2eojQN1gVoIApID5L0LD7TZVQ2oTZgUmxcr3pwGhwIoXFml8WfWgsI6TgNCGUQo2rKLxom0N0YZvfIOkgJNIgaWu4Xo9d8YyO02K23TFWCMJSnqE2kHPwIeiXbnI3kubHWAA="
	}
}

EFGM.ITEMS["arc9_eft_pl15"] = {
	fullName = "Lebedev PL-15 9x19 pistol",
	displayName = "PL-15",
	displayType = DISPLAYTYPE,
	weight = 0.5,
	value = 24000,
	levelReq = 10,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/pl15.png", "smooth"),

	sizeX = 2,
	sizeY = 1,

	caliber = "9x19",
	ammoID = "efgm_ammo_9x19",

	defAtts = "XQAAAQAbAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+VxqdivxOSNEdVv0L37daJtxpkfSMuD7nd72zoac4KV1tNG0hnWlS9vugxfb2i5nikGPX/x7fgjwzzvtOLnl9U+WgreiAiqVOJ9kq/5obz9InMIAXOjbfPysfPs4rMWPK8DUOL",
	duelAtts = {
		"XQAAAQAbAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+VxqdivxOSNEdVv0L37daJtxpkfSMuD7nd72zoac4KV1tNG0hnWlS9vugxfb2i5nikGPX/x7fgjwzzvtOLnl9U+WgreiAiqVOJ9kq/5obz9InMIAXOjbfPysfPs4rMWPK8DUOL",
		"XQAAAQBUAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+VxqdivxOSNEdV0u4UEBWX2AdVZQ4BakmQijfL7sTTm+wFn9M8fxO9HY5yvWlCbUa/H1V1VDh8lkLqIZa3AryyReTVNbLiScGgC9rOzQEPiY56Ohrx5HNDQGp8TQdVfuEjSwYbqphOdgh1/4tF2YyQlBYs3zcOO9IQS7hwD4Wh"
	}
}

EFGM.ITEMS["arc9_eft_pm"] = {
	fullName = "Makarov PM 9x18PM pistol",
	displayName = "PM",
	displayType = DISPLAYTYPE,
	weight = 0.3,
	value = 11000,
	levelReq = 1,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/pm.png", "smooth"),

	sizeX = 2,
	sizeY = 1,

	caliber = "9x18",
	ammoID = "efgm_ammo_9x18",

	defAtts = "XQAAAQDfAAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8N0MrcAX4ZC/nXwXwJMUX9VzIJ9eJoIzCxxdGJugl7TlFzel6UwwEdsDy/8G80rRx4/ISGjd3kGS6R64Nw6B+419FI8Iuegof64zUxQc/BQvc+KZA=",
	duelAtts = {
		"XQAAAQDfAAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8N0MrcAX4ZC/nXwXwJMUX9VzIJ9eJoIzCxxdGJugl7TlFzel6UwwEdsDy/8G80rRx4/ISGjd3kGS6R64Nw6B+419FI8Iuegof64zUxQc/BQvc+KZA=",
		"XQAAAQB0AQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8N0MrcAX4ZC/nXwXwJMUX9VzIJ9eJoIzCxxdGJdo2ufhTgcMM10pyhJR8ejQ4/BHWRr05Xrj5F5rlCasHL+WlmxqxhhWQg0TBtaQEd7lTntmzVQj4EXMFfp5F223sHNdigXnngUW+M9HmsGtOp89yarZaPiE7Zz9qJPVOozJxnqQug"
	}
}

EFGM.ITEMS["arc9_eft_mp443"] = {
	fullName = "Yarygin MP-443 Grach 9x19 pistol",
	displayName = "MP-443 Grach",
	displayType = DISPLAYTYPE,
	weight = 0.8,
	value = 14500,
	levelReq = 1,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/mp443.png", "smooth"),

	sizeX = 2,
	sizeY = 1,

	caliber = "9x19",
	ammoID = "efgm_ammo_9x19",

	defAtts = "XQAAAQCKAAAAAAAAAAA9iIIiM7hMNz0dhIkbkvLjTdSR5gRNNIHH3iMsviapv77xMa1x/jpy6bAjUW6sPbpwOYKac6uJtf5N1dKAFULp44UjPYFMBCK134yz1vswcmhn56o/AA==",
	duelAtts = {
		"XQAAAQCKAAAAAAAAAAA9iIIiM7hMNz0dhIkbkvLjTdSR5gRNNIHH3iMsviapv77xMa1x/jpy6bAjUW6sPbpwOYKac6uJtf5N1dKAFULp44UjPYFMBCK134yz1vswcmhn56o/AA==",
		"XQAAAQDrAAAAAAAAAAA9iIIiM7hMNz0dhIkbkvLjTdSR5gRNNIHH3iMsviapv77xMa1x/jpy6bAjUW6sPbpwOYKac6uJtf5P3hdFv6loQIet59iaTQLE2b7q/txw8i726Rg2g2mCmOqVGGnR783zDbIPAKSr1RCm7iyXecxw2YicC7zuGSJ7srM0hm38AA==",
		"XQAAAQBfAQAAAAAAAAA9iIIiM7hMNz0dhIkbkvLjTdSR5gRNNIHH3iMsviapv77xMa1x/jpy6bAjUW6sPbpwOYKac6uJtf5P3hdFv6loQIet59iaTQLE2b7q/t2LgQhTh9l0pMPJ5iU8h9WdJ8oS/1MchRgMs26pJavUPsX4HsDuLBZSUF7QJtgASIucr6xZwXDpPOg8qOzernRCAA=="
	}
}

EFGM.ITEMS["arc9_eft_pb"] = {
	fullName = "PB 9x18PM silenced pistol",
	displayName = "PB",
	displayType = DISPLAYTYPE,
	weight = 0.7,
	value = 17000,
	levelReq = 2,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/pb.png", "smooth"),

	sizeX = 3,
	sizeY = 1,

	caliber = "9x18",
	ammoID = "efgm_ammo_9x18",

	defAtts = "XQAAAQCwAAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8Nz6D0gX5ySkZNvQ9kVxN2oB2e+x5mololx5+0qIIQff+f9wIHQK6as1lei0/0i8/97/7VIpwTc/v8m0jOypdFCAMSb8RdVo4qB+kRFA==",
	duelAtts = {
		"XQAAAQCwAAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8Nz6D0gX5ySkZNvQ9kVxN2oB2e+x5mololx5+0qIIQff+f9wIHQK6as1lei0/0i8/97/7VIpwTc/v8m0jOypdFCAMSb8RdVo4qB+kRFA==",
		"XQAAAQCxAAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8Nz6D0gX5ySkZNvQ9kVxN2oB2e+x5mololx5+0qIIQff+f9wIHQK6as1lei0/0i8/975F2tjSq3ncrM7oVW9zIoitN6vIXyoxm0l4TrQA="
	}
}

EFGM.ITEMS["arc9_eft_rsh12"] = {
	fullName = "RSh-12 12.7x55 revolver",
	displayName = "RSh-12",
	displayType = DISPLAYTYPE,
	weight = 1.8,
	value = 78000,
	levelReq = 16,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/rsh12.png", "smooth"),

	sizeX = 2,
	sizeY = 1,

	caliber = "12.7x55",
	ammoID = "efgm_ammo_127x55",

	defAtts = "XQAAAQCSAAAAAAAAAAA9iIIiM7hMNz0dhJSTKmZ7v+v6J9rfJDxrK5jGCg9Ongj2ouH9rTzyEctbtT8fV//t2AQ2AZxawi8qmKMSgUzbkr8ItspwpeCSHI3kSOweFs81HRO3DZClNaakAA==",
	duelAtts = {
		"XQAAAQCSAAAAAAAAAAA9iIIiM7hMNz0dhJSTKmZ7v+v6J9rfJDxrK5jGCg9Ongj2ouH9rTzyEctbtT8fV//t2AQ2AZxawi8qmKMSgUzbkr8ItspwpeCSHI3kSOweFs81HRO3DZClNaakAA==",
		"XQAAAQAkAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV4/QsCrClhAsuCgVS8l5its18eN63xCobOvEHPEkbvX65EpSQLaHIVhih4Mdjz1lJP0LH6JEez/KjEIuil8NrwkDI+6DF9PGXGzxnVHBilwJcQdP9v0yrORkyZ14a9YvEF11AZfbn49eIKi/YqvlIi8cq1BBjvuUcgtXGScHgaV1",
		"XQAAAQDtAAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV4/QsCrRINBPVkHZhhYOqsxsmimfJ0O28oCM9juEb7tmcvwie+WEcFt5+SQKD2sQfKJxxDDTs7cTzZNvdYz8n/RIGHlPS5CcWRWtH8Eo2mj1zhIKNbWkhy7e/4khE4/bfmo6/kK6SGZLbZ4A"
	}
}

EFGM.ITEMS["arc9_eft_p226r"] = {
	fullName = "SIG P226R 9x19 pistol",
	displayName = "P226R",
	displayType = DISPLAYTYPE,
	weight = 0.2,
	value = 41000,
	levelReq = 5,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/p226r.png", "smooth"),

	sizeX = 2,
	sizeY = 1,

	caliber = "9x19",
	ammoID = "efgm_ammo_9x19",

	defAtts = "XQAAAQBMAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+VxqdivxKVF5T+C7zd3vec1rvrAoEdFGwNxOIARyiqMLUYwCcRpAng5F3a8P++FMOSod0D0BXl1e77r2cWTrbxmXSuPJVJXprMK9aBhNpA5UGQXVURYk9qsVNl6LiGhdn8PS8HDLdoOpE1cAfNLxO8yZs=",
	duelAtts = {
		"XQAAAQBMAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+VxqdivxKVF5T+C7zd3vec1rvrAoEdFGwNxOIARyiqMLUYwCcRpAng5F3a8P++FMOSod0D0BXl1e77r2cWTrbxmXSuPJVJXprMK9aBhNpA5UGQXVURYk9qsVNl6LiGhdn8PS8HDLdoOpE1cAfNLxO8yZs=",
		"XQAAAQCIAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+VxqdivxKVF5T+H7ja5EdcpulhMKD2oQkcKvPK52DSF2Mijs4tmKtO45ZtMp6B7OVpSJ6ZKJOdVlr8lK+LY1Y9G9lH1sMQxL6msLsOTU+XoFeZS6rIuCXVJzEH+pDqnACpVuJwRM+2/bDxLRjYk4mQ4tRQc/dsQUMIhb+Tq/OzT6JUUgJOybtcPrhzpaOyiXdQ",
		"XQAAAQDMAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+VxqdivxKVF5T+H7ja5EdcpulhMKD2oQkcKvPK52DSF1eELwEg1scDqiuAJ30n4oQEtpXWWsudlT1YUpRWbvR5am7z/+E+6D82nzKyBBk2+CgjGelHLsJYIeX2ibg3h/i3fm8Ue4aLjqty4yE9Gz8ELPuQpAAW9elMRmhS6kbmorGhVB7DiJyirCHNb30XCFRIOWzu0IT5nl80RaMueVBMqjMeAA=="
	}
}

EFGM.ITEMS["arc9_eft_sr1mp"] = {
	fullName = "Serdyukov SR-1MP Gyurza 9x21 pistol",
	displayName = "SR-1MP",
	displayType = DISPLAYTYPE,
	weight = 0.8,
	value = 32000,
	levelReq = 8,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/sr1mp.png", "smooth"),

	sizeX = 2,
	sizeY = 1,

	caliber = "9x21",
	ammoID = "efgm_ammo_9x21",

	defAtts = "XQAAAQBXAAAAAAAAAAA9iIIiM7hMNz0dhIkbkvLjTdSR5gRNNIHH3iMsviZ+8MTSN7UCyyRm0aGA+jNdSGXjQWiRJbBIjQEMikyPT7J/h14DxwI6DqLvMGhtAA==",
	duelAtts = {
		"XQAAAQBXAAAAAAAAAAA9iIIiM7hMNz0dhIkbkvLjTdSR5gRNNIHH3iMsviZ+8MTSN7UCyyRm0aGA+jNdSGXjQWiRJbBIjQEMikyPT7J/h14DxwI6DqLvMGhtAA==",
		"XQAAAQBbAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV4/QsCrW0jf7dDYPzyaWPypBQdrOAHkcVLWt8WEHYm6VLC/saLIwfnJQ8fr/NEk+mh1wV5a/ltgaBsHWZZ2UMLnFG/cMm+SH3ergMDRo2nTx8UMKx9wCoMW7UCzhcHVj2+gOTrghfHXi2Xaw19Xt16tL60lg",
		"XQAAAQAdAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV4/QsCrW0jf7dDYOZoqWPypBQdrOAHkcVLWt8WEHYm6VLC/saLIwfnJQ8fr/NEk+mh1wV5a/ltgaBsHWZZ2UPoxHOOgRYThTjhwZp0OKTDNd8FXw83mkMoSoXxqlsFO918ro24YXtCj2VcNq3H/2bCg4C26agIA="
	}
}

EFGM.ITEMS["arc9_eft_apb"] = {
	fullName = "Stechkin APB 9x18PM silenced machine pistol",
	displayName = "APB",
	displayType = DISPLAYTYPE,
	weight = 0.8,
	value = 34000,
	levelReq = 6,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/apb.png", "smooth"),

	sizeX = 4,
	sizeY = 1,

	caliber = "9x18",
	ammoID = "efgm_ammo_9x18",

	defAtts = "XQAAAQBBAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LceiiH+OYU8CKsAUrAdr/tENAyThefN6cDVAvNEE2F5mDkS3Rk1uREfnqeAx7q76URnhkxW9ezdHaZGJlkZD9FmCgkjjCQDJ1B0mOn3eT4vC72j3iq1TLR4PqnlLWvjo9JegVAA==",
}

EFGM.ITEMS["arc9_eft_aps"] = {
	fullName = "Stechkin APS 9x18PM machine pistol",
	displayName = "APS",
	displayType = DISPLAYTYPE,
	weight = 0.9,
	value = 28000,
	levelReq = 5,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/aps.png", "smooth"),

	sizeX = 2,
	sizeY = 1,

	caliber = "9x18",
	ammoID = "efgm_ammo_9x18",

	defAtts = "XQAAAQDoAAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LceiiH+X7VuJllh2JgrygyhJzeJeRAUMgmKPwWdZCzRqYZexKUns3rzBSsK2Hj+avMZYkJ4b9wJXw3J+GnkWctfYm9Dgy6D19uNPzAA=="
}

EFGM.ITEMS["arc9_eft_tt33"] = {
	fullName = "TT-33 7.62x25 TT pistol",
	displayName = "TT",
	displayType = DISPLAYTYPE,
	weight = 0.6,
	value = 9000,
	levelReq = 1,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/tt33.png", "smooth"),

	sizeX = 2,
	sizeY = 1,

	caliber = "7.62x25",
	ammoID = "efgm_ammo_762x25",

	defAtts = "XQAAAQC/AAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8Oc2p/mgB/xAKAv4zbPEDsMJKGrN0dVZcBOr2DjQYRbMT4MiiumWQx+UK95/Nvc39bwvVU1RkDteZAwlo0mn6ASN/g31UowrgJXSPvZCEto68A",
	duelAtts = {
		"XQAAAQC/AAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8Oc2p/mgB/xAKAv4zbPEDsMJKGrN0dVZcBOr2DjQYRbMT4MiiumWQx+UK95/Nvc39bwvVU1RkDteZAwlo0mn6ASN/g31UowrgJXSPvZCEto68A",
		"XQAAAQAqAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8Oc2p/mgB/xAKAv4zbPEDxyOZoJ58U8oki/2eQkt8Lzck2Kx2n8cnyybSAD6yICbRior8KjznzoqXiw41VmvxR4toZTQuT6doYQ2vCd/hOoi6nZJcI1TvsTyr/xrDFRS14qa+K7Z8b5n2lMAA="
	}
}

EFGM.ITEMS["arc9_eft_cr200ds"] = {
	fullName = "Chiappa Rhino 200DS 9x19 revolver",
	displayName = "CR 200DS",
	displayType = DISPLAYTYPE,
	weight = 0.5,
	value = 9500,
	levelReq = 1,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/cr200ds.png", "smooth"),

	sizeX = 1,
	sizeY = 1,

	caliber = "9x19",
	ammoID = "efgm_ammo_9x19",

	defAtts = "XQAAAQC1AAAAAAAAAAA9iIIiM7hMNz0dhIkbkvLjTdSR5gRNNIHH3iMxyb1USyArYDmk731f5dmwXd1V2F4KB2PoMgWnJCTwClBVT2CAhNumNQnOhBgvFvtbRGRj8/vmD9myG6J5DmZhnZIA"
}

EFGM.ITEMS["arc9_eft_cr50ds"] = {
	fullName = "Chiappa Rhino 50DS .357 revolver",
	displayName = "CR 50DS",
	displayType = DISPLAYTYPE,
	weight = 0.7,
	value = 17750,
	levelReq = 3,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.HOLSTER.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/cr50ds.png", "smooth"),

	sizeX = 2,
	sizeY = 1,

	caliber = ".357",
	ammoID = "efgm_ammo_357",

	defAtts = "XQAAAQD0AAAAAAAAAAA9iIIiM7hMNz0dhIkbkvLjTdSR5gRNNIHH3iMxyb1USyArYDmk731f5dmwXd1V2F4KB2PoMgWnJCTwClBVT2CAhNumNQnOhBgvFvtbRSBdDSX/JEhDflFLZp4RsgU48ZBAfbFtCxzD2A==",
	duelAtts = {
		"XQAAAQD0AAAAAAAAAAA9iIIiM7hMNz0dhIkbkvLjTdSR5gRNNIHH3iMxyb1USyArYDmk731f5dmwXd1V2F4KB2PoMgWnJCTwClBVT2CAhNumNQnOhBgvFvtbRSBdDSX/JEhDflFLZp4RsgU48ZBAfbFtCxzD2A==",
		"XQAAAQCFAQAAAAAAAAA9iIIiM7hMNz0dhIkbkvLjTdSR5gRNNIHH3iMxyb1USyArYDmk731f5dmwXd1V2F4KB2PoMgWnJCTwClBVT2CAhNumNQnOhBgu/7FQ2ztjsGXlZAaPcWUFF9+/ao7A9doMqPeW0mMTn0pbP7RJxwnW6bVp9fYeLsGdptb+14wuerxIY+Q33w1Q9AcI/K7PUhJhgSmMJ9kLTnXRC7Lz0AA="
	}
}
