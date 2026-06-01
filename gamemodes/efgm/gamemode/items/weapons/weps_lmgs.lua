local DISPLAYTYPE = "Light Machine Gun"

EFGM.ITEMS["arc9_eft_m249"] = {
	fullName = "M249 SAW 5.56x45 light machine gun",
	displayName = "M249 SAW",
	displayType = DISPLAYTYPE,
	weight = 2.6,
	value = 249995,
	levelReq = 33,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.PRIMARY.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/m249.png", "smooth"),

	sizeX = 6,
	sizeY = 3,

	lootWeight = 75,

	caliber = "5.56x45",
	ammoID = "efgm_ammo_556x45",

	defAtts = "XQAAAQCHAQAAAAAAAAA9iIIiM7hMNz0dhIkbkvLjTdSR5gRNNIHH3iMsoRz+yL9kOdEqJeLavTwezUAEDoM+p9GvXx6woPy+Q/2yd3GqqyA1W+Mbk5bPXi69/vnB+d2vU2eE0sGaK94iwqGmTIYr6JU/Oa7jOtp4mW8Yy0Dub4i20Mp0/P7AQ189juExNbjXpNGxRruHsT2mSrm/QqP2cGVcOcQRKvPnGz8=",
	duelAtts = {
		"XQAAAQCHAQAAAAAAAAA9iIIiM7hMNz0dhIkbkvLjTdSR5gRNNIHH3iMsoRz+yL9kOdEqJeLavTwezUAEDoM+p9GvXx6woPy+Q/2yd3GqqyA1W+Mbk5bPXi69/vnB+d2vU2eE0sGaK94iwqGmTIYr6JU/Oa7jOtp4mW8Yy0Dub4i20Mp0/P7AQ189juExNbjXpNGxRruHsT2mSrm/QqP2cGVcOcQRKvPnGz8=",
		"XQAAAQBSAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NqJ/6NP9t3Genn6+fgikxTgZybBkpyPZq+b+1vNAUKpBZVqdLdicBGq9LhISqqlqMrqKtfx2pth0xJ3ebdaw+wKCeDtrpvk80MXwfjN3cq+aWenLGokAbeOwpcLsOoeQmGZgeKLk4Bva0n3TJGAhGWJ5uVOA4FtwkxtxEDEOr6IiRUTrfip01AT8sMFphZb8SqY2Yw7Sk2LTV5XQ9wFp7fAGSUbWglaE2YKjgFs6Hsinp3vpvH6jyji5D7OwDOf2KRE74SplF+VyEK9cjqM3EAA==",
		"XQAAAQDnAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV4/QsCrXIwPOwVEPPKTlzsLIHq7HCwwpC/bHU4GvUwjHZqDrngm0zUxZIMrr8SgTtfIybiPrHTMrbPDYMeOc/94NwzcY1g7bo1JcyBH8nW5Xys1B4m4WIAbIW5LHpeKLCYtp1gGGFpjOHF8Q0F5dPbvmJ38tFynpvwcjscmtOVm7IZtb6zTfNGkUmfaYEQtu336H2HhHbvgAM7cPP45GyZ3snJa6ozLxEgT6ByvGNv4T8I1Wdjt2jYT6Qz5auc4amNjfvqvuusmzOrSf57oQc35aFPIa3yQG6ye8EbOP3BbERVsRsgKuNmz1z1fEGiiFYunBxROFnYY0Z/I+5w==",
		"XQAAAQDMAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV4/QsCrClhAsuCez52ZNaxPlz3OT+Y4aGymO+tByaWzJm8mocBkHXw3GPpiIsTDggVCyK6Cs4hF1OR6B/CG0xThRKUwlVCrP3UcM739W5bb09Lc2KTnKOs6ywNCM1rP8rKSG50cakdKL2GeFi4kHsW6qM6asRZcsM9T2QsbsvG567pwG7AcZx6uO2Kk8xSN91V5f1GxvFCUdSEzxDKMBIsXpfCpIi8q+YMMFtSSl5YkCK90x5kT7I4hsCMAI7/7RYeDRbcWmuGn1ns2G8I23O++Hix+GBJZxAgHe/WsWMAgFxblmVAOb3MNrCb/xQPTHFrTg"
	}
}

