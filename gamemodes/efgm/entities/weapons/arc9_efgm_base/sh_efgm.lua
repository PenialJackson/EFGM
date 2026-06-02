if CLIENT then
	local arc9_atts_nocustomize = GetConVar("arc9_atts_nocustomize")
	local arc9_autosave = GetConVar("arc9_autosave")

	function SWEP:GetAttsFromPreset(filename)
		if arc9_atts_nocustomize:GetBool() then return end
		if LocalPlayer() != self:GetOwner() then return end

		filename = filename or "autosave"

		if filename == "autosave" then
			if !arc9_autosave:GetBool() then return end
		end

		filename = ARC9.PresetPath .. self:GetPresetBase() .. "/" .. filename .. ".txt"

		if !file.Exists(filename, "DATA") then return end

		local f = file.Open(filename, "r", "DATA")
		if !f then return end

		local str = f:Read()

		local atts = {}

		if str[1] == "{" then
			atts = util.JSONToTable(str)
		elseif string.sub(str, 1, 5) == "name=" then
			-- first line is name second line is data
			local strs = string.Split(str, "\n")
			atts = self:ImportPresetCode(strs[2])
		else
			atts = self:ImportPresetCode(str)
		end

		f:Close()

		return atts
	end
end

function SWEP:ThinkGrenade()
	if !self:GetProcessedValue("Throwable", true) then return end
	if self:GetClass() == "arc9_eft_rshg2" then return end

	local owner = self:GetOwner()

	owner.ARC9QuickthrowPls = nil
	if owner:IsInHideout() then return end

	local QuicknadeBind = owner:KeyDown(IN_GRENADE1)

	if self:GetSafe() and owner:KeyPressed(IN_ATTACK) then self:ToggleSafety(false) return end

	if IsValid(self:GetDetonatorEntity()) then
		if owner:KeyPressed(IN_ATTACK) then
			self:TouchOff()
			return
		end
	end

	local fuse = self:GetProcessedValue("FuseTimer")

	if fuse >= 0 and self:GetGrenadePrimed() then
		local time = CurTime() - self:GetGrenadePrimedTime()

		if time >= fuse then
			self:ThrowGrenade(ARC9.NADETHROWTYPE_EXPLODEINHANDS, 0)

			if self:HasAnimation("explodeinhands") then
				self:PlayAnimation("explodeinhands", 1, true)
			else
				self:PlayAnimation("throw", 1, true)
			end
		end
	end

	local tossable = self:GetProcessedValue("Tossable", true) and self:HasAnimation("toss")

	if !self:GetGrenadePrimed() then
		if self:GetAnimLockTime() > CurTime() then return end

		local throwanimspeed = self:GetProcessedValue("ThrowAnimSpeed", true)
		if self:GetGrenadeRecovering() then
			if self:GetProcessedValue("Disposable", true) and !IsValid(self:GetDetonatorEntity()) and SERVER and owner:GetNWBool("InRange", false) == false then
				self:Remove()
				-- owner:ConCommand("lastinv") -- switch to prev weapon
			elseif self.WasThrownByBind then
				self.WasThrownByBind = nil
				self:Holster(owner:GetPreviousWeapon())
				-- owner:ConCommand("lastinv") -- switch to prev weapon man we dont need dis shid!!
			else
				self:PlayAnimation("draw", throwanimspeed, true)
				self:SetGrenadeRecovering(false)
			end
		elseif ((tossable and owner:KeyDown(IN_ATTACK2)) or
		owner:KeyDown(IN_ATTACK)) and
			(!owner:KeyDown(IN_USE) or !self:GetProcessedValue("PrimaryBash", true)) and
			!IsValid(self:GetDetonatorEntity()) and !self:RunHook("HookP_BlockFire")
			then
			self:SetGrenadePrimed(true)
			self:SetGrenadePrimedTime(CurTime())

			if owner:KeyDown(IN_ATTACK2) and self:HasAnimation("pullpin_toss") then
				self:PlayAnimation("pullpin_toss", throwanimspeed, true)
			else
				self:PlayAnimation("pullpin", throwanimspeed, true)
			end
			self:SetGrenadeTossing(owner:KeyDown(IN_ATTACK2))
		end
	else
		if self:GetAnimLockTime() > CurTime() then return end

		if self:GetGrenadeTossing() and (!owner:KeyDown(IN_ATTACK2) or self:GetProcessedValue("ThrowInstantly", true)) then
			local t = self:PlayAnimation("toss", throwanimspeed, true)
			local mp = self:GetAnimationEntry("toss").MinProgress or 0
			self:ThrowGrenade(ARC9.NADETHROWTYPE_TOSS, t * mp)
		elseif !self:GetGrenadeTossing() and (!(owner:KeyDown(IN_ATTACK) or QuicknadeBind) or self:GetProcessedValue("ThrowInstantly", true)) then
			local t = self:PlayAnimation("throw", throwanimspeed, true)
			local mp = self:GetAnimationEntry("throw").MinProgress or 0
			self:ThrowGrenade(ARC9.NADETHROWTYPE_NORMAL, t * mp)
		end

		self:SetGrenadeRecovering(true)
	end
