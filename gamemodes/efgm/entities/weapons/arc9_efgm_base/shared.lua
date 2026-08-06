AddCSLuaFile()
SWEP.Base = "arc9_base"
SWEP.Spawnable = false
SWEP.Category = "ARC9 - Escape From Garry's Mod"
SWEP.AdminOnly = false
SWEP.UseHands = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = "EFGM Weapon Subbase"
SWEP.Description = [[No description!]]

SWEP.Credits = {
	[ARC9:GetPhrase("eft_trivia_author") .. "1"] = "Penial",
    [ARC9:GetPhrase("eft_trivia_author") .. "2"] = "Darsu",
    [ARC9:GetPhrase("eft_trivia_assets") .. "3"] = "Battlestate Games LTD",
}

SWEP.StandardPresets = false

-- SWEP.WorldModel = "models/weapons/w_smg_mp5.mdl"
-- SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_mp5.mdl"
SWEP.DefaultBodygroups = "000000000000000"
SWEP.ViewModelFOVBase = 62
SWEP.MirrorVMWM = true

------------------------- |||           Offsets            ||| -------------------------

SWEP.WorldModelOffset = {
    Pos = Vector(-8.3, 5.5, -6),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-4, 4, -4), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

-- SWEP.IronSights = {
--     Pos = Vector(-4.27, -4.5, 1.77),
--     Ang = Angle(0, 0.05, 0),
--     Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
--     Magnification = 1.1,
--     ViewModelFOV = 54
-- }

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2 -- Non TPIK

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "slam"

SWEP.LaserAlwaysOnTargetInPeek = true
SWEP.LaserCorrectBySightAng = true

SWEP.ActivePos = Vector(-0.7, -3.1, -.35)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(40, 10, -40)
SWEP.SprintPos = Vector(5, -6, -1.0)

SWEP.NearWallAng = Angle(0, 55, 0)
SWEP.NearWallPos = Vector(0, 0, -15)

