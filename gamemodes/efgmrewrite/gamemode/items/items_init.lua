-- background colors for items across the interface
ICONCOLORS = {}
ICONCOLORS.Yellow = Color(52, 53, 36, 155)
ICONCOLORS.Red = Color(41, 33, 26, 155)
ICONCOLORS.Green = Color(31, 38, 26, 155)
ICONCOLORS.Blue = Color(33, 43, 48, 155)
ICONCOLORS.Purple = Color(45, 37, 48, 155)
ICONCOLORS.Brown = Color(54, 35, 32, 155)
ICONCOLORS.White = Color(50, 50, 50, 155)

-- inventories will sort based on an items equiptype
-- keep this within 4 bits or everything will catastrophically fail
EQUIPTYPE = {}
EQUIPTYPE.Weapon = 1
EQUIPTYPE.Ammunition = 2
EQUIPTYPE.Gear = 3
EQUIPTYPE.Spawn = 4 -- for shit that spawns into the world on equip
EQUIPTYPE.Consumable = 5
EQUIPTYPE.Attachment = 6
EQUIPTYPE.Key = 7
EQUIPTYPE.Barter = 8
EQUIPTYPE.None = 9

-- item array
EFGMITEMS = {}

-- sell multiplier
sellMultiplier = 0.5

-- types:
-- 1 == any item (barring keys and attachments)
-- 2 == military box (weapons, attachments, ammunition)
-- 3 == ammunition box (ammunition, grenades)
-- 4 == medical box (medical items)
-- 5 == barter box (assorted barter items & keys)
-- 6 == attachment box (attachments)
-- 7 == safe (valuable barter items)
-- 8 == filing cabinet (some 1x1 barter items, and keys)

-- format: array[type][items]
function GenerateLootTables()
    LOOT = {}
    LOOT[1] = {}
    LOOT[2] = {}
    LOOT[3] = {}
    LOOT[4] = {}
    LOOT[5] = {}
    LOOT[6] = {}
    LOOT[7] = {}
    LOOT[8] = {}

    for k, v in pairs(EFGMITEMS) do
        -- generic loot pools
        if v.canSpawn == false then continue end

        -- excluded keys bc you can find them fucking everywhere
        if v.displayType != "Belmont Key" and v.displayType != "Concrete Key" and v.displayType != "Factory Key" and v.displayType != "Attachment" and v.displayType != "Accessory" and v.displayType != "Barrel" and v.displayType != "Cover" and v.displayType != "Gas Block" and v.displayType != "Handguard" and v.displayType != "Magazine" and v.displayType != "Mount" and v.displayType != "Pistol Grip" and v.displayType != "Receiver" and v.displayType != "Sight" and v.displayType != "Stock" then
            LOOT[1][k] = v
        end

        if v.displayType == "Assault Carbine" or v.displayType == "Assault Rifle" or v.displayType == "Light Machine Gun" or v.displayType == "Pistol" or v.displayType == "Shotgun" or v.displayType == "Sniper Rifle" or v.displayType == "Marksman Rifle" or v.displayType == "Submachine Gun" or v.displayType == "Launcher" or v.displayType == "Melee" or v.displayType == "Grenade" or v.displayType == "Special" or v.displayType == "Ammunition" or v.displayType == "Foregrip" or v.displayType == "Muzzle" or v.displayType == "Optic" or v.displayType == "Tactical" then
            LOOT[2][k] = v
        end

        if v.displayType == "Ammunition" or v.displayType == "Grenade" then
            LOOT[3][k] = v
        end

        if v.displayType == "Medical" then
            LOOT[4][k] = v
        end

        if v.displayType == "Building" or v.displayType == "Electronic" or v.displayType == "Energy" or v.displayType == "Flammable" or v.displayType == "Household" or v.displayType == "Information" or v.displayType == "Medicine" or v.displayType == "Other" or v.displayType == "Tool" or v.displayType == "Valuable" or v.displayType == "Belmont Key" or v.displayType == "Concrete Key" or v.displayType == "Factory Key" then
            LOOT[5][k] = v
        end

        if v.displayType == "Accessory" or v.displayType == "Barrel" or v.displayType == "Cover" or v.displayType == "Foregrip" or v.displayType == "Gas Block" or v.displayType == "Handguard" or v.displayType == "Magazine" or v.displayType == "Mount" or v.displayType == "Muzzle" or v.displayType == "Optic" or v.displayType == "Pistol Grip" or v.displayType == "Receiver" or v.displayType == "Sight" or v.displayType == "Stock" or v.displayType == "Tactical" then
            LOOT[6][k] = v
        end

        -- specific loot pools

        -- safe loot pool
        if (v.displayType == "Building" or v.displayType == "Electronic" or v.displayType == "Energy" or v.displayType == "Flammable" or v.displayType == "Household" or v.displayType == "Information" or v.displayType == "Medicine" or v.displayType == "Other" or v.displayType == "Tool" or v.displayType == "Valuable") and v.value >= 12000 then
            LOOT[7][k] = v
        end

        -- filing cabinet loot pool
        if ((v.displayType == "Electronic" or v.displayType == "Energy" or v.displayType == "Information" or v.displayType == "Other" or v.displayType == "Valuable" or v.displayType == "Belmont Key" or v.displayType == "Concrete Key" or v.displayType == "Factory Key") and v.sizeX == 1 and v.sizeY == 1) then
            LOOT[8][k] = v
        end
    end
end