end

function SWEP:ThrowGrenade(nttype, delaytime)
	if self:GetClass() == "arc9_eft_rshg2" then return end

	delaytime = delaytime or 0
	self:SetGrenadePrimed(false)

	self:TakeAmmo()

	self:DoPlayerAnimationEvent(self:GetProcessedValue("AnimShoot", true))

	if CLIENT then return end

	local time = math.huge
	local fusetimer = self:GetProcessedValue("FuseTimer")
	local forcemax = self:GetProcessedValue("ThrowForceMax")
	local forcemin = self:GetProcessedValue("ThrowForceMin")
	local forcetime = self:GetProcessedValue("ThrowChargeTime")

	time = CurTime() - self:GetGrenadePrimedTime()

	local force = forcemax

	if forcetime > 0 then
		force = forcemin + (forcemax - forcemin) * math.Clamp(time / forcetime, 0, 1)
	end

	local num = self:GetProcessedValue("Num")
	local ent = self:GetProcessedValue("ShootEnt")

	local owner = self:GetOwner()
	local spread

	if owner:IsNPC() then
		-- ang = self:GetOwner():GetAimVector():Angle()
		spread = self:GetNPCBulletSpread(WEAPON_PROFICIENCY_PERFECT)
	else
		spread = self:GetProcessedValue("Spread")
	end

	spread = math.Max(spread, 0)

	local override = {
		force = force,
		delay = delaytime,
	}
	self:RunHook("Hook_GrenadeThrown", override)

	force = override.force or force
	delaytime = override.delay or delaytime

	self:SetTimer(delaytime, function()
		local src, dir
		if self:GetProcessedValue("ThrowOnGround", true) then
			src = owner:EyePos()
			dir = Angle(0, owner:GetAngles().y, 0)

			local shootposoffset = self:GetProcessedValue("ShootPosOffset", true)

			local angRight = dir:Right()
			local angForward = dir:Forward()
			local angUp = dir:Up()

			angRight:Mul(shootposoffset[1])
			angForward:Mul(shootposoffset[2])
			angUp:Mul(shootposoffset[3])

			src:Add(angRight)
			src:Add(angForward)
			src:Add(angUp)

			src, dir = self:GetRecoilOffset(src, dir)

			local tr = util.TraceLine({
				start = src,
				endpos = src - Vector(0, 0, 64),
				mask = MASK_SOLID,
			})
			src = tr.HitPos
		else
			src, dir = self:GetShootPos()
		end

		local nades = {}
		for i = 1, num do
			local nade = ents.Create(ent)

			if !IsValid(nade) then return end
			local dispersion = Angle(math.Rand(-1, 1), math.Rand(-1, 1), 0)

			dispersion = dispersion * spread * 36

			nade:SetPos(src)
			nade:SetAngles(dir)
			nade:SetOwner(owner)
			nade:Spawn()

			if fusetimer >= 0 then
				nade.LifeTime = fusetimer - time
			end

			if nttype  == ARC9.NADETHROWTYPE_TOSS then
				force = self:GetProcessedValue("TossForce", true)
			elseif nttype == ARC9.NADETHROWTYPE_EXPLODEINHANDS then
				force = 0
				time = 0
				nade:Detonate()
			end

			if self:GetProcessedValue("Detonator", true) then
				self:SetDetonatorEntity(nade)
			end

			nade:SetPhysicsAttacker(self:GetOwner(), 600)

			local phys = nade:GetPhysicsObject()

			if IsValid(phys) then
				if self:GetProcessedValue("ThrowTumble", true) then
					nade:SetAngles(Angle(math.random(-180, 180), math.random(-180, 180), math.random(-180, 180)))
					phys:AddAngleVelocity(Vector(math.random(-180, 180), math.random(-180, 180), math.random(-180, 180)))
				end

				if self:GetProcessedValue("ShootEntInheritPlayerVelocity") then
					local vel = owner:GetVelocity()
					local limit = self:GetProcessedValue("ShootEntInheritPlayerVelocityLimit")
					if isnumber(limit) and limit > 0 and vel:Length() > limit then
						vel = vel:GetNormalized() * limit
					end
					phys:SetVelocity(vel)
				end

				phys:AddVelocity((dir + dispersion):Forward() * force)
			end

			table.insert(nades, nade)
		end

		self:RunHook("Hook_GrenadeCreated", nades)
		ConsumeGrenade(owner)
		owner:SetNWInt("RaidGrenadesThrown", owner:GetNWInt("RaidGrenadesThrown") + 1)
		if owner:GetNWBool("InRange", false) == false then owner:StripWeapon(self.ClassName) end
	end)
end
