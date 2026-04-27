local table = table
local net = net
local player = player

-- Eat shit penial i stole your titanmod code save manager code
-- As of 4/25/2025 at 4:08AM CST, porty can eat shit, as I have rewritten this code to match the new titanmod networking manager
-- As of 11/1/2025 at 2:23PM CDT, ):
hook.Add("Initialize", "InitPlayerNetworking", function()
	sql.Query("CREATE TABLE IF NOT EXISTS EFGMPlayerData64 (SteamID INTEGER, Key TEXT, Value TEXT);")
end)

local tempCMD = nil
local tempNewCMD = nil

function InitializeNetworkBool(ply, query, key, value)
	if query == "new" then ply:SetNWBool(key, tobool(value)) return tobool(value) end

	for k, v in ipairs(query) do
		if key == v.Key then
			ply:SetNWBool(key, tobool(v.Value))
			return tobool(v.Value)
		end
	end

	ply:SetNWBool(key, tobool(value))
	return tobool(value)
end

function InitializeNetworkInt(ply, query, key, value)
	if query == "new" then ply:SetNWInt(key, tonumber(value)) return tonumber(value) end

	for k, v in ipairs(query) do
		if key == v.Key then
			ply:SetNWInt(key, tonumber(v.Value))
			return tonumber(v.Value)
		end
	end

	ply:SetNWInt(key, tonumber(value))
	return tonumber(value)
end

function InitializeNetworkFloat(ply, query, key, value)
	if query == "new" then ply:SetNWFloat(key, tonumber(value)) return tonumber(value) end

	for k, v in ipairs(query) do
		if key == v.Key then
			ply:SetNWFloat(key, tonumber(v.Value))
			return tonumber(v.Value)
		end
	end

	ply:SetNWFloat(key, tonumber(value))
	return tonumber(value)
end

function InitializeNetworkString(ply, query, key, value)
	if query == "new" then ply:SetNWString(key, tostring(value)) return tostring(value) end

	for k, v in ipairs(query) do
		if key == v.Key then
			ply:SetNWString(key, tostring(v.Value))
			return tostring(v.Value)
		end
	end

	ply:SetNWString(key, tostring(value))
	return tostring(value)
end

-- an adderall fueled discovery
function InitializeStashString(ply, query, value)
	if query == "new" then ply.stashStr = tostring(value) return tostring(value) end

	for k, v in ipairs(query) do
		if v.Key == "Stash" then
			ply.stashStr = tostring(v.Value)
			return tostring(v.Value)
		end
	end

	ply.stashStr = tostring(value)
	return tostring(value)
end

function InitializeInventoryString(ply, query, value)
	if query == "new" then ply.invStr = tostring(value) return tostring(value) end

	for k, v in ipairs(query) do
		if v.Key == "Inventory" then
			ply.invStr = tostring(v.Value)
			return tostring(v.Value)
		end
	end

	ply.invStr = tostring(value)
	return tostring(value)
end

function InitializeEquippedString(ply, query, value)
	if query == "new" then ply.equStr = tostring(value) return tostring(value) end

	for k, v in ipairs(query) do
		if v.Key == "Equipped" then
			ply.equStr = tostring(v.Value)
			return tostring(v.Value)
		end
	end

	ply.equStr = tostring(value)
	return tostring(value)
end

function InitializeTaskString(ply, query, value)
	if query == "new" then ply.taskStr = tostring(value) return tostring(value) end

	for k, v in ipairs(query) do
		if v.Key == "Tasks" then
			ply.taskStr = tostring(v.Value)
			return tostring(v.Value)
		end
	end

	ply.taskStr = tostring(value)
	return tostring(value)
end

function UninitializeNetworkBool(ply, query, key)
	local id64 = ply:SteamID64()
	local value = tobool(ply:GetNWBool(key))

	if query == "new" then tempNewCMD = tempNewCMD .. "(" .. SQLStr(id64) .. ", " .. SQLStr(key) .. ", " .. SQLStr(value) .. "), " return end

	for k, v in ipairs(query) do
		if key == v.Key then
			tempCMD = tempCMD .. "WHEN " .. SQLStr(key) .. " THEN " .. SQLStr(value) .. " "
			return
		end
	end

	tempNewCMD = tempNewCMD .. "(" .. SQLStr(id64) .. ", " .. SQLStr(key) .. ", " .. SQLStr(value) .. "), "
