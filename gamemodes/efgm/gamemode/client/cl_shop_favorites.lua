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
