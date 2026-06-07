SWEP.Flashlights = {}
local flaremat = Material("effects/arc9_lensflare", "mips smooth")
local badcolor = Color(255, 255, 255)
local arc9_allflash = GetConVar("arc9_allflash")
local flashlightQuality = GetConVar("efgm_visuals_hq_flashlight")
local fuckingbullshit = Vector(0, 0, 0.001)
local gunoffset = Vector(0, 0, -16)

local FLASHLIGHT_UPDATE_INTERVAL = 0.016 -- ~60fps
local lastFlashlightUpdateWM = {}
local lastFlashlightRaycastWM = {}

function SWEP:CreateFlashlights()
	self:KillFlashlights()
	self.Flashlights = {}

	lastFlashlightUpdateWM[self] = 0
	lastFlashlightRaycastWM[self] = 0

	local owner = self:GetOwner()
	local lp = LocalPlayer()

	local isotherplayer = owner != lp

	local count = 0

	for _, k in ipairs(self:GetSubSlotList()) do
		if !k.Installed then continue end

		local atttbl = self:GetFinalAttTable(k)
		if !atttbl.Flashlight then continue end

		if count == 0 then
			local l = ProjectedTexture()
			if !IsValid(l) then continue end

			local fov = atttbl.FlashlightFOV or 50
			local col = atttbl.FlashlightColor or color_white
			local br = atttbl.FlashlightBrightness or 3

			l:SetFOV(fov)
			l:SetFarZ(atttbl.FlashlightDistance or 1024)
			l:SetNearZ(0)
			l:SetQuadraticAttenuation(100)
			l:SetColor(col)
			l:SetTexture(atttbl.FlashlightMaterial or "effects/flashlight001")
			l:SetBrightness(br)
			if isotherplayer then
				l:SetEnableShadows(false)
			elseif flashlightQuality:GetBool() then
				l:SetEnableShadows(true)
			else
				l:SetEnableShadows(false)
			end
			l:Update()

			local newlight = {
				slottbl = k,
				light = l,
				col = col,
				br = br,
				qca = atttbl.FlashlightAttachment,
				nodotter = atttbl.Flashlight360,
				lastPos = Vector(0, 0, 0),
				lastAng = Angle(0, 0, 0)
			}
			self.Flashlights = {newlight}

			table.insert(ARC9.FlashlightPile, {
				Weapon = self,
				ProjectedTexture = l
			})
		else
			local br = atttbl.FlashlightBrightness or 3
			self.Flashlights[1].br = self.Flashlights[1].br + br
			self.Flashlights[1].light:SetBrightness(self.Flashlights[1].br)
			self.Flashlights[1].light:Update()
		end

		count = count + 1
	end
end

function SWEP:KillFlashlights()
	if !self.Flashlights then return end

	for i, k in ipairs(self.Flashlights) do
		if k.light and k.light:IsValid() then
			k.light:Remove()
		end
	end

	if ARC9.FlashlightPile then
		for i = #ARC9.FlashlightPile, 1, -1 do
			if ARC9.FlashlightPile[i].Weapon == self then
				table.remove(ARC9.FlashlightPile, i)
			end
		end
	end

	self.Flashlights = nil
end

function SWEP:DrawFlashlightsWM()
	local owner = self:GetOwner()
	local lp = LocalPlayer()

	local isotherplayer = owner != lp
	if isotherplayer and !arc9_allflash:GetBool() then return end
	if !isotherplayer and !owner:ShouldDrawLocalPlayer() then return end
	if isotherplayer and lp:IsInRaid() != owner:IsInRaid() then self:KillFlashlights() return end

	if !self.Flashlights then self:CreateFlashlights() end
	if !self.Flashlights then return end

	local wmnotdrawn = self.LastWMDrawn != FrameNumber() and isotherplayer

	local curTime = CurTime()
	local shouldUpdateLight = (lastFlashlightUpdateWM[self] or 0) + FLASHLIGHT_UPDATE_INTERVAL <= curTime
	local shouldRaycast = (lastFlashlightRaycastWM[self] or 0) + FLASHLIGHT_UPDATE_INTERVAL <= curTime

	for i, k in ipairs(self.Flashlights) do
		if !k.light or !k.light:IsValid() then continue end

		local model = (k.slottbl or {}).WModel

		if k.br == 0 then continue end

		local pos, ang

		if wmnotdrawn or !IsValid(model) then
			pos = owner:EyePos() + gunoffset
			ang = owner:EyeAngles()
		else
			pos = model:GetPos()
			ang = model:GetAngles()

			if k.qca then
				local a = model:GetAttachment(k.qca)
				if a then pos, ang = a.Pos, a.Ang end
				ang:RotateAroundAxis(ang:Up(), 90)
			end
		end

		self:DrawLightFlare(pos + fuckingbullshit, ang, k.col, k.br / 9, nil, k.nodotter)

		if shouldRaycast then
			local tr = util.TraceLine({
				start = pos,
				endpos = pos + ang:Forward() * 16,
				mask = MASK_OPAQUE,
				filter = lp,
			})

			if tr.Fraction < 1 then
				local tr2 = util.TraceLine({
					start = pos,
					endpos = pos - ang:Forward() * 16,
					mask = MASK_OPAQUE,
					filter = lp,
				})

				pos = pos + -ang:Forward() * 16 * math.min(1 - tr.Fraction, tr2.Fraction)
			else
				pos = tr.HitPos
			end
			lastFlashlightRaycastWM[self] = curTime
		else
			if k.lastPos:DistToSqr(pos) > 0.1 then
				pos = k.lastPos
			end
		end

		if shouldUpdateLight then
			k.light:SetNearZ(4)
			k.light:SetPos(pos)
			k.light:SetAngles(ang)
			k.light:Update()
			k.lastPos = Vector(pos)
			k.lastAng = Angle(ang)
			lastFlashlightUpdateWM[self] = curTime
		end

		break
	end
