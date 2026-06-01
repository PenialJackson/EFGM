local DISPLAYTYPE = "Sniper Rifle"

EFGM.ITEMS["arc9_eft_ai_axmc"] = {
	fullName = "Accuracy International AXMC .338 LM bolt-action sniper rifle",
	displayName = "AI AXMC",
	displayType = DISPLAYTYPE,
	weight = 0.6,
	value = 270000,
	levelReq = 48,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.PRIMARY.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/axmc.png", "smooth"),

	sizeX = 5,
	sizeY = 2,

	canPurchase = false,
	lootWeight = 40,

	caliber = ".338",
	ammoID = "efgm_ammo_338",

	defAtts = "XQAAAQDhAwAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LcsYCbthEf9oFSoSxAkrJ5MHEtbkpwPQvQB1xFtCyk1QLE+imKyPumFPHpcXKuIe+j4b3sDvYqfe7IxMhskP2yHt/GS6VwCdLv1JnbWDvOkzqVT0vfDRHIIBDfbBCeWE8UAItC5RpezcbUMzJe3DEJiZN6RO2H0yuwdj5fc6uqC17vEP2AFNDhK/TKz9ahfIuuo8wZ77EN1GK2LnmvIDyXyP4GEUWCnMW227BnoYs50TuigRg/r1bitCvXeRVhepEt2M/Wg==",
	duelAtts = {
		"XQAAAQASBAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LcsYCbthEf9oFSoSxAkrJ5MHEtbkpwPQvQB1xFtCyk1QLE+imKyPumFPHpcXKuIe+j4b3sDvYqfe7IxMhskP2yHt/GS6VwCdLv1JnbWDvOkzqVT0vfDRHIIBDfbBCeWE8UAItC5RpezcbUMzJe28YU0xgjDFWbExm2u/gb9U/wevno60RRm+ZJBC5NZv+cR1z5nzlmvFbVzkYxg63fxY+NhWBlpjeWfSTIO++jiNhCifU6ensxTngEFH1RzN711tW8p/u2xq/rbSUd/eQ1VVbmK9u7TWI",
		"XQAAAQA1BAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LcsYCbthEf9oFSoSxAkrJ5MHEtbkpwPQvQB1xFtCyk1QLE+imKyPumFPHpcXKuIe+j4b3sDvYqfe7IxMhskP2yHt/GS6VwCdLv1JnbWDvOkzqVT0vfDRHIIBDfbBCeWE8UAItC5RpezcbUMzJe3AFnpYnw44e0qAkoHrd3XzcghU9YIJPUs+hVRyiLOLFcklIZFFyRLGQw6s5UZkrPw3px8GAdz7kjHV6vRZWGLGYxEc9xXhEtAb7L7+0ZoSLMVq1VhvqhABAlru18JdFq9YZUAWzZkWralkREtaXGcQSYoRC1Ig=",
		"XQAAAQD5AwAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LcsYCbthEf9oFSoSxAkrJ5MHEtbkpwPQvQB1xFtCyk1QLE+imKyPumFPHpcXKskJhSCMU0JkhZtWxnt7In3Mt16embJ/H1PXFVaAtOlFkX1OBS6xSKmVWLrM8SFcwUuAnEN13Xr5qQutKb4m0rfdupG94wNSHrBLX7mXvxMFsaPO6qKpv5WpmfzdFWEuP5sjm9VM9O9wjxvZ8XbCBczcF42m2IKk5xFvZCSwILv8XZZTexHPNpjCeod8nsOjARLz0lbu+Ot2DssoO5mET7yXmP2pihCIn6IU1Wvs5giwewZ8ZLAtf+r0fB+jfgA=="
	}
}

