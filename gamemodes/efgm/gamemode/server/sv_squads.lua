local plyMeta = FindMetaTable("Player")

EFGM.SERVER.SQUADS = EFGM.SERVER.SQUADS or {}

function NetworkSquads(ply)
	local str = util.TableToJSON(EFGM.SERVER.SQUADS)
	str = util.Compress(str)
	str = util.Base64Encode(str, true)
	SendChunkedNet(ply, str, "PlayerNetworkSquads")
end

hook.Add("PlayerInitialSpawn", "SquadsInitFirstSpawn", function(ply)
	NetworkSquads(ply)
end)

function plyMeta:PlayerInSquad()
	if self:GetNW2String("PlayerInSquad", "nil") != "nil" then
		return true
	else
		return false
	end
end

local function PasswordCheck(squad, pass)
	if string.len(EFGM.SERVER.SQUADS[squad].PASS) != 0 or EFGM.SERVER.SQUADS[squad].PASS == nil then
		if pass == EFGM.SERVER.SQUADS[squad].PASS then
			return true
		else
			return false
		end
	else
		return true
	end
end

local function GetSquadOfPlayer(ply)
	for name, data in pairs(EFGM.SERVER.SQUADS) do
		for _, member in ipairs(DATA.MEMBERS) do
			if member == ply then
				return name
			end
		end
	end
end

local function DisbandSquad(name)
	for _, member in ipairs(EFGM.SERVER.SQUADS[name].MEMBERS) do
		member:SetNW2String("PlayerInSquad", "nil")
		member:SetNW2String("TeamChatChannel", "nil")
	end

	EFGM.SERVER.SQUADS[name] = nil
end

net.Receive("PlayerSquadCreate", function(len, ply)
	local name = net.ReadString()
	local pass = net.ReadString()
	local limit = net.ReadUInt(3)
	local r = net.ReadUInt(8)
	local g = net.ReadUInt(8)
	local b = net.ReadUInt(8)

	if ply:PlayerInSquad() then return end
	if !ply:IsInHideout() then return end

	local faction = (ply:CompareFaction(true) and STATUS.PLAYER.PMC) or (ply:CompareFaction(false) and STATUS.PLAYER.SCAV)

	local currentSquadNames = table.GetKeys(EFGM.SERVER.SQUADS)
	if table.HasValue(currentSquadNames, name) then return end

	EFGM.SERVER.SQUADS[name] = {OWNER = ply, PASS = pass, MEMBERS = {ply}, LIMIT = limit, FAC = faction, COLOR = {R = r, G = g, B = b}}

	ply:SetNW2String("PlayerInSquad", name)
	ply:SetNW2String("TeamChatChannel", name)

	net.Start("SquadCreated", false)
		net.WriteString(name)
		net.WriteUInt(ply:UserID(), 16)
		net.WriteBool(pass == "")
		net.WriteUInt(limit, 3)
		net.WriteUInt(faction, 3)
		net.WriteUInt(r, 8)
		net.WriteUInt(g, 8)
		net.WriteUInt(b, 8)
	net.Broadcast()

	net.Start("SendNotification", false)
		net.WriteString("Successfully created squad!")
		net.WriteString("icons/squad_create_icon.png")
		net.WriteString("ui/squad_joined.wav")
	net.Send(ply)
end)

