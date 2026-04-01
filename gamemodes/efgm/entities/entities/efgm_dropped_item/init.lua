AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

ENT.ItemName = ""
ENT.ItemData = {}

function ENT:Initialize()
	self:SetModel(self.Model)
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetCollisionGroup(COLLISION_GROUP_WEAPON)
	self:DrawShadow(false)

	self:UseTriggerBounds(true, 24)
	self:SetUseType(SIMPLE_USE)

	local phys = self:GetPhysicsObject()

	if (IsValid(phys)) then
		phys:Wake()
		phys:SetMass(20)
	end

	self:SetHealth(self.BaseHealth)
end

function ENT:SetItem(name, data)
	self.ItemName = name
	self.ItemData = data
end

function ENT:Use(activator)
	self:Remove()

	if !activator:IsScav() then
		FlowItemToInventory(activator, self.ItemName, self.ItemData)
		ReloadInventory(activator)
	else
		if activator:IsInRaid() then
			FlowItemToInventory(activator, self.ItemName, self.ItemData)
			ReloadInventory(activator)
		else
			FlowItemToStash(activator, self.ItemName, self.ItemData)
			ReloadStash(activator)
		end
	end
end