end

function SWEP:DrawFlashlightsVM()
	local owner = self:GetOwner()
	local lp = LocalPlayer()
	if !IsValid(owner) then return end
	if owner != lp then return end

	if !self.Flashlights then self:CreateFlashlights() end
	if !self.Flashlights then return end

	local eyepos = owner:EyePos()

	for i, k in ipairs(self.Flashlights) do
		if !k.light or !k.light:IsValid() then continue end

		local model = (k.slottbl or {}).VModel

		if !IsValid(model) then continue end
		if k.br == 0 then continue end

		local pos, ang
		pos = model:GetPos()
		ang = model:GetAngles()

		if k.qca then
			local a = model:GetAttachment(k.qca)

			if a then
				pos, ang = a.Pos, a.Ang
			else
				ang:RotateAroundAxis(ang:Up(), -90)
			end
		end

		self:DrawLightFlare(pos, ang, k.col, k.br / 9, true, k.nodotter, -ang:Right())

		if k.qca then ang:RotateAroundAxis(ang:Up(), 90) end

		local tr = util.TraceLine({
			start = eyepos,
			endpos = eyepos - -ang:Forward() * 128,
			mask = MASK_OPAQUE,
			filter = lp,
		})

		if tr.Fraction < 1 then
			local tr2 = util.TraceLine({
				start = eyepos,
				endpos = eyepos + -ang:Forward() * 128,
				mask = MASK_OPAQUE,
				filter = lp,
			})

			pos = pos + -ang:Forward() * 32 * math.min(1 - tr.Fraction, tr2.Fraction)
		end

		k.light:SetNearZ(4)
		k.light:SetPos(pos)
		k.light:SetAngles(ang)
		k.light:Update()
		k.lastPos = Vector(pos)
		k.lastAng = Angle(ang)

		break
	end
end

function SWEP:DrawLightFlare(pos, ang, col, size, vm, nodotter, dir)
	col = col or badcolor
	size = size

	local lp, owner = LocalPlayer(), self:GetOwner()
	if !vm and lp == owner and !lp:ShouldDrawLocalPlayer() then return end
	if lp != owner and lp:IsInRaid() != owner:IsInRaid() then return end

	dir = dir or ang:Forward()
	local diff = EyePos() - pos
	local diffLength = diff:Length()

	if diffLength > 2048 then return end

	local diffNorm = diff:GetNormalized()

	local dot = -dir:Dot(EyeAngles():Forward())
	local dot2 = dir:Dot(diffNorm)
	dot = (dot + dot2) / 2

	if nodotter then dot, dot2 = 1, 1 end
	if dot < 0 then return end

	dot = dot ^ 4
	local tr = util.QuickTrace(pos, diff, {owner, lp, lp:GetViewEntity()})
	local distanceScale = math.Clamp(1 - diffLength / 2048, 0, 1)
	local s = dot * 2048 * distanceScale * math.Rand(0.98, 1.02) * size

	if vm or tr.Fraction == 1 then
		s = ScreenScale(s)
		local toscreen = pos:ToScreen()
		cam.Start2D()
			surface.SetMaterial(flaremat)
			surface.SetDrawColor(col, 128)
			surface.DrawTexturedRect(toscreen.x - s / 2, toscreen.y - s / 2, s, s)
		cam.End2D()

		if !vm and size > 0.1 then
			local rad = 128 * size * dot2
			local colCopy = Color(col.r, col.g, col.b, 50 + size * 205)
			local spritePos = pos + ang:Forward() * 2 + diffNorm * (2 + 14 * size)

			render.SetMaterial(flaremat)
			render.DrawSprite(spritePos, rad, rad, colCopy)
		end
	end
end
