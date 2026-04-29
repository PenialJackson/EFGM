local math = math
local table = table
local net = net
local util = util

EFGM.SERVER.PLAYERMARKETLIMITS = EFGM.SERVER.PLAYERMARKETLIMITS or {}

function NetworkMarketLimits(ply)
	local id = ply:SteamID64()

	if !EFGM.SERVER.PLAYERMARKETLIMITS[id] then
		EFGM.SERVER.PLAYERMARKETLIMITS[id] = {}
		for item, limit in pairs(MARKETLIMITS) do
			EFGM.SERVER.PLAYERMARKETLIMITS[id][item] = limit
		end
	end

	local str = util.TableToJSON(EFGM.SERVER.PLAYERMARKETLIMITS[ply:SteamID64()])
	str = util.Compress(str)
	str = util.Base64Encode(str, true)
	SendChunkedNet(ply, str, "PlayerNetworkMarket") -- chunking this in case some idiot creates a massive list of entries
end

hook.Add("PlayerInitialSpawn", "MarketInitFirstSpawn", function(ply) NetworkMarketLimits(ply) end)

net.Receive("PlayerMarketPurchaseItem", function(len, ply)
	local item = net.ReadString()
	local count = net.ReadUInt(16)

	if !ply:IsInHideout() then return end

	local def = EFGM.ITEMS[item]
	if def == nil then return end

	if def.canPurchase == false then return end
	if ply:GetNWInt("StashCount", 0) + math.floor(count / def.stackSize) >= ply:GetNWInt("StashMax", 150) then return end
	if EFGM.SERVER.PLAYERMARKETLIMITS[ply:SteamID64()][item] and count > EFGM.SERVER.PLAYERMARKETLIMITS[ply:SteamID64()][item] then return end

	local plyMoney = ply:GetNWInt("Money", 0)
	local plyLevel = ply:GetNWInt("Level", 1)
	local cost = def.value * count
	local lvl = def.levelReq or 1

	if def.equipType == EQUIPTYPE.Weapon and def.defAtts then
		local atts = GetPrefixedAttachmentListFromCode(def.defAtts)
		if !atts then return end

		for _, a in ipairs(atts) do
			local att = EFGM.ITEMS[a]
			if att == nil then continue end

			cost = cost + att.value
		end
	end

	if plyMoney < cost then return end
	if plyLevel < lvl then return end

	local data = {}
	data.count = count

	if def.defAtts then
		data.att = def.defAtts
	end

	if (def.consumableType == "heal" or def.consumableType == "key") and def.consumableValue then
		data.durability = def.consumableValue
	end

	FlowItemToStash(ply, item, data)
	ReloadStash(ply)

	ply:SetStat("Money", plyMoney - cost)
	ply:AddToStat("MoneySpent", cost)
	if EFGM.SERVER.PLAYERMARKETLIMITS[ply:SteamID64()][item] then EFGM.SERVER.PLAYERMARKETLIMITS[ply:SteamID64()][item] = EFGM.SERVER.PLAYERMARKETLIMITS[ply:SteamID64()][item] - count end

	NetworkMarketLimits(ply)
end)

net.Receive("PlayerMarketPurchaseItemToInventory", function(len, ply)
	local item = net.ReadString()
	local count = net.ReadUInt(16)

	if !ply:IsInHideout() then return end
	if ply:CompareFaction(false) then return end

	local def = EFGM.ITEMS[item]
	if def == nil then return end

	if def.canPurchase == false then return end
	if EFGM.SERVER.PLAYERMARKETLIMITS[ply:SteamID64()][item] and count > EFGM.SERVER.PLAYERMARKETLIMITS[ply:SteamID64()][item] then return end

	local plyMoney = ply:GetNWInt("Money", 0)
	local plyLevel = ply:GetNWInt("Level", 1)
	local cost = def.value * count
	local lvl = def.levelReq or 1

	if def.equipType == EQUIPTYPE.Weapon and def.defAtts then
		local atts = GetPrefixedAttachmentListFromCode(def.defAtts)
		if !atts then return end

		for _, a in ipairs(atts) do
			local att = EFGM.ITEMS[a]
			if att == nil then continue end

			cost = cost + att.value
		end
	end

	if plyMoney < cost then return end
	if plyLevel < lvl then return end

	local data = {}
	data.count = count

	if def.defAtts then
		data.att = def.defAtts
	end

	if (def.consumableType == "heal" or def.consumableType == "key") and def.consumableValue then
		data.durability = def.consumableValue
	end

	FlowItemToInventory(ply, item, data)
	ReloadInventory(ply)

	ply:SetStat("Money", plyMoney - cost)
	ply:AddToStat("MoneySpent", cost)
	if EFGM.SERVER.PLAYERMARKETLIMITS[ply:SteamID64()][item] then EFGM.SERVER.PLAYERMARKETLIMITS[ply:SteamID64()][item] = EFGM.SERVER.PLAYERMARKETLIMITS[ply:SteamID64()][item] - count end

	NetworkMarketLimits(ply)
end)

