ENT.Type = "point"
ENT.Base = "base_point"

function ENT:KeyValue(key, value)
	if key == "OnRaidStart" then
		self:StoreOutput(key, value)
	end

	if key == "OnTenMinutesLeft" then
		self:StoreOutput(key, value)
	end

	if key == "OnFiveMinutesLeft" then
		self:StoreOutput(key, value)
	end

	if key == "OnOneMinuteLeft" then
		self:StoreOutput(key, value)
	end

	if key == "OnRaidEnd" then
		self:StoreOutput(key, value)
	end
end

function ENT:Initialize()
	hook.Add("StartedRaid", "InterfaceRaidStart", function()
		self:TriggerOutput("OnRaidStart", nil, nil)
	end)

	hook.Add("RaidTimerTick", "InterfaceRaidTimerTick", function(curRaidTime)
		if curRaidTime == 600 then
			self:TriggerOutput("OnTenMinutesLeft", nil, nil)
		elseif curRaidTime == 300 then
			self:TriggerOutput("OnFiveMinutesLeft", nil, nil)
		elseif curRaidTime == 60 then
			self:TriggerOutput("OnOneMinuteLeft", nil, nil)
		end
	end)

	hook.Add("EndedRaid", "InterfaceRaidEnd", function()
		self:TriggerOutput("OnRaidEnd", nil, nil)
	end)
end

function ENT:AcceptInput(name, ply, caller, data)
	if name == "StartRaid" then
		RAID:StartRaid(false)
	end

	if name == "StartRaidForced" then
		RAID:StartRaid(true)
	end

	if name == "EndRaid" then
		RAID:EndRaid()
	end

	if name == "SetRaidTime" then
		if RAID.Status != raidStatus.ACTIVE then return end
		RAID.CurrentTime = tonumber(data)
	end

	if name == "SetPlayerReadiness" then
		if !IsValid(ply) then return end

		local isReady = tobool(data)
		ply.RaidReady = isReady

		if isReady then
			hook.Run("CheckRaidAddPlayers", ply)
		end
	end
end