local chunkedMarket = {}

hook.Add("OnMarketChunked", "NetworkMarket", function(str, uID)
	local marketStr = str
	marketStr = util.Base64Decode(marketStr)
	marketStr = util.Decompress(marketStr)

	if !marketStr then return end

	local marketTbl = util.JSONToTable(marketStr)

	EFGM.CLIENT.MARKETLIMITS = marketTbl
end)

net.Receive("PlayerNetworkMarket", function(len)
	local uID = net.ReadFloat()
	local index = net.ReadUInt(16)
	local chunkCount = net.ReadUInt(16)
	local chunk = net.ReadString()

	if !chunkedMarket[uID] then
		chunkedMarket[uID] = {
			Chunks = {},
			ReceivedCount = 0,
			TotalCount = chunkCount
		}
	end

	chunkedMarket[uID].Chunks[index] = chunk
	chunkedMarket[uID].ReceivedCount = chunkedMarket[uID].ReceivedCount + 1

	if chunkedMarket[uID].ReceivedCount == chunkedMarket[uID].TotalCount then
		local str = ""

		for i = 1, chunkCount do
			str = str .. chunkedMarket[uID].Chunks[i]
		end

		hook.Run("OnMarketChunked", str, uID)
		chunkedMarket[uID] = nil
	end
end)

EFGM.CLIENT.MARKETFAVORITES = EFGM.CLIENT.MARKETFAVORITES or {}

function EFGM:LoadFavorites()
	local f = file.Open("efgm/efgm_market_favorites.txt", "r", "DATA")
	if !f then return end

	EFGM.CLIENT.MARKETFAVORITES = {}

	while !f:EndOfFile() do
		local line = f:ReadLine()
		line = string.Trim(line, "\n")

		EFGM.CLIENT.MARKETFAVORITES[line] = true
	end

	f:Close()
end

function EFGM:SaveFavorites()
	file.CreateDir("efgm")
	local f = file.Open("efgm/efgm_market_favorites.txt", "w", "DATA")

	for i, k in pairs(EFGM.CLIENT.MARKETFAVORITES) do
		f:Write(i)
		f:Write("\n")
	end

	f:Close()
end

function EFGM:AddAttToFavorites(item)
	EFGM.CLIENT.MARKETFAVORITES[item] = true
	EFGM:SaveFavorites()
end

function EFGM:RemoveAttFromFavorites(item)
	EFGM.CLIENT.MARKETFAVORITES[item] = nil
	EFGM:SaveFavorites()
end

function EFGM:ToggleFavorite(item)
	if EFGM.CLIENT.MARKETFAVORITES[item] then
		EFGM.CLIENT.MARKETFAVORITES[item] = nil
		surface.PlaySound("arc9/newui/ui_part_favourite2.ogg")
	else
		EFGM.CLIENT.MARKETFAVORITES[item] = true
		surface.PlaySound("arc9/newui/ui_part_favourite1.ogg")
	end

	EFGM:SaveFavorites()
end

hook.Add("PreGamemodeLoaded", "LoadShopFavorites", function()
	EFGM:LoadFavorites()
end)