EFGM.ITEMS["arc9_eft_ak50"] = {
	fullName = "AK-50 .50 BMG sniper rifle",
	displayName = "AK-50",
	displayType = DISPLAYTYPE,
	weight = 8,
	value = 600000,
	levelReq = 48,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.PRIMARY.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/ak50.png", "smooth"),

	sizeX = 7,
	sizeY = 2,

	canPurchase = false,
	lootWeight = 25,

	caliber = ".50 BMG",
	ammoID = "efgm_ammo_50bmg",

	defAtts = "XQAAAQAJAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8MZPzvHDqVW9Zr+l1XqbTku0XrI40dVyapGHi+sNSHLbu8NvEE+5m/7y1Uc3pCqoaAsC9b1LCp3S5vzlKWdbSHnSMBTjM4TqruOeDpGWYwCaEEuqRZtK1OS0OmXLEYJEDTDufsiz9zMrLV4gApem0FhjHku3hIRvpAKQj03bppFtFbgk+LHUc9gyCB",
	duelAtts = {
		"XQAAAQA8AgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8MZPzvHDqVW9Zr+l1XqbTku0XrI40dVyapGHi+sNSHLbu8NvEE+5m/7y1Uc3pCqoaAsC9b1LCp3S5Txn8NjJYH/6pQXKDLp6jucIbFAcmLjPE3b7aW6sgZznpX0Zh+SG1Rr8j5KkZwMJuDKYK3pxdQLGwisbbonodoVI57Hj8e6+1WOaQF7I/0GIzcd/8WZOMuv1EZeJqxu4k+vZ8/HW1/Qj1MTQ==",
		"XQAAAQB3AgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8MZPzvHDqVW9Zr+l1XqbTku0XrI40dVyapGHi+sNSHLbu8NvEE+5m/7y1Uc3pCqoaAsC9b1LCp3S5vismXf9ofdl7aRaqslHmhDr9zAlS9nSaPhuJy8YoAonhtSnNisGuBejm8wpU5RMbVC/KQLgeZu98Tz3zKZZySwH/Kl23HwjESn6xPeEtHtqdkppYkUP3hRGRL9Y/LVeD2sfyuQzh1KNDWPx0rHjr1t+00LwA=",
		"XQAAAQBEBAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OSy5Op230jtwEtUV0UKHHWN3OucipFH8cqbbG6LM9wn2Ic03eay8/MtpQAzEww8TJuiF+BkFhbTedREgci2VUoPv4SlRZKMVzdXQlsFZLtEC7vYq/LTVQRyboacZkuMU1jglR93aXXM3qb/efIyE7Vpl0SLEQVIVINEXcZud0GdCY7TvESkI+wDEfw29IbOC1O+s9AutCsbsHwS1dExe6scS8bDwKgj0VQ5z4PrtiMEqPq7dEC1KWHSpHmJKHJAPhyGWGL9HRWqFpg4GzyKOLMDrzMybGgZE6g0Rf+v1PkIZFAO6B7tJw30/89FpVIw1UBoXhY8GnqL0K8yI="
	}
}

EFGM.ITEMS["arc9_eft_dvl10"] = {
	fullName = "Lobaev Arms DVL-10 7.62x51 bolt-action sniper rifle",
	displayName = "DVL-10",
	displayType = DISPLAYTYPE,
	weight = 1.1,
	value = 150000,
	levelReq = 28,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.PRIMARY.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/dvl.png", "smooth"),

	sizeX = 5,
	sizeY = 2,

	lootWeight = 75,

	caliber = "7.62x51",
	ammoID = "efgm_ammo_762x51",

	defAtts = "XQAAAQCKAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8L6/0wnr/Jsa1p1kHyfvXikOJS7PNC7qaXt4+w3qSztc3+cFQrBWa+C57ISiJHQGQP8/jtqaT4Ps7YabTcGDFQZbKeE7+q+jP4p/y+1HWCJQ1+yUopZIsi7MgifhFwXRiugBfSx/+G1bRwBjHcYWTFVatptm2ErIrcX1G4pKoVaJpkjG4B///SSYIsBbVA",
	duelAtts = {
		"XQAAAQDPAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8L6/0wnr/Jsa1p1kHyfvXikOJS7PNC7qaXt4+w3qSztc3+cFQrBWa+C57ISiJHQGQP8/jtqaT4Ps7YabTcGDFQZbKeE7+q+jP4p/y+1HWCJQ1+yUopZIuaMnDKcnZKoVLngqtXvRkNPyVlatMYp+gYHnPxEGal4zfAfsgzGqmKTfrw3R8ukBglMW7cEQGM2ZJSlp71KpHPfpa4oA==",
		"XQAAAQClAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8L6/0wnr/Jsa1p1kHyfvXkjj0kodlUtMYcOfYnzMc2iKb3U3KJo+nPdch/AoQfXnFzlhZIUZkdQpsvekFrKuvBvzK9y9SwRii201MeisQqiPc7TyU44/orrzuEEE1VAv2faZE5rDXlGe4vUVN7SpRe06jyWBmiAATzPw8r9/r+0SPprqOe6s87vZCTId6He2MoLTws8x2hRn892Ug5C77y",
		"XQAAAQDHAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8L6/0wnr/Jsa1p1kHyfvXkjj0kodlUtMYcOfYnzMc2iKb3U3KJo+nPdch/AoQfXnFzlhZIUZkdQpsvekFrKnDq+lV8aVVsrLgKUlLfI+96rXLNXnbMhpC3z/VtdfnFKg1g7bccv4Z1S5yKLKaFOlW4JOwnHWfYA4sTpbBsRftb6aF6XWjRCshKuial5Yqk0QCYZlj3B/GuECNz3JHO/vAP7K2Wvw10yi86nY16"
	}
}

