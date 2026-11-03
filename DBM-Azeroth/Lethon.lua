local mod	= DBM:NewMod("LethonVanilla", "DBM-Azeroth")
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:DisableHardcodedOptions()

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod:SetCreatureID(235180)
	mod:SetEncounterID(3112)--Sod Encounter ID
	mod:RegisterCombat("combat")
else
	mod:SetCreatureID(14888)--121821 TW ID, 14888 classic ID
	mod:RegisterCombat("combat_yell", L.Pull)
end

mod:EnableWBEngageSync()--Enable syncing engage in outdoors
if DBM:IsRestricted() then
	mod:SetModelID(15365)
else

	mod:RegisterEventsInCombat(
		"SPELL_CAST_SUCCESS 24811 24813 24814 24818",
		"SPELL_AURA_APPLIED 24818",
		"SPELL_AURA_APPLIED_DOSE 24818"
	)

	local warnNoxiousBreath			= mod:NewStackAnnounce(24818, 2, nil, "Tank", 2)
	local specWarnDrainSoul			= mod:NewSpecialWarningAdds(24811, "Dps", nil, nil, 2, 2, nil, nil, "killmob")
	local specWarnSleepingFog		= mod:NewSpecialWarningDodge(24814, nil, nil, nil, 2, 2, nil, nil, "watchstep")

	local timerNoxiousBreathCD		= mod:NewVarTimer("v9.6-11.5", 24818, nil, "Tank", nil, 5, nil, DBM_COMMON_L.TANK_ICON)
	local timerSleepingFogCD		= mod:NewVarTimer("v60.0-61.5", 24814, nil, nil, nil, 3)

	function mod:OnCombatStart(_, yellTriggered)
		if yellTriggered then
			timerNoxiousBreathCD:Start(11)
			timerSleepingFogCD:Start(30.9)
		end
	end

	function mod:SPELL_CAST_SUCCESS(args)
		if args:IsSpell(24818) then
			timerNoxiousBreathCD:Start()
		elseif args:IsSpell(24811) then
			specWarnDrainSoul:Show()
			specWarnDrainSoul:Play("killmob")
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
			if self:IsTanking(nil, nil, args.destName, nil, args.sourceGUID) then--Basically, HAS to be bosses current target
				warnNoxiousBreath:Show(args.destName, args.amount or 1)
			end
		end
	end
	mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED
end
