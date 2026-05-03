EFGM.INVITES = EFGM.INVITES or {}

EFGM.INVITES.inviteCD = 0
EFGM.INVITES.lastInviteSentTime = 0
EFGM.INVITES.lastSquadInviteSentTime = 0
EFGM.INVITES.allow = true
EFGM.INVITES.mapVoting = false

local nuhuh = true

-- TODO: squad invites do not work
function InvitePlayerToSquad(invitedPly)
	if EFGM.INVITES.invitedBy != nil or EFGM.INVITES.invitedType != nil then return end

	if nuhuh then CreateNotification("Temp. disabled support for squad invites.", MATS.dontEvenAsk, "ui/boo.wav") return end

	if CurTime() - EFGM.INVITES.inviteCD < 0.5 then return end
	EFGM.INVITES.inviteCD = CurTime()

	if !IsValid(invitedPly) then return end
	if !EFGM.INVITES.allow then CreateNotification("Invites are now disabled!", MATS.inviteErrorIcon, "ui/error.wav") return end
	if invitedPly:GetNW2String("PlayerInSquad", "nil") != "nil" then CreateNotification("This player is already in a squad!", MATS.inviteErrorIcon, "ui/error.wav") return end
	if !invitedPly:IsInHideout() then CreateNotification("This player is currently busy!", MATS.inviteErrorIcon, "ui/error.wav") return end
	if CurTime() - EFGM.INVITES.lastInviteSentTime < EFGM.CONFIG.TIMERS.INVITECOOLDOWN then CreateNotification("You can send invites again in " .. EFGM.CONFIG.TIMERS.INVITECOOLDOWN - math.Round(CurTime() - EFGM.INVITES.lastInviteSentTime, 1) .. " seconds!", MATS.inviteErrorIcon, "ui/error.wav") return end

	-- local plySquad = LocalPlayer():GetNW2String("PlayerInSquad", "nil")

	-- already in a squad
	if LocalPlayer():GetNW2String("PlayerInSquad", "nil") != "nil" then
		CreateNotification("There IS NOT support for inviting to a already established squad yet dont ask me why", MATS.dontEvenAsk, "ui/boo.wav")

		-- EFGM.INVITES.lastInviteSentTime = CurTime()
		-- EFGM.INVITES.lastSquadInviteSentTime = 0

		-- CreateNotification("Invite Sent!", MATS.inviteSentIcon, nil)

		-- net.Start("PlayerInviteSend")
		-- 		net.WritePlayer(invitedPly)
		-- 		net.WriteUInt(INVITETYPES.SQUAD, 2)
		-- net.SendToServer()

		return
	end

	-- not in a squad, prompt to automatically create one
	if EFGM.INVITES.lastSquadInviteSentTime == 0 then CreateNotification("Send another invite to automatically create a squad!", MATS.inviteErrorIcon, "ui/error.wav") EFGM.INVITES.lastSquadInviteSentTime = CurTime() return end

	if CurTime() - EFGM.INVITES.lastSquadInviteSentTime < EFGM.CONFIG.TIMERS.INVITECOOLDOWN then
		CreateSquad("", "", 4, 255, 255, 255)
	end

	EFGM.INVITES.lastInviteSentTime = CurTime()
	EFGM.INVITES.lastSquadInviteSentTime = 0

	CreateNotification("Invite Sent!", MATS.inviteSentIcon, "ui/squad_disband.wav")

	net.Start("PlayerInviteSend")
		net.WritePlayer(invitedPly)
		net.WriteUInt(INVITETYPES.SQUAD, 2)
	net.SendToServer()
end

function InvitePlayerToDuel(invitedPly)
	if CurTime() - EFGM.INVITES.inviteCD < 0.5 then return end
	EFGM.INVITES.inviteCD = CurTime()

	if !IsValid(invitedPly) then return end
	if !EFGM.INVITES.allow then CreateNotification("Invites are now disabled!", MATS.inviteErrorIcon, "ui/error.wav") return end
	if GetGlobalInt("DuelStatus") != STATUS.DUEL.PENDING then CreateNotification("Another duel is already taking place, please wait for it to end!", MATS.inviteErrorIcon, "ui/error.wav") return end
	if EFGM.INVITES.invitedType == INVITETYPES.DUEL and EFGM.INVITES.invitedBy == invitedPly then AcceptInvite() return end
	if CurTime() - EFGM.INVITES.lastInviteSentTime < EFGM.CONFIG.TIMERS.INVITECOOLDOWN then CreateNotification("You can send invites again in " .. EFGM.CONFIG.TIMERS.INVITECOOLDOWN - math.Round(CurTime() - EFGM.INVITES.lastInviteSentTime, 1) .. " seconds!", MATS.inviteErrorIcon, "ui/error.wav") return end
	if !invitedPly:IsInHideout() then CreateNotification("This player is currently busy!", MATS.inviteErrorIcon, "ui/error.wav") return end
	if EFGM.INVITES.invitedBy != nil or EFGM.INVITES.invitedType != nil then CreateNotification("Cannot send an invite while pending confirmation!", MATS.inviteErrorIcon, "ui/error.wav") return end

	EFGM.INVITES.lastInviteSentTime = CurTime()

	CreateNotification("Invite Sent!", MATS.inviteSentIcon, "ui/squad_disband.wav")

	net.Start("PlayerInviteSend")
		net.WritePlayer(invitedPly)
		net.WriteUInt(INVITETYPES.DUEL, 2)
	net.SendToServer()
