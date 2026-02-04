EFGM = {}

GM.Name = "EFGM"
GM.Author = "Penial, Portanator"
GM.Email = "kind programmer spreads christmas cheer through phone calls :blush:"
GM.Website = "https://github.com/PenialJackson/EFGM"

if !ConVarExists("efgm_derivesbox") then CreateConVar("efgm_derivesbox", "0", FCVAR_REPLICATED + FCVAR_NOTIFY, "Hooks the sandbox gamemode into EFGM, allowing for things like the spawn menu to be accessed. Used for development purposes", 0, 1) end
if !ConVarExists("efgm_oneshotheadshot") then CreateConVar("efgm_oneshotheadshot", "1", FCVAR_REPLICATED + FCVAR_NOTIFY, "Self explanitory", 0, 1) end

if CLIENT then
	CreateClientConVar("efgm_music", 1, true, false, "Enable/disable the music", 0, 1)
	CreateClientConVar("efgm_musicvolume", 1, true, false, "Increase or lower the volume of the music", 0, 2)
	CreateClientConVar("efgm_hud_enable", 1, true, false, "Adjust the visibility of the user interface", 0, 1)
	CreateClientConVar("efgm_hud_scale", 1, true, false, "Adjust the scale for all user interface items", 0.5, 2)
	CreateClientConVar("efgm_hud_padding", 0, true, false, "Adjust the horizontal padding for all user interface items", 0, 100)
	CreateClientConVar("efgm_menu_parallax", 1, true, false, "Adjust the main menu parallax/jiggle when moving your cursor", 0, 1)
	CreateClientConVar("efgm_menu_scalingmethod", 0, true, false, "Adjust the method at which the menu positions itself after scaling", 0, 1)
	CreateClientConVar("efgm_menu_deleteprompt", 1, true, false, "Adjust if a confirmation prompt appears when deleting an item", 0, 1)
	CreateClientConVar("efgm_menu_sellprompt_single", 1, true, false, "Adjust if a confirmation prompt appears when selling a single item", 0, 1)
	CreateClientConVar("efgm_menu_sellprompt_stacked", 1, true, false, "Adjust if a confirmation prompt appears when selling a single item", 0, 1)
	CreateClientConVar("efgm_menu_search_automatic", 1, true, false, "Adjust if inventory search boxes automatically begin searching on text change, or if it requires the enter key to be pressed to search", 0, 1)
	CreateClientConVar("efgm_menu_closeonhit", 1, true, false, "Determines if your menu automatically closes upon taking damage", 0, 1)
	CreateClientConVar("efgm_menu_savetab_hideout", 1, true, false, "Determines if your menu saves the previous tab while in the hideout", 0, 1)
	CreateClientConVar("efgm_menu_savetab_raid", 0, true, false, "Determines if your menu saves the previous tab while in a raid", 0, 1)
	CreateClientConVar("efgm_visuals_adsfov", 1, true, false, "Adjust if aiming down sights affects your cameras field of view", 0, 1)
	CreateClientConVar("efgm_visuals_highqualimpactfx", 1, true, false, "Adjust the quality of the bullets impact effects", 0, 1)
	CreateClientConVar("efgm_visuals_highqualflashlight", 0, true, false, "Adjust the quality of the players own flashlight, does not affect the flashlight of others", 0, 1)
	CreateClientConVar("efgm_visuals_headbob", 1, true, false, "Adjust the bobbing motion of the players view while moving", 0, 1)
	CreateClientConVar("efgm_visuals_lensflare", 1, true, false, "Adjust the lens flare when looking near or directly at the sun", 0, 1)
	CreateClientConVar("efgm_visuals_selfshadow", 1, true, false, "Adjust if your own players shadow renders", 0, 1)
	CreateClientConVar("efgm_visuals_interactableglow", 1, true, false, "Adjust if interactable objects should render a glow outline", 0, 1)
	CreateClientConVar("efgm_controls_toggleduck", 0, true, true, "Adjust if player crouches are hold or toggle", 0, 1)
	CreateClientConVar("efgm_controls_togglelean", 1, true, true, "Adjust if player leans are hold or toggle", 0, 1)
	CreateClientConVar("efgm_faction_preference", 0, true, true, "Determines the faction that your playermodel is based on (0 = None, 1 = USEC, 2 = BEAR)", 0, 2)
	CreateClientConVar("efgm_privacy_invites_squad", 2, true, true, "Determines who you receive squad invites from (2 = Everyone, 1 = Steam Friends, 0 = Nobody)", 0, 2)
	CreateClientConVar("efgm_privacy_invites_duel", 2, true, true, "Determines who you receive duel invites from (2 = Everyone, 1 = Steam Friends, 0 = Nobody)", 0, 2)
	CreateClientConVar("efgm_privacy_invites_blocked", 0, true, true, "Determines if a player that you have blocked on steam can send you an invite", 0, 1)
	CreateClientConVar("efgm_infil_nearend_block", 1, true, true, "Determines if you are able to enter a raid when it is about to end", 0, 1)
	CreateClientConVar("efgm_infil_nearend_limit", 60, true, true, "Determines the seconds remaining in the raid where you will no longer be able to enter said raid if near end infils are disabled", 30, 180)
end

if GetConVar("efgm_derivesbox"):GetInt() == 1 then DeriveGamemode("sandbox") end -- this will enable the spawn menu as well as countless other things that you do not want users to have access too, please leave this off unless you know what you are doing