EFGM.ITEMS["arc9_eft_m60e4"] = {
	fullName = "U.S. Ordnance M60E4 7.62x51 light machine gun",
	displayName = "M60E4",
	displayType = DISPLAYTYPE,
	weight = 5.8,
	value = 100000,
	levelReq = 16,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.PRIMARY.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/m60e4.png", "smooth"),

	sizeX = 5,
	sizeY = 2,

	caliber = "7.62x51",
	ammoID = "efgm_ammo_762x51",

	defAtts = "XQAAAQBUAgAAAAAAAAA9iIIiM7hMNz0dhIkbkvLjTdSR5gRNNIHH3iMso2fmTz8F3jy5pVr3uGXDL8fbOjv/zKw7ozNLG1nGdWzDvHAdCwDTMX9X/3j/xK3T+dxjdbxHrI7i1GBfkAxdqaA9Zd0SaHMWQquI5eJnyFO2VS61xiJY+jhXgz6DR5o+mvju9nG1wnFbkH8yrSDOyq5tjKTAFu68riDxMtL9lkaeDSxoXFnDEow5fM0GFiKB5MNNFKSUWHyZLnKNo42BxU4B5P4Sn2hL1Ya+IA==",
	duelAtts = {
		"XQAAAQBUAgAAAAAAAAA9iIIiM7hMNz0dhIkbkvLjTdSR5gRNNIHH3iMso2fmTz8F3jy5pVr3uGXDL8fbOjv/zKw7ozNLG1nGdWzDvHAdCwDTMX9X/3j/xK3T+dxjdbxHrI7i1GBfkAxdqaA9Zd0SaHMWQquI5eJnyFO2VS61xiJY+jhXgz6DR5o+mvju9nG1wnFbkH8yrSDOyq5tjKTAFu68riDxMtL9lkaeDSxoXFnDEow5fM0GFiKB5MNNFKSUWHyZLnKNo42BxU4B5P4Sn2hL1Ya+IA==",
		"XQAAAQDJAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV4/QsCrTW4GExWCYJo+2ZeYWl/b687FsWG+EFasdGduxOIPTJ2DCzC2+pevYxJIvJxBv2Y9B70y3GHo5VFFNAp6YWZdpcRbp4gxtvTarTVmgYfnS63bkSgTSRI0u4N1ZQrF1G/+pDlKjNVfS2Vuu3DDyIgvgLaNvzz277dR++JdCA/0BCB2ucdCzfIT0EAXrFajOeM2AMbNdW80FVgAwElmgOVJiBbdTdZL1OL226izb+7wFKQfOZShtvvuMjN7Yo7loTeVrKxAsKtdGY4Nluu5gXwdj03ZV4A==",
		"XQAAAQAeAwAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV4/QsCrWflBWtCjWpgKVmoT7KQcXMLkFyVv8yk6usXML+x5gRINSp/eoYcIPeSTzZCB8T1RlTr0Blmg/7DqIBNV4vnJ9gHyxeBJUFrwlOU9wJHUSdzUSfBuw1z7rysVN1wKAcLFew2Xs8HpPxySqJEmz81y/fg37PP2GB0Hu2/Zb6WkBUQuafcyroRsApcuST08NghDST0FS5HiZVgT1O1aDMxswT8o7oXwr9L/aj7c1j8zZbadNqFMbp5hNwWl/jt9K/tZCSA8AZSzJ4AIK9mKB07PgCZNXT1IPkGSEQp6htwKcBaKzSZqWdbyy9t/FpZs="
	}
}

