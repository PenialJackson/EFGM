EFGM = EFGM or {}

GM.Name = "EFGM"
GM.Author = "Penial, Portanator"
GM.Email = "kind programmer spreads christmas cheer through phone calls :blush:"
GM.Website = "https://github.com/PenialJackson/EFGM"

local debugMode = CreateConVar("efgm_derivesbox", "0", FCVAR_ARCHIVE + FCVAR_REPLICATED + FCVAR_NOTIFY, "Hooks the sandbox gamemode into EFGM, allowing for things like the spawn menu to be accessed. Used for development purposes", 0, 1)

if debugMode:GetBool() then
	DeriveGamemode("sandbox")
end
