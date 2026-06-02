EFGM.CONFIG = {}

-- player
EFGM.CONFIG.PLAYER = {}
EFGM.CONFIG.PLAYER.MAXHEALTH = 100
EFGM.CONFIG.PLAYER.HEALTHREGENTICK = 1
EFGM.CONFIG.PLAYER.HEALTHREGENAMOUNT = 1
EFGM.CONFIG.PLAYER.HEALTHREGENCOOLDOWN = 20
EFGM.CONFIG.PLAYER.GRAVITY = .72
EFGM.CONFIG.PLAYER.WALKSPEED = 135
EFGM.CONFIG.PLAYER.RUNSPEED = 220
EFGM.CONFIG.PLAYER.SLOWWALKSPEED = 95
EFGM.CONFIG.PLAYER.CROUCHWALKSPEEDMULTIPLIER = 0.46
EFGM.CONFIG.PLAYER.JUMPHEIGHT = 140
EFGM.CONFIG.PLAYER.CLIMBSPEED = 90
EFGM.CONFIG.PLAYER.CROUCHENTERTIME = 0.4
EFGM.CONFIG.PLAYER.CROUCHEXITTIME = 0.46
EFGM.CONFIG.PLAYER.UNDERWEIGHTLIMIT = 30

-- damage multipliers
EFGM.CONFIG.DAMAGE.PISTOL = 1
EFGM.CONFIG.DAMAGE.SHOTGUN = 1
EFGM.CONFIG.DAMAGE.CARBINE = 1
EFGM.CONFIG.DAMAGE.RIFLE = 1
EFGM.CONFIG.DAMAGE.BIGRIFLE = 1
EFGM.CONFIG.DAMAGE.HEAVY = 1
EFGM.CONFIG.DAMAGE.MASSIVE = 1
EFGM.CONFIG.DAMAGE.MELEE = 1
EFGM.CONFIG.DAMAGE.EXPLOSIVE = 1

-- weapons
EFGM.CONFIG.WEAPONS.RANGE = 160
EFGM.CONFIG.WEAPONS.SHOTGUNRANGE = 40
EFGM.CONFIG.WEAPONS.ERGONOMICSMULTIPLIER = 1
EFGM.CONFIG.WEAPONS.FLASHBANGTIMEMULTIPLIER = 1

-- raid
EFGM.CONFIG.RAID = {}
EFGM.CONFIG.RAID.MINIMUMPLAYERS = 3

-- squads
EFGM.CONFIG.SQUAD = {}
EFGM.CONFIG.SQUAD.MAXPLAYERS = 4

-- timers
EFGM.CONFIG.TIMERS = {}
EFGM.CONFIG.TIMERS.RESPAWN = 7 -- max 255s
EFGM.CONFIG.TIMERS.HIDEOUTRESPAWN = 3 -- max 255s
EFGM.CONFIG.TIMERS.INVITECOOLDOWN = 5

-- market
EFGM.CONFIG.MARKET = {}
EFGM.CONFIG.MARKET.SELLMULTIPLIER = 0.5

EFGM.CONFIG.LEVELARRAY = {}
EFGM.CONFIG.LEVELARRAY[1] = 350
EFGM.CONFIG.LEVELARRAY[48] = "max"
for i = 2, 47 do
	EFGM.CONFIG.LEVELARRAY[i] = math.Round((i * 350) * (1 + (i * 0.061)), 0)
end

-- override ARC9 config
ARC9.NoHUD = true
ARC9.NoTPIK = false