EFGM.ITEMS["arc9_eft_m60e6"] = {
	fullName = "U.S. Ordnance M60E6 7.62x51 light machine gun",
	displayName = "M60E6",
	displayType = DISPLAYTYPE,
	weight = 5.4,
	value = 110000,
	levelReq = 18,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.PRIMARY.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/m60e6.png", "smooth"),

	sizeX = 5,
	sizeY = 2,

	caliber = "7.62x51",
	ammoID = "efgm_ammo_762x51",

	defAtts = "XQAAAQCpAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OSSsLLcJyAHCCocixFdnSv7HKuyXN99OF0r8E7y72hI9xM4LhZpazFPnoHK2XoCtAqnqs4JGM0rw+mGc6h3DXdBmlNItS6v+yeYD6W3SxhPJ4sDDaQfNGtQ2nRsCXnF8WyPAWAXHcPoSl5uPWm3mVw5CBlrC1Ba9TO3tsNFe5I5AQWUphNDBYBOdTtXYHRk666tjWYWY6S1byamgiDKCwwprLOuLajl+uAB1pdLrTKoYCCag9B8ZIXGmoVJY+9VCN+TQ7oQ==",
	duelAtts = {
		"XQAAAQCpAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OSSsLLcJyAHCCocixFdnSv7HKuyXN99OF0r8E7y72hI9xM4LhZpazFPnoHK2XoCtAqnqs4JGM0rw+mGc6h3DXdBmlNItS6v+yeYD6W3SxhPJ4sDDaQfNGtQ2nRsCXnF8WyPAWAXHcPoSl5uPWm3mVw5CBlrC1Ba9TO3tsNFe5I5AQWUphNDBYBOdTtXYHRk666tjWYWY6S1byamgiDKCwwprLOuLajl+uAB1pdLrTKoYCCag9B8ZIXGmoVJY+9VCN+TQ7oQ==",
		"XQAAAQAcAwAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NqJ/6NP9t3Genn7BaWameyEZG4bWevVJGnF+iMvSPsgY4mWA1g6P5DP7MeftLPw6OG+8ykn9fqGH2gJk76jWKXUWwX/GcrJ9ZXH7KyGaKzDdU2PbwFjt7a5TeS7bSfYGASOm+IUy6XNHRcLuKcyO6BMNAv9S6LWbQqHVb8IHn+1q8r3jQDYzS2GkacRiOL8PQs+WcwuKgzwtLr8ooBkWPrNEsOiwiNfnQjJWbaIp/HUl1+NAFAeFvIP57NYmWvx8qxdh+Ukv0jTSXyZXxX/cebtS+fN53KaADup1q9uh3DoOoz0i8fLEA",
		"XQAAAQAnAwAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV4/QsCrClhAsuCdDw6WysGmFwB87+4+kfaxr+7jxE1g6zA9I+ExV+NtVkgIhAm3k8SBRxRMclY8j0g17im0MJHl00hI6zKMW53pHvoYbw8Fj1bLuv2f8DIDMZ7VpPl+/taA1js/yUAnfCwIdQTzbqvXvcaUsl4UeRQRkHeZkYAzpk0PJ6U378ARptIlHXrKBiI+oapIkiPiQJCJsLpfATDpeYpzNvXVYz1Tgwb9XdpnJToacEeZlIjoRVIVxWphkj1h/9L6hSgSWbqIoE7O7fwIc39M8brWJjYMvqyySN9i0IGfiCmlLHRJUSlmn4fphOuYbctkRMlXhQA=="
	}
}