SWEP.CrouchPos = Vector(0, -0.1, -0.4)
SWEP.CrouchAng = Angle(0, 0, -1.5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(18.2, 26, 3.7)
SWEP.CustomizeSnapshotFOV = 95
SWEP.CustomizeRotateAnchor = Vector(18.2, -4.25, -3.7)

SWEP.HolsterPos = Vector(0, 0, 0)
SWEP.HolsterAng = Angle(0, 0, 0)

SWEP.BipodPos = Vector(-1.7, -3.5, 1)
SWEP.BipodAng = Angle(0, 0, 0)

------------------------- |||           EFGM            ||| -------------------------

SWEP.HeadshotDamage = 5

SWEP.RecoilKickPitchMult = 0.5
SWEP.RecoilKickMult = 0.75
SWEP.VisualRecoilRollMult = 1.5
SWEP.VisualRecoilSideMult = 1
SWEP.VisualRecoilUpMult = 1
SWEP.VisualRecoilMult = 3
SWEP.VisualRecoilMultHipFire = 2
SWEP.VisualRecoilSideMultHipFire = 3
SWEP.VisualRecoilRollMultHipFire = 3
SWEP.RecoilRandomSideMult = 1.5
SWEP.RecoilAutoControlMultShooting = 0.05
SWEP.RecoilUpMult = 0.5
SWEP.RecoilAutoControlMultHipFire = 0.75
SWEP.RecoilAutoControlMult = 0.66
SWEP.FreeAimRadiusMult = 1.5
SWEP.SpreadMultSights = 0.5
SWEP.VisualRecoilPunchMult = 2
SWEP.VisualRecoilPunchMultSights = 0.3
SWEP.PhysBulletGravityMult = 0.25

SWEP.TracerNum = 1
SWEP.TracerSize = 1
SWEP.TracerColor = Color(255, 225, 200, 255)
SWEP.TracerEffect = "efgm_tracer"
SWEP.AfterShotEffect = "efgm_aftershoteffect"
SWEP.ShellEffect = "efgm_shelleffect"
SWEP.ShellSmoke = false

SWEP.FireInterruptInspect = true
SWEP.SightsInterruptInspect = true

------------------------- |||           Stats            ||| -------------------------

SWEP.Spread = 99 * ARC9.MOAToAcc
SWEP.SpreadAddHipFire = 0.02
SWEP.SpreadMultMove = 1.5
SWEP.SpreadAddMove = 0.015
SWEP.SpreadHook = ARC9EFT.SpreadBonus
SWEP.SpreadAddHot = 0 -- overheat debuff

SWEP.AimDownSightsTime = 0.33
SWEP.SprintToFireTime = 0.35
SWEP.AimDownSightsTimeHook = ARC9EFT.ErgoHook
SWEP.SprintToFireTimeHook = ARC9EFT.SprintHook
SWEP.AimDownSightsTimeMultShooting = 3

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.8
SWEP.SpeedMultMelee = 1
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1

SWEP.FreeAimRadius = 2
SWEP.FreeAimRadiusSights = 0

SWEP.Sway = 0.25
SWEP.SwayAddMove = 0.25
SWEP.SwayAddMidAir = 1.5
SWEP.SwayMultCrouch = 0.4
SWEP.SwayHook = ARC9EFT.SwayErgoHook

SWEP.RPM = 1
SWEP.RPMMultHot = 1 -- overheat debuff

SWEP.EFTErgo = 0
SWEP.BarrelLength = 36
SWEP.BarrelLengthMult = 0.6
SWEP.Ammo = "ar2"
SWEP.EFTWeight = 1

-- SWEP.Firemodes = {
--     { Mode = -1, PoseParam = 3},
--     { Mode = 1, RPM = 450, PoseParam = 1 },
--     { Mode = 3, PoseParam = 2},
-- }
-- SWEP.RunawayBurst = true -- this is not a good idea, semi autos get fucked, enable per gun

SWEP.ChamberSize = 0 -- no mag
SWEP.ClipSize = 1 -- actual chamber (no mag)
SWEP.ForceDefaultClip = 0 -- Set to force a default amount of ammo this gun can have. Otherwise, this is controlled by console variables.
SWEP.SupplyLimit = 4
SWEP.SecondarySupplyLimit = 0

SWEP.ReloadInSights = true

SWEP.Bash = false
SWEP.PrimaryBash = false

SWEP.Slot = 2

------------------------- |||           Recoil            ||| -------------------------

SWEP.RecoilAutoControlHook = function(self, old) return math.Clamp(old - self:GetRecoilAmount() * 0.1, old - 1, old) end -- less autocontrol over time

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.15 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.RecoilMultHipFire = 1
SWEP.RecoilMultCrouch = 1
SWEP.RecoilUpMultFirstShot = 0.85
SWEP.RecoilUpMultRecoil = 1.2

SWEP.RecoilDissipationRate = 5
SWEP.RecoilAutoControl_DontTryToReturnBack = nil
SWEP.RecoilResetTime = 0.03
SWEP.RecoilFullResetTime = 0.2

SWEP.PhysicalVisualRecoilForce = false

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilMultCrouch = 0.5

SWEP.VisualRecoilDampingConstMultFirstShot = 3
SWEP.EFT_ShotsToSwitchToFullAutoBehaviur = 2

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount, self)
    if !self.EFT_VisualRecoilUp_BURST_SEMI then return up, side, roll, punch end

    local fullauto = math.Clamp(recamount - self.EFT_ShotsToSwitchToFullAutoBehaviur, 0, 3) * 0.33333333
    up = Lerp(fullauto, self.EFT_VisualRecoilUp_BURST_SEMI, up)
    side = Lerp(fullauto, self.EFT_VisualRecoilSide_BURST_SEMI, side)

    if recamount < 2 then
        if self:GetSightAmount() < 0.2 then up = up * 2 end -- only for visual when hipfiring
    end

    if self:GetUBGL() then up = 4 end -- ubgl!

    return up, side, roll, punch
end

SWEP.RecoilKickAffectPitch = true
SWEP.RecoilKickDamping = 10

SWEP.VisualRecoilCenter = Vector(4.28, 19, -3)
SWEP.SubtleVisualRecoil = 0
SWEP.SubtleVisualRecoilDirection = 0
SWEP.SubtleVisualRecoilSpeed = 0

------------------------- |||           Malfunctions            ||| -------------------------

SWEP.Malfunction = true
SWEP.MalfunctionNeverLastShoot = false

