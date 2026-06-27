local swepGetProcessedValue = SWEP.GetProcessedValue

local cancelmults = ARC9.CancelMultipliers[engine.ActiveGamemode()] or ARC9.CancelMultipliers[1]

local runHook = {}

local soundTab2 = {
	name = "impact"
}

function SWEP:PrimaryAttack()
	if self.NotAWeapon then return end

	local owner = self:GetOwner()

	if owner:IsNPC() then
		self:NPC_PrimaryAttack()
		return
	end

	if !swepGetProcessedValue then swepGetProcessedValue = self.GetProcessedValue end

	if swepGetProcessedValue(self, "Throwable", true) then
		return
	end

	if swepGetProcessedValue(self, "PrimaryBash", true) then
		return
	end

	if swepGetProcessedValue(self, "UBGLInsteadOfSights", true) then
		self:ToggleUBGL(false)
	end

	if self:GetSafe() then
		self:ToggleSafety(false)
		self:SetNeedTriggerPress(true)
		return
	end

	if self:GetNeedTriggerPress() then return end

	if self:GetNeedsCycle() then return end

	if self:GetCustomize() then return end

	if swepGetProcessedValue(self, "Bash", true) and owner:KeyDown(IN_USE) and !self:GetInSights() then
		if self:GetIsSprinting() and !self.ShootWhileSprint then return end
		self:MeleeAttack()
		self:SetNeedTriggerPress(true)
		return
	end

	if self:SprintLock() then return end

	if self:GetOwner():GetNWBool("InRange", false) == false and self:GetOwner():IsInHideout() then return end

	local nthShot = self:GetNthShot()

	if self:HasAmmoInClip() then
		if swepGetProcessedValue(self, "TriggerDelay") then
			local primedAttack = self:GetPrimedAttack()
			local time = CurTime()

			if self:GetBurstCount() == 0 and !primedAttack and !self:StillWaiting() then
				self:SetTriggerDelay(time + swepGetProcessedValue(self, "TriggerDelayTime"))
				local isEmpty = self:Clip1() == swepGetProcessedValue(self,  "AmmoPerShot")
				local anim = "trigger"

				if swepGetProcessedValue(self, "Akimbo", true) then
					if swepGetProcessedValue(self,  "AkimboBoth", true) then
						anim = "trigger_both"
					elseif nthShot % 2 == 0 then
						anim = "trigger_right"
					else
						anim = "trigger_left"
					end
				end

				if swepGetProcessedValue(self, "TriggerStartFireAnim", true) then
						if swepGetProcessedValue(self, "Akimbo", true) then
							if swepGetProcessedValue(self,  "AkimboBoth", true) then
								anim = "fire_both"
							elseif nthShot % 2 == 0 then
								anim = "fire_right"
							else
								anim = "fire_left"
							end
						else anim = "fire"
					end
				end
				if self:HasAnimation(anim .. "_empty", true) and isEmpty then
					anim = anim .. "_empty"
				end
				self:PlayAnimation(anim)
				self:SetPrimedAttack(true)
				return
			elseif primedAttack and (self:GetTriggerDelay() <= time and (!swepGetProcessedValue(self,  "TriggerDelayReleaseToFire", true) or !owner:KeyDown(IN_ATTACK))) then
				self:SetPrimedAttack(false)
			end
		end
	elseif !swepGetProcessedValue(self, "TriggerDelay") or !swepGetProcessedValue(self,  "TriggerDelayReleaseToFire", true) or !owner:KeyDown(IN_ATTACK) then
		self:SetPrimedAttack(false)
	end

	if self:GetReloading() then
		self:SetEndReload(true)
	end

	self:DoPrimaryAttack()

	if self.RecentMelee then
		self.RecentMelee = nil
	end
end