EFGM.ITEMS["arc9_eft_pkm"] = {
	fullName = "Kalashnikov PKM 7.62x54R machine gun",
	displayName = "PKM",
	displayType = DISPLAYTYPE,
	weight = 3.8,
	value = 205000,
	levelReq = 29,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.PRIMARY.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/pkm.png", "smooth"),

	sizeX = 6,
	sizeY = 3,

	lootWeight = 75,

	caliber = "7.62x54",
	ammoID = "efgm_ammo_762x54",

	defAtts = "XQAAAQB1AQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+VxqdivxON2A4c/UqwSJhqDo+4MgoaYe3T9Uq9jxbrXbeouPZLy1sIP/T9DyOZBwzjl8btLjhrC3FgFrmdqNCYWkz30yzsETGz/5o6wAs0ZzQw8mceqa3lJoSXZGbka9NLvH0SOwaeLSmbAtj5lQrj3w6en7CSh2yTolf1HY02GOWY",
	duelAtts = {
		"XQAAAQB1AQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+VxqdivxON2A4c/UqwSJhqDo+4MgoaYe3T9Uq9jxbrXbeouPZLy1sIP/T9DyOZBwzjl8btLjhrC3FgFrmdqNCYWkz30yzsETGz/5o6wAs0ZzQw8mceqa3lJoSXZGbka9NLvH0SOwaeLSmbAtj5lQrj3w6en7CSh2yTolf1HY02GOWY",
		"XQAAAQAfAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+VxqdivxON6Som3vL2ybUBNPLkDFs7ArpEbRhf//vDzHLbNjwl/yaXH2T1ONzPLqsmTZxaol+68OhMlg8o1gLJTfMVPUphYGUiMWL+gJi2jd3kVt44O8fptge5liv6IZ5axM61U1YyeuUJw/oUm223J9qhq7IfA04mWviUbvdE7FVwBihXRNHYvYhw0K7tLWKdVXT0Z0yQx6Rz3niTpXoudBxyS4FRiVgs8a5woqPCw6DYqU4KxhA=",
		"XQAAAQCOAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+VxqdivxON2A4c/UqwSJhqDo+4MgoaYe3T9Uq9jxbrXbep9+NJScGfaAokZQ7ZurBC+wkjhxNAC174ae8ELsrDUQvUBQtbbsqEbaawbzGB49Zz6tbR9NuSO8goiWyeFfNQm/czjaEBPm2s5JgmF70k2rklctqAScTaBC8PPPOFRLLBjeIy7xAiQLcOhkRSrNnKLHv5OIcBARToju8dGwxslSA3kYZsFEUfrIgATt9CDudQfm7Y39q+XxmepIGc"
	}
}

EFGM.ITEMS["arc9_eft_pkp"] = {
	fullName = "Kalashnikov PKP 7.62x54R infantry machine gun",
	displayName = 'PKP "Pecheneg"',
	displayType = DISPLAYTYPE,
	weight = 3.8,
	value = 230100,
	levelReq = 31,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.PRIMARY.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/pkp.png", "smooth"),

	sizeX = 6,
	sizeY = 3,

	lootWeight = 75,

	caliber = "7.62x54",
	ammoID = "efgm_ammo_762x54",

	defAtts = "XQAAAQBAAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+VxqdivxON6Som3vL2ybUBNPLkDFs7ArpEbRhf//vDzHLbNjwl/yi0+ghuUFk0qpomQmY51j7k5NmwRm4tC6nxVy7gbHQo7OSzUJB2xaJHe+Xp4GXZ/5OAUrxrBimVt5hyP/sKIQjw7g8P+evKxFjVgPcA",
	duelAtts = {
		"XQAAAQBAAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+VxqdivxON6Som3vL2ybUBNPLkDFs7ArpEbRhf//vDzHLbNjwl/yi0+ghuUFk0qpomQmY51j7k5NmwRm4tC6nxVy7gbHQo7OSzUJB2xaJHe+Xp4GXZ/5OAUrxrBimVt5hyP/sKIQjw7g8P+evKxFjVgPcA",
		"XQAAAQAQAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+VxqdivxON6Som3vL2ybUBNPLkDFs7ArpEbRhf//vDzHLbNjwl/yi0+ghuUFk0qpoWVYYUnP9Pw/PCCSNOSIRwMlK91pNF57k80GbM+rNp+tZFPIT1+AR8ZMdM2gzeUw+fMg5EZv4OD5rahT9bqN6KMJJ4sGR1gIIyNIO83ZviPEBPv1txrJNp8tSWCMZnsTEmdHAZ5sQq7jrp+r7REVrMuh/pJ2J4eNj0Mz7PmA==",
		"XQAAAQABAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+VxqdivxON6Som3vL2ybUBNPLkDFs7ArpEbRhf//vDzHLbNjwl/yaXH2T1ONzPLqsmTZxeMKVSU7wjWXoEYxUBQZXwGRrV8RwBc/MzyQl0OEhZJK/TTn7PIesjA9RS+8BdaFO1GdJuLkpIgnRgfhTEGnVmS2GEmRoYqtQhDeP4nkqXKyd/kjYD5m3dfl1F8Q/GG59WTIjFraV1f1X0HwdQ0XXc6lBNUs02pKyDqDXbScN89Clrl2o7t6O68YVO"
	}
}