end

function UninitializeNetworkInt(ply, query, key)
	local id64 = ply:SteamID64()
	local value = tonumber(ply:GetNWInt(key))

	if query == "new" then tempNewCMD = tempNewCMD .. "(" .. SQLStr(id64) .. ", " .. SQLStr(key) .. ", " .. SQLStr(value) .. "), " return end

	for k, v in ipairs(query) do
		if key == v.Key then
			tempCMD = tempCMD .. "WHEN " .. SQLStr(key) .. " THEN " .. SQLStr(value) .. " "
			return
		end
	end

	tempNewCMD = tempNewCMD .. "(" .. SQLStr(id64) .. ", " .. SQLStr(key) .. ", " .. SQLStr(value) .. "), "
end

function UninitializeNetworkFloat(ply, query, key)
	local id64 = ply:SteamID64()
	local value = tonumber(ply:GetNWFloat(key))

	if query == "new" then tempNewCMD = tempNewCMD .. "(" .. SQLStr(id64) .. ", " .. SQLStr(key) .. ", " .. SQLStr(value) .. "), " return end

	for k, v in ipairs(query) do
		if key == v.Key then
			tempCMD = tempCMD .. "WHEN " .. SQLStr(key) .. " THEN " .. SQLStr(value) .. " "
			return
		end
	end

	tempNewCMD = tempNewCMD .. "(" .. SQLStr(id64) .. ", " .. SQLStr(key) .. ", " .. SQLStr(value) .. "), "
end

function UninitializeNetworkString(ply, query, key, valueOverride)
	local id64 = ply:SteamID64()
	local value = ""

	if valueOverride == nil then
		value = tostring(ply:GetNWString(key))
	else
		value = tostring(valueOverride)
	end

	if query == "new" then tempNewCMD = tempNewCMD .. "(" .. SQLStr(id64) .. ", " .. SQLStr(key) .. ", " .. SQLStr(value) .. "), " return end

	for k, v in ipairs(query) do
		if key == v.Key then
			tempCMD = tempCMD .. "WHEN " .. SQLStr(key) .. " THEN " .. SQLStr(value) .. " "
			return
		end
	end

	tempNewCMD = tempNewCMD .. "(" .. SQLStr(id64) .. ", " .. SQLStr(key) .. ", " .. SQLStr(value) .. "), "
end

-- lord please save me
function UninitializeStashString(ply, query, valueOverride)
	local id64 = ply:SteamID64()
	local value = ""

	if valueOverride == nil then
		value = tostring(ply.stashStr)
	else
		value = tostring(valueOverride)
	end

	if query == "new" then tempNewCMD = tempNewCMD .. "(" .. SQLStr(id64) .. ", " .. SQLStr("Stash") .. ", " .. SQLStr(value) .. "), " return end

	for k, v in ipairs(query) do
		if v.Key == "Stash" then
			tempCMD = tempCMD .. "WHEN " .. SQLStr("Stash") .. " THEN " .. SQLStr(value) .. " "
			return
		end
	end

	tempNewCMD = tempNewCMD .. "(" .. SQLStr(id64) .. ", " .. SQLStr("Stash") .. ", " .. SQLStr(value) .. "), "
end

function UninitializeInventoryString(ply, query, valueOverride)
	local id64 = ply:SteamID64()
	local value = ""

	if valueOverride == nil then
		value = tostring(ply.invStr)
	else
		value = tostring(valueOverride)
	end

	if query == "new" then tempNewCMD = tempNewCMD .. "(" .. SQLStr(id64) .. ", " .. SQLStr("Inventory") .. ", " .. SQLStr(value) .. "), " return end

	for k, v in ipairs(query) do
		if v.Key == "Inventory" then
			tempCMD = tempCMD .. "WHEN " .. SQLStr("Inventory") .. " THEN " .. SQLStr(value) .. " "
			return
		end
	end

	tempNewCMD = tempNewCMD .. "(" .. SQLStr(id64) .. ", " .. SQLStr("Inventory") .. ", " .. SQLStr(value) .. "), "