net.Receive("PlayerSquadJoin", function(len, ply)
	local name = net.ReadString()
	local pass = net.ReadString()

	if ply:PlayerInSquad() then return end
	if !ply:IsInHideout() then return end

	if #EFGM.SERVER.SQUADS[name].MEMBERS >= EFGM.SERVER.SQUADS[name].LIMIT then return end
	if !PasswordCheck(name, pass) then return end

	table.insert(EFGM.SERVER.SQUADS[name].MEMBERS, ply)

	ply:SetFaction((EFGM.SERVER.SQUADS[name].FAC == 1 and true) or (EFGM.SERVER.SQUADS[name].FAC == 2 and false))

	ply:SetNW2String("PlayerInSquad", name)
	ply:SetNW2String("TeamChatChannel", name)

	net.Start("SquadJoined", false)
		net.WriteString(name)
		net.WriteUInt(ply:UserID(), 16)
	net.Broadcast()

	for _, member in ipairs(EFGM.SERVER.SQUADS[name].MEMBERS) do
		if member == ply then
			net.Start("SendNotification", false)
				net.WriteString("Successfully joined squad!")
				net.WriteString("icons/squad_joined_icon.png")
				net.WriteString("ui/squad_joined.wav")
			net.Send(member)
		else
			net.Start("SendNotification", false)
				net.WriteString(ply:Nick() .. " has joined your squad!")
				net.WriteString("icons/squad_joined_icon.png")
				net.WriteString("ui/squad_joined.wav")
			net.Send(member)
		end
	end
end)

net.Receive("PlayerSquadLeave", function(len, ply)
	if !ply:PlayerInSquad() then return end
	if !ply:IsInHideout() then return end

	local name = GetSquadOfPlayer(ply)

	table.RemoveByValue(EFGM.SERVER.SQUADS[name].MEMBERS, ply)

	ply:SetNW2String("PlayerInSquad", "nil")
	ply:SetNW2String("TeamChatChannel", "nil")

	if #EFGM.SERVER.SQUADS[name].MEMBERS == 0 then
		DisbandSquad(name)

		net.Start("SquadDisband", false)
			net.WriteString(name)
		net.Broadcast()

		return
	end

	if ply == EFGM.SERVER.SQUADS[name].OWNER then
		local newOwner = table.SeqRandom(EFGM.SERVER.SQUADS[name].MEMBERS)
		EFGM.SERVER.SQUADS[name].OWNER = newOwner

		net.Start("SquadLeftAndTransferred", false)
			net.WriteString(name)
			net.WriteUInt(ply:UserID(), 16)
			net.WriteUInt(newOwner:UserID(), 16)
		net.Broadcast()
	else
		net.Start("SquadLeft", false)
			net.WriteString(name)
			net.WriteUInt(ply:UserID(), 16)
		net.Broadcast()
	end

	net.Start("SendNotification", false)
		net.WriteString("Successfully left squad!")
		net.WriteString("icons/squad_leave_icon.png")
		net.WriteString("ui/squad_leave.wav")
	net.Send(ply)

	for _, member in ipairs(EFGM.SERVER.SQUADS[name].MEMBERS) do
		net.Start("SendNotification", false)
			net.WriteString(ply:Nick() .. " has left your squad!")
			net.WriteString("icons/squad_leave_icon.png")
			net.WriteString("ui/squad_leave.wav")
		net.Send(member)
	end
end)

net.Receive("PlayerSquadTransfer", function(len, ply)
	local newOwner = net.ReadString()

	if !ply:PlayerInSquad() then return end
	if !ply:IsInHideout() then return end

	local name = GetSquadOfPlayer(ply)
	local newOwnerEnt

	if ply != EFGM.SERVER.SQUADS[name].OWNER then return end

	for _, member in ipairs(EFGM.SERVER.SQUADS[name].MEMBERS) do
		if string.lower(member:Nick()) == string.lower(newOwner) then
			EFGM.SERVER.SQUADS[name].OWNER = member
			newOwnerEnt = member

			net.Start("SendNotification", false)
				net.WriteString("You are now the squad owner!")
				net.WriteString("icons/squad_owner_icon.png")
				net.WriteString("ui/squad_ownership.wav")
			net.Send(member)
		else
			net.Start("SendNotification", false)
				net.WriteString("Squad ownership transfered to " .. newOwner .. "!")
				net.WriteString("icons/squad_owner_icon.png")
				net.WriteString("ui/squad_ownership.wav")
			net.Send(member)
		end
	end

	net.Start("SquadTransferred", false)
		net.WriteString(name)
		net.WriteUInt(newOwnerEnt:UserID(), 16)
	net.Broadcast()
end)