EFGM.ITEMS["arc9_eft_mosin_infantry"] = {
	fullName = "Mosin 7.62x54R bolt-action rifle (Infantry)",
	displayName = "Mosin Infantry",
	displayType = DISPLAYTYPE,
	weight = 0.8,
	value = 38000,
	levelReq = 1,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.PRIMARY.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/mosin_infantry.png", "smooth"),

	sizeX = 6,
	sizeY = 1,

	caliber = "7.62x54",
	ammoID = "efgm_ammo_762x54",

	defAtts = "XQAAAQBmAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV4+pY+0XkZKHWxkZKCKF0+Ob5fNs3s5OFKWT+HASlx6CN4+PJGFPkL3i5sLLz+TOvImFE2UK7JKi1QOyK1JJP3tN/dQxofSuCMLUjYAvvlOko63tO1HwDkD4IoUYtSvcGXUy5gvrkEDaCMnpVA==",
	duelAtts = {
		"XQAAAQBmAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV4+pY+0XkZKHWxkZKCKF0+Ob5fNs3s5OFKWT+HASlx6CN4+PJGFPkL3i5sLLz+TOvImFE2UK7JKi1QOyK1JJP3tN/dQxofSuCMLUjYAvvlOko63tO1HwDkD4IoUYtSvcGXUy5gvrkEDaCMnpVA==",
		"XQAAAQAuAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV4+pY+0XkZKHWxkZKAhCBv+b5fNs3s5OFKWT+HASlx6CN4+PJGFPkFXYNn3M/60zKLcFSWviKJ88AbbHFhmcMHG3tbipY+cpN7b4esHToYHWGLFz8Clcb6tWZwWyE0xSv7aFkpv1XndujBJYsLQo3QKHYw==",
		"XQAAAQBZAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV4+pY+0XkZKHWxkZKBf7IGu2lWGmK/HocBlnLH+8/bGsx5ZKW0ap1fFZq537VY9Zdq8whBURrTfQcry4FTBj8EkSDfHgNhVk2MgWlgxl/STGJfjdwY+9iXvyairf4Ol1E4chifa94EaUo7pJENwgQcS7ujBwPFvP/9vupM8Gtg=="
	}
}

EFGM.ITEMS["arc9_eft_mosin_sniper"] = {
	fullName = "Mosin 7.62x54R bolt-action rifle (Sniper)",
	displayName = "Mosin Sniper",
	displayType = DISPLAYTYPE,
	weight = 0.8,
	value = 44000,
	levelReq = 4,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.PRIMARY.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/mosin_sniper.png", "smooth"),

	sizeX = 6,
	sizeY = 1,

	caliber = "7.62x54",
	ammoID = "efgm_ammo_762x54",

	defAtts = "XQAAAQBmAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV4+pY+0XkZKHWxkZKCKF0+Ob5fNs3s5OFKWT+HASlx6CN4+PJGFPkL3i5sLLz+TOvImFE2UK7JKi1QOyK1JJP3vegGGaON+2VPul/8++WqyUZNeaa6DChd06BdK8dCBUUYi/z5yiDWpIYeeA",
	duelAtts = {
		"XQAAAQBmAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV4+pY+0XkZKHWxkZKCKF0+Ob5fNs3s5OFKWT+HASlx6CN4+PJGFPkL3i5sLLz+TOvImFE2UK7JKi1QOyK1JJP3vegGGaON+2VPul/8++WqyUZNeaa6DChd06BdK8dCBUUYi/z5yiDWpIYeeA",
		"XQAAAQAFAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV4+pY+0XkZKHWxkZKCKF0+Ob5fNs3s5OFKWT+HASlx6CN4+PJGFPkL3i5sLLz+TOvImFE2UK7JKi1QOyK1JJP3vegGGaON+2VPul/8++Wqx9hst5jXl1HwfEXbZrtPBcOmFxktp4YaxyzxZh2WJ6on06Eml+fTHIL80GqdpACZhTYgTmBHnMXqqNTwES6svKBj8A",
		"XQAAAQAkAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV4+pY+0XkZKHWxkZKCKF0+Ob5fNs3s5OFKWT+HASlx58EPoUAikbHspKkOaFhCayEVFQjLfYFIuCwRDnGXgFEDOaYwHBAHqsuqSSrh/2AgP+hGOSPWX2ArbglWRn3/12ByXJz65pWv6LFcD9/hfYCILyzLzaiIVaBaHcJaVIiLrBbdjxC0Uouc9J7vZKhBL5czFpoGXoaMQh95HSEuT6NJaQelBcfdEziYdJB53dwAA="
	}
}

