EFGM.CLIENT.SQUADS = EFGM.CLIENT.SQUADS or {}

local chunkedSquads = {}

hook.Add("OnSquadsChunked", "NetworkSquads", function(str, uID)
	local squadsStr = str
	squadsStr = util.Base64Decode(squadsStr)
	squadsStr = util.Decompress(squadsStr)

	if !squadsStr then return end

	local squadsTbl = util.JSONToTable(squadsStr)

	EFGM.CLIENT.SQUADS = squadsTbl
end)

net.Receive("PlayerNetworkSquads", function(len)
	local uID = net.ReadFloat()
	local index = net.ReadUInt(16)
	local chunkCount = net.ReadUInt(16)
	local chunk = net.ReadString()

	if !chunkedSquads[uID] then
		chunkedSquads[uID] = {
			Chunks = {},
			ReceivedCount = 0,
			TotalCount = chunkCount
		}
	end

	chunkedSquads[uID].Chunks[index] = chunk
	chunkedSquads[uID].ReceivedCount = chunkedSquads[uID].ReceivedCount + 1

	if chunkedSquads[uID].ReceivedCount == chunkedSquads[uID].TotalCount then
		local str = ""

		for i = 1, chunkCount do
			str = str .. chunkedSquads[uID].Chunks[i]
		end

		hook.Run("OnSquadsChunked", str, uID)
		chunkedSquads[uID] = nil
	end
end)

net.Receive("PlayerSquadsReload", function(len)
	if EFGM.MENU.ActiveTab != "map" then return end
	EFGM.MENU:ReloadSquads()
end)

function CreateSquad(name, pass, limit, r, g, b)
	net.Start("PlayerSquadCreate")
		net.WriteString(string.sub(name, 1, 40))
		net.WriteString(string.sub(pass, 1, 40))
		net.WriteUInt(math.Clamp(limit, 2, 4), 3)
		net.WriteUInt(math.Clamp(r, 0, 255), 8)
		net.WriteUInt(math.Clamp(g, 0, 255), 8)
		net.WriteUInt(math.Clamp(b, 0, 255), 8)
	net.SendToServer()
end

function JoinSquad(name, pass)
	net.Start("PlayerSquadJoin")
		net.WriteString(string.sub(name, 1, 40))
		net.WriteString(string.sub(pass, 1, 40))
	net.SendToServer()
end

function LeaveSquad()
	net.Start("PlayerSquadLeave")
	net.SendToServer()
end

function TransferSquad(newOwner)
	net.Start("PlayerSquadTransfer")
		net.WriteString(newOwner)
	net.SendToServer()
end

function KickSquad(kickedPly)
	net.Start("PlayerSquadKick")
		net.WriteString(kickedPly)
	net.SendToServer()
end

function DisbandSquad()
	net.Start("PlayerSquadDisband")
	net.SendToServer()
end

net.Receive("SquadCreated", function(len)
	local name = net.ReadString()
	local ownerID = net.ReadUInt(16)
	local public = net.ReadBool()
	local limit = net.ReadUInt(3)
	local faction = net.ReadUInt(3)
	local r = net.ReadUInt(8)
	local g = net.ReadUInt(8)
	local b = net.ReadUInt(8)

	local owner = Player(ownerID)

	EFGM.CLIENT.SQUADS[name] = {OWNER = owner, PUBLIC = public, MEMBERS = {owner}, LIMIT = limit, FAC = faction, COLOR = {R = r, G = g, B = b}}

	EFGM.MENU:ReloadSquads()
end)

net.Receive("SquadJoined", function(len)
	local name = net.ReadString()
	local plyID = net.ReadUInt(16)

	local ply = Player(plyID)

	table.insert(EFGM.CLIENT.SQUADS[name].MEMBERS, ply)

	EFGM.MENU:ReloadSquads()
end)

net.Receive("SquadLeft", function(len)
	local name = net.ReadString()
	local plyID = net.ReadUInt(16)

	local ply = Player(plyID)

	table.RemoveByValue(EFGM.CLIENT.SQUADS[name].MEMBERS, ply)

	EFGM.MENU:ReloadSquads()
end)

net.Receive("SquadLeftAndTransferred", function(len)
	local name = net.ReadString()
	local plyID = net.ReadUInt(16)
	local newOwnerID = net.ReadUInt(16)

	local ply = Player(plyID)
	local newOwner = Player(newOwnerID)

	table.RemoveByValue(EFGM.CLIENT.SQUADS[name].MEMBERS, ply)
	EFGM.CLIENT.SQUADS[name].OWNER = newOwner

	EFGM.MENU:ReloadSquads()
end)

net.Receive("SquadTransferred", function(len)
	local name = net.ReadString()
	local newOwnerID = net.ReadUInt(16)

	local newOwner = Player(newOwnerID)

	EFGM.CLIENT.SQUADS[name].OWNER = newOwner

	EFGM.MENU:ReloadSquads()
end)

net.Receive("SquadDisband", function(len)
	local name = net.ReadString()

	EFGM.SERVER.SQUADS[name] = nil

	EFGM.MENU:ReloadSquads()
end)
