local mod	= DBM:NewMod("LethonVanilla", "DBM-Azeroth")
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
--mod:SetModelID(17887)

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod:SetCreatureID(235180)
	mod:SetEncounterID(3112)--Sod Encounter ID
	mod:RegisterCombat("combat")
else
	mod:SetCreatureID(14888)--121821 TW ID, 14888 classic ID
	mod:RegisterCombat("combat_yell", L.Pull)
end

mod:EnableWBEngageSync()--Enable syncing engage in outdoors


mod:RegisterEventsInCombat(
--	"SPELL_CAST_START 24818 243468",
	"SPELL_CAST_SUCCESS 24814 24813",
	"SPELL_AURA_APPLIED 24818",
	"SPELL_AURA_APPLIED_DOSE 24818"
)

--TODO, maybe taunt special warnings for classic version when it matters more.
--TODO, needs valid spellIds for Classic
local warnNoxiousBreath			= mod:NewStackAnnounce(24818, 2, nil, "Tank", 2)

local specWarnSleepingFog		= mod:NewSpecialWarningDodge(24814, nil, nil, nil, 2, 2)
--local specWarnShadowBoltWhirl	= mod:NewSpecialWarningDodge(243468, nil, nil, nil, 2, 2)

--local timerNoxiousBreathCD		= mod:NewCDTimer(18.3, 24818, nil, "Tank", nil, 5, nil, DBM_COMMON_L.TANK_ICON)--Iffy
local timerSleepingFogCD		= mod:NewCDTimer(16.8, 24814, nil, nil, nil, 3)
--local timerShadowBoltWhirlCD	= mod:NewCDTimer(15.8, 243468, nil, nil, nil, 3)

--mod:AddReadyCheckOption(48620, false)

function mod:OnCombatStart(delay, yellTriggered)
	if yellTriggered then
		--timerNoxiousBreathCD:Start(11.9-delay)
		timerSleepingFogCD:Start(18.4-delay)
	end
end

--[[
function mod:SPELL_CAST_START(args)
	if args.spellId == 24818 then
		--timerNoxiousBreathCD:Start()
	elseif args.spellId == 243468 and self:AntiSpam(5, 1) then
		--specWarnShadowBoltWhirl:Show()
		--specWarnShadowBoltWhirl:Play("watchorb")
		--timerShadowBoltWhirlCD:Start()
	end
end
--]]

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(24814, 24813) then
		if self:AntiSpam(600, "SpecWarnFog") then -- It's more active than inactive, only warn for the initial one
			specWarnSleepingFog:Show()
			specWarnSleepingFog:Play("watchstep")
		end
		timerSleepingFogCD:Start()
	--elseif args.spellId == 24818 and self:AntiSpam(3, 1) then
		--timerNoxiousBreathCD
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