net.Receive("PlayerMarketPurchasePresetToInventory", function(len, ply)
	local presetAtts = net.ReadTable()

	if !ply:IsInHideout() then return end
	if ply:CompareFaction(false) then return end

	local plyMoney = ply:GetNWInt("Money", 0)
	local plyLevel = ply:GetNWInt("Level", 1)

	local cost = 0
	local highestLvl = 0

	for att, attcount in pairs(presetAtts) do
		local i = EFGM.ITEMS[att]
		if i == nil then return end

		cost = cost + (i.value * attcount)
		if (i.levelReq or 1) > highestLvl then highestLvl = (i.levelReq or 1) end
		if !i.canPurchase then return end
	end

	if plyMoney < cost then return end
	if plyLevel < highestLvl then return end

	for att, attcount in pairs(presetAtts) do
		local data = {}
		data.count = attcount
		FlowItemToInventory(ply, att, data)
	end

	ReloadInventory(ply)

	ply:SetStat("Money", plyMoney - cost)
	ply:AddToStat("MoneySpent", cost)

	NetworkMarketLimits(ply)
end)

net.Receive("PlayerMarketSellItem", function(len, ply)
	local item = net.ReadString()
	local count = net.ReadUInt(16)
	local key = net.ReadUInt(16)

	if !ply:IsInHideout() then return end

	if AmountInInventory(ply.stash, item) < count then return end
	if ply.stash[key] == nil then return end

	local def = EFGM.ITEMS[item]
	if def == nil then return end

	local plyMoney = ply:GetNWInt("Money", 0)

	if def.equipType == EQUIPTYPE.Weapon then
		local data = ply.stash[key].data
		local cost = math.floor(def.value * EFGM.CONFIG.MARKET.SELLMULTIPLIER)

		if data.att then
			local atts = GetPrefixedAttachmentListFromCode(data.att)
			if !atts then return end

			for _, a in ipairs(atts) do
				local att = EFGM.ITEMS[a]
				if att == nil then continue end

				cost = cost + math.floor(att.value * EFGM.CONFIG.MARKET.SELLMULTIPLIER)
			end
		end

		DeleteItemFromStash(ply, key)
		ReloadStash(ply)

		ply:SetStat("Money", plyMoney + cost)
		ply:AddToStat("MoneyEarned", cost)

		return
	elseif def.consumableType == "heal" or def.consumableType == "key" then
		local data = ply.stash[key].data
		local cost = math.floor((def.value * EFGM.CONFIG.MARKET.SELLMULTIPLIER) * (data.durability / def.consumableValue))

		DeleteItemFromStash(ply, key)
		ReloadStash(ply)

		ply:SetStat("Money", plyMoney + cost)
		ply:AddToStat("MoneyEarned", cost)

		return
	else
		local data = ply.stash[key].data
		local cost = math.floor(def.value * EFGM.CONFIG.MARKET.SELLMULTIPLIER) * count

		if count == math.max(data.count, 1) then
			DeleteItemFromStash(ply, key)
		else
			local newData = table.Copy(data)
			newData.count = math.max(data.count, 1) - count
			UpdateItemFromStash(ply, key, newData)
		end

		ReloadStash(ply)

		ply:SetStat("Money", plyMoney + cost)
		ply:AddToStat("MoneyEarned", cost)

		return
	end
end)

net.Receive("PlayerMarketSellBulk", function(len, ply)
    if !ply:IsInHideout() then return end

    local ids = net.ReadTable()

    if table.IsEmpty(ids) then return end

	local keys = {}
	for k, v in pairs(ids) do
		table.insert(keys, k)
	end

	table.sort(keys, function(a, b)
		return a > b
	end)

    local plyMoney = ply:GetNWInt("Money", 0)
    local moneyToGive = 0

    for _, key in ipairs(keys) do
        local item = ply.stash[key]
		if item == nil then return end

		local def = EFGM.ITEMS[item.name]
		if def == nil then return end

        if def.equipType == EQUIPTYPE.Weapon then
            local data = ply.stash[key].data
            local cost = math.floor(def.value * EFGM.CONFIG.MARKET.SELLMULTIPLIER)

			if data.att then
				local atts = GetPrefixedAttachmentListFromCode(data.att)
				if !atts then return end

				for _, a in ipairs(atts) do
					local att = EFGM.ITEMS[a]
					if att == nil then continue end

					cost = cost + math.floor(att.value * EFGM.CONFIG.MARKET.SELLMULTIPLIER)
				end
			end

            DeleteItemFromStash(ply, key)

            moneyToGive = moneyToGive + cost

            continue
        elseif def.consumableType == "heal" or def.consumableType == "key" then
			local data = ply.stash[key].data
			local cost = math.floor((def.value * EFGM.CONFIG.MARKET.SELLMULTIPLIER) * (data.durability / def.consumableValue))

            DeleteItemFromStash(ply, key)

            moneyToGive = moneyToGive + cost

            continue
        else
            local data = ply.stash[key].data
            local count = data.count
            local cost = math.floor(def.value * EFGM.CONFIG.MARKET.SELLMULTIPLIER) * count

            DeleteItemFromStash(ply, key)

            moneyToGive = moneyToGive + cost

            continue
        end
    end

    ReloadStash(ply)

    ply:SetStat("Money", plyMoney + moneyToGive)
    ply:AddToStat("MoneyEarned", cost)
end)

if GetConVar("efgm_derivesbox"):GetInt() == 1 then
	concommand.Add("efgm_debug_setmoney", function(ply, cmd, args)
		ply:SetStat("Money", tonumber(args[1]) or 0)
	end)

	concommand.Add("efgm_debug_resetmarketlimits", function(ply, cmd, args)
		EFGM.SERVER.PLAYERMARKETLIMITS[ply:SteamID64()] = {}
		NetworkMarketLimits(ply)
	end)
end