function GenerateDuelLoadouts()
    -- types:
    -- 1 == assault rifles
    -- 2 == submachine guns
    -- 3 == light machine guns
    -- 4 == sniper rifles
    -- 5 == marksman rifles
    -- 6 == assault carbines
    -- 7 == shotguns
    -- 8 == secondaries only

    DUEL_PRIMARY = {}
    DUEL_PRIMARY[1] = {}
    DUEL_PRIMARY[2] = {}
    DUEL_PRIMARY[3] = {}
    DUEL_PRIMARY[4] = {}
    DUEL_PRIMARY[5] = {}
    DUEL_PRIMARY[6] = {}
    DUEL_PRIMARY[7] = {}
    DUEL_PRIMARY[8] = {}

    DUEL_SECONDARY = {}
    DUEL_SECONDARY[1] = {}

    for k, v in pairs(EFGMITEMS) do

        if v.displayType == "Assault Rifle" then
            DUEL_PRIMARY[1][k] = v
        end

        if v.displayType == "Submachine Gun" then
            DUEL_PRIMARY[2][k] = v
        end

        if v.displayType == "Light Machine Gun" then
            DUEL_PRIMARY[3][k] = v
        end

        if v.displayType == "Sniper Rifle" then
            DUEL_PRIMARY[4][k] = v
        end

        if v.displayType == "Marksman Rifle" then
            DUEL_PRIMARY[5][k] = v
        end

        if v.displayType == "Assault Carbine" then
            DUEL_PRIMARY[6][k] = v
        end

        if v.displayType == "Shotgun" and v.equipSlot != WEAPONSLOTS.HOLSTER.ID then
            DUEL_PRIMARY[7][k] = v
        end

        if v.equipSlot == WEAPONSLOTS.HOLSTER.ID and v.displayName != "Blicky" and v.displayName != "R1500" and v.displayName != "SP-81" then -- sorry guys no fucking blickies and rangefinders
            DUEL_SECONDARY[1][k] = v
        end
    end
end

function GenerateMarketLimits()
    MARKETLIMITS = {}

    for k, v in pairs(EFGMITEMS) do
        -- generic loot pools
        if v.canPurchase == false then continue end

        if v.marketResetLimit then
            MARKETLIMITS[k] = v.marketResetLimit
        end
    end
end

