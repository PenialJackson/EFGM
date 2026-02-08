DUEL = {}

local plyMeta = FindMetaTable("Player")
if !plyMeta then Error("Could not find player table") return end

if SERVER then
	SetGlobalInt("DuelStatus", duelStatus.PENDING)

	DUEL.Players = {}
	DUEL.Allowed = true

	function DUEL:StartDuel(ply1, ply2)
		if GetGlobalInt("DuelStatus") != duelStatus.PENDING or !DUEL.Allowed then return end

		DUEL.Players = {ply1, ply2}

		local spawns = RandomDuelSpawns()
		if !spawns then DUEL.Players = {} print("no duel spawns found, canceling raid") return end -- no duel spawns available on the map
		if #spawns < #DUEL.Players then DUEL.Players = {} print("not enough duel spawns for the duel player count found, canceling raid") return end

		SetGlobalInt("DuelStatus", duelStatus.ACTIVE)
		hook.Run("StartedDuel")

		net.Start("PlayerDuelTransition")
			net.WriteUInt(1, 1)
		net.Send(DUEL.Players)

		local randLoadoutNum = math.random(1, #DUEL_PRIMARY)
		local primaryItem, secondaryItem, nadeItem = DUEL:GenerateLoadout(randLoadoutNum)

		for k, v in ipairs(DUEL.Players) do -- there is literally no reason for this to have more than 2 players, so i will asssume that it is 2 players
			v:AddFlags(FL_GODMODE)
			v.IsFreezed = true
			v:SetRaidStatus(3, "")
			v:SetNWInt("DuelsPlayed", v:GetNWInt("DuelsPlayed") + 1)
			v:SetNWBool("PlayerIsPMC", true)
			v:SetNWBool("InRange", true)

			UnequipAll(v)
			UpdatePreDuelInventoryString(v)
			UpdatePreDuelEquippedString(v)

			ReinstantiateInventoryForDuel(v)
			net.Start("PlayerReinstantiateInventory", false)
			net.Send(v)

			local holsterEquDelay = 0.4
			if primaryItem == nil then holsterEquDelay = 0.8 end

			if nadeItem != nil then timer.Simple(0, function() DUEL:EquipGrenade(v, nadeItem) end) end
			if secondaryItem != nil then timer.Simple(holsterEquDelay, function() DUEL:EquipHolster(v, secondaryItem, primaryItem == nil) end) end
			if primaryItem != nil then timer.Simple(0.8, function() DUEL:EquipPrimary(v, primaryItem) end) end

			net.Start("PlayerInventoryReloadForDuel")
				net.WriteTable(primaryItem or {})
				net.WriteTable(secondaryItem or {})
				net.WriteTable(nadeItem or {})
			net.Send(v)

			ResetRaidStats(v) -- because im lazy and won't make a special death overview

			timer.Simple(1, function()
				v:SetHealth(v:GetMaxHealth())
				v:SendLua("RunConsoleCommand('r_cleardecals')")

				v:Teleport(spawns[k]:GetPos(), spawns[k]:GetAngles(), Vector(0, 0, 0))
				v:RemoveFlags(FL_GODMODE)

				timer.Simple(1.35, function()
					v.IsFreezed = false
					DUEL:ReloadLoadoutItems(v)
				end)
			end)
		end
	end

	function DUEL:EndDuel(deadPly)
		if GetGlobalInt("DuelStatus") != duelStatus.ACTIVE then return end

		SetGlobalInt("DuelStatus", duelStatus.PENDING)
		hook.Run("EndedDuel")

		for k, v in ipairs(DUEL.Players) do v:SetNWBool("InRange", false) end

		if deadPly:GetNWInt("CurrentDuelWinStreak") >= deadPly:GetNWInt("BestDuelWinStreak") then deadPly:SetNWInt("BestDuelWinStreak", deadPly:GetNWInt("CurrentDuelWinStreak")) end
		deadPly:SetNWInt("CurrentDuelWinStreak", 0)

		table.RemoveByValue(DUEL.Players, deadPly)

		local winningPly = DUEL.Players[1]
		DUEL.Players = {}

		winningPly:SetRaidStatus(0, "")
		winningPly:SetNWInt("DuelsWon", winningPly:GetNWInt("DuelsWon") + 1)
		winningPly:SetNWInt("CurrentDuelWinStreak", winningPly:GetNWInt("CurrentDuelWinStreak") + 1)
		if winningPly:GetNWInt("CurrentDuelWinStreak") >= winningPly:GetNWInt("BestDuelWinStreak") then winningPly:SetNWInt("BestDuelWinStreak", winningPly:GetNWInt("CurrentDuelWinStreak")) end

		timer.Simple(0.5, function()
			net.Start("PlayerDuelTransition")
				net.WriteUInt(0, 1)
			net.Send(winningPly)
		end)

		winningPly:AddFlags(FL_GODMODE)
		if winningPly:GetActiveWeapon() != NULL then winningPly:GetActiveWeapon():SetClip1(-1) end

		timer.Simple(1, function()
			winningPly:AddFlags(FL_FROZEN)
		end)

		timer.Simple(1.5, function()
			ReinstantiateInventoryAfterDuel(winningPly)

			winningPly:GodDisable()

			local spawn = GetValidHideoutSpawn(2)

			winningPly:SetHealth(winningPly:GetMaxHealth())
			winningPly:SendLua("RunConsoleCommand('r_cleardecals')")

			winningPly:RemoveFlags(FL_FROZEN)
			winningPly:Teleport(spawn:GetPos(), spawn:GetAngles(), Vector(0, 0, 0))
			winningPly:RemoveFlags(FL_GODMODE)
		end)
	end

	-- in the case that a duel is running right before a map switch
	function DUEL:CancelDuel()
		if GetGlobalInt("DuelStatus") != duelStatus.ACTIVE then return end

		SetGlobalInt("DuelStatus", duelStatus.PENDING)
		hook.Run("CancelledDuel")

		for k, v in ipairs(DUEL.Players) do
			if v:Alive() then
				v:Kill()
			end

			v:SetNWBool("InRange", false)
			ReinstantiateInventoryAfterDuel(v)
		end

		DUEL.Players = {}
	end

	-- equipping items here to bypass the equip block when in a duel
	function DUEL:EquipPrimary(ply, item)
		ply.weaponSlots[1][1] = item
		GiveWepWithPresetFromCode(ply, item.name, item.data)
		ply:SelectWeapon(item.name)
	end

	function DUEL:EquipHolster(ply, item, doEquip)
		ply.weaponSlots[2][1] = item
		GiveWepWithPresetFromCode(ply, item.name, item.data)
		if doEquip then ply:SelectWeapon(item.name) end
	end

	function DUEL:EquipGrenade(ply, item)
		ply.weaponSlots[4][1] = item
		GiveWepWithPresetFromCode(ply, item.name, item.data)
	end

	function DUEL:GenerateLoadout(num)
		if !DUEL_PRIMARY[num] then print("invalid loadout number, no loadout being given") return end

		local nadeItem = nil

		if math.random(1, 3) == 3 then
			local _, nadeItemKey = table.Random(DUEL_GRENADE[1])
			local nadeDef = EFGMITEMS[nadeItemKey]

			local nadeData = {}
			nadeData.count = 1
			nadeItem = ITEM.Instantiate(nadeItemKey, nadeDef.equipType, nadeData)
		end

		if num < 8 then
			local _, primaryItemKey = table.Random(DUEL_PRIMARY[num])
			local primaryDef = EFGMITEMS[primaryItemKey]

			local primaryData = {}
			primaryData.count = 1
			if primaryDef.defAtts then primaryData.att = primaryDef.defAtts end
			if primaryDef.duelAtts then primaryData.att = primaryDef.duelAtts[math.random(#primaryDef.duelAtts)] end
			local primaryItem = ITEM.Instantiate(primaryItemKey, primaryDef.equipType, primaryData)

			local _, secondaryItemKey = table.Random(DUEL_SECONDARY[1])
			local secondaryDef = EFGMITEMS[secondaryItemKey]

			local secondaryData = {}
			secondaryData.count = 1
			if secondaryDef.defAtts then secondaryData.att = secondaryDef.defAtts end
			if secondaryDef.duelAtts then secondaryData.att = secondaryDef.duelAtts[math.random(#secondaryDef.duelAtts)] end
			local secondaryItem = ITEM.Instantiate(secondaryItemKey, secondaryDef.equipType, secondaryData)

			return primaryItem, secondaryItem, nadeItem
		elseif num == 8 then
			local _, secondaryItemKey = table.Random(DUEL_SECONDARY[1])
			local secondaryDef = EFGMITEMS[secondaryItemKey]

			local secondaryData = {}
			secondaryData.count = 1
			if secondaryDef.defAtts then secondaryData.att = secondaryDef.defAtts end
			if secondaryDef.duelAtts then secondaryData.att = secondaryDef.duelAtts[math.random(#secondaryDef.duelAtts)] end
			local secondaryItem = ITEM.Instantiate(secondaryItemKey, secondaryDef.equipType, secondaryData)

			return nil, secondaryItem, nadeItem
		end
	end

	function DUEL:ReloadLoadoutItems(ply)
		if !IsValid(ply) then return end
		if !ply:Alive() then return end

		for k, v in ipairs(ply:GetWeapons()) do
			local def = EFGMITEMS[v:GetClass()]
			if !def then continue end
			if def.equipType != EQUIPTYPE.Weapon then continue end

			v:SetClip1(v:GetMaxClip1())
			v:SetClip2(v:GetMaxClip2())
		end
	end

	hook.Add("PlayerDeath", "EndDuelOnDeath", function(victim, weapon, attacker)
		if !victim:IsInDuel() then return end -- the player wasn't a part of the duel

		ReinstantiateInventoryAfterDuel(victim)
		DUEL:EndDuel(victim)
	end)

	hook.Add("EndedRaid", "EndDuelOnMapChange", function(time)
		timer.Simple(time - 20, function() DUEL.Allowed = false end) -- disable any new duels
		timer.Simple(time - 3, function() DUEL:CancelDuel() end) -- force cancel current duel
	end)

	function ReinstantiateInventoryForDuel(ply)
		for i = 1, #table.GetKeys(WEAPONSLOTS) do
			if i == WEAPONSLOTS.MELEE.ID then continue end

			for k, v in ipairs(ply.weaponSlots[i]) do
				if !table.IsEmpty(v) then
					local item = table.Copy(v)
					if table.IsEmpty(item) then return end

					ply:StripWeapon(item.name)
				end
			end
		end

		ply.inventory = {}
		local equMelee = table.Copy(ply.weaponSlots[WEAPONSLOTS.MELEE.ID])

		ply.weaponSlots = {}
		for k, v in pairs(WEAPONSLOTS) do
			ply.weaponSlots[v.ID] = {}
			for i = 1, v.COUNT, 1 do ply.weaponSlots[v.ID][i] = {} end
		end

		if !table.IsEmpty(equMelee) then ply.weaponSlots[WEAPONSLOTS.MELEE.ID] = equMelee end

		CalculateInventoryWeight(ply)
	end

	function ReinstantiateInventoryAfterDuel(ply)
		for i = 1, #table.GetKeys(WEAPONSLOTS) do
			for k, v in ipairs(ply.weaponSlots[i]) do
				if !table.IsEmpty(v) then
					local item = table.Copy(v)
					if table.IsEmpty(item) then return end

					ply:StripWeapon(item.name)
				end
			end
		end

		ply.inventory = DecodeStash(ply, ply.preDuelInvStr)
		ply.weaponSlots = DecodeStash(ply, ply.preDuelEquStr)

		SendChunkedNet(ply, ply.preDuelInvStr, "PlayerNetworkInventory")
		SendChunkedNet(ply, ply.preDuelEquStr, "PlayerNetworkEquipped")

		if !ply:Alive() then return end

		for i = 1, #table.GetKeys(WEAPONSLOTS) do
			for k, v in ipairs(ply.weaponSlots[i]) do
				if !table.IsEmpty(v) then
					local item = table.Copy(v)
					if table.IsEmpty(item) then return end

					GiveWepWithPresetFromCode(ply, item.name, item.data)
				end
			end
		end

		CalculateInventoryWeight(ply)
	end

	function UpdatePreDuelInventoryString(ply)
		local inventoryStr = util.TableToJSON(ply.inventory)
		inventoryStr = util.Compress(inventoryStr)
		inventoryStr = util.Base64Encode(inventoryStr, true)
		ply.preDuelInvStr = inventoryStr

		return inventoryStr
	end

	function UpdatePreDuelEquippedString(ply)
		local equippedStr = util.TableToJSON(ply.weaponSlots)
		equippedStr = util.Compress(equippedStr)
		equippedStr = util.Base64Encode(equippedStr, true)
		ply.preDuelEquStr = equippedStr

		return equippedStr
	end
end

if CLIENT then
	net.Receive("PlayerInventoryReloadForDuel", function(len)
		local primaryItem, secondaryItem, nadeItem

		primaryItem = net.ReadTable()
		secondaryItem = net.ReadTable()
		nadeItem = net.ReadTable()

		if primaryItem.name then playerWeaponSlots[1][1] = primaryItem end
		if secondaryItem.name then playerWeaponSlots[2][1] = secondaryItem end
		if nadeItem.name then playerWeaponSlots[4][1] = nadeItem end
	end)
end