function SWEP:DoPrimaryAttack()
	if self.FireInterruptInspect and self:GetInspecting() then self:CancelInspect() end
	if self:StillWaiting() then return end
	if self.NoFireDuringSighting and (self:GetInSights() and self:GetSightAmount() < 0.8 or false) then return end

	local currentFiremode = self:GetCurrentFiremode()
	local burstCount = self:GetBurstCount()

	if currentFiremode > 0 and burstCount >= currentFiremode then return end

	local clip = self:GetLoadedClip()

	if swepGetProcessedValue(self, "BottomlessClip", true) then
		self:RestoreClip(math.huge)
	end

	if !self:HasAmmoInClip() then
		if self:GetUBGL() and !swepGetProcessedValue(self, "UBGLInsteadOfSights", true) then
			if self:GetMaxClip2() < 2 then -- mytton doesn't like auto ubgl reload
				if self:CanReload() then
					self:Reload()
				else
					self:ToggleUBGL(false)
					self:SetNeedTriggerPress(true)
					self:ExitSights()
				end
			end

			return
		else
			self:DryFire()
			return
		end
	end

	if !swepGetProcessedValue(self, "CanFireUnderwater", true) and bit.band(util.PointContents(self:GetShootPos()), CONTENTS_WATER) == CONTENTS_WATER then
		self:DryFire()
		return
	end

	self:SetBaseSettings()

	if self:RunHook("HookP_BlockFire") then return end

	if self:GetJammed() or self:GetHeatLockout() then
		self:DryFire()
		return
	end

	self:RunHook("Hook_PrimaryAttack")

	self:SetEmptyReload(false)
	self:TakeAmmo()

	local owner = self:GetOwner()

	if SERVER and IsValid(owner) and owner:IsPlayer() and owner:IsInRaid() then
		owner:AddToStat("ShotsFired", 1)
		owner:SetNWInt("RaidShotsFired", owner:GetNWInt("RaidShotsFired") + 1)
	end

	local triggerStartFireAnim = swepGetProcessedValue(self, "TriggerStartFireAnim", true)
	local nthShot = self:GetNthShot()

	if swepGetProcessedValue(self, "DoFireAnimation", true) and !triggerStartFireAnim then
		local anim = "fire"

		if swepGetProcessedValue(self, "Akimbo", true) then
			if swepGetProcessedValue(self,  "AkimboBoth", true) then
				anim = "fire_both"
			elseif nthShot % 2 == 0 then
				anim = "fire_right"
			else
				anim = "fire_left"
			end
		end

		local banim = anim

		if !self.SuppressCumulativeShoot then
			for i = 1, burstCount + 1 do
				if self:HasAnimation(anim .. "_" .. i, true) then
					banim = anim .. "_" .. i
				end
			end
		end

		self:PlayAnimation(banim, 1, false, true)
	end

	local clip1 = self:Clip1()

	self:SetLoadedRounds(clip1)

	local manualaction = swepGetProcessedValue(self, "ManualAction", true)

	if !swepGetProcessedValue(self, "NoShellEject", true) and !(manualaction and !swepGetProcessedValue(self, "ManualActionEjectAnyway", true)) then
		local ejectdelay = swepGetProcessedValue(self, "EjectDelay", true)

		if ejectdelay == 0 then
			self:DoEject()
		else
			self:SetTimer(ejectdelay, function()
				self:DoEject()
			end)
		end
	end

	self:SetAfterShot(true)

	self:DoShootSounds()

	self:DoPlayerAnimationEvent(swepGetProcessedValue(self, "AnimShoot", true))

	local delay = 60 / swepGetProcessedValue(self,  "RPM")
	local time = CurTime()

	local curatt = self:GetNextPrimaryFire()
	local diff = time - curatt

	if diff > engine.TickInterval() or diff < 0 then
		curatt = time
	end

	self:SetNextPrimaryFire(curatt + delay)

	self:SetNthShot(nthShot + 1)

	self:DoEffects()

	if self:HoldingBreath() then
		local d = 100 / math.max(1, swepGetProcessedValue(self, "HoldBreathTime", true))
		local breathtake = math.Clamp(delay * d * 3, 1, 10)
		if manualaction then
			breathtake = d
		end
		self:SetBreath(math.max(0, self:GetBreath() - breathtake))
	end

	-- ewww
	if swepGetProcessedValue(self,  "AkimboBoth", true) then
		self:SetNthShot(nthShot + 2)
		self:DoEffects()
		if !swepGetProcessedValue(self, "NoShellEject", true) and !(manualaction and !swepGetProcessedValue(self, "ManualActionEjectAnyway", true)) then
			local ejectdelay = swepGetProcessedValue(self, "EjectDelay", true)
			if ejectdelay == 0 then
				self:DoEject()
			else
				self:SetTimer(ejectdelay, function()
					self:DoEject()
				end)
			end
		end
	end

	if sp then
		if SERVER then
			self:CallOnClient("SInputRumble")
		end
	else
		if CLIENT then
			self:SInputRumble()
		end
	end

	local spread = swepGetProcessedValue(self, "Spread")

	spread = math.Max(spread, 0)

	local shopos, shoang = self:GetShootPos()

	if IsValid(self:GetLockOnTarget()) and self:GetLockedOn() and swepGetProcessedValue(self, "LockOnAutoaim", true) then
		sa = (self:GetLockOnTarget():EyePos() - shopos):Angle()
	end

	self:DoProjectileAttack(shopos, shoang, spread)

	self:ApplyRecoil()
	self:DoVisualRecoil()

	if burstCount == 0 and currentFiremode > 1 and swepGetProcessedValue(self, "RunawayBurst", true) then
		if !swepGetProcessedValue(self, "AutoBurst", true) then
			self:SetNeedTriggerPress(true)
		end
	end

	if manualaction then
		nthShot = nthShot + 1
		if clip1 > 0 or !swepGetProcessedValue(self, "ManualActionNoLastCycle", true) then
			if nthShot % swepGetProcessedValue(self, "ManualActionChamber", true) == 0 then
				self:SetNeedsCycle(true)
			end
		end
	end
	-- print("shot = " .. nthShot)

	if currentFiremode == 1 or clip == 0 then
		self:SetNeedTriggerPress(true)
	end

	self:DoHeat()

	if !self:GetUBGL() then
		if !manualaction or manualaction and !self.MalfunctionCycle then
			self:RollJam()
		end
	end

	if clip1 == 0 then
		self:SetNthShot(0)
	end

	if swepGetProcessedValue(self, "TriggerDelayRepeat", true) and self:GetOwner():KeyDown(IN_ATTACK) and currentFiremode != 1 then
		self:SetTriggerDelay(time + swepGetProcessedValue(self, "TriggerDelayTime"))
		if triggerStartFireAnim then
			self:PlayAnimation("fire")
		else
			self:PlayAnimation("trigger")
		end
		self:SetPrimedAttack(true)
	end

	self:SetBurstCount(burstCount + 1)