end

EFGM.INVITES.invitedBy = nil
EFGM.INVITES.invitedType = nil

net.Receive("PlayerInviteReceive", function(len)
	if IsValid(EFGM.HUD.ELEMENTS.Invite) then return end -- player already has a pending invite

	local invitedBy = net.ReadPlayer()
	local invitedType = net.ReadUInt(2)

	local friendship = invitedBy:GetFriendStatus() -- aww so cute

	-- disabled
	if invitedType == INVITETYPES.DUEL and GetConVar("efgm_privacy_invites_duel"):GetInt() == 0 then return end
	if invitedType == INVITETYPES.SQUAD and GetConVar("efgm_privacy_invites_squad"):GetInt() == 0 then return end

	-- blocked
	if GetConVar("efgm_privacy_invites_blocked"):GetInt() == 0 and friendship == "blocked" then return end

	-- friends only
	if invitedType == INVITETYPES.DUEL and GetConVar("efgm_privacy_invites_duel"):GetInt() == 1 and friendship != "friend" then return end
	if invitedType == INVITETYPES.SQUAD and GetConVar("efgm_privacy_invites_squad"):GetInt() == 1 and friendship != "friend" then return end

	EFGM.INVITES.invitedBy = invitedBy
	EFGM.INVITES.invitedType = invitedType

	RenderInvite()

	timer.Simple(EFGM.CONFIG.TIMERS.INVITECOOLDOWN, function()
		EFGM.INVITES.invitedBy = nil
		EFGM.INVITES.invitedType = nil
	end)
end)

function AcceptInvite()
	if EFGM.INVITES.mapVoting then -- map vote is happening
		RunConsoleCommand("efgm_vote", "1")
		return
	end

	if !LocalPlayer():IsInHideout() then return end
	if EFGM.INVITES.invitedBy == nil or EFGM.INVITES.invitedType == nil then return end

	net.Start("PlayerInviteAccept")
		net.WritePlayer(EFGM.INVITES.invitedBy)
		net.WriteUInt(EFGM.INVITES.invitedType, 2)
	net.SendToServer()

	EFGM.INVITES.invitedBy = nil
	EFGM.INVITES.invitedType = nil
end

function DeclineInvite()
	if EFGM.INVITES.mapVoting then -- map vote is happening
		RunConsoleCommand("efgm_vote", "2")
		return
	end

	if EFGM.INVITES.invitedBy == nil or EFGM.INVITES.invitedType == nil then return end

	EFGM.INVITES.invitedBy = nil
	EFGM.INVITES.invitedType = nil
end

hook.Add("efgm_raid_enter", "RemovePendingInviteIfRaidEnter", function()
	EFGM.INVITES.invitedBy = nil
	EFGM.INVITES.invitedType = nil
	EFGM.INVITES.lastInviteSentTime = 0
	EFGM.INVITES.lastSquadInviteSentTime = 0
end)

hook.Add("efgm_duel_enter", "RemovePendingInviteIfDuelEnter", function()
	EFGM.INVITES.invitedBy = nil
	EFGM.INVITES.invitedType = nil
	EFGM.INVITES.lastInviteSentTime = 0
	EFGM.INVITES.lastSquadInviteSentTime = 0
end)

net.Receive("PlayerInviteLock", function(len)
	EFGM.INVITES.allow = false
	EFGM.INVITES.mapVoting = true

	EFGM.INVITES.invitedBy = nil
	EFGM.INVITES.invitedType = nil
	EFGM.INVITES.lastInviteSentTime = 0
	EFGM.INVITES.lastSquadInviteSentTime = 0
end)
