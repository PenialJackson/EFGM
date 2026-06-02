function SWEP:Initialize()
	local owner = self:GetOwner()

	self.HoldTypeDefault = self.HoldType

	self:SetShouldHoldType()

	if owner:IsNPC() then
		self:PostModify()
		self:NPC_Initialize()
		return
	end

	self:SetLastMeleeTime(0)
	self:SetNthShot(0)

	self.SpawnTime = CurTime()
	self:SetSpawnEffect(false) -- lol gmod suck
	-- self:BuildAttachmentAddresses()

	self:InitTimers()

	self:ClientInitialize()

	self.DefaultAttachments = table.Copy(self.Attachments)

	self:BuildSubAttachments(self.DefaultAttachments)

	if !IsValid(owner) then
		self:PostModify()
		timer.Simple(0.1, function()
			if IsValid(self) and !IsValid(self:GetOwner()) then
				self:NoOwner_Initialize()
			end
		end)
	end

	self.LastClipSize = self:GetProcessedValue("ClipSize")
	self.Primary.Ammo = self:GetProcessedValue("Ammo")
	self.LastAmmo = self.Primary.Ammo

	self.Primary.DefaultClip = 0
	self.Secondary.DefaultClip = 0

	if self:GetValue("UBGL") then
		self.Secondary.Ammo = self:GetValue("UBGLAmmo")
		self.Secondary.DefaultClip = 0
	end

	self:SetClip1(0)
	self:SetClip2(0)

	self:SetLastLoadedRounds(self.LastClipSize)

	timer.Simple(0.4, function()
		if IsValid(self) then
			if self:LookupPoseParameter("sights") != -1 then self.HasSightsPoseparam = true end
			if self:LookupPoseParameter("firemode") != -1 then self.HasFiremodePoseparam = true end
			if SERVER then self:InitialDefaultClip() end
		end
	end)

	ARC9.CacheWepSounds(self, self:GetClass())
	ARC9.CacheWeaponsModels()
	ARC9.CacheAttsModels()
end