EFGM.ITEMS["arc9_eft_mp18"] = {
	fullName = "MP-18 7.62x54R single-shot rifle",
	displayName = "MP-18",
	displayType = DISPLAYTYPE,
	weight = 0.7,
	value = 17000,
	levelReq = 1,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.PRIMARY.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/mp18.png", "smooth"),

	sizeX = 5,
	sizeY = 1,

	caliber = "7.62x54",
	ammoID = "efgm_ammo_762x54",

	defAtts = "XQAAAQDiAAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV6VfczERS4GZYjxV/r216Up0BZRyLU8Dd5/9fAAPNftYJczs1AaTA/zqPr5a6PhnJBEbni2Tbknz12sfUGtXzyYmLojKU77pXszKSY9zLBhn2yCAJujtDC+tQwW5S24WoA==",
	duelAtts = {
		"XQAAAQDiAAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV6VfczERS4GZYjxV/r216Up0BZRyLU8Dd5/9fAAPNftYJczs1AaTA/zqPr5a6PhnJBEbni2Tbknz12sfUGtXzyYmLojKU77pXszKSY9zLBhn2yCAJujtDC+tQwW5S24WoA==",
		"XQAAAQAtAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV6VfczERS4GZYjxV/r216Up0BZRyLU8Dd5/9fAAPNftYJczs1AaTA/zqPr5a6PhnI3bQoFKvjgSDb9Fm8zNHDLagqBus0m14DQwEFR9Sa5mU26tT8EXUNpz0/PG+tzJisXNqVFQ6luRu1BAswGXlyBVXRT6CbGucj0Kg",
		"XQAAAQAsAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV6VfczERS4GZYjxV/r216Up0BZRyLU8Dd5/9fAAPNftYJczs1AaTA/zqPr5a6PhnJBEbni2TbtKfmzXgxNQfokLNo4mDkc6BCLXJ87kjEwbi/sRmgB2bNb7VgmIndKS1C0mQm8PBGU4m/XeDc3YjcZtXhu6ppvydAA=="
	}
}

