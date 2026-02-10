ENT.Type = "point"
ENT.Base = "base_point"

function ENT:KeyValue(key, value)
	if key == "OnDuelStart" then
		self:StoreOutput(key, value)
	end

	if key == "OnDuelEnd" then
		self:StoreOutput(key, value)
	end
end

function ENT:Initialize()
	hook.Add("StartedDuel", "InterfaceDuelStart", function()
		self:TriggerOutput("OnDuelStart", nil, nil)
	end)

	hook.Add("EndedDuel", "InterfaceDuelEnd", function()
		self:TriggerOutput("OnDuelEnd", nil, nil)
	end)

	hook.Add("CancelledDuel", "InterfaceDuelCancel", function()
		self:TriggerOutput("OnDuelEnd", nil, nil)
	end)
end