SWEP.Overheat = true
SWEP.HeatDissipation = 2.0
SWEP.HeatPerShot = 1
SWEP.HeatLockout = false

------------------------- |||           Minor stuff            ||| -------------------------

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.CamQCA_Mult = 1
SWEP.CamQCA_Mult_ADS = 0.05

SWEP.MuzzleParticle = "muzzleflash_4"
SWEP.AfterShotParticle = false
SWEP.AfterShotParticleHook = function(swep, old)
    if swep:GetProcessedValue("Overheat", true) and swep:GetHeatAmount() > 7 then return "barrel_smoke" end
    return false
end

local minreloadwindow, maxreloadwindow, reloadcooldown = 0.01, 0.2, 0.5

local sp = game.SinglePlayer()

SWEP.SPTacReloadThing = function(self)
    self.EFT_StartedNextTacReload = CurTime() + 5
end

SWEP.Hook_Think_TacReload = function(self)
    if CLIENT and sp then return end -- sounds dont play + previus animtion still playing in mp

    if self.EFT_HasTacReloads then
        if self:GetReloading() and self:Clip1() > 0 and (!self:GetShouldShotgunReload() or self.EFT_HasTacReloadsAlways) and !self:GetUBGL() then
            local ct = CurTime()
            if !self.EFT_StartedReloadTime then self.EFT_StartedReloadTime = ct end
            if ct >= (self.EFT_StartedNextTacReload or 0) and ct >= self.EFT_StartedReloadTime + minreloadwindow and ct <= self.EFT_StartedReloadTime + maxreloadwindow and self:GetOwner():KeyPressed(IN_RELOAD) then
                self:CancelReload()
                self.EFT_StartedTacReload = true
                self.EFT_StartedNextTacReload = ct + reloadcooldown

                if sp then self:CallOnClient("SPTacReloadThing") end
            end
        else
            self.EFT_StartedReloadTime = nil
            self.EFT_StartedTacReload = nil
        end
    end
end

SWEP.CaseEffectQCA = 2
SWEP.ShellScale = 1
SWEP.ShellVelocity = 1
SWEP.ShellCorrectAng = Angle(0, 180, 180)
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x19.mdl"
SWEP.ShellSounds = ARC9EFT.Shells9mm
SWEP.ShellVolume = 0.6

------------------------- |||           Sounds            ||| -------------------------

SWEP.ShootPitchVariation = 0
SWEP.DistantShootVolume = 0.05
SWEP.DistantShootVolumeActual = 0.05

SWEP.FiremodeSound = "" -- we will have own in sound tables
SWEP.ToggleAttSound = "" -- we will have own in sound tables
SWEP.DryFireSound = "" -- we will have own in sound tables

SWEP.EnterBipodSound = false
SWEP.ExitBipodSound = false

SWEP.EnterSightsSound = ARC9EFT.ADSRifle
SWEP.ExitSightsSound = ARC9EFT.ADSRifleOut

SWEP.ShellSounds = ARC9EFT.Shells556

SWEP.SuppressEmptySuffix = false

------------------------- |||           Dropped magazines            ||| -------------------------

SWEP.DropMagazineAmount = 1
SWEP.DropMagazineSounds = ARC9EFT.MagDropPlastic
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineTime = 0.63
SWEP.DropMagazineAng = Angle(-180, 90, 0)
SWEP.DropMagazineVelocity = Vector(0, -10, -30)
SWEP.DropMagazineEffect = "arc9_eft_magdropeffect"

------------------------- |||           Attachments            ||| ----------------------------

SWEP.EFTRequiredAtts = { }

SWEP.EFTSentMissingPartsNotification = 0

function SWEP:HookP_BlockFire()
    for _, flag in ipairs(self.EFTRequiredAtts) do
        if !self:GetValue(flag) then
            if SERVER and self.EFTSentMissingPartsNotification < CurTime() then
                self.EFTSentMissingPartsNotification = CurTime() + 3
                net.Start("arc9eftmissingparts")
                net.Send(self:GetOwner())
            end

            return true
        end
    end
end

function SWEP:Hook_RedPrintName()
    for _, flag in ipairs(self.EFTRequiredAtts) do
        if !self:GetValue(flag) then
            return true
        end
    end
end
