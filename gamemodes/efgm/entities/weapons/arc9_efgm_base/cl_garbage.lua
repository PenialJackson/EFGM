local arc9_allflash = GetConVar("arc9_allflash")
hook.Add("PostDrawEffects", "ARC9_CleanFlashlights", function()
	local newflashlightpile = {}

	for _, k in ipairs(ARC9.FlashlightPile) do
		if IsValid(k.Weapon) then
			local owner = k.Weapon:GetOwner()
			if IsValid(owner) and owner:IsPlayer() and owner:GetActiveWeapon() == k.Weapon and (arc9_allflash:GetBool() or owner == LocalPlayer()) then
				table.insert(newflashlightpile, k)
				continue
			end
		end

		if IsValid(k.ProjectedTexture) then
			k.ProjectedTexture:Remove()
		end
	end

	ARC9.FlashlightPile = newflashlightpile
end)