EFGM.ITEMS["arc9_eft_rpd"] = {
	fullName = "Degtyarev RPD 7.62x39 machine gun",
	displayName = "RPD",
	displayType = DISPLAYTYPE,
	weight = 2.9,
	value = 99000,
	levelReq = 24,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.PRIMARY.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/rpd.png", "smooth"),

	sizeX = 6,
	sizeY = 3,

	caliber = "7.62x39",
	ammoID = "efgm_ammo_762x39",

	defAtts = "XQAAAQCiAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OIg2Alsq6N5HJfzqGetoWgtBPuIFPieR7POjErtXp2hCvFJRW9NnJMkzk6x1OSJgTacqq2lLYClfHwBgbnP83d0UWq0A99jh/OIqT0b5jejBLSseE7AwTBYDbNdIr7/tWgsUDbjHMrFthXNQo+SDQl70q0QOkxRbNeUWcXrMiC8JogPK3ONwvewZBJL+tH5Y=",
	duelAtts = {
		"XQAAAQCiAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OIg2Alsq6N5HJfzqGetoWgtBPuIFPieR7POjErtXp2hCvFJRW9NnJMkzk6x1OSJgTacqq2lLYClfHwBgbnP83d0UWq0A99jh/OIqT0b5jejBLSseE7AwTBYDbNdIr7/tWgsUDbjHMrFthXNQo+SDQl70q0QOkxRbNeUWcXrMiC8JogPK3ONwvewZBJL+tH5Y=",
		"XQAAAQC9AQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OIg2Alsq6N5HJfzp+h2D6DMdnGedNREttuRTojpCRut7mF6zJgyj4Kx98PB3x9sFl5GNcp9nb686mXMxXN2j81Tfe5q7oNBSyIhQYsE/DABxE0yXe23ONV/c0J2TgxzgyDPixb6XqrLC0d8Wm+F4ZVBaoZkVIVO1nPqAW1HEsJZStQzixfPd8WqWA",
		"XQAAAQAoAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OIg2Alsq6N5HJfzqGetoWgtBPuIFPieR7POjErtXp2hCvFJRW9NnJMkzk6x1OSJgTacqq2lLYClfHwBgbnP83d0UWq0A99jh/OIqT0b5jejBLSsdd2KN7VrC5HmZuVh8vYBo60h131HONieAu+W5ei5JjGCTXrj7f7Y1tXO6rrYmvoNzhyOCl6AoGbFyoJ4LWfJDNcpweVhBcUIL1Bqu/MHWtf4RuuxItqHMaqG9t6Gs90yjJYA=="
	}
}