function GenerateScavLoadouts()
    SCAV_WEAPONS = {}
    SCAV_NADES = {"arc9_eft_f1", "arc9_eft_m18", "arc9_eft_rdg2b", "arc9_eft_rgd5", "arc9_eft_vog17", "arc9_eft_zarya"}
    SCAV_MEDS = {}

    SCAV_WEAPONS["arc9_eft_aks74u"] = {
        ["ammoID"] = "efgm_ammo_545x39",
        ["ammoMin"] = 60,
        ["ammoMax"] = 80,
        ["scavAtts"] = {
            "XQAAAQC8AQAAAAAAAAA9iIIiM7tupQCpjrtF9qJbeNZaSCEX4Y6O26Hmp1HRpqw8uiVK1leo3e1DMR12s8UCj7DwjOqCCBNqr63neLHwi3v09au0F4dJipi0g6LPpy6hjPaJyIfThuoQf2Tk4AvaQLBOSJsNF3go9xwAlLa4NA83RBACE48678e0+8aYicU2j7qBbifbPWAI7E0vmfsBW9dytOgUdQm+26gOTAxU7j3C7P/UT9E7SgqXfA==",
            "XQAAAQAjAgAAAAAAAAA9iIIiM7tupQCpjrtF9qJbeNZaSCEX4Y6O26Hms3ty0470OriaR3nmjwL2uH3h6mtxgguNv0IflCMdBByH48sEsOBgrYPgrjt4IJJZGgDsWEjoHOcDrQZMJAZKBsEMKwvYqUISitimrEshfZsT7iohk7LUCAkptSAGPJnc3JZLkmd2DwEnKIvjY/6YEA8ZhgMKgX97x3SuI4TWNnvsssuotaDghvhvJYaiqiTpTbYzwIPsEUhHkI1eyzUDmB1DqGxkyyAaVl1RgbfXuyyTizBNHlwA",
            "XQAAAQAEAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OSdG+ffqYKcUXeSURz873nGObC7V2scCjwepwKn1usa49Ry7JmG9/izFZRrSq0uY5WTAw94fUYpIFiIV7hWGSasYwK9MJsAqCvpdPtZ4OH5opZzLluYBxldq9+p6NdXDPwwlIefyZf6y8+LagTLcqEPGjxh7y7K/OU/tVwhjFttLxBqT/0CfqFyF26JJV3tO5ARoIoaT+GN557WaFY0UFb96iHK7ubIPfacR0FTiyIYeo"
        }
    }

    SCAV_WEAPONS["arc9_eft_akms"] = {
        ["ammoID"] = "efgm_ammo_762x39",
        ["ammoMin"] = 50,
        ["ammoMax"] = 90,
        ["scavAtts"] = {
            "XQAAAQAbAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NWDT+kEGPPnFlfSyGhIy8o/wiKvL93nxHBIW4c+xoXNI8ovSyL1sZpt99SrYfcdc39AtnytyTVZUm+qHmwswT9GDBvnA7D5GPQJ/m6gg59J5lIiiOTvkkWNwAza9rOJFqoeZJpcUiI6zXHAKAQ95VWnW7h/YNCs7C8IXtmXfQnQCrtJYcZkQfk+2xKJGTZafAkR5sc9ijQztdVYlDGyVhwWRNkgiERS9t4SBVXrTuVGIeY7ooAA==",
            "XQAAAQBdAgAAAAAAAAA9iIIiM7tupQCpjrtF9qJbeNZaSCEX4Y6O26Hmp1HRpqw8uiVK1lg/oSP/8/+3JGP6Pirk9kQ6uOteGOo9jrk0sIzY0cC5OXfMTMYm4v+aPHWXnVgXuYdLdtcuc1rHjEeylcpZMJGauwuwbhGbCiisoA5Xyf7TAMtPHCtAUq+82zRcByIKFVpdsyFok1FvqLdHYSiYK+1wq2E6IpftorZARiR+9/YdCjTcjOcSmNw2jqqiR0+5lwSNoYfzEgyzmUJiAp7uVct7DfR6tRrnV0e2I9SVWYe1WVgIIvB0f6cA",
            "XQAAAQANAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OSdG+ffqYKcUXeSURz877uXgINC8Pc1MbRbihhlAdeKGDHf7D34PPxmihDTt+PCfNt12eLaEC4FsFAfHcpAVK7O5thOxq9L7Awkx/CSgS+4ZNej7u35W1BcVVMQL4ZdvwOeYMjo6gEjPo0dob9xrJFDexL6hXrE6pCUQM6ZcmJZlG0k/zi9h5KvYsA6071YWJyFYE/y669XoCvtbz4lOh2rKhA2GLGz3igNQ="
        }
    }

    SCAV_WEAPONS["arc9_eft_m16a2"] = {
        ["ammoID"] = "efgm_ammo_556x45",
        ["ammoMin"] = 50,
        ["ammoMax"] = 90,
        ["scavAtts"] = {
            "XQAAAQC8AgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8ONwzg/TnvSdOuZ9WE580sJey/V1F22OvnbeBNZbUIf/OJctSQ2ZA7E5/Nak3R9raJ8BGD1QPmnrgtPV1kXYcjpvsnZEmLrx/8EthXh/L2SkJIG72+9VA3EBRf+KAW5vjqvAf0vhQg7NjNP8PyAiksW5KDN4DgTNv9ilKcEhUlGRbQZt3pWEWZuBOfTwWc3O4X0W445A7bHhG2dN0lON8MKPA9Mk4+2EMXOhWgL/6kUWSo3LTCQeLUvlsLI3bR57U7z3iOdjBQofrdtnVxHR+TEId6EVrN88TB63PPRb8bjib7TY50k4IV+YopMssc",
            "XQAAAQDtAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8ONwzg/TnvSdOuZ9WE580sJey/V1F22OvnbeBNZbUIcAqCt/3P16MXn7RunGqg/kajbGrnLJb9zZrsqCXGELWxYN1lIwJHt/+9HQU/0EEwoV6F5cWyKHNjsKMJeZ9SjBPb8sjXPJv/hQqw6csTjK0SQYZ1P31/x650JVqD7a356Yw7fuQ+xggppw2CoqmeeUPYs1fFO/E+x/ZLZOSAWluLoCGMT3hlA1wuCJFsW5GgkTIXcTnqE7zaViBvtumFjlkrcjY1oA9DCLkD7uJPsOfZu/WUQPgDT9CRHuQT2dAsj1TSbiF/zpiahlch0EsUQrKkcWWQuyA=",
            "XQAAAQA6AwAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8ONwzg/TnvSdOuZ9WE580sJey/V1F22OvnbeBNZbUIcAuDIRIr8l8OS4m2PnaWpZpYGVwY1jlz4iqQKjbw769zK6jIB+LLQe5ktCjoKZtJ2CtqWTUi+Cdr7tOL5aiA5Z70Kuk9ule1ftiVJjwfZ4SiuEcBtmFFVfpnjf6gWGue6GfgqakV+VmJXaPXt/dFA20KnEn8d+VNQGyS8fUPbwENijPaMcMq5MLXWdQ6uZtmI+SBEDn1OF38k6jIl01NWrt/UqU6H37m41wtSK2Dwy2GZRc14NLn5RX2NukreEL0RWZFn/MuBpvvRGg5LEDk5TAwsc/2m24aiK3elZP6Ogr/+GmGWPvg"
        }
    }

    SCAV_WEAPONS["arc9_eft_mosin_sniper"] = {
        ["ammoID"] = "efgm_ammo_762x54",
        ["ammoMin"] = 15,
        ["ammoMax"] = 30,
        ["scavAtts"] = {
            "XQAAAQAFAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV4+pY+0XkZKHWxkZKCKF0+Ob5fNs3s5OFKWT+HASlx6CN4+PJGFPkL3i5sLLz+TOvImFE2UK7JKi1QOyK1JJP3vegGGaON+2VPul/8++Wqx9hst5jXl1HwfEXbZrtPBcOmFxktp4YaxyzxZh2WJ6on06Eml+fTHIL80GqdpACZhTYgTmBHnMXqqNTwES6svKBj8A",
            "XQAAAQB5AQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV4+pY+0XkZKHWxkZKCKF0+Ob5fNs3s5OFKWT+HASlx6CN4+PJGFPkL3i5sLLz+TOvImFE2UK7JKi1QOyK1JJP3vegGGaON+2VPul/8++WqyUZNeakMjaOkCz/5Clr6QUjBSOT3vkserwUZS17zo=",
            "XQAAAQBvAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV4+pY+0XkZKHWxkZKBf7IGu2lWGmK/HocBlnLH+8/bGzJ2AszYexJheKzPuNw+HzsdqzT1woVDJPcu8o4mrZcrElBSY6KPD5sdvAs7weI7mBsQlJ6Inxe07vyYRWtW6yWvMSZwCY5ITqF+BsSsszx9wK9gV1Y+pc4iWy3zIg"
        }
    }

    SCAV_WEAPONS["arc9_eft_mp18"] = {
        ["ammoID"] = "efgm_ammo_762x54",
        ["ammoMin"] = 10,
        ["ammoMax"] = 20,
        ["scavAtts"] = {
            "XQAAAQDiAAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV6VfczERS4GZYjxV/r216Up0BZRyLU8Dd5/9fAAPNftYJczs1AaTA/zqPr5a6PhnJBEbni2Tbknz12sfUGtXzyYmLojKU77pXszKSY9zLBhn2yCAJujtDC+tQwW5S24WoA==",
            "XQAAAQD4AAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV6VfczERS4GZYjxV/r216Up0BZRyLU8Dd5/9fAAPNftYJczs1AaTA/zqPr5a6PhnI3bQoFKvjeMS2Dx3MX0/VbuVFWS17N2y/XVr8LDH40MMhqpbK6sKCptWMOr6o4VKBVTNIeefCpieJCQC",
            "XQAAAQBnAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV6VfczERS4GZYjxV/r216Up0BZRyLU8Dd5/9fAAPNftYJczs1AaTA/zqPr5a6PhnJBEbni2TbtKfmzXgxNQfokLNo4mDlepgmOf0BQjg1jbCkf689mleFRtkuMPnVkwtyGk+6jMNLktyJm4SL4otg9GZQzvghSlMSk8Qd+i1GVUUEbBbgA=="
        }
    }

    SCAV_WEAPONS["arc9_eft_vpo215"] = {
        ["ammoID"] = "efgm_ammo_366",
        ["ammoMin"] = 20,
        ["ammoMax"] = 40,
        ["scavAtts"] = {
            "XQAAAQBiAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8Ow/iPem4evSEh1ZVBQmKe6TaWo6POdajS5pypMmDY20hbHcZSWr7CxGfmXs85U87DKMtHcVIC0q5r3emPMZeQY6fJyMV2DpZXb0TEMuHcUwO1tU5prVUPsBo7HimY3Il6WrUtItPKOdFNc21rxdVWIB54CVOib0iEWQ==",
            "XQAAAQAqAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8Ow/iPem4evSEh1ZVBQmKe6TaWo6POdajS5pypMmDY20hbHcY2Sc/hpq2gNBS+1uIe9k6h/UNXBBq6SkbDUezh1RqqvPIV+TuCi1Bqwy5mWrmT2PgMx0Ttw5DQYQMm5RCNrIsV3MT0YatLjEL77C8LXI0ILYVuRjg=",
            "XQAAAQCUAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8Ow/iPem4evSEh1ZVBQmKe6TaWo6POdajS5pypMmDY20hbHpcdmF2PoYiLekKoTWFAllT5a6bivykTjactE3ku1HdWoordhEx+CQkQBEhMoulobllM9mYw18QiaXyDRqk4hZ/e4ImcqYCjZ2c5o7AzhvvLWIppDlAVBGqSNi8k5v1QjblS95/+RLQ="
        }
    }

    SCAV_WEAPONS["arc9_eft_sks"] = {
        ["ammoID"] = "efgm_ammo_762x39",
        ["ammoMin"] = 50,
        ["ammoMax"] = 70,
        ["scavAtts"] = {
            "XQAAAQDeAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OSgZMg8rR1f1NriFw604PtByzx3OWWZtOO4j0PQ2t5a1OGJX8eUlI9fNvLL68bctwYP8ZatKY+oTkz82RpebfT+LImbnfnVcexmiiZa0A5CUTPYWS9RAQTvDWST4QO/CBTeDXHHhB4cJK3NtOwRWC61qABII+gzX5mv+54qT8t54sGw6aF78vepy4igYkAA==",
            "XQAAAQB0AgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OSgZMg8rR1f1NriFw607pjYXW+8tML5H2fn/WXWwU6hRMVsYT0Vf/Ejuru6w8/fB6KlVIVnerUfSb0Rat85O6yZNJxuCmySPjO0ng2kvdiG/9T4qjB3VfgCboojjgWXKMpARyhK2Qss/iRAEjeiqdOlP8Q68lUpgtAN6vPUtBS3gKsB2wH8AlkVMoXOJx9eaZJIdWYgnEZN+c+simKJfcGuJO2JrySmIA",
            "XQAAAQDYAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OSgZMg8rR1f1NriFw604PtByzx3OWWZtOO4j0PQ2t5MMUo7Fl3NUrzTy6KrSMTRxk6uiNavvDSJtDhP8yj2HdQF/jesGnuD+Y23Cv5LifChbdTW+DRavjbTSU9nMlc6lNUAsLxwC/Uin4TH9ehHYiAtyJjPQNcpI2MYZ0hucTgFo7jY1LETCYOrG2Z3krTRHadun/SFaiWHjJpMfCFH3x9ByK+slOC3yCAfY0JJSzj3ShVqmMUBw5y2NZIOjfvL+9kjnW+CEzdpgldA=="
        }
    }

    SCAV_WEAPONS["arc9_eft_adar15"] = {
        ["ammoID"] = "efgm_ammo_556x45",
        ["ammoMin"] = 50,
        ["ammoMax"] = 70,
        ["scavAtts"] = {
            "XQAAAQCOAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8ONwzg/TnvSfVBqeGuIaSSp0lbXXmmwiKc+3qpTFQPm/3TEpRkNkliqewzXeK6KEow99gDpNekcBZLljEK1yteXPgcDvoY1gzY43rtGqP1p7jD5gej6NEa+QNcT8BXtXPmN5o2OkWkgurm/9AXyGT4En6CkA7mCMaVO2Yf9O7uShDeIXUNI/H0SBmpgNixBxQz+E/0uWDE5UIaP9BN26bE1xGemXO43rgNPGIOjvq9ftb9M37Yo7ZQ5zoYq34ipfXEhRIpOJESzA==",
            "XQAAAQDdAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8ONwzg/TnvSfVBqeGuIaSSp0lbXXmmwiKc+3qpTFQPm/3TEpRkNkliqewzXeK6KEow99gDpNekcBZLljEK1lksrW6jp++mFaqlkup5/QOgFvxWchXFAmKMjstnCCWkS8V57Wku66hR2VSZTQLUM0J3I4vbBetbS02YthNxiLzF6F/dk5YMnk2GYyrEL+y7QigUeRcoF2t1CyVRiZ6l4z63ROuo3VFREI/vPOpqa6efqJP1hECld98b8daMjKrcmBrhOmtx5yeMW4pZKm3NFXVOL3O0KP8EIZfg1uSbuKU7XXGqrCHS0v4=",
            "XQAAAQBoAwAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8ONwzg/TnvSfVBqeGuIaSSp0lbXXmmwiKc+3qpTFQPm/3TEpRkNkliqewzXeK6PEPZUvkOMm2+bjD9F9C3zCQkM6O9JS15qjds/w6vgiLaHHZCDeLakOiCp+APLBgiifydI1MFn2xeelWrEPysArLX2L9Naogwkx33zVrzU8mormPPdRcmbOQ1Jyb5ym+lOcMaSfOUcp/w9cavVnihWFVbkJHv3KCGy7brFrF3HN66p0vsEV2er3T7k2H/0cslwgDTBPQqy9bfSTweKGvnf15QpBTKeEBUI3kRbj20TVBcy/xUpRrA6wHy1MjjI5mA"
        }
    }

    SCAV_WEAPONS["arc9_eft_vpo101"] = {
        ["ammoID"] = "efgm_ammo_762x51",
        ["ammoMin"] = 40,
        ["ammoMax"] = 60,
        ["scavAtts"] = {
            "XQAAAQBVAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8Ow/iPb1tQHdLBKCLRkGlKp35rBQAtzLQKTO2eosOSgxaV+qywjmk8DJO9zvw2+5nYJlbetixpKrTPjavkokSQ0JRZDRX47wSygcX9mJPHgRNx0O7bH+RCG7GGOZaHLo2n6Xe5VpwA",
            "XQAAAQCkAQAAAAAAAAA9iIIiM7tupQCpjrtF9qJbeNZaSCEX4Y6O26Hmp1HRpqw8uiVK1lhlXz0EdnV06cQGIEHdevw3sz8CxiM4LlanfatYyNd/qhlcbgjKeeNCwMb4xTbFnPCo+6gg4lipGek9sVAHQAdE1mEOkdWJWIcvFZxcXqyOYDGE9IGyB35Ccgkn5hOBM0qMIQZZSYbebxotZUUYtl2oo/SplXYRYcc2naxcm3uoAA==",
            "XQAAAQC7AQAAAAAAAAA9iIIiM7tupQCpjrtF9qJbeNZaSCEX4Y6O26Hmp1HRpqw8uiVK1lhlXz0EdnV06cQGIEHdevw3sz7y7ENRkysh0sziSweZtAQCjpU3BOZ1gLzSrevJX/X4vroXd+TBeSOTO92Vu1zHAGYTs6E5aoDQ5J56T3bQqM8Yqmo3eJA0GhWHdye00raor78ktyXgdET0e73L8SJP36HK9fVlBznxunqDhkvF0O1VAA=="
        }
    }

    SCAV_WEAPONS["arc9_eft_vsk94"] = {
        ["ammoID"] = "efgm_ammo_9x39",
        ["ammoMin"] = 55,
        ["ammoMax"] = 75,
        ["scavAtts"] = {
            "XQAAAQAnAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OxEj3M6NEz3RX71XCYfOHncMteTkzK1bNnD0chwcKKUK5HlSEyBPS4c2TJiGRraBGEbOHAPSDWnEJPKpKFtJ13uxL4j947qtjL4M7n5cgVpTyzXrCgjcbbTnq5xE9+RNbSfbVBtK6FYvn09vhnqog",
            "XQAAAQA/AQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OxEj3M6NEz3RX71XCYfOHncMteTkzK1bNnD0ch1JesVcWATp5G09k+0YVg1cAGkdsOIfs+Qsr2LRnuer24UJlIh2n7Lb+WaPCEhTW7X4aZOJQnELQOIJoBY9Wi+SDFpx1kjJ6Uad1mbVmwii/9f4XHyIA",
            "XQAAAQCiAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OxEj3M6NEz3RX71XCYfOHncMteTkzK1bNnD0ch1JesVcWATp5G09k+0YVg1cAGkdsOIfs+Qsr2LRnuer24UJlIh26bLWyIgXfPQMM1ZEKksvpjSMVEDuwwUnRHhsShi86A5SAsBwukIqb+07wvL3hDqxWthF4CB+UksbhSSQ8UtvWxd91yyShxtQFbXB1oNajbw=="
        }
    }

    SCAV_WEAPONS["arc9_eft_mts255"] = {
        ["ammoID"] = "efgm_ammo_12gauge",
        ["ammoMin"] = 15,
        ["ammoMax"] = 25,
        ["scavAtts"] = {
            "XQAAAQBoAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NWBZxcXd4lgpEYOABEMGVgtCK/aSLEaxnwae0hch5Ptd1XInQcH+dbu9HJcNSDVgmdJVbNux7pih1EapIy244Q6vvsSvlwxOScXyS4yBYAD8Dee7noa5Q817A6O0TvIJgIUDC6yM2EQceVON8lWXSCFefVJB/ktJsloM=",
            "XQAAAQCEAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NWBZxcXd4lgpEYOABEMGVgtCK/aSLEaxnwae0hch5Ptd1XInQcH+dbu9HJcNSDX0jkmOB6LwQdTT0WY+2w7/P2C/LIzyaOmFjdaMWksE7QqCn+B4Emk24YtHRbDs0wYkN/YOt3nH2SuXAMqkR3GyJBrK4Hg0jM2h+VOJ3wOekQR1PrK3J0v5zAA==",
            "XQAAAQCrAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NWBZxcXd4lgpEYOABEMGVgtCK/aSLEaxnwae0hch5Ptd1XInQcH+dbu9HJcNSDX0jjZHo+74o02fbCh1DaLbI3egGt6JPkqPzZT1frx6uFtvgzyralMGCyAO9hGaN3cihLhAOe/MBYZ6kTVqtDeWiqWTl+64UWvDxTppwpBBenUVeXDw1f0DRYVDg2a9dAA=="
        }
    }

    SCAV_WEAPONS["arc9_eft_mr133"] = {
        ["ammoID"] = "efgm_ammo_12gauge",
        ["ammoMin"] = 15,
        ["ammoMax"] = 25,
        ["scavAtts"] = {
            "XQAAAQC/AQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV9soqBkgp9xKO7Kzg2dCmPkwmlbXlBRTBCUcxF1wuDG3VuPLZGY2CZuDVFUcGfBWVExc6axYK6Cx1wFyFwB8QSV5w3mXRb5MB6uLVMt8FFGRVn3Cm1751eLIxDvdCQmCP6cwysEXnKrndgNX50gCxanz4AOkYJJa7d/17HHDM6vWob4rKpay9wdT3n4W4g==",
            "XQAAAQBAAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV9soqBkgp9xKO7Kzg2dCl/HKiW+fRuX8JPD3U0v7srDXOXCUG85bOAsJeBrjxnVOSUD/930s/nAksh6vnoQpbsS0eP+sfldKbHkVMdUcGb6Nfj7B0HxCOF5gUFyhFKPHIfPbFq5vPHcilqPQc7XZZFGVyzeCGxLw0qn8gA==",
            "XQAAAQChAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV9soqBkgp9xKO7Kzg2qeE70TgdMRihdkf4cUlDZV42oPZHgjMCGSIDMyEhc31gHsWulXBGJq6wv3FmOKw1ZkTjITkjV5MxUmum9r/dZ6D3TTdUNVAT5i1JxNFYezZKX59S5I7FTjUlDJpFv5bBV3+tEbtCjXREkUpm5gh3r6d/rsqY9F5qfAFLZRH/Uj90s2hDe68ni/Xi8="
        }
    }

    SCAV_WEAPONS["arc9_eft_m870"] = {
        ["ammoID"] = "efgm_ammo_12gauge",
        ["ammoMin"] = 20,
        ["ammoMax"] = 30,
        ["scavAtts"] = {
            "XQAAAQC1AQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NUglz4qzXk+esKjOETWTlx+UP/YOKi19eS3Edhs+qNcOhx1jr1XsfK1QTps1u8Lg2gaMx+qDBCpOhTCd0CzhSjhy9/pKVAaB/pzaDuIYHk74sFENlvLrkBz6IVwh8J7DPcAYSGfmfe09VxUqKQKI0Pld3EjilGa01uFhs9BbF1+aP5w1s2+jR0SuybQ==",
            "XQAAAQCoAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NUglz4qzXk+esKjOEbvYz3ck97zjQtJt6eO3e3Gi736FHqEbp3Oz+ldi8kJryLvjwLr14l1LMpp54bzC3TmoKJ3MbrRXo2y3I4QveJIVQdGA2B891VXf+kZEt5WRri7iZgOLSBBO2Ke4hmE7dP4Nu+eTu3dXGYle6H4QGGLaetZ+tXyF3AA==",
            "XQAAAQDgAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NUglz4qzXk+esKjOEgFSqLPnjjuKuH9tNbNaP7sWuO1Ue7DDR/glCcUb9gv8LV1V9sz+s3G98wnzUQ/ia98+H/m+rF5YmPmwHeObBt3MsxpaoHiuTdnDNLbEBI3R5lAsDiUf47Sdbw8x164ceEgFYG8QYeAMo6bZWvee/QBarXhdjiE69uS8AsL9fkRhYn1UzSfUA"
        }
    }

    SCAV_WEAPONS["arc9_eft_kedr"] = {
        ["ammoID"] = "efgm_ammo_9x18",
        ["ammoMin"] = 75,
        ["ammoMax"] = 95,
        ["scavAtts"] = {
            "XQAAAQCWAAAAAAAAAAA9iIIiM7hMNz0dhJSTKmZ7v+v6J9rfJDxrK5jGCg3BYDHYlRHvfWew2oXx4dsswxofgrYNO0HRMoNogTCUTYwLyG00L3Nll37QQlzZazSRsWCwnl8/RdAzcQ==",
            "XQAAAQDCAAAAAAAAAAA9iIIiM7hMNz0dhJSTKmZ7v+v6J9rfJDxrK5jGCg3BYDHYlRHvfWew2oXx4dsswxofgrYNO0HRMoNogTCUTYwLyG00L3NlmAWw0r6XqA25zTgiG00Vwbrr/KRQaOY5EAvaco2+AA==",
            "XQAAAQAeAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NG7PYIe2Zjcond/+tKjSlpvPBn0GXEMAXBqmibksvHzMFTn7lZno7d2y8k1ECWE0RrrnM2o5NmkaQrSBCr4u1iZuqGOjvBxq/vmJzk+S7FIdHPBxib/W6T7vjFBSZN1yTvCZGAA=="
        }
    }

    SCAV_WEAPONS["arc9_eft_ppsh41"] = {
        ["ammoID"] = "efgm_ammo_762x25",
        ["ammoMin"] = 80,
        ["ammoMax"] = 120,
        ["scavAtts"] = {
            "XQAAAQDnAAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8N0RqirEVRWccrEPmZQy2AqJNRYYwzkZDcKZUlCD0pHntf2w3T13Rz/KFkXhFoHFcbVhF5Tm2+6qGo2yB8pxLI6BVj+ShG5w3yBPFISM1P9c92waE6nUkVmwA=",
            "XQAAAQDnAAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8N0RqirEVRWccrEPmZQy2AqJNRYYwzkZDcKZUlCD0pHntf2w3T13Rz/KFkXhFoHFcbVhF5Tm2+6qGo2yB8pxLI6BVj+SjDTo/GdDwUD8PCDTPSddniDu8kQgA="
        }
    }

    SCAV_WEAPONS["arc9_eft_uzi"] = {
        ["ammoID"] = "efgm_ammo_9x19",
        ["ammoMin"] = 75,
        ["ammoMax"] = 95,
        ["scavAtts"] = {
            "XQAAAQByAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OnI8vYf1rCestvC7ZomSDqkEaST9pI/tJWGuLhGPu7F3/hH5jrMd8VPdZo9VfZwp5bXMJsXWD218BSfizcep/epC73lPWDqooNUd8ZuohTk0QgXc7g+eHpJjVXZP+tojG7nRJlsVj+OLCDg27OtXaRrCqC+PSDnaduaXYfFpIdfrVY+bZAA==",
            "XQAAAQBVAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OnI8vYf1rCestvC7ZomSDqkEaST9pI/tJWGuLhGPu7F3/hH5jrMd8VPmStFvx26TojXQzyTBMMegWhW25QmqNEZuEzf/Vu4KRQtCU2nTCbyrDVr7rI33PSEoBvLOHciZfZMJyte5rCEqyBxmjgzhbenW2hhXfMMClp+cCnPmN8Udkus6m",
            "XQAAAQDOAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8OnI8vYf1rCestvC7fh6RIGIusBzAv8wEPc7Xv8e/mBMu8iGTnAjvv33qszDLLLF3BkgOJ58nG/YWQ0xrJX2piZpxWNnljR7guVjXmBdk3sx7tcmPgqRjZdDEJoDOd4E4vFtJVnY6Qqy6wL9e5e/UUW86NShHa/vp3p4xFK5PTy+iG3Y+rtABDBf6UCTvSgOICeOuJkUVegQ=="
        }
    }

    SCAV_WEAPONS["arc9_eft_mr43_sawedoff"] = {
        ["ammoID"] = "efgm_ammo_12gauge",
        ["ammoMin"] = 10,
        ["ammoMax"] = 15,
        ["scavAtts"] = {
            "XQAAAQCFAAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8NV9tY8mxdjo2DonfYbDKLCbCIbLM3cKUS2n/zqm05+D37Ngjxrrie0dZPauCRtFna98ClsfTrXDgm4SYU6WFi4y8Lhhc7uOLu6w=="
        }
    }

    SCAV_WEAPONS["arc9_eft_cr50ds"] = {
        ["ammoID"] = "efgm_ammo_357",
        ["ammoMin"] = 24,
        ["ammoMax"] = 36,
        ["scavAtts"] = {
            "XQAAAQD0AAAAAAAAAAA9iIIiM7hMNz0dhIkbkvLjTdSR5gRNNIHH3iMxyb1USyArYDmk731f5dmwXd1V2F4KB2PoMgWnJCTwClBVT2CAhNumNQnOhBgvFvtbRSBdDSX/JEhDflFLZp4RsgU48ZBAfbFtCxzD2A==",
            "XQAAAQAkAQAAAAAAAAA9iIIiM7hMNz0dhIkbkvLjTdSR5gRNNIHH3iMxyb1USyArYDmk731f5dmwXd1V2F4KB2PoMgWnJCTwClBVT2CAhNhluCBjp693eaQlr7hMpSkBOtQFRiknSllZ41Qjf47pFVaGhouYAZsa5l7rlejzXznJx/2+0IOi1iQ=",
            "XQAAAQA/AQAAAAAAAAA9iIIiM7hMNz0dhIkbkvLjTdSR5gRNNIHH3iMxyb1USyArYDmk731f5dmwXd1V2F4KB2PoMgWnJCTwClBVT2CAhNumNQnOhBgu/7FQ2ztjsGXlZAaPcWUFF9+/ao7A9doMqPeW0mMTn1xmchrLvdd4XjQQVSckArl8yVNJYaa3z3VDkg=="
        }
    }

    SCAV_WEAPONS["arc9_eft_pm"] = {
        ["ammoID"] = "efgm_ammo_9x18",
        ["ammoMin"] = 48,
        ["ammoMax"] = 64,
        ["scavAtts"] = {
            "XQAAAQDfAAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8N0MrcAX4ZC/nXwXwJMUX9VzIJ9eJoIzCxxdGJugl7TlFzel6UwwEdsDy/8G80rRx4/ISGjd3kGS6R64Nw6B+419FI8Iuegof64zUxQc/BQvc+KZA=",
            "XQAAAQDhAAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8N0MrcAX4ZC/nXwXwJMUX9VzIJ9eJoIzCxxdGJugl7TlFzel6UwwEdsDy/8G8bi9kQZl4AquaPZJNkjXH1r2uvFHnzmOxV415Ofq6PuQY8ZtK9H7XkjZWtQA==",
            "XQAAAQDgAAAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8N0MrcAX4ZC/nXwXwJMUX9VzIJ9eJoIzCxxdGJugl7TlFzel6UwwEdsDy/8G80rRx4/ISGjd3kGSridZR1CaMPApHWRuSxknr1LkxPvzGYQ566yTE="
        }
    }

    SCAV_WEAPONS["arc9_eft_m1911"] = {
        ["ammoID"] = "efgm_ammo_45",
        ["ammoMin"] = 35,
        ["ammoMax"] = 48,
        ["scavAtts"] = {
            "XQAAAQAJAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdiva/+T8TWXFyZ6L+YGhlUEFGCfP6ZxRzhhtO4thQe+Y8iks9vtbjX/1mlPDmp6O4OLhhuzMvFkTlrQfPfK3ivuCRfw5mF2t9J9NMfTJXBYIwDkT8TIZrYGTDnj2E5r2njE2qO1+VknMQZ+JwujYf7xqN5yt85euuFXh09YHiN3D6NJTg6xDdwtlRy",
            "XQAAAQCQAgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdiva/+T8TWmHF0Cly6AHG2UUIhFPYlMHI0DjQP6V0b+4xigeU3VTb/5bQ+FeGA0phdsXP1JIh9xiGYLvByb0+MbjryPAyFwNuzmATxsCDa1bVz5sSRKiqUpu0uNtWQNxei2Dv2D2A6gAwo8+q0jslBfrssC09zTqA+XR3fjI9hR04SGHs4Pg3IDvn2NlFBYMlhOolkSgR+xJCwxSmOJL/GULUUEhRjwtEbx5MEWR0XqPc2",
            "XQAAAQA6AgAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdiva/+T8TVGz12MZlTBvfFuwVHr2M0vIvxQabJdixi//02kBQ2+EBuBeF++RbzJP5/Kimjlpj0WHyucs6Jokw+hapQ5GwF/z79DcieJBPXxHPHqoNOXevMoInedUnjhXBSDiwnjuCHCT6uNwqNRs8r8H85sLNvbrUqyPhnSlSFRm6GvQSqxJDkN0WHb+m6Zfqer9yUocrZhbPHQYZBa/p49r0RnWvltC4="
        }
    }

    SCAV_WEAPONS["arc9_eft_glock17"] = {
        ["ammoID"] = "efgm_ammo_9x19",
        ["ammoMin"] = 48,
        ["ammoMax"] = 64,
        ["scavAtts"] = {
            "XQAAAQBCAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivt1xkDF9J/BRcigS9VhIYXZ5jzcY0QKC4UDg7zw2J4NcnLrn7qGmfbrcIn3ZOxTbRObyQ+TN50SFIJhk4W7/rr4DmKjva9hcJV4mRdtdDl5y7njjTqZ9/obcJWyBUMOHjtHNwFf6XAzu",
            "XQAAAQB7AQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivt1xkDFpxgxCVMmCc6mHJmbxBPopDqtTtrLsjxvhXEI6Zo64/LFub3fTXw4gUpCcwOFTJ/wbZ4pp9vZUjiDZj+/L9wjdyEg7dSlGaKeeZyQD8AGCzEpkMqFCA1v3WVlkGgiceYnvEt3DYmD9JDtwK2hqRozB9qPo/OYe0ikbs3onpM/GVDlOkCB9",
            "XQAAAQBzAQAAAAAAAAA9iIIiM7tupQCpjrtGalANz5MWYz8LmM+Vxqdivt1xkDFobHaqOrinMXrqCN0wD3duGiIGChCDXAxSOLuRW06bwCg1iL9HsQBH4W64/cNnHCyi3zun+xbVhCIYMLZqLa00uRy5a3jTWVep2/1Ej3w5SzGBSIW1tS8Q5Gl7XomxLncOGM1jA8jhBQWTuPH92+S+MhihJHjEQGXnNIiuSYfGEPb3QQ=="
        }
    }

    SCAV_MEDS["efgm_meds_car"] = {
        ["duraMin"] = 37,
        ["duraMax"] = 75
    }

    SCAV_MEDS["efgm_meds_ifak"] = {
        ["duraMin"] = 50,
        ["duraMax"] = 80
    }

    SCAV_MEDS["efgm_meds_salewa"] = {
        ["duraMin"] = 70,
        ["duraMax"] = 140
    }
