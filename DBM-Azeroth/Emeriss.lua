local mod	= DBM:NewMod("EmerissVanilla", "DBM-Azeroth")
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:DisableHardcodedOptions()

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod:SetCreatureID(234880)
	mod:SetEncounterID(3111)--Sod Encounter ID
	mod:RegisterCombat("combat")
else
	mod:SetCreatureID(14889)--121913 TW ID, 14889 classic ID
	mod:RegisterCombat("combat_yell", L.Pull)
end

mod:EnableWBEngageSync()--Enable syncing engage in outdoors
if DBM:IsRestricted() then
	mod:SetModelID(15366)
else

	mod:RegisterEventsInCombat(
		"SPELL_CAST_SUCCESS 24813 24814 24818 24910 24928",
		"SPELL_AURA_APPLIED 24818 24928",
		"SPELL_AURA_REMOVED 24928",
		"SPELL_AURA_APPLIED_DOSE 24818"
	)

	local warnNoxiousBreath			= mod:NewStackAnnounce(24818, 2, nil, "Tank", 2)
	local warnVolatileInfection		= mod:NewTargetNoFilterAnnounce(24928, 2)

	local specWarnCorruption		= mod:NewSpecialWarningSpell(24910, "Healer", nil, nil, 1, 2, nil, nil, "healall")
	local specWarnSleepingFog		= mod:NewSpecialWarningDodge(24814, nil, nil, nil, 2, 2, nil, nil, "watchstep")
	local specWarnVolatileInfection	= mod:NewSpecialWarningYou(24928, nil, nil, nil, 1, 2, nil, nil, "targetyou")

	local timerNoxiousBreathCD		= mod:NewVarTimer("v9.6-11.4", 24818, nil, "Tank", nil, 5, nil, DBM_COMMON_L.TANK_ICON)
	local timerVolatileInfectionCD	= mod:NewVarTimer("v6.5-19.5", 24928, nil, "RemoveDisease", nil, 3, nil, DBM_COMMON_L.DISEASE_ICON)
	local timerSleepingFogCD		= mod:NewVarTimer("v60.0-61.6", 24814, nil, nil, nil, 3)

	mod:AddSetIconOption("SetIconOnVolatileInfection", 24928, true, 0, {8})

	function mod:OnCombatStart(_, yellTriggered)
		if yellTriggered then
			timerNoxiousBreathCD:Start(11.0)
			timerVolatileInfectionCD:Start(9.4)
			timerSleepingFogCD:Start(30.4)
		end
	end

	function mod:SPELL_CAST_SUCCESS(args)
		if args:IsSpell(24818) then
			timerNoxiousBreathCD:Start()
		elseif args:IsSpell(24928) then
			timerVolatileInfectionCD:Start()
		elseif args:IsSpell(24910) then
			specWarnCorruption:Show()
			specWarnCorruption:Play("healall")
		elseif args:IsSpell(24813, 24814) then
			if self:AntiSpam(600, "SpecWarnFog") then -- It's more active than inactive, only warn for the initial one
				specWarnSleepingFog:Show()
				specWarnSleepingFog:Play("watchstep")
			end
			timerSleepingFogCD:Start()
		end
	end

	function mod:SPELL_AURA_APPLIED(args)
		if args:IsSpell(24818) then
			if self:IsTanking(nil, nil, args.destName, nil, args.sourceGUID) then
				warnNoxiousBreath:Show(args.destName, args.amount or 1)
			end
		elseif args:IsSpell(24928) then
			if args:IsPlayer() then
				specWarnVolatileInfection:Show()
				specWarnVolatileInfection:Play("targetyou")
			else
				warnVolatileInfection:Show(args.destName)
			end
			if self.Options.SetIconOnVolatileInfection then
				self:SetIcon(args.destName, 8)
			end
		end
	end

	function mod:SPELL_AURA_REMOVED(args)
		if args:IsSpell(24928) then
			if self.Options.SetIconOnVolatileInfection then
				self:SetIcon(args.destName, 0)
			end
		end
	end
	mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED
end