EFGM.ITEMS["arc9_eft_rpk16"] = {
	fullName = "RPK-16 5.45x39 light machine gun",
	displayName = "RPK-16",
	displayType = DISPLAYTYPE,
	weight = 1.5,
	value = 68000,
	levelReq = 12,
	equipType = EQUIPTYPE.Weapon,
	equipSlot = WEAPONSLOTS.PRIMARY.ID,
	appearInInventory = true,
	stackSize = 1,
	icon = Material("items/weapons/rpk16.png", "smooth"),

	sizeX = 5,
	sizeY = 2,

	caliber = "5.45x39",
	ammoID = "efgm_ammo_545x39",

	defAtts = "XQAAAQAkAwAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OIg4EaB9tZlmxUqnNjWMtFUXsgURvra4DARqTRAAJ1RKCUZtu9ifdkwwgWqxrTiSkIN3cRyq1JU2zssDBPUgNM9gWFKMq3C5EZmUZjMNKqDyYhvdAEOAmXPBRkJNvoLbqNcdgeXAss6ysNQczRunkqp/viMiUYfhEyl0PGwrQHoJJwGi8gR7dtgM5nmcARnITnfgcNZjG1lESXIsA+hpMDBBnh3dOtiNGTNv98XUJ+RNmOr0g9JWKmxylNF5ZWJi7cuBE02UofijActj7CMzBFK7/rw==",
	duelAtts = {
		"XQAAAQAkAwAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OIg4EaB9tZlmxUqnNjWMtFUXsgURvra4DARqTRAAJ1RKCUZtu9ifdkwwgWqxrTiSkIN3cRyq1JU2zssDBPUgNM9gWFKMq3C5EZmUZjMNKqDyYhvdAEOAmXPBRkJNvoLbqNcdgeXAss6ysNQczRunkqp/viMiUYfhEyl0PGwrQHoJJwGi8gR7dtgM5nmcARnITnfgcNZjG1lESXIsA+hpMDBBnh3dOtiNGTNv98XUJ+RNmOr0g9JWKmxylNF5ZWJi7cuBE02UofijActj7CMzBFK7/rw==",
		"XQAAAQDaAwAAAAAAAAA9iIIiM7tupQCpjrtF9qJbeNZaSCEX4Y6O26Hmp1HRpqw8uiVK1lhIr78Bn6lUdOaM6mHrSRyQIhifRSyvbMYkie6kwGRc+5/xDIfBA9K+9N1SF74QnxtzVqEEN+1wd2gHuA6/v/u28+d5yK0XZvmkomsJKTOjsGjffYN1BjbQO5oEoqhA03qPivlYjpxs1pbMG/dIDbhJSS/TimO1xGfJYugt9O7TR+PiwFcB/HvgWxXj0HXN1zVg5R9xzj2i6NqXjRHJDFHa63kBh/LxOnoMjUkLKvN6CbUKmTECY6UntNGFcABcLRn2duGxlY9rFVc4I73LmX905h9pjL54aZtv72zSmGb4Y1UpTjuhIK5cU9siSQ0Wet1ap+HpbkODOLfL3oxZKbNzaW/8oEwHAA==",
		"XQAAAQDsAwAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NWDT+kEGPPnFlfSScSitKC3h96j2MfwFs9lVZzbkxhsM84Ocm2m1u9+uwYvb/EqFRbmUly+hD06CBFuejx+bq5QdxMxUW8F/cSVxU4v8jOPmOtLzIMMxmrTHkZjLINd06BYZVO9Sg6QCRX1uH/crGy2jl03ixMMhQE4WD2v6sZRw0s3FFvngQ+nmMNQV21M9H/NuI4YwgMAASPKKSE+XFGBHOr+DKzI0xH9XGoPsqT+fhsSYzsdO4K9fw3gHcifntUdwFcziidFaf6fACY68Nd2oUWDAf9xek4/+xc2wo0TQKqsKY7gwB0sqaKk1uXHzW89M524BbloKNAYS/exSfNt8MFARmPfTHcigzxW5jDrj0/BFdBKu9CzXlfJ3H94MQFmPfj7pzqg==",
		"XQAAAQCHAwAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OSdG+ffqYKcUXeSfIW1m8a/rKhLe9LbLl9EPbv5V3eJxONsN0Zw1ZX2OgTlh7ysa0PHLH1Z8CHMs96XpcNDavm0ioO7okWtubu6LdLSItjjHj2mRueIL7PyOrgI09RhgxXqOh0V4XcAiptaE/W7/ujcM45KmEY8ODxsoC0y3i7Lv3uWpH6C2e6bRhhIcBnV3/rTbzSrWu8pFT52RJcslV26VmIsgLdZrQ7GUwQHgfFLm6XeFObdDvDSUT5/aS8h7xw0WAfNUZh7HTHAGo9/NuAR0waeLA1uZxX5bA+abgbxm3YxyqK3CRmwmiKETmgoM0yRlK/XQMwDa8p0ycsh9oUqiypO73BfMqlgcaYA=="
	}
}
