EFGM.CACHE = EFGM.CACHE or {}

EFGM.CACHE.STEAMNAMES = EFGM.CACHE.STEAMNAMES or {}

function SteamNameFromID64(id)
	local name = EFGM.CACHE.STEAMNAMES[id]

	if !name then
		steamworks.RequestPlayerInfo(id, function(steamName)
			name = steamName
			EFGM.CACHE.STEAMNAMES[id] = steamName
		end)
	end

	return name
end