EFGM.ITEMS["arc9_eft_t5000"] = {
	fullName = "ORSIS T-5000M 7.62x51 bolt-action sniper rifle",
	displayName = "T-5000M",
	displayType = DISPLAYTYPE,
	weight = 0.8,
	value = 88000,
	levelReq = 20,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.PRIMARY.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/t5000.png", "smooth"),

	sizeX = 5,
	sizeY = 2,

	caliber = "7.62x51",
	ammoID = "efgm_ammo_762x51",

	defAtts = "XQAAAQBTAwAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8ObRiu3tibt3IP5oBbAn23oHzYA8d1/1rQ/6F6KFMvcaM/pLh9ayXkhgZ14kGEirPqWpP/6dxSMYHyxausiP7ggK1p8DCF9BmSb4P3uaSQI9UKX1Tr7qt2eR2Yx9fs4nwR58vTFh2I8lu11HcNFQaAswMKFbD2SaXMhqfJwu83TYJB1+grgXPZyR68JdCcWX6U5YtKl8drOluEj1jijLNSQfwc9v06T2Nqcukz6M37sCCB3fHwFA==",
	duelAtts = {
		"XQAAAQBtAwAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8ObRiu3tibt3IP5oBbAn23oHzYA8d1/1rQ/6F6KFMvcaM/pLh9ayXkhgZ14kGEirPqWpP/6dxSMYHyxausiP7ggK1p8DCF9BmSb4P3uaSQI9UKX1Tr7qt2eR2Yx9fs4nwR58vTFh2I8lu11HcNFQaAswMKFbD2SaXMhqfJwu83TYJB1+grgXPZyR68JdCcWX6U5YorP/zFWj109l4ESeq8tIUNxhI9oLWMYrTKyTbvKNqo/A0E43mthzK/jAXJvOICmHOW",
		"XQAAAQCwAwAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8ObRiu3tibt3IP5oBbAn23oHzYA8d1/1rQ/6F6KFMvcaM/pLh9ayXkhgZ14kGEirPqWpP/6dxSMYHyxausiP7ggK1p8DCF9BmSb4P3uaSQI9UKX1Tr7qt2eR2Yx9fs4nwR58vTFh2I8lu11HcNFQaAswMKFbD2SaXMhqfJwu83TYJB1+grgXPZyR68JdCcWX6U5Ypuv3HSJsFgIOj2bXUHOGUrjl09sr74lM3rvQZaewyv797Xv2+KaR26yU3NG74bK6xFPJgxeDGlU6vDwxe8agFgu3lb5H4MjfpSqw==",
		"XQAAAQBYBAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8ObRiu3tibt3IP5oBbAn23oHzYA8d1/1rQ/6F6KFMvcaM/l6iGSY8pUBTfBe8NDC17ogy35d7vZgq5Tt3gKqgpee2m/7sB2rIB1xCiGXWzyRgkUu9g6C/0GAoNOHrat8n4XPs/GDViU5gUkanJu3KU521Ft70gnxokF+35g6nlwN4Jh7yAsNeWFSxN0JPsR7SCqltmftuZcYWta9yvtz5+WBxLbBcNV6LUSV6JN3TXQooByaWYVF8aw71svH/jflGlLyP28i9M8hKMIcI6f0ht10FjCxtId3qDhiPskyDTGt/j59dnUWmiO71Kp+i/NS21tmX9kcELc1ajsuUA"
	}
}

EFGM.ITEMS["arc9_eft_m700"] = {
	fullName = "Remington Model 700 7.62x51 bolt-action sniper rifle",
	displayName = "M700",
	displayType = DISPLAYTYPE,
	weight = 0.5,
	value = 63000,
	levelReq = 8,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.PRIMARY.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/m700.png", "smooth"),

	sizeX = 5,
	sizeY = 1,

	caliber = "7.62x51",
	ammoID = "efgm_ammo_762x51",

	defAtts = "XQAAAQAPAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NUfBrxG5/o6wCZICOBvnuThI2G4SXoY5YVE6djRZzT+hLefB8oK6y+WP73ZLPfot111L1Z8yv/Klzy9wOI8rA2th1khRAIQn3Zxm2dJNQkqO2nZexAlJLFGg30dKLB+fUGNNJBuFy1WcFa6ehPHnKQA==",
	duelAtts = {
		"XQAAAQCGAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NUfBrxG5/o6wCZICOBwJh3caA0NMDX7fc7QgFE2i2HvW1MzZeJ+Mtr7E+NNkkA8zo/WNEH4/VVi0MZXTYpJ7lJW2YN8cI8/kqtTo4FXzsKRpLFnKi1HV7LTPpF60DBQ/OJvKNGOuSZKDERH+0OaXDR5uGYLPhGoF2H9ysli4PdA0IKvXNCyZUHO3qJw==",
		"XQAAAQA/AgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NUfBrxG5/o6wCZICOBvnuThI2G4SXoY5YVE6djRZzT+hLefB8oK6y+WP73CXXAPU3DotmdZ7m/gDyLxdxw0L6FonLdpBPDEDM0x2n+s1rY6MtiVSwj2u8f2IBSsKeG47DMn2lBrftFQBp1Z+h1P6jZUjPnwGJfQYtKSpCqL5VKJMNbwQyajvHtoib652VNJDmBQAr9eDQSaWbRMpR4mgtfmY3yCH1a4YNYpxs0EcmptKDQxfTiQ==",
		"XQAAAQDJAwAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NUfBrxG5/o6wCZICOBvnuThI2G4SXoY5YVE6djRZzT+ZJOmfodyyVUpJ+9LfxuwwO7+61S63njypeRg6WIaY8DalKS9O81DBstzYdPxSyvtFvjuO4XDl+ujXpuwujUZ3LBVtAlbPFv+/BrEDwxRHFG0HbtUrKOpHNnXs67rhzvBRhlvcftZeNQTTkOitidVaIhfAqSgtJvWc76gPuymAUfodZnjutpr7cMB0iuNNbkfnxV4d2NAIQytMxYau270Qh5XVJ9IDVcvIb2ufE6DjCOl5s2VYQub0Y5f+Y4R+Svo1yP11RlxgDZSvMJMSbu8eCGgUlE4qF/tdjAYytgcAl/Q/AlEXpXMuXEX0SI9SPke3bsKqVJU06sdlwJpl44ffvRYA="
	}
}

