local allowInvites = true

net.Receive("PlayerInviteSend", function(len, ply)
	local invitedPly = net.ReadEntity()
	local inviteType = net.ReadString()
	local data = net.ReadString()

	if !allowInvites then return end
	if !IsValid(invitedPly) then return end
	if string.len(inviteType) == 0 then return end

	net.Start("PlayerInviteReceive")
		net.WriteEntity(ply)
		net.WriteString(inviteType)
		net.WriteString(data)
	net.Send(invitedPly)
end)

net.Receive("PlayerInviteAccept", function(len, ply)
	local invitedPly = net.ReadEntity()
	local inviteType = net.ReadString()
	local inviteData = net.ReadString()

	if !allowInvites then return end
	if !IsValid(invitedPly) then return end
	if string.len(inviteType) == 0 then return end

	if inviteType == "squad" and inviteData != nil then
		ply:ConCommand('efgm_squad_join "' .. inviteData .. '"')
	end

	if inviteType == "duel" then
		DUEL:StartDuel(ply, invitedPly)
	end
end)

hook.Add("EndedRaid", "DisableInvitesOnMapVote", function(time)
	timer.Simple(time - 20, function()
		allowInvites = false
		net.Start("PlayerInviteLock")
		net.Broadcast()
	end)
end)