-- replace ammo amount with the amount of ammo in the players inventory
function SWEP:Ammo1()
	if !IsValid(self:GetOwner()) then return math.huge end

	if self:GetInfiniteAmmo() or self:GetOwner():GetNWBool("InRange", false) == true then
		return math.huge
	end

	local inventory = {}
	if SERVER then inventory = self:GetOwner().inventory end
	if CLIENT then inventory = EFGM.CLIENT.INVENTORY end

	return AmountInInventory(inventory, self:GetValue("Ammo"))
end

function SWEP:Ammo2()
	if !IsValid(self:GetOwner()) then return math.huge end

	if self:GetInfiniteAmmo() or self:GetOwner():GetNWBool("InRange", false) == true then
		return math.huge
	end

	local inventory = {}
	if SERVER then inventory = self:GetOwner().inventory end
	if CLIENT then inventory = EFGM.CLIENT.INVENTORY end

	return AmountInInventory(inventory, self:GetValue("UBGLAmmo"))
end

function SWEP:Unload()
	if SERVER then
		if self:GetOwner():GetNWBool("InRange", false) == false then
			local data = {}
			data.count = self:Clip1()
			FlowItemToInventory(self:GetOwner(), self.Ammo, data)
			ReloadInventory(self:GetOwner())
			-- self:GetOwner():GiveAmmo(self:Clip1(), self.Ammo, true)
		end
	end
	self:SetClip1(0)
	self:SetLoadedRounds(0)
end

function SWEP:RestoreClip(amt)
	if CLIENT then return end

	amt = amt or math.huge

	amt = math.Round(amt)

	local inf = self:GetInfiniteAmmo()
	local clip = self:Clip1()
	local ammo = self:Ammo1()

	if self:GetUBGL() then
		clip = self:Clip2()
		ammo = self:Ammo2()
	end

	-- amt = math.max(amt, -clip)

	-- clip can be -1 here if defaultclip is being set
	local reserve = inf and math.huge or (math.max(0, clip) + ammo)

	local lastclip

	if self:GetUBGL() then
		lastclip = self:Clip2()
		local efgmdeduct = math.min(math.min(clip + amt, self:GetCapacity(false)), reserve) - lastclip

		self:SetClip2(math.min(math.min(clip + amt, self:GetCapacity(true)), reserve))

		reserve = reserve - self:Clip2()

		if !inf and self:GetOwner():GetNWBool("InRange", false) == false and IsValid(self:GetOwner()) then
			DeflowItemsFromInventory(self:GetOwner(), self.Secondary.Ammo, efgmdeduct)
			-- self:GetOwner():SetAmmo(reserve, self.Secondary.Ammo)
		end

		clip = self:Clip2()
	else
		lastclip = self:Clip1()
		local efgmdeduct = math.min(math.min(clip + amt, self:GetCapacity(false)), reserve) - lastclip

		self:SetClip1(math.min(math.min(clip + amt, self:GetCapacity(false)), reserve))

		reserve = reserve - self:Clip1()

		if !inf and self:GetOwner():GetNWBool("InRange", false) == false and IsValid(self:GetOwner()) then
			DeflowItemsFromInventory(self:GetOwner(), self.Primary.Ammo, efgmdeduct)
			-- self:GetOwner():SetAmmo(reserve, self.Primary.Ammo)
		end

		clip = self:Clip1()

		if !self.NoForceSetLoadedRoundsOnReload then -- sorry
			self:SetLoadedRounds(self:Clip1())
			self:SetLastLoadedRounds(self:Clip1())
		end
	end

	ReloadInventory(self:GetOwner())

	return clip - lastclip
end

function SWEP:DropMagazine()
	local mdl = self:GetProcessedValue("DropMagazineModel", true)

	if mdl then
		util.PrecacheModel(mdl) -- garry newman moment

		for i = 1, self:GetProcessedValue("DropMagazineAmount", true) do
			local drop_qca = self:GetQCAMagdrop()

			local data = EffectData()
			data:SetEntity(self)
			data:SetAttachment(drop_qca)

			util.Effect(self.DropMagazineEffect or "efgm_magdropeffect", data, true)
		end
	end
end