EFGM.ITEMS["arc9_eft_mxlr"] = {
	fullName = "Marlin MXLR .308 ME lever-action rifle",
	displayName = "Marlin MXLR",
	displayType = DISPLAYTYPE,
	weight = 0.8,
	value = 70255,
	levelReq = 17,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.PRIMARY.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/mxlr.png", "smooth"),

	sizeX = 5,
	sizeY = 1,

	caliber = ".308 ME",
	ammoID = "efgm_ammo_308",

	defAtts = "XQAAAQBHAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NWIc8JEM7NCCZf/J8JCP4tIuIEY6acQEF0OEtXkIjDhlEIYFnknGGhDLWgCcEIxWy+NaotQ9aQE4OnvMOHIti/qf01KaPR+MrgzE/mGQaQKXvABekpgeYPhV3ojrSGdbNdux8/sYI6VzNCf88FKhngQvROdgq+k3LbgZm2aYNtLIJ/xM09rrCFQ/DEv6TI0Xb+09FOr3mRUTb1j+cgbFA",
	duelAtts = {
		"XQAAAQBHAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NWIc8JEM7NCCZf/J8JCP4tIuIEY6acQEF0OEtXkIjDhlEIYFnknGGhDLWgCcEIxWy+NaotQ9aQE4OnvMOHIti/qf01KaPR+MrgzE/mGQaQKXvABekpgeYPhV3ojrSGdbNdux8/sYI6VzNCf88FKhngQvROdgq+k3LbgZm2aYNtLIJ/xM09rrCFQ/DEv6TI0Xb+09FOr3mRUTb1j+cgbFA",
		"XQAAAQCJAwAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NWIc8JEM7NCCZf/J8JCP4tIuIEY6acQEF0OEtXkIjDhlEIYFnc8yyDAWiDOml/04arsO9YABx4sds7e4n6Qxx9Qc3NHGyBkPt9IFg+2S1BliHH4ZNCEoiBaKKsMPEAPxSaZgfTq8n1aM8OWBZ2vfcc5eoTr6Frj5GHZG1bOMCagLE7FRwq9SfU0rnredk6ZRwwLBKuLYB7IGY4PnMWn8zs888zBIo2JFpKbEnWYmnnjXo6Rpxlgq6ijLTbF9llaUErLOK3m6ewFSEU4cnEP6nNhNnvzzHA4WxiqeyNrkXg/ynT9bOumfCzX45usGzq+xXQA==",
		"XQAAAQBFAwAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NWIc8JEM7NCCZf/J8JCP4tIuIEY6acQEF0OEtXkIjDhlEIYFm7U37LgEeKM2RgawaPSw5HAb4QIyXLgLfS1mRVQ5Fm4t9dYfYUkkXZJwYjR2zEDB917w8nJwQ/gfA6lf7VW4IRSulRRRkwepyAB9R431RCEqITHtYGLhGUQwmkdE/ULRXjePvr8DFiGLy3Qq926INkwgnfNbcm3P9UMHlzkGmVeKN+4iQxt+v8vQR8Vy9HajvKRHRITY1R9oCjsMnLKy9lF1cyoGNCrNbAyAgXVIdwIS2ZjBYXO5AaOw="
	}

}