end

function UninitializeEquippedString(ply, query, valueOverride)
	local id64 = ply:SteamID64()
	local value = ""

	if valueOverride == nil then
		value = tostring(ply.equStr)
	else
		value = tostring(valueOverride)
	end

	if query == "new" then tempNewCMD = tempNewCMD .. "(" .. SQLStr(id64) .. ", " .. SQLStr("Equipped") .. ", " .. SQLStr(value) .. "), " return end

	for k, v in ipairs(query) do
		if v.Key == "Equipped" then
			tempCMD = tempCMD .. "WHEN " .. SQLStr("Equipped") .. " THEN " .. SQLStr(value) .. " "
			return
		end
	end

	tempNewCMD = tempNewCMD .. "(" .. SQLStr(id64) .. ", " .. SQLStr("Equipped") .. ", " .. SQLStr(value) .. "), "
end

function UninitializeTaskString(ply, query, valueOverride)
	local id64 = ply:SteamID64()
	local value = ""

	if valueOverride == nil then
		value = tostring(ply.taskStr)
	else
		value = tostring(valueOverride)
	end

	if query == "new" then tempNewCMD = tempNewCMD .. "(" .. SQLStr(id64) .. ", " .. SQLStr("Tasks") .. ", " .. SQLStr(value) .. "), " return end

	for k, v in ipairs(query) do
		if v.Key == "Tasks" then
			tempCMD = tempCMD .. "WHEN " .. SQLStr("Tasks") .. " THEN " .. SQLStr(value) .. " "
			return
		end
	end

	tempNewCMD = tempNewCMD .. "(" .. SQLStr(id64) .. ", " .. SQLStr("Tasks") .. ", " .. SQLStr(value) .. "), "
end

function SplitNetByChunk(text, chunkSize)
	local chunks = {}
	for i = 1, #text, chunkSize do  chunks[#chunks + 1] = text:sub(i, i + chunkSize - 1) end
	return chunks
end

function SendChunkedNet(ply, str, netStr)
	local chunkSize = 61440 -- 60kb, limit is 64kb, to be safe
	local chunks = SplitNetByChunk(str, chunkSize)
	local chunkCount = #chunks
	local uID = CurTime()

	for i, c in ipairs(chunks) do
		net.Start(netStr)
			net.WriteFloat(uID)
			net.WriteUInt(i, 16)
			net.WriteUInt(chunkCount, 16)
			net.WriteString(c)
		net.Send(ply)
	end
end

function EquippedIsInEnumScope(ply)
	for k, v in pairs(WEAPONSLOTS) do
		local subSlotCount = table.Count(ply.weaponSlots[v.ID])
		local subSlotCountLimit = v.COUNT

		if subSlotCount > subSlotCountLimit then
			for i = subSlotCountLimit, subSlotCount do
				ply.weaponSlots[v.ID][i] = nil
			end
		end
	end

	return UpdateEquippedString(ply)
end