net.Receive("PlayerSquadKick", function(len, ply)
	local kickedPly = net.ReadString()

	if !ply:PlayerInSquad() then return end
	if !ply:IsInHideout() then return end

	local name = GetSquadOfPlayer(ply)
	local kickedPlyEnt

	if ply != EFGM.SERVER.SQUADS[name].OWNER then return end

	for _, member in ipairs(EFGM.SERVER.SQUADS[name].MEMBERS) do
		if string.lower(member:Nick()) == string.lower(kickedPly) then
			table.RemoveByValue(EFGM.SERVER.SQUADS[name].MEMBERS, member)
			kickedPlyEnt = member

			member:SetNW2String("PlayerInSquad", "nil")
			member:SetNW2String("TeamChatChannel", "nil")

			net.Start("SendNotification", false)
				net.WriteString("You have been kicked from your squad!")
				net.WriteString("icons/squad_kicked_icon.png")
				net.WriteString("ui/squad_leave.wav")
			net.Send(member)
		end
	end

	net.Start("SquadLeft", false)
		net.WriteString(name)
		net.WriteUInt(kickedPlyEnt:UserID(), 16)
	net.Broadcast()

	for _, member in ipairs(EFGM.SERVER.SQUADS[name].MEMBERS) do
		net.Start("SendNotification", false)
			net.WriteString(kickedPly .. " has been kicked from your squad!")
			net.WriteString("icons/squad_kicked_icon.png")
			net.WriteString("ui/squad_leave.wav")
		net.Send(member)
	end
end)

net.Receive("PlayerSquadDisband", function(len, ply)
	if !ply:PlayerInSquad() then return end
	if !ply:IsInHideout() then return end

	local name = GetSquadOfPlayer(ply)

	if ply != EFGM.SERVER.SQUADS[name].OWNER then return end

	for _, member in ipairs(EFGM.SERVER.SQUADS[name].MEMBERS) do
		if member != ply then
			net.Start("SendNotification", false)
				net.WriteString("Your squad has been disbanded!")
				net.WriteString("icons/squad_disband_icon.png")
				net.WriteString("ui/squad_disband.wav")
			net.Send(member)
		else
			net.Start("SendNotification", false)
				net.WriteString("Successfully disbanded squad!")
				net.WriteString("icons/squad_disband_icon.png")
				net.WriteString("ui/squad_disband.wav")
			net.Send(member)
		end
	end

	DisbandSquad(name)

	net.Start("SquadDisband", false)
		net.WriteString(name)
	net.Broadcast()
end)

-- remove player from squad if they disconnect
hook.Add("PlayerDisconnected", "KickFromSquadOnDisconnect", function(ply)
	if !ply:PlayerInSquad() then return end

	local name = GetSquadOfPlayer(ply)
	local newOwnerEnt

	table.RemoveByValue(EFGM.SERVER.SQUADS[name].MEMBERS, ply)

	if #EFGM.SERVER.SQUADS[name].MEMBERS == 0 then
		DisbandSquad(name)

		net.Start("SquadDisband", false)
			net.WriteString(name)
		net.Broadcast()

		return
	end

	if ply == EFGM.SERVER.SQUADS[name].OWNER then
		local newOwner = table.SeqRandom(EFGM.SERVER.SQUADS[name].MEMBERS)
		EFGM.SERVER.SQUADS[name].OWNER = newOwner
		newOwnerEnt = newOwner
	end

	net.Start("SquadTransferred", false)
		net.WriteString(name)
		net.WriteUInt(newOwnerEnt:UserID(), 16)
	net.Broadcast()
end)

hook.Add("PlayerDeath", "RemoveFromTeamChatOnDeath", function(ply)
	if !ply:IsInRaid() then return end
	ply:SetNW2String("TeamChatChannel", "nil")
end)
