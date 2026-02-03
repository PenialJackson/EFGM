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

function util.FormatTimePretty(val)
	local hours = math.floor(val / 3600)
	local minutes = math.floor((val % 3600) / 60)
	local seconds = val % 60

	return string.format("%2dh %02dm %02ds", hours, minutes, seconds)
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

-- ipairs but reverse
function reverseipairs(tbl)
	local i = #tbl + 1

	return function()
		i = i - 1
		local value = tbl[i]

		if i >= 1 then
			return i, value
		end
	end
end

-- check if the distance of two entities (or vectors) is within a specified distance
function util.EntitiesWithinBounds(ent1, ent2, dist)
	local pos1
	local pos2

	if isentity(pos1) then pos1 = ent1:GetPos() else pos1 = ent1 end
	if isentity(pos2) then pos2 = ent2:GetPos() else pos2 = ent2 end

	local distSqr = dist * dist
	return pos1:DistToSqr(pos2:GetPos()) < distSqr
end

-- override with a return
local rand = math.random
function table.Shuffle(t)
	local n = #t

	while n > 1 do
		local k = rand(n)
		t[n], t[k] = t[k], t[n]
		n = n - 1
	end

	return t
end

-- returns the number of bits required to network an integer
function util.BitsRequired(num, signed)
	local bits, max = 0, 1

	while max <= num do
		bits = bits + 1
		max = max + max
	end

	if signed then
		bits = math.min(bits + 1, 32)
	end

	return bits
end

-- get bodygroups of an entity
function GetEntityBodygroups(ent)
	local bg = {}

	for i = 0, ent:GetNumBodyGroups() - 1 do
		if ent:GetBodygroupCount(i) <= 1 then continue end
		bg[i] = ent:GetBodygroup(i)
	end

	if next(bg) then return bg end
end

-- get skin of an entity
function GetEntitySkin(ent)
	if ent:SkinCount() > 1 then return ent:GetSkin() end
end

-- get bodygroups and skin of an entity
function GetEntityGroups(ent)
	local groups = {}

	groups.Bodygroups = GetEntityBodygroups(ent)
	groups.Skin = GetEntitySkin(ent)

	if next(groups) then return groups end
end