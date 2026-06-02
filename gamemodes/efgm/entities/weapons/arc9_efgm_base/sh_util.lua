local ENTITY = FindMetaTable("Entity")
local entityEmitSound = ENTITY.EmitSound

function SWEP:PlayTranslatedSound(soundtab)
	soundtab = self:RunHook("HookP_TranslateSound", soundtab) or soundtab

	if soundtab and soundtab.sound then
		local pitch = soundtab.pitch

		if istable(pitch) then
			pitch = math.random(pitch[1], pitch[2])
		end

		local cfilter = nil
		local owner = self:GetOwner()
		if SERVER and !sp and IsValid(owner) and owner:IsPlayer() then
			if !owner:IsInRaid() then
				cfilter = CRF[1]
			else -- in a raid
				cfilter = CRF[2]
			end
		end

		entityEmitSound(self,
			soundtab.sound,
			soundtab.level,
			pitch,
			soundtab.volume,
			soundtab.channel,
			soundtab.flags,
			soundtab.dsp,
			cfilter
		)
	end
end