EFGM.ITEMS["arc9_eft_sv98"] = {
	fullName = "SV-98 7.62x54R bolt-action sniper rifle",
	displayName = "SV-98",
	displayType = DISPLAYTYPE,
	weight = 1.5,
	value = 74000,
	levelReq = 13,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.PRIMARY.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/sv98.png", "smooth"),

	sizeX = 6,
	sizeY = 2,

	caliber = "7.62x54",
	ammoID = "efgm_ammo_762x54",

	defAtts = "XQAAAQBLAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OSytTkJgaUnpNNGc+Gl6jVHV/uSNDf/kO4OHmIYepg0elfMCMxvyZU1WTuQFb/dnwV8M4PC6lSZdZMuezE7eF3HWlgqW7PFipSfyrVe9jbv03iHjENH3dhywatmAwUqycXPSurpMpqxJ3HYd+hhPLgZfgpR0jPJd5szGtky82jQ==",
	duelAtts = {
		"XQAAAQBLAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OSytTkJgaUnpNNGc+Gl6jVHV/uSNDf/kO4OHmIYepg0elfMCMxvyZU1WTuQFb/dnwV8M4PC6lSZdZMuezE7eF3HWlgqW7PFipSfyrVe9jbv03iHjENH3dhywatmAwUqycXPSurpMpqxJ3HYd+hhPLgZfgpR0jPJd5szGtky82jQ==",
		"XQAAAQASAwAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OSytTkJgaUnpNNGc+Gl6jVHV/uSNDf/kO4OHmIYepg0elfMCMxvyZU1WV+lFnRB+RDjzwSyAc+CTN4y7lOuMrmFgOMS+FftrQcvhx20JAN6jXQr59JAKNsiK2ct/+QgFW8PQsDHCSOfVBPFCw551Kf4j44rSrwTgpXfcS1hofy+7Lo5ObgwgZqubmEtRvn1lH0s+uLMJRkKlkpecOcu88GSV6ssFKaS7fSs2NGqfMIztFIogLXPMSUuVq5nclB/1+e1gMGWoXEGGwPUOJ",
		"XQAAAQCfAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OSytTkJgaUnpNNFu1bbpmsvOeCeWqb9LWE2G+5A2E9WGLXD97UauavWB3MQXSHE0YS9Q2WT4p2qebvWNPrBRz98kvXXjzdRyW+5xnyZnlvpr+hw1BiE3W4dqU41I/cVqt0tKNF66v9ZYmhrTKfUJBrk3nZMPxjpNKw6t+CJQEtGrPQoIK3ykRFpLBEWt+xl4="
	}
}

EFGM.ITEMS["arc9_eft_vpo215"] = {
	fullName = "Molot Arms VPO-215 Gornostay .366 TKM bolt-action rifle",
	displayName = "VPO-215 Gornostay",
	displayType = DISPLAYTYPE,
	weight = 0.5,
	value = 27000,
	levelReq = 3,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.PRIMARY.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/vpo215.png", "smooth"),

	sizeX = 5,
	sizeY = 1,

	caliber = ".366",
	ammoID = "efgm_ammo_366",

	defAtts = "XQAAAQBiAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8Ow/iPem4evSEh1ZVBQmKe6TaWo6POdajS5pypMmDY20hbHcZSWr7CxGfmXs85U87DKMtHcVIC0q5r3emPMZeQY6fJyMV2DpZXb0TEMuHcUwO1tU5prVUPsBo7HimY3Il6WrUtItPKOdFNc21rxdVWIB54CVOib0iEWQ==",
	duelAtts = {
		"XQAAAQBiAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8Ow/iPem4evSEh1ZVBQmKe6TaWo6POdajS5pypMmDY20hbHcZSWr7CxGfmXs85U87DKMtHcVIC0q5r3emPMZeQY6fJyMV2DpZXb0TEMuHcUwO1tU5prVUPsBo7HimY3Il6WrUtItPKOdFNc21rxdVWIB54CVOib0iEWQ==",
		"XQAAAQCWAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8Ow/iPem4evSEh1ZVBQmKe6TaWo6POdajS5pypMmDY20hbHcY2Sc/hpq2gNBS+1uIe9k6h/UNXBBq6SkbDUezh1RqqvPIV+TuCi1Bq8crhMv14wl0GedUsfxDeJ6I0m2FbbjmdT7nE7HY11x4JfnGrmiT6o/4beGRLuHDRdJ0NTL+WWI2X1GmEB+Q9o3Xcd+alhLxX/kFPV9yLLaLYIA==",
		"XQAAAQD5AQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8Ow/iPem4evSEh1ZVBQmKe6TaWo6POdajS5pypMmDY20hbHcY2Sc/hpq2gNBS+1uIe9k6h/UNXBBq6SkbDUezh1RqqvPIV+TuCi1Bq8crhMv14wl0GedUsfxDeJ6I0m2FbbjmdT7nE7HY11w/Ws24Mxe4VifNS6D3njHpYwz11zPs1TQzg4SHVN4uz7fr8xkYCN7dqkohUsOcUOAT2ywnmH+pD4w82YOdBFiw9gsdOcvQtvcDpes3r5gA="
	}
}

