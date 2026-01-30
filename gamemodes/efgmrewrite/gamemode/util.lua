if not util then return end

local string = string
local table = table

-- format given number with commas (typically used with currency values) [###### -> ###,###]
function string.FormatComma(val)
	local formatted = tostring(val)
	local num

	while true do
		formatted, num = string.gsub(formatted, "^(-?%d+)(%d%d%d)", "%1,%2")
		if (num == 0) then break end
	end

	return formatted
end

-- format given number to display in seconds (###### -> ##:##:##)
function util.FormatTime(val)
	local hours = math.floor(val / 3600)
	local minutes = math.floor((val % 3600) / 60)
	local seconds = val % 60

	return string.format("%2d:%02d:%02d", hours, minutes, seconds)
end

-- convert units to meters
function math.UnitsToMeters(units)
	return math.Round(units * 0.01905)
end

-- create a random string
local charset = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
function util.GenerateRandomString(length)
	local str = ""

	for i = 1, length do
		local randIndex = math.random(1, #charset)
		str = str .. string.sub(charset, randIndex, randIndex)
	end

	return str
end

-- better table.Random() for sequential tables
function table.SeqRandom(tbl)
	return tbl[math.random(#tbl)]
end