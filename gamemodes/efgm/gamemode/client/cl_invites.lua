Invites = Invites or {}

Invites.inviteCD = 0
Invites.lastInviteSentTime = 0
Invites.lastSquadInviteSentTime = 0
Invites.allow = true
Invites.mapVoting = false

local nuhuh = true

-- TODO: squad invites do not work
function InvitePlayerToSquad(invitedPly)
	if Invites.invitedBy != nil or Invites.invitedType != nil then return end

	if nuhuh then CreateNotification("Temp. disabled support for squad invites.", Mats.dontEvenAsk, "ui/boo.wav") return end

	if CurTime() - Invites.inviteCD < 0.5 then return end
	Invites.inviteCD = CurTime()

	if !IsValid(invitedPly) then return end
	if !Invites.allow then CreateNotification("Invites are now disabled!", Mats.inviteErrorIcon, "ui/error.wav") return end
	if invitedPly:GetNW2String("PlayerInSquad", "nil") != "nil" then CreateNotification("This player is already in a squad!", Mats.inviteErrorIcon, "ui/error.wav") return end
	if !invitedPly:IsInHideout() then CreateNotification("This player is currently busy!", Mats.inviteErrorIcon, "ui/error.wav") return end
	if CurTime() - Invites.lastInviteSentTime < 10 then CreateNotification("You can send invites again in " .. 10 - math.Round(CurTime() - Invites.lastInviteSentTime, 1) .. " seconds!", Mats.inviteErrorIcon, "ui/error.wav") return end

	-- local plySquad = LocalPlayer():GetNW2String("PlayerInSquad", "nil")

	-- already in a squad
	if LocalPlayer():GetNW2String("PlayerInSquad", "nil") != "nil" then
		CreateNotification("There IS NOT support for inviting to a already established squad yet dont ask me why", Mats.dontEvenAsk, "ui/boo.wav")

		-- Invites.lastInviteSentTime = CurTime()
		-- Invites.lastSquadInviteSentTime = 0

		-- CreateNotification("Invite Sent!", Mats.inviteSentIcon, nil)

		-- net.Start("PlayerInviteSend")
		-- 		net.WritePlayer(invitedPly)
		-- 		net.WriteUInt(inviteTypes.SQUAD, 2)
		-- net.SendToServer()

		return
	end

	-- not in a squad, prompt to automatically create one
	if Invites.lastSquadInviteSentTime == 0 then CreateNotification("Send another invite to automatically create a squad!", Mats.inviteErrorIcon, "ui/error.wav") Invites.lastSquadInviteSentTime = CurTime() return end

	if CurTime() - Invites.lastSquadInviteSentTime < 10 then
		RunConsoleCommand("efgm_squad_create", LocalPlayer():GetName() .. "'s Squad", "", "4", "255", "255", "255")
	end

	Invites.lastInviteSentTime = CurTime()
	Invites.lastSquadInviteSentTime = 0

	CreateNotification("Invite Sent!", Mats.inviteSentIcon, "ui/squad_disband.wav")

	net.Start("PlayerInviteSend")
		net.WritePlayer(invitedPly)
		net.WriteUInt(inviteTypes.SQUAD, 2)
	net.SendToServer()
end