-- server convars
if SERVER then
	-- modifiers
	RunConsoleCommand("arc9_mod_adstime", "0.75")
	RunConsoleCommand("arc9_mod_bodydamagecancel", "1")
	RunConsoleCommand("arc9_mod_damage", "1")
	RunConsoleCommand("arc9_mod_damagerand", "1")
	RunConsoleCommand("arc9_mod_headshotdamage", "5")
	RunConsoleCommand("arc9_mod_malfunction", "0.15")
	RunConsoleCommand("arc9_mod_muzzlevelocity", "1.2")
	RunConsoleCommand("arc9_mod_recoil", "0.75")
	RunConsoleCommand("arc9_mod_rpm", "1")
	RunConsoleCommand("arc9_mod_spread", "1")
	RunConsoleCommand("arc9_mod_dispersionspread", "1")
	RunConsoleCommand("arc9_mod_sprinttime", "1")
	RunConsoleCommand("arc9_mod_visualrecoil", "0.75")

	-- mechanics
	RunConsoleCommand("arc9_infinite_ammo", "0")
	RunConsoleCommand("arc9_mult_defaultammo", "0")
	RunConsoleCommand("arc9_realrecoil", "1")
	RunConsoleCommand("arc9_mod_sway", "1")
	RunConsoleCommand("arc9_mod_freeaim", "1")
	RunConsoleCommand("arc9_breath_slowmo", "0")
	RunConsoleCommand("arc9_manualbolt", "0")
	RunConsoleCommand("arc9_never_ready", "0")
	RunConsoleCommand("arc9_mod_peek", "0")
	RunConsoleCommand("arc9_eft_nontpik_mode", "1")
	RunConsoleCommand("arc9_equipment_generate_ammo", "0")

	-- physics
	RunConsoleCommand("arc9_bullet_physics", "1")
	RunConsoleCommand("arc9_bullet_physics_shotguns", "1")
	RunConsoleCommand("arc9_bullet_gravity", "1.6")
	RunConsoleCommand("arc9_bullet_drag", "1")
	RunConsoleCommand("arc9_ricochet", "0")
	RunConsoleCommand("arc9_mod_penetration", "1")
	RunConsoleCommand("arc9_bullet_lifetime", "5")
	RunConsoleCommand("arc9_bullet_imaginary", "0")

	-- hud
	RunConsoleCommand("arc9_truenames_enforced", "1")
	RunConsoleCommand("arc9_truenames_default", "1")
	RunConsoleCommand("arc9_hud_force_disable", "1")

	-- attachments
	RunConsoleCommand("arc9_atts_nocustomize", "0") -- why would anyone do this
	RunConsoleCommand("arc9_atts_generate_entities", "0")
	RunConsoleCommand("arc9_atts_max", "100")
	RunConsoleCommand("arc9_atts_lock", "0")
	RunConsoleCommand("arc9_atts_loseondie", "1")
	RunConsoleCommand("arc9_free_atts", !GetConVar("efgm_derivesbox"):GetBool() and "0" or "1")

	-- caching
	RunConsoleCommand("arc9_precache_allsounds_onstartup", "0")
	RunConsoleCommand("arc9_precache_attsmodels_onstartup", "0")
	RunConsoleCommand("arc9_precache_wepmodels_onstartup", "0")
end

-- client convars
if CLIENT then
	-- controls
	RunConsoleCommand("arc9_autoreload", "0")
	RunConsoleCommand("arc9_togglepeek", "0")
	RunConsoleCommand("arc9_togglepeek_reset", "0")
	RunConsoleCommand("arc9_togglebreath", "0")

	-- hud
	RunConsoleCommand("arc9_cust_hints", "1")
	RunConsoleCommand("arc9_cust_tips", "0")
	RunConsoleCommand("arc9_hud_color_r", "255")
	RunConsoleCommand("arc9_hud_color_g", "255")
	RunConsoleCommand("arc9_hud_color_b", "255")
	RunConsoleCommand("arc9_hud_lightmode", "0")

	-- hints
	RunConsoleCommand("arc9_hud_hints", "0")
	RunConsoleCommand("arc9_center_reload_enable", "0")
	RunConsoleCommand("arc9_center_bipod", "1")
	RunConsoleCommand("arc9_center_jam", "1")
	RunConsoleCommand("arc9_center_firemode", "1")
	RunConsoleCommand("arc9_center_firemode_time", "1")
	RunConsoleCommand("arc9_center_overheat", "0")

	-- vm
	RunConsoleCommand("arc9_vm_bobstyle", "-1")

	-- vb
	RunConsoleCommand("arc9_vm_cambob", "1")
	RunConsoleCommand("arc9_vm_cambobwalk", "1")
	RunConsoleCommand("arc9_vm_cambobintensity", "0.66")
	RunConsoleCommand("arc9_vm_camrollstrength", "0.66")
	RunConsoleCommand("arc9_vm_camstrength", "0.66")
	RunConsoleCommand("arc9_vm_addx", "0")
	RunConsoleCommand("arc9_vm_addy", "0")
	RunConsoleCommand("arc9_vm_addz", "0")

	-- true names
	RunConsoleCommand("arc9_truenames", "1")

	-- performance
	RunConsoleCommand("arc9_cheapscopes", "0")
	RunConsoleCommand("arc9_allflash", "1")

	-- fx
	RunConsoleCommand("arc9_cust_blur", "1")
	RunConsoleCommand("arc9_fx_reloadblur", "0")
	RunConsoleCommand("arc9_fx_animblur", "0")
	RunConsoleCommand("arc9_fx_rtblur", "0")
	RunConsoleCommand("arc9_fx_adsblur_new", "0")
	RunConsoleCommand("arc9_fx_rtvm", "1")
	RunConsoleCommand("arc9_eject_fx", "0")
	RunConsoleCommand("arc9_eject_time", "0")
	RunConsoleCommand("arc9_muzzle_light", "1")
	RunConsoleCommand("arc9_muzzle_others", "1")

	-- optics/crosshair
	RunConsoleCommand("arc9_cross_a", "0")
	RunConsoleCommand("arc9_cross_size_mult", "0")

	-- attachments
	RunConsoleCommand("arc9_autosave", "0")

	-- font
	RunConsoleCommand("arc9_font", "Bender")

	-- visuals
	RunConsoleCommand("cl_new_impact_effects", GetConVar("efgm_visuals_highqualimpactfx"):GetInt())
	cvars.AddChangeCallback("efgm_visuals_highqualimpactfx", function(convar_name, value_old, value_new)
		if value_new == "1" then
			RunConsoleCommand("cl_new_impact_effects", "1")
		else
			RunConsoleCommand("cl_new_impact_effects", "0")
		end
	end)
end