EFGM.ITEMS["arc9_eft_sako_trg"] = {
	fullName = "Sako TRG M10 .338 LM bolt-action sniper rifle",
	displayName = "Sako TRG M10",
	displayType = DISPLAYTYPE,
	weight = 0.8,
	value = 249500,
	levelReq = 48,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.PRIMARY.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/sako.png", "smooth"),

	sizeX = 6,
	sizeY = 2,

	canPurchase = false,
	lootWeight = 35,

	caliber = ".338",
	ammoID = "efgm_ammo_338",

	defAtts = "XQAAAQD4AgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OSPUS50ueaV1GG+rPRo5+8m2Sm656FXjCbKUY7J6DBmUnL9FXWbbSS2BVCo31BNK4Bvrc6zYshs41G/Zc61xYlL+L4GI5NKRlP/Aa75K43e/UAnao6/4jXc0TuG5WT/TP851aNFst+XIAdAV99s+P2SyECbvjN8tB0TUBR9QTBY5YjsR11tMSKoEpUaLETGViO0j1zwi7Z4wTQqZYwgHBEj+eecA8ksrgWYkTCjvBcf1xAA==",
	duelAtts = {
		"XQAAAQArAwAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OSPUS50ueaV1GG+rPRo5+8m2Sm656FXjCbKUY7J6DBmUnL9FXWbbSS2BVCo31BNK4Bvrc6zYshs41G/Zc61xYlL+L4GI5NKRlP/Aa75K43e/UAnao6/4jXc0TuG5WT/TP851aNFst+XH/rnezZMf6ogXNjbU0FShfZbPc2CyNI3c/fcxO/pncPY4cJTQIPkl4nG9MXzjqp6zUiGkm0xEBpsFhdnkonlMI0yNHGJ/RuzDnLV47wsyaNZ3zTymjwKHp3sBZcT2ymbY=",
		"XQAAAQBwAwAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OSPUS50ueaV1GG+rPRo5+8m2Sm656FXjCbKUY7J6DBmUnL9FXWbbSS2BVCo31BMj0oBqGADFuRYHfmpivoXZpFkBuWDUDTTKFRjzxJJ/xwnEisZgseN1oOP0I+26+axiW8lJKwj0ZiD4mw8XecXbO69BKlnCLfvFD+QNEfLTwM8neYZq6zbekfR2Ql0LYB8mO8qCH6HTdJgIdX2Xvjc5AVvCz/i6kN2qGvDv5XkGUmMaNzk/Skkn40njldMTvpN64nxkuYWjySN526yoXjHudaEvhMuoA",
		"XQAAAQDBAwAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OSPUS50ueaV1GG+rPRo5+8m2Sm656FXjCbKUY7J6DBmUnL9FXWbbSS2BVCo31BMj0oBqGADFuRYHfmpivoXZpFkBuWDUDTTKFRjzxJJ/xwnEisZgseN1oOP0I+26+axiW8lJKwj0ZiD4mw8XecXbO69BKlnCLfuXcfDkxcj97wMjkC0IdCvbiyWi13xjUsaAWLEatxkjt31eEHPCazgnrTcwKldkCLtZQD2wriY9HfRmCArhOUr/xs0hPFnig9Zw4lUp0kd3IHIgS3mEA5AXZ5VBEO5gZfTRB1jvsIjbd/xaa2HtRu6YLmwSuPBh7GoS5AA=="
	}
}
