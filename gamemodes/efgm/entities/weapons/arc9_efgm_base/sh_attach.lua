function SWEP:PostModify(toggleonly)
	self:InvalidateCache()

	self.AffectorsCache = nil -- fixes printnames being late
	self.ElementsCache = nil

	if !toggleonly then
		self.ScrollLevels = {} -- moved from invalidcache
		self:CancelReload()
		-- self:PruneAttachments()
		self:SetNthReload(0)
	end

	local client = self:GetOwner()
	local validplayerowner = IsValid(client) and client:IsPlayer()

	local base = baseclass.Get(self:GetClass())

	if ARC9:UseTrueNames() then
		self.PrintName = base.TrueName
		self.PrintName = self:GetValue("TrueName")
	else
		self.PrintName = base.PrintName
		self.PrintName = self:GetValue("PrintName")
	end

	if !self.PrintName then
		self.PrintName = base.PrintName
		self.PrintName = self:GetValue("PrintName")
	end

	self.Description = base.Description

	self.PrintName = self:RunHook("HookP_NameChange", self.PrintName)
	self.Description = self:RunHook("HookP_DescriptionChange", self.Description)

	if CLIENT then
        -- self:PruneAttachments()
        if !toggleonly then -- bruh
            self:SendWeapon()
            self:KillModel()
            self:SetupModel(true)
            self:SetupModel(false)
            self:SavePreset()
        else
			timer.Simple(0, function() self:KillFlashlights() end)
            self:CreateFlashlights()
        end

        self:BuildMultiSight()
        self.InvalidateSelectIcon = true
	else
		if validplayerowner then
			if self:GetValue("ToggleOnF") and client:FlashlightIsOn() then
				client:Flashlight(false)
			end

			timer.Simple(0, function()
				if self.LastAmmo != self:GetValue("Ammo") or self.LastClipSize != self:GetValue("ClipSize") then
					if self.AlreadyGaveAmmo then
						self:Unload()
						self:SetRequestReload(true)
					else
						self.AlreadyGaveAmmo = true
					end
				end

				self.LastAmmo = self:GetValue("Ammo")
				self.LastClipSize = self:GetValue("ClipSize")
			end)

			if self:GetValue("UBGL") then
				if !self.AlreadyGaveUBGLAmmo then
					self.AlreadyGaveUBGLAmmo = true
				end

				if (self.LastUBGLAmmo) then
					if (self.LastUBGLAmmo != self:GetValue("UBGLAmmo") or self.LastUBGLClipSize != self:GetValue("UBGLClipSize")) then
						local data = {}
						data.count = self:Clip2()
						FlowItemToInventory(self:GetOwner(), self.LastUBGLAmmo, data)
						-- client:GiveAmmo(self:Clip2(), self.LastUBGLAmmo)
						self:SetClip2(0)
						self:SetRequestReload(true)
					end
				end

				self.LastUBGLAmmo = self:GetValue("UBGLAmmo")
				self.LastUBGLClipSize = self:GetValue("UBGLClipSize")

				local capacity = self:GetCapacity(true)
				if capacity > 0 and self:Clip2() > capacity then
					local data = {}
					data.count = self:Clip2() - capacity
					FlowItemToInventory(self:GetOwner(), self.LastUBGLAmmo, data)
					-- client:GiveAmmo(self:Clip2() - capacity, self.LastUBGLAmmo)
					self:SetClip2(capacity)
				end
			end

			local capacity = self:GetCapacity(false)
			if capacity > 0 and self:Clip1() > capacity then
				local data = {}
				data.count = self:Clip1() - capacity
				FlowItemToInventory(self:GetOwner(), self.LastAmmo, data)
				-- client:GiveAmmo(self:Clip1() - capacity, self.LastAmmo)
				self:SetClip1(capacity)
			end

			if self:GetProcessedValue("BottomlessClip", true) then
				self:RestoreClip()
			end

			MatchWithEquippedAndUpdate(client, self.ClassName, self.Attachments)
			-- ReloadInventory(client)
		end
	end

	if self:GetUBGL() and !self:GetProcessedValue("UBGL") then
		self:ToggleUBGL(false)
	end

	if sp and validplayerowner then
		self:CallOnClient("RecalculateIKGunMotionOffset")
	end

	self:SetupAnimProxy()

	self:SetBaseSettings()

	if self:GetAnimLockTime() <= CurTime() then
		self:Idle()
	end
end
