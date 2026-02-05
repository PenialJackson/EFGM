local allowInvites = true

net.Receive("PlayerInviteSend", function(len, ply)
	local invitedPly = net.ReadPlayer()
	local inviteType = net.ReadUInt(2)

	if !allowInvites then return end
	if !IsValid(invitedPly) then return end

	net.Start("PlayerInviteReceive")
		net.WritePlayer(ply)
		net.WriteString(inviteType)
	net.Send(invitedPly)
end)

net.Receive("PlayerInviteAccept", function(len, ply)
	local invitedPly = net.ReadPlayer()
	local inviteType = net.ReadUInt(2)

	if !allowInvites then return end
	if !IsValid(invitedPly) then return end

	if inviteType == inviteTypes.DUEL then
		DUEL:StartDuel(ply, invitedPly)

		return
	end

	if inviteType == inviteTyped.SQUAD then
		-- TODO: squad invites do not work
		return
	end
end)

hook.Add("EndedRaid", "DisableInvitesOnMapVote", function(time)
	timer.Simple(time - 20, function()
		allowInvites = false
		net.Start("PlayerInviteLock")
		net.Broadcast()
	end)
end)