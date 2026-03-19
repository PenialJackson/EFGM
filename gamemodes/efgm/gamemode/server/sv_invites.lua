EFGM.SERVER.ALLOWINVITES = EFGM.SERVER.ALLOWINVITES or true

net.Receive("PlayerInviteSend", function(len, ply)
	local invitedPly = net.ReadPlayer()
	local inviteType = net.ReadUInt(2)

	if !EFGM.SERVER.ALLOWINVITES then return end
	if !IsValid(invitedPly) then return end

	net.Start("PlayerInviteReceive")
		net.WritePlayer(ply)
		net.WriteString(inviteType)
	net.Send(invitedPly)
end)

net.Receive("PlayerInviteAccept", function(len, ply)
	local invitedPly = net.ReadPlayer()
	local inviteType = net.ReadUInt(2)

	if !EFGM.SERVER.ALLOWINVITES then return end
	if !IsValid(invitedPly) then return end

	if inviteType == INVITETYPES.DUEL then
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
		EFGM.SERVER.ALLOWINVITES = false
		net.Start("PlayerInviteLock")
		net.Broadcast()
	end)
end)