end

function SWEP:AfterShotFunction(tr, dmg, range, penleft, alreadypenned, secondary)
	if !IsFirstTimePredicted() and !sp then return end

	local lastsecondary = self:GetUBGL()

	self:SetUBGL(secondary)

	dmg:SetDamageType(swepGetProcessedValue(self,  "DamageType", true) or DMG_BULLET)

	local dmgv = self:GetDamageAtRange(range)
	local dmgvoriginal = dmgv

	runHook.tr = tr
	runHook.dmg = dmg
	runHook.range = range
	runHook.penleft = penleft
	runHook.alreadypenned = alreadypenned
	runHook.dmgv = dmgv

	self:RunHook("Hook_BulletImpact", runHook)

	-- Penetration
	local pen = swepGetProcessedValue(self,  "Penetration", true)
	local pendeltaval = swepGetProcessedValue(self,  "PenetrationDelta", true)
	if pen > 0 then
		local pendelta = penleft / pen
		pendelta = Lerp(pendelta, pendeltaval, 1) -- it arleady clamps inside
		dmgv = dmgv * pendelta
	end

	-- NPC damage nerf
	local owner = self:GetOwner()

	-- Limb multipliers
	local traceEntity = tr.Entity
	local hitGroup = tr.HitGroup

	if SERVER and IsValid(owner) and owner:IsPlayer() and traceEntity:IsPlayer() and owner:IsInRaid() then
		owner:AddToStat("ShotsHit", 1)
		owner:SetNWInt("RaidShotsHit", owner:GetNWInt("RaidShotsHit") + 1)
	end

	if !ARC9.NoBodyPartsDamageMults then
		local bodydamage = swepGetProcessedValue(self,  "BodyDamageMults", true)

		if bodydamage[hitGroup] then
			dmgv = dmgv * bodydamage[hitGroup]
		end
		if hitGroup == HITGROUP_HEAD then
			dmgv = dmgv * swepGetProcessedValue(self,  "HeadshotDamage", true)
		elseif hitGroup == HITGROUP_CHEST then
			dmgv = dmgv * swepGetProcessedValue(self,  "ChestDamage", true)
		elseif hitGroup == HITGROUP_STOMACH then
			dmgv = dmgv * swepGetProcessedValue(self,  "StomachDamage", true)
		elseif hitGroup == HITGROUP_LEFTARM or hitGroup == HITGROUP_RIGHTARM then
			dmgv = dmgv * swepGetProcessedValue(self,  "ArmDamage", true)
		elseif hitGroup == HITGROUP_LEFTLEG or hitGroup == HITGROUP_RIGHTLEG then
			dmgv = dmgv * swepGetProcessedValue(self,  "LegDamage", true)
		end
	end

	-- Armor piercing (done after weapon's limb multipliers but BEFORE body damage cancel)
	local ap = math.Clamp(swepGetProcessedValue(self,  "ArmorPiercing", true), 0, 1)
	if ap > 0 and !alreadypenned[traceEntity] then
		if traceEntity:GetClass() == "npc_helicopter" then
			local apdmg = DamageInfo()
			apdmg:SetDamagePosition(tr.HitPos)
			apdmg:SetDamage(dmgv * ap)
			apdmg:SetDamageType(DMG_AIRBOAT)
			apdmg:SetInflictor(self)
			apdmg:SetAttacker(owner)

			if traceEntity.TakeDamageInfo then traceEntity:TakeDamageInfo(apdmg) end
		elseif traceEntity:GetClass() == "npc_gunship" or traceEntity:GetClass() == "npc_strider" then
			local apdmg = DamageInfo()
			apdmg:SetDamage(dmgv * ap)
			apdmg:SetDamageType(DMG_BLAST)
			apdmg:SetInflictor(self)
			apdmg:SetAttacker(owner)

			if traceEntity.TakeDamageInfo then traceEntity:TakeDamageInfo(apdmg) end
		elseif traceEntity:IsPlayer() then
			if !ARC9.NoArmorPiercing then -- dumbass
				local apdmg = math.ceil(dmgv * ap)
				-- Delay health removal so that we can confirm the damage actually applied before removing health
				dmg:SetDamageCustom(ARC9.DMG_CUST_AP)
				traceEntity.ARC9APDamage = apdmg
				-- traceEntity:SetHealth(traceEntity:Health() - apdmg)
				dmgv = math.max(1, dmgv - apdmg)
			else
				ARC9.LastArmorPiercedPlayer = traceEntity
				ARC9.LastArmorPierceValue = ap
				ARC9.LastArmorPiercedTime = CurTime()

				traceEntity.ARC9APPower = pen
				traceEntity.ARC9APDelta = pendeltaval
				traceEntity.ARC9APRangeMult = dmgvoriginal / swepGetProcessedValue(self,  "DamageMax", true)
			end
		end
	end

	-- Cancel out sandbox/ttt limb damage multipliers. Done last since AP damage does not go through this
	-- Lambda Players call ScalePlayerDamage and cancel out hitgroup damage... except on the head
	if cancelmults[hitGroup] and (!traceEntity.IsLambdaPlayer or hitgroup == HITGROUP_HEAD) then
		dmgv = dmgv / cancelmults[hitGroup]
	end

	dmg:SetDamage(dmgv)

	local hitPos = tr.HitPos
	local hitNormal = tr.HitNormal

	if swepGetProcessedValue(self,  "ImpactDecal", true) then
		util.Decal(swepGetProcessedValue(self,  "ImpactDecal", true), tr.StartPos, hitPos - (hitNormal * 2), owner)
	end

	if swepGetProcessedValue(self,  "ImpactEffect", true) then
		local fx = EffectData()
		fx:SetOrigin(hitPos)
		fx:SetNormal(hitNormal)
		util.Effect(swepGetProcessedValue(self,  "ImpactEffect", true), fx, true)
	end

	if swepGetProcessedValue(self,  "ImpactSound", true) then
		soundTab2.sound = swepGetProcessedValue(self,  "ImpactSound", true)

		soundTab2 = self:RunHook("HookP_TranslateSound", soundTab2) or soundTab2

		sound.Play(soundTab2.sound, hitPos, soundTab2.level, soundTab2.pitch, soundTab2.volume)
	end

	if swepGetProcessedValue(self,  "ExplosionDamage") > 0 then
		util.BlastDamage(self, IsValid(owner) and owner or self, hitPos, swepGetProcessedValue(self,  "ExplosionRadius", true), swepGetProcessedValue(self,  "ExplosionDamage"))
	end

	if swepGetProcessedValue(self,  "ExplosionEffect", true) then
		local fx = EffectData()
		fx:SetOrigin(hitPos)
		fx:SetNormal(hitNormal)
		fx:SetAngles(tr.HitNormal:Angle())

		if bit.band(util.PointContents(hitPos), CONTENTS_WATER) == CONTENTS_WATER then
			util.Effect("WaterSurfaceExplosion", fx, true)
		else
			util.Effect(swepGetProcessedValue(self,  "ExplosionEffect", true), fx, true)
		end
	end

	if traceEntity and alreadypenned[traceEntity] then
		dmg:SetDamage(0)
	elseif traceEntity then
		alreadypenned[traceEntity] = true
	end

	self:Penetrate(table.Copy(tr), range, penleft, alreadypenned)

	self:SetUBGL(lastsecondary)
end

local lsstr = "ShootSound"
local lsslr = "LayerSound"
local ldsstr = "DistantShootSound"

local sstrSilenced = "ShootSoundSilenced"
local sslrSilenced = "LayerSoundSilenced"
local dsstrSilenced = "DistantShootSoundSilenced"

local soundtab1 = {name = "shootsound"}
local soundtab2 = {name = "shootlayer"}
local soundtab3 = {name = "shootdistant"}
local soundtab4 = {name = "shootsoundindoor"}
local soundtab5 = {name = "shootlayerindoor"}
local soundtab6 = {name = "shootdistantindoor"}

function SWEP:DoShootSounds()
	if !swepGetProcessedValue then swepGetProcessedValue = self.GetProcessedValue end

	local pvar = swepGetProcessedValue(self, "ShootPitchVariation", true)
	local pvrand = math.Rand(-pvar, pvar) -- util.SharedRandom("ARC9_sshoot", -pvar, pvar) -- who gives a shit??? plus it broke af
	local randomChoice = self.RandomChoice

	local sstr = lsstr
	local sslr = lsslr
	local dsstr = ldsstr

	local silenced = swepGetProcessedValue(self, "Silencer", true) and !self:GetUBGL()
	local indoor = self:GetIndoor()

	local indoormix = 1 - indoor
	local havedistant = swepGetProcessedValue(self, dsstr, true)

	if swepGetProcessedValue(self, "Silencer", true) and !self:GetUBGL() then
		if swepGetProcessedValue(self, sstrSilenced, true) then
			sstr = sstrSilenced
		end
		if swepGetProcessedValue(self, sslrSilenced, true) then
			sslr = sslrSilenced
		end
		if havedistant and swepGetProcessedValue(self, dsstrSilenced, true) then
			dsstr = dsstrSilenced
		end
	end

	do
		local burstCountZero = self:GetBurstCount() == 0
		local sstrFirst = "First" .. sstr
		local dsstrFirst = "First" .. dsstr

		if burstCountZero and swepGetProcessedValue(self, sstrFirst, true) then
			sstr = sstrFirst
		end

		if havedistant and burstCountZero and swepGetProcessedValue(self, dsstrFirst, true) then
			dsstr = dsstrFirst
		end
	end

	local ss = randomChoice(self, swepGetProcessedValue(self, sstr, true))
	local sl = randomChoice(self, swepGetProcessedValue(self, sslr, true))
	local dss

	if havedistant then
		dss = randomChoice(self, swepGetProcessedValue(self, dsstr, true))
	end

	local svolume, spitch, svolumeactual = swepGetProcessedValue(self, "ShootVolume", true), swepGetProcessedValue(self, "ShootPitch", true) + pvrand, swepGetProcessedValue(self, "ShootVolumeActual", true) or 1
	local dvolume, dpitch

	if havedistant then
		dvolume, dpitch = math.min(149, (swepGetProcessedValue(self, "DistantShootVolume", true) or svolume) * 2), (swepGetProcessedValue(self, "DistantShootPitch", true) or spitch) + pvrand
	end

	local volumeMix = svolumeactual * indoormix

	local hardcutoff = self.IndoorSoundHardCutoff and self.IndoorSoundHardCutoffRatio < indoor

	if hardcutoff then
		indoormix = 0
		indoor = 1
	elseif self.IndoorSoundHardCutoff then
		indoormix = 1
		indoor = 0
	end

	local playTranslatedSound = self.PlayTranslatedSound
	if indoormix > 0 then
		-- doing this cuz it uses only 1 cached table and it works way faster
		do
			soundtab1.sound = ss or ""
			soundtab1.level = svolume
			soundtab1.pitch = spitch
			soundtab1.volume = self.ShootSoundIndoor and volumeMix or 1
			soundtab1.channel = ARC9.CHAN_WEAPON
			-- soundtab1.networktoeveryone = true
		end

		playTranslatedSound(self, soundtab1)

		do
			soundtab2.sound = sl or ""
			soundtab2.level = svolume
			soundtab2.pitch = spitch
			soundtab2.volume = self.LayerSoundIndoor and volumeMix or 1
			soundtab2.channel = ARC9.CHAN_LAYER + 4
			-- soundtab2.networktoeveryone = true
		end

		playTranslatedSound(self, soundtab2)

		if havedistant then
			do
				soundtab3.sound = dss or ""
				soundtab3.level = dvolume
				soundtab3.pitch = dpitch
				soundtab3.volume = dvolume * indoormix
				soundtab3.channel = ARC9.CHAN_DISTANT
				soundtab3.networktoeveryone = true
			end

			playTranslatedSound(self, soundtab3)
		end
	end

	if indoor > 0 then
		local ssIN = randomChoice(self, swepGetProcessedValue(self, sstr .. "Indoor", true))
		local slIN = randomChoice(self, swepGetProcessedValue(self, sslr .. "Indoor", true))
		local dssIN = havedistant and randomChoice(self, swepGetProcessedValue(self, dsstr .. "Indoor", true))
		local indoorVolumeMix = svolumeactual * indoor

		do
			soundtab4.sound = ssIN or ""
			soundtab4.level = svolume
			soundtab4.pitch = spitch
			soundtab4.volume = indoorVolumeMix
			soundtab4.channel = ARC9.CHAN_INDOOR
			-- soundtab4.networktoeveryone = true
		end

		playTranslatedSound(self, soundtab4)

		do
			soundtab5.sound = slIN or ""
			soundtab5.level = svolume
			soundtab5.pitch = spitch
			soundtab5.volume = indoorVolumeMix
			soundtab5.channel = ARC9.CHAN_INDOOR + 7
			-- soundtab5.networktoeveryone = true
		end

		playTranslatedSound(self, soundtab5)

		if havedistant then
			do
				soundtab6.sound = dssIN or ""
				soundtab6.level = dvolume
				soundtab6.pitch = dpitch
				soundtab6.volume = dvolume * indoor
				soundtab6.channel = ARC9.CHAN_INDOORDISTANT
				soundtab6.networktoeveryone = true
			end

			playTranslatedSound(self, soundtab6)
		end
	end

	local ammo = self.Primary.Ammo

	if self:GetUBGL() then
		ammo = self.Secondary.Ammo
	end

	if SERVER then
		self:StartLoop()

		local attacker = self:GetOwner()
		if !attacker:IsPlayer() then return end
		if !attacker:IsInRaid() then return end

		for k, v in player.Iterator() do
			if v == attacker then return end
			if !v:IsInRaid() then return end
			if CALIBERAUDIO[ammo] == nil then return end

			local shootPos = attacker:GetPos()
			local plyDistance = attacker:GetPos():DistToSqr(v:GetPos())

			if plyDistance < (2500 * 2500) then return end
			plyDistance = math.sqrt(plyDistance)

			local bulletPitch = CALIBERAUDIO[ammo][1] or 100
			local threshold = CALIBERAUDIO[ammo][2] or 6000
			local style = CALIBERAUDIO[ammo][3] == "bullet" -- returns true if bullet, false if explosive
			local volume = 1

			if silenced then
				volume = 0.3
				bulletPitch = math.Clamp(math.Round(bulletPitch * 1.5), 0, 254)
			end

			if indoor > 0 then
				volume = volume * 0.4
			end

			for i = 1, self.Num do
				net.Start("DistantGunAudio")
				net.WriteVector(shootPos)
				net.WriteFloat(plyDistance)
				net.WriteUInt(bulletPitch, 8)
				net.WriteUInt(threshold, 16)
				net.WriteFloat(volume)
				net.WriteBool(style)
				net.Send(v)
			end
		end
	end
end