-- Yo the way this shit works is very cool, nice job pene
function SetupPlayerData(ply)
	local id64 = ply:SteamID64()
	local query = sql.Query("SELECT Key, Value FROM EFGMPlayerData64 WHERE SteamID = " .. id64 .. ";")
	if query == nil then query = "new" end

	-- stats
	InitializeNetworkInt(ply, query, "Level", 1)
	InitializeNetworkInt(ply, query, "Experience", 0)
	InitializeNetworkInt(ply, query, "Money", 100000000)
	InitializeNetworkInt(ply, query, "MoneyEarned", 0)
	InitializeNetworkInt(ply, query, "MoneySpent", 0)
	InitializeNetworkInt(ply, query, "Time", 0)
	InitializeNetworkInt(ply, query, "TimeOnline", 0)
	InitializeNetworkInt(ply, query, "StashValue", 0)
	InitializeNetworkInt(ply, query, "HighestStashValue", 0)
	InitializeNetworkInt(ply, query, "ItemsLooted", 0)
	InitializeNetworkInt(ply, query, "ContainersLooted", 0)
	InitializeNetworkInt(ply, query, "KeysUsed", 0)

	-- combat
	InitializeNetworkInt(ply, query, "Kills", 0)
	InitializeNetworkInt(ply, query, "Deaths", 0)
	InitializeNetworkInt(ply, query, "Suicides", 0)
	InitializeNetworkInt(ply, query, "DamageDealt", 0)
	InitializeNetworkInt(ply, query, "DamageRecieved", 0)
	InitializeNetworkInt(ply, query, "HealthHealed", 0)
	InitializeNetworkInt(ply, query, "ShotsFired", 0)
	InitializeNetworkInt(ply, query, "ShotsHit", 0)
	InitializeNetworkInt(ply, query, "Headshots", 0)
	InitializeNetworkInt(ply, query, "FarthestKill", 0)

	-- raids
	InitializeNetworkInt(ply, query, "Extractions", 0)
	InitializeNetworkInt(ply, query, "Quits", 0)
	InitializeNetworkInt(ply, query, "RaidsPlayed", 0)

	-- duels
	InitializeNetworkInt(ply, query, "DuelsPlayed", 0)
	InitializeNetworkInt(ply, query, "DuelsWon", 0)

	-- streaks
	InitializeNetworkInt(ply, query, "CurrentKillStreak", 0)
	InitializeNetworkInt(ply, query, "BestKillStreak", 0)
	InitializeNetworkInt(ply, query, "CurrentExtractionStreak", 0)
	InitializeNetworkInt(ply, query, "BestExtractionStreak", 0)
	InitializeNetworkInt(ply, query, "CurrentDuelWinStreak", 0)
	InitializeNetworkInt(ply, query, "BestDuelWinStreak", 0)

	-- stash/inventory
	InitializeNetworkInt(ply, query, "StashMax", 2400)

	for k, v in ipairs(EFGM.CONFIG.LEVELARRAY) do
		if ply:GetNWInt("Level") == k and v != "max" then ply:SetNWInt("ExperienceToNextLevel", v) end
	end

	-- stash
	local stashString = InitializeStashString(ply, query, "XQAAAQCzCgAAAAAAAAAtnsBHRAlDnI+0YKoytE2yTNKO521sKGQuGNJPYpMWvBCnQ/h3Lcka+bVKJDfhDb2tn/Ggb+eNIqA+lldFfh5j+xEUo43j77yROnvLPm/qzBhal3NSosKSsf2tVnFBM7vxqT0fxBnQiO83hv38gFBHxSqM56ONgnVWjub9OMPNaz7BE7h7CQvLOLtyyjLEEHBL/uQOkvaWStfLJP40NHU6hJDlHL+2X69FHYOQ5wFDkgfgJIeTzveRNs0SICR34TixyGykniPe6DxM4F8Cq/jXpr+tJ0FnHZ3xuHJf7xH4YRo14ivFObewHJVR3JScJLniGU1w3yX7sUx9R2S1nxa7Qjy1DHpNmYyXuwsVkMpn/ZCCFivvBtezcfGsyIOWdyA6WU6C0goIw1vOP0jE+2vTKIPnkVjT0GBtRGgnrsbjRSLfN314E1xZPLSPiL/3RL0YT44uPXNkNdmFpSim3xAMwfyYtTUq7ENtpnl9/zbrdH2lKWlCVqJw+Z6TKEeFUkzdTmY7Q5Xp9Qj1rMXBBmvhTRcDWlzA5nTzEP9ftnAUrHQ1tLhZPzma8hmuGIxKHuuTc7JUon+S6CDUTWGPiRepU7iLs9cRKXaD3bhlHDw/kMYFD6D6ahqGRy+ArleWWVp7qZsKZV+hxAGkddi5iQeBE8VE8PZnWlW+DuLHemimUzpoPyVT/8rWHvtDqyJQmLK4I3vdkVz9CDC8PcVOgZwyNQuxMAU8N/+3F5afkC0O9oxg0nfyPUyjIID3iniShYTdjLUFDSZUjdpiwIyoO60CvqRhElBcbuNznibdYHWdKLUidWmmUEgKjFF9oYc2SIQGrF0BFRNzC1S853hG8lOHqNcC4ypotJi1Y+aJNuyvTCAT2UAAMas9jwbXJzwx6+osgEITzjiCEOnM+d7Kk/6++YL9wnHsjMoEXZpy+gjuVoUsC1dokeYaCCoLovt9gAtK4C87qaF3XhkwCoJHmBiPk72xqROH9yJolPAab7lXAmfK64L1Q4KMPcrSnK1QrmmFJ0On4h90q99T/k5rNM15TAIhwEouBOAinHSpqCP1VQVp77e6BwY+igjFnSK7D1oQOhT+jjCdl8rIZpg8r9KkkGuCrq607WxRjE+C1uZlgO+nmX8LQZaOVaOcOfob5AYVHCGGXTKhdy+FwZcQQbRt/be8UWrhlAbghqflbujxhKqhncsN2Rqxdpo7KipC672d9vn5Fd9p1rs8AfD8oZhqhglt1S5/b5ya2WK6sLeS2Wo6YZXafug/bZO3HCuGNkXU2J3E8gCKr/5ftAaH6gEN1hNNoelBuHiGwnSPMl1JP1Vb/a7W+jQkUuOboG4koXMYVhgzEAA=")
	ply.stash = DecodeStash(ply, stashString)
	if ply.stash == nil then ply.stash = {} end

	-- check for stash corruption
	local stashSafe = false
	while !stashSafe do
		stashSafe = true
		for k, v in ipairs(ply.stash) do
			if EFGM.ITEMS[v.name] == nil then
				table.remove(ply.stash, k)
				stashSafe = false
			end
		end
	end
	ply:SetNWInt("StashCount", #ply.stash)
	stashString = UpdateStashString(ply)

	-- inventory
	local inventoryString = InitializeInventoryString(ply, query, "XQAAAQBHBQAAAAAAAAAtnsBHRAlDnI+0YTROtE2yTNKO569j8mi1Et/q/uD6XoR8aAKYh4+i0E43RHwCTGGK1Ufk5ZnamNm+qFP2TG/4QauCin2hqeXjQafGUo91uqfd77g8/tUBPE6mQLj10o3zGvehYpU10yfdYmL+WqKMjpKgaoDYHCd+T3Aq+f5n7Wo4aemJMpCcShxy04+rOtP0zfNWfF1yM66R12K2B9UFKf8eqotoJ81qM9yhjs67U2FL+a9WZ1hBT6dauuREXUSMYNm/VcvHHEpaouDbzhetU01/FtTdGW6i2atyEoo0UBy9jCD4wNPT+B0oKP/VB2F4ZblOGk47SH9X0qe9muMNyQhGvf1CsfQ3lGOuxHxbmUgUWhtdIdERMp+Cr4jHXlvQeKYXKxOovtz+wj1X0sRx3oqTq2iPcO0xQJ5LE1mHF+b0fZB1qi4p58NCB4QOB8Jc3ym3RRRsaP7oMngq50oRp7XIwSt+y6u52To5R/zLxnAysQ3xxkBzpK7t/26Mak8Hddi/JmhYrvy2gM0dXukfw5EyueaKbC4v61KKN6Hv/Hwx3FTHMx8pCLsY3vpha7EfNUgo/TpCbOG/eet2ZeTE2CjUx6/GPL+05nr1fL47YEBF2t08ABkcjCJuU+U5ZQxDYxeQIcAaKzwFwwHFQZzuhM/mQ6A/97WpEN4eDWag3NEcqOeJlmGyiIAyg9wJPNrJPL6Ucl2CjsQkSbUiQF/G+7MkLPX+Q5Hkiso7jo2e5SManbFny4MkKfjybu4L1p/ovzXHDGjxQCeJIlFvBL9F1zZhGETo6o0IjLL6iclArJAW8n3UePYTw/Eo+GRDsU5iG/9vMCjJBP6Lua/u4BV8XRfJ2y7V8F2Zqsx3AsI=")
	ply.inventory = DecodeStash(ply, inventoryString) -- yes this works ignore function name
	if ply.inventory == nil then ply.inventory = {} end

	-- check for inventory corruption
	local invSafe = false
	while !invSafe do
		invSafe = true
		for k, v in ipairs(ply.inventory) do
			if EFGM.ITEMS[v.name] == nil then
				table.remove(ply.inventory, k)
				invSafe = false
			end
		end
	end
	inventoryString = UpdateInventoryString(ply)

	local equippedString = InitializeEquippedString(ply, query, "XQAAAQBOAAAAAAAAAAAt6BNFkAUItS1jeFDpc1iNwAJh1IePqjdAjcIZg9YH1qbVFSUXtOPsmmtWYkyGvHtro8Y/8lYFwusyTndsvkO11WuhAAA=")
	ply.weaponSlots = DecodeStash(ply, equippedString)
	if ply.weaponSlots == nil then
		ply.weaponSlots = {}

		for k, v in pairs(WEAPONSLOTS) do
			ply.weaponSlots[v.ID] = {}
			for i = 1, v.COUNT, 1 do ply.weaponSlots[v.ID][i] = {} end
		end
	end

	-- check for equipped item corruption
	local equSafe = false
	while !equSafe do
		equSafe = true
		for i = 1, #table.GetKeys(WEAPONSLOTS) do
			for k, v in ipairs(ply.weaponSlots[i]) do
				if !table.IsEmpty(v) and EFGM.ITEMS[v.name] == nil then
					ply.weaponSlots[i][k] = {}
					equSafe = false
				end
			end
		end
	end
	equippedString = UpdateEquippedString(ply)

	local taskString = InitializeTaskString(ply, query, "")
	ply.tasks = DecodeStash(ply, taskString)
	if ply.tasks == nil then ply.tasks = {} end

	CalculateInventoryWeight(ply)

	SendChunkedNet(ply, stashString, "PlayerNetworkStash")
	SendChunkedNet(ply, inventoryString, "PlayerNetworkInventory")

	equippedString = EquippedIsInEnumScope(ply) -- holy fuck dude

	SendChunkedNet(ply, equippedString, "PlayerNetworkEquipped")

	TaskUpdate(ply)
end

function SavePlayerData(ply)
	if tempNewCMD != nil or tempCMD != nil then return end -- shouldn't be possible but just to be safe
	local id64 = ply:SteamID64()
	local query = sql.Query("SELECT Key, Value FROM EFGMPlayerData64 WHERE SteamID = " .. id64 .. ";")
	if query == nil then query = "new" end

	tempNewCMD = "INSERT INTO EFGMPlayerData64 (SteamID, Key, Value) VALUES"
	tempCMD = "UPDATE EFGMPlayerData64 SET Value = CASE Key "

	sql.Begin()

	-- stats
	UninitializeNetworkInt(ply, query, "Level")
	UninitializeNetworkInt(ply, query, "Experience")
	UninitializeNetworkInt(ply, query, "Money")
	UninitializeNetworkInt(ply, query, "MoneyEarned")
	UninitializeNetworkInt(ply, query, "MoneySpent")
	UninitializeNetworkInt(ply, query, "Time")
	UninitializeNetworkInt(ply, query, "TimeOnline")
	UninitializeNetworkInt(ply, query, "StashValue")
	UninitializeNetworkInt(ply, query, "HighestStashValue")
	UninitializeNetworkInt(ply, query, "ItemsLooted")
	UninitializeNetworkInt(ply, query, "ContainersLooted")
	UninitializeNetworkInt(ply, query, "KeysUsed")

	-- combat
	UninitializeNetworkInt(ply, query, "Kills")
	UninitializeNetworkInt(ply, query, "Deaths")
	UninitializeNetworkInt(ply, query, "Suicides")
	UninitializeNetworkInt(ply, query, "DamageDealt")
	UninitializeNetworkInt(ply, query, "DamageRecieved")
	UninitializeNetworkInt(ply, query, "HealthHealed")
	UninitializeNetworkInt(ply, query, "ShotsFired")
	UninitializeNetworkInt(ply, query, "ShotsHit")
	UninitializeNetworkInt(ply, query, "Headshots")
	UninitializeNetworkInt(ply, query, "FarthestKill")

	-- raids
	UninitializeNetworkInt(ply, query, "Extractions")
	UninitializeNetworkInt(ply, query, "Quits")
	UninitializeNetworkInt(ply, query, "RaidsPlayed")

	-- duels
	UninitializeNetworkInt(ply, query, "DuelsPlayed")
	UninitializeNetworkInt(ply, query, "DuelsWon")

	-- streaks
	UninitializeNetworkInt(ply, query, "CurrentKillStreak")
	UninitializeNetworkInt(ply, query, "BestKillStreak")
	UninitializeNetworkInt(ply, query, "CurrentExtractionStreak")
	UninitializeNetworkInt(ply, query, "BestExtractionStreak")
	UninitializeNetworkInt(ply, query, "CurrentDuelWinStreak")
	UninitializeNetworkInt(ply, query, "BestDuelWinStreak")

	-- stash/inventory
	UninitializeNetworkInt(ply, query, "StashMax")

	UninitializeStashString(ply, query)
	UninitializeInventoryString(ply, query)
	UninitializeEquippedString(ply, query)
	UninitializeTaskString(ply, query)

	tempNewCMD = string.sub(tempNewCMD, 1, -3) .. ";"
	tempCMD = tempCMD .. "ELSE Value END WHERE SteamID = " .. id64 .. ";"

	if tempNewCMD != "INSERT INTO EFGMPlayerData64 (SteamID, Key, Value) VALU;" then sql.Query(tempNewCMD) end
	if tempCMD != "UPDATE EFGMPlayerData64 SET Value = CASE Key ELSE Value END WHERE SteamID = " .. id64 .. ";" then sql.Query(tempCMD) end

	sql.Commit()

	tempCMD = nil
	tempNewCMD = nil
end

hook.Add("PlayerInitialSpawn", "PlayerInitializeStats", function(ply)
	SetupPlayerData(ply)
end)

hook.Add("PlayerDisconnected", "PlayerUninitializeStats", function(ply)
	-- in raid
	if ply:IsInRaid() then
		UnequipAll(ply)

		if ply.inventory[1] != nil then
			local backpack = ents.Create("efgm_backpack")
			backpack:SetPos(ply:GetPos() + Vector(0, 0, 64))
			backpack:Spawn()
			backpack:Activate()
			backpack:SetBagData(ply.inventory, ply:Nick() .. "'s Corpse")
		end

		ply:SetNWInt("Quits", ply:GetNWInt("Quits", 0) + 1)
		ply:SetNWInt("CurrentExtractionStreak", 0)

		-- wipe inventory and drop backpack if leaving WHILE in a raid
		ReinstantiateInventory(ply)
	end

	-- in duel
	if ply:IsInDuel() then
		ReinstantiateInventoryAfterDuel(ply)
		DUEL:EndDuel(ply)
	end

	UnequipAllFirearms(ply)

	UpdateStashString(ply)
	UpdateInventoryString(ply)
	UpdateEquippedString(ply)
	UpdateTaskString(ply)

	CalculateStashValue(ply)
	CalculateTimeOnline(ply)

	SavePlayerData(ply)
end)

hook.Add("ShutDown", "ServerUninitializeStats", function()
	for _, ply in player.Iterator() do
		if ply:IsInDuel() then
			ReinstantiateInventoryAfterDuel(ply)
		end

		UnequipAllFirearms(ply)

		UpdateStashString(ply)
		UpdateInventoryString(ply)
		UpdateEquippedString(ply)
		UpdateTaskString(ply)

		CalculateStashValue(ply)
		CalculateTimeOnline(ply)

		SavePlayerData(ply)
	end
end)

if GetConVar("efgm_derivesbox"):GetInt() == 1 then
	concommand.Add("efgm_debug_forcesave", function(ply, cmd, args) SavePlayerData(ply) end)
end