end

function SpawnAllLoot()
    if SERVER then
        for _, ent in ipairs(ents.FindByClass("efgm_loot")) do
            ent:Fire("SpawnStartLoot", 0, 0)
        end
    end
end

function RespawnAllLoot()
    if SERVER then
        for _, ent in ipairs(ents.FindByClass("efgm_loot")) do
            ent:Fire("SpawnLoot", 0, 0)
        end
    end
end

-- add attachment item definitions
hook.Add("InitPostEntity", "GenerateLootTables", function()
    GenerateLootTables()
    GenerateDuelLoadouts()
    GenerateMarketLimits()
    GenerateScavLoadouts()
end)

hook.Add("OnReloaded", "GenerateLootTablesOnReload", function()
    GenerateLootTables()
    GenerateDuelLoadouts()
    GenerateMarketLimits()
    GenerateScavLoadouts()
end)

if CLIENT and GetConVar("efgm_derivesbox"):GetInt() == 1 then

    function GenerateMissingAttDefs()
        file.CreateDir("efgmdev")
        file.Delete("efgmdev/attdefs.txt")
        local arc9atts = ARC9.Attachments

        for k, v in SortedPairs(arc9atts) do
            if EFGMITEMS[v.ShortName] then continue end
            if v.Free then continue end

            local dname = v.CompactName or v.PrintName
            local dtype = v.DisplayType or "Attachment"
            local desc = v.Description or ""
            local weight = v.Weight or 0.1
            local value = v.Value or 10000
            local icon
            if v.EFGMIcon then icon = v.EFGMIcon:GetName() else icon = v.Icon:GetName() end
            local sizeX = v.SizeX or 1
            local sizeY = v.SizeY or 1
            local level = v.EFGMLvl or 1
            local lootWeight = v.EFGMLootWeight or 100
            local canPurchase = tostring(v.EFGMCanPurchase)
            if canPurchase == "nil" then canPurchase = "true" end

            local attStr =
            'EFGMITEMS["arc9_att_' .. v.ShortName .. '"] = {\n' .. '\t' ..
            '["fullName"] = "' .. v.PrintName .. '",\n' .. '\t' ..
            '["displayName"] = "' .. dname .. '",\n' .. '\t' ..
            '["displayType"] = "' .. dtype .. '",\n' .. '\t' ..
            '["description"] = "' .. desc .. '",\n' .. '\t' ..
            '["weight"] = ' .. weight .. ',\n' .. '\t' ..
            '["value"] = ' .. value .. ',\n' .. '\t' ..
            '["equipType"] = ' .. EQUIPTYPE.Attachment .. ',\n' .. '\t' ..
            '["appearInInventory"] = true,\n' .. '\t' ..
            '["stackSize"] = 1,\n' .. '\t' ..
            '["icon"] = Material("' .. icon .. '.png", "smooth"),\n\n\n' .. '\t' ..
            '["sizeX"] = ' .. sizeX .. ',\n' .. '\t' ..
            '["sizeY"] = ' .. sizeY .. ',\n\n\n' .. '\t' ..
            '["levelReq"] = ' .. level .. ',\n' .. '\t' ..
            '["lootWeight"] = ' .. lootWeight .. ',\n' .. '\t' ..
            '["canPurchase"] = ' .. canPurchase .. ',\n' ..
            '}' ..
            "\n" .. "\n"

            print(k .. " definition generated,")
        end

        print("completed generation, file saved to garrysmod/data/efgmdev/attdefs.txt!")
    end
    concommand.Add("efgm_debug_generatemissingattdefs", function(ply, cmd, args) GenerateMissingAttDefs() end)

    function GenerateAllAttDefs()
        file.CreateDir("efgmdev")
        file.Delete("efgmdev/attdefs.txt")
        local arc9atts = ARC9.Attachments

        for k, v in SortedPairs(arc9atts) do
            if v.Free then continue end

            local dname = v.CompactName or v.PrintName
            local dtype = v.DisplayType or "Attachment"
            local desc = v.Description or ""
            local weight = v.Weight or 0.1
            local value = v.Value or 10000
            local icon
            if v.EFGMIcon then icon = v.EFGMIcon:GetName() else icon = v.Icon:GetName() end
            local sizeX = v.SizeX or 1
            local sizeY = v.SizeY or 1
            local level = v.EFGMLvl or 1
            local lootWeight = v.EFGMLootWeight or 100
            local canPurchase = tostring(v.EFGMCanPurchase)
            if canPurchase == "nil" then canPurchase = "true" end

            local attStr =
            'EFGMITEMS["arc9_att_' .. v.ShortName .. '"] = {\n' .. '\t' ..
            '["fullName"] = "' .. v.PrintName .. '",\n' .. '\t' ..
            '["displayName"] = "' .. dname .. '",\n' .. '\t' ..
            '["displayType"] = "' .. dtype .. '",\n' .. '\t' ..
            '["description"] = "' .. desc .. '",\n' .. '\t' ..
            '["weight"] = ' .. weight .. ',\n' .. '\t' ..
            '["value"] = ' .. value .. ',\n' .. '\t' ..
            '["equipType"] = ' .. EQUIPTYPE.Attachment .. ',\n' .. '\t' ..
            '["appearInInventory"] = true,\n' .. '\t' ..
            '["stackSize"] = 1,\n' .. '\t' ..
            '["icon"] = Material("' .. icon .. '.png", "smooth"),\n\n' .. '\t' ..
            '["sizeX"] = ' .. sizeX .. ',\n' .. '\t' ..
            '["sizeY"] = ' .. sizeY .. ',\n\n' .. '\t' ..
            '["levelReq"] = ' .. level .. ',\n' .. '\t' ..
            '["lootWeight"] = ' .. lootWeight .. ',\n' .. '\t' ..
            '["canPurchase"] = ' .. canPurchase .. ',\n' ..
            '}' ..
            "\n" .. "\n"

            file.Append("efgmdev/attdefs.txt", attStr)
            print(k .. " definition generated,")
        end

        print("completed generation, file saved to garrysmod/data/efgmdev/attdefs.txt!")
    end
    concommand.Add("efgm_debug_generateallattdefs", function(ply, cmd, args) GenerateAllAttDefs() end)

end