function InvitePlayerToDuel(invitedPly)
	if CurTime() - Invites.inviteCD < 0.5 then return end
	Invites.inviteCD = CurTime()

	if !IsValid(invitedPly) then return end
	if !Invites.allow then CreateNotification("Invites are now disabled!", Mats.inviteErrorIcon, "ui/error.wav") return end
	if GetGlobalInt("DuelStatus") != duelStatus.PENDING then CreateNotification("Another duel is already taking place, please wait for it to end!", Mats.inviteErrorIcon, "ui/error.wav") return end
	if Invites.invitedType == inviteTypes.DUEL and Invites.invitedBy == invitedPly then AcceptInvite() return end
	if CurTime() - Invites.lastInviteSentTime < 10 then CreateNotification("You can send invites again in " .. 10 - math.Round(CurTime() - Invites.lastInviteSentTime, 1) .. " seconds!", Mats.inviteErrorIcon, "ui/error.wav") return end
	if !invitedPly:IsInHideout() then CreateNotification("This player is currently busy!", Mats.inviteErrorIcon, "ui/error.wav") return end
	if Invites.invitedBy != nil or Invites.invitedType != nil then CreateNotification("Cannot send an invite while pending confirmation!", Mats.inviteErrorIcon, "ui/error.wav") return end

	Invites.lastInviteSentTime = CurTime()

	CreateNotification("Invite Sent!", Mats.inviteSentIcon, "ui/squad_disband.wav")

	net.Start("PlayerInviteSend")
		net.WritePlayer(invitedPly)
		net.WriteUInt(inviteTypes.DUEL, 2)
	net.SendToServer()
end

Invites.invitedBy = nil
Invites.invitedType = nil

net.Receive("PlayerInviteReceive", function(len, ply)
	if IsValid(HUD.ELEMENTS.Invite) then return end -- player already has a pending invite

	local invitedBy = net.ReadPlayer()
	local invitedType = net.ReadUInt(2)

	local friendship = invitedBy:GetFriendStatus() -- aww so cute

	-- disabled
	if invitedType == inviteTypes.DUEL and GetConVar("efgm_privacy_invites_duel"):GetInt() == 0 then return end
	if invitedType == inviteTypes.SQUAD and GetConVar("efgm_privacy_invites_squad"):GetInt() == 0 then return end

	-- blocked
	if GetConVar("efgm_privacy_invites_blocked"):GetInt() == 0 and friendship == "blocked" then return end

	-- friends only
	if invitedType == inviteTypes.DUEL and GetConVar("efgm_privacy_invites_duel"):GetInt() == 1 and friendship != "friend" then return end
	if invitedType == inviteTypes.SQUAD and GetConVar("efgm_privacy_invites_squad"):GetInt() == 1 and friendship != "friend" then return end

	Invites.invitedBy = invitedBy
	Invites.invitedType = invitedType

	RenderInvite()

	timer.Simple(10, function()
		Invites.invitedBy = nil
		Invites.invitedType = nil
	end)
end)

function AcceptInvite()
	if Invites.mapVoting then -- map vote is happening
		RunConsoleCommand("efgm_vote", "1")
		return
	end

	if !LocalPlayer():IsInHideout() then return end
	if Invites.invitedBy == nil or Invites.invitedType == nil then return end

	net.Start("PlayerInviteAccept")
		net.WritePlayer(Invites.invitedBy)
		net.WriteUInt(Invites.invitedType, 2)
	net.SendToServer()

	Invites.invitedBy = nil
	Invites.invitedType = nil
end

function DeclineInvite()
	if Invites.mapVoting then -- map vote is happening
		RunConsoleCommand("efgm_vote", "2")
		return
	end

	if Invites.invitedBy == nil or Invites.invitedType == nil then return end

	Invites.invitedBy = nil
	Invites.invitedType = nil
end

hook.Add("efgm_raid_enter", "RemovePendingInviteIfRaidEnter", function()
	Invites.invitedBy = nil
	Invites.invitedType = nil
	Invites.lastInviteSentTime = 0
	Invites.lastSquadInviteSentTime = 0
end)

hook.Add("efgm_duel_enter", "RemovePendingInviteIfDuelEnter", function()
	Invites.invitedBy = nil
	Invites.invitedType = nil
	Invites.lastInviteSentTime = 0
	Invites.lastSquadInviteSentTime = 0
end)

net.Receive("PlayerInviteLock", function(len)
	Invites.allow = false
	Invites.mapVoting = true

	Invites.invitedBy = nil
	Invites.invitedType = nil
	Invites.lastInviteSentTime = 0
	Invites.lastSquadInviteSentTime = 0
end)