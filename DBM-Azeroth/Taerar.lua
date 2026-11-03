local mod	= DBM:NewMod("TaerarVanilla", "DBM-Azeroth")
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:DisableHardcodedOptions()
if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod:SetCreatureID(235197)
	mod:SetEncounterID(3113)--Sod Encounter ID
	mod:RegisterCombat("combat")
else
	mod:SetCreatureID(14890)--121911 TW ID, 14890 classic ID
	mod:RegisterCombat("combat_yell", L.Pull)
end

mod:EnableWBEngageSync()--Enable syncing engage in outdoors
if DBM:IsRestricted() then
	mod:SetModelID(15363)
else

	mod:RegisterEventsInCombat(
		"SPELL_CAST_START 22686",
		"SPELL_CAST_SUCCESS 24813 24814 24818",
		"SPELL_AURA_APPLIED 24818",
		"SPELL_AURA_APPLIED_DOSE 24818"
	)

	local warnNoxiousBreath			= mod:NewStackAnnounce(24818, 2, nil, "Tank", 2)
	local warningBellowingRoar		= mod:NewCastAnnounce(22686, 2)

	local specWarnSleepingFog		= mod:NewSpecialWarningDodge(24814, nil, nil, nil, 2, 2, nil, nil, "watchstep")

	local timerNoxiousBreathCD		= mod:NewVarTimer("v9.7-11.2", 24818, nil, "Tank", nil, 5, nil, DBM_COMMON_L.TANK_ICON)
	local timerBellowingRoarCD		= mod:NewVarTimer("v31.2-42.2", 22686, nil, nil, nil, 2)
	local timerSleepingFogCD		= mod:NewVarTimer("v60.2-60.3", 24814, nil, nil, nil, 3)

	function mod:OnCombatStart(_, yellTriggered)
		if yellTriggered then
			timerNoxiousBreathCD:Start(15.4)
			timerBellowingRoarCD:Start(33.3)
			timerSleepingFogCD:Start(36.1)
		end
	end

	function mod:SPELL_CAST_START(args)
		if args:IsSpell(22686) then
			warningBellowingRoar:Show()
			timerBellowingRoarCD:Start()
		end
	end

	function mod:SPELL_CAST_SUCCESS(args)
		if args:IsSpell(24818) then
			timerNoxiousBreathCD:Start()
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
