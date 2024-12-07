local mod	= DBM:NewMod("TaerarVanilla", "DBM-Azeroth")
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod:SetCreatureID(235197)
else
	mod:SetCreatureID(14890)--121911 TW ID, 14890 classic ID
end
--mod:SetModelID(17887)
mod:EnableWBEngageSync()--Enable syncing engage in outdoors

mod:RegisterCombat("combat_yell", L.Pull)

mod:SetEncounterID(3113)--Sod Encounter ID

mod:RegisterEventsInCombat(
--	"SPELL_CAST_START 24818 243401",
	"SPELL_CAST_SUCCESS 24814 24813",
	"SPELL_AURA_APPLIED 24818",
	"SPELL_AURA_APPLIED_DOSE 24818"
)

--TODO, maybe taunt special warnings for classic version when it matters more.
--TODO, needs valid spellIds for classic
local warnNoxiousBreath			= mod:NewStackAnnounce(24818, 2, nil, "Tank", 2)
--local warningBellowingRoar		= mod:NewSpellAnnounce(243661, 3)

local specWarnSleepingFog		= mod:NewSpecialWarningDodge(24814, nil, nil, nil, 2, 2)

--local timerNoxiousBreathCD		= mod:NewCDTimer(19.4, 24818, nil, "Tank", nil, 5, nil, DBM_COMMON_L.TANK_ICON)--Iffy
local timerSleepingFogCD		= mod:NewCDTimer(21.9, 24814, nil, nil, nil, 3)
--local timerBellowingRoarCD		= mod:NewCDTimer(7.2, 243661, nil, nil, nil, 2)

--mod:AddReadyCheckOption(48620, false)

function mod:OnCombatStart(delay, yellTriggered)
	if yellTriggered then
		--timerBellowingRoarCD:Start(10.5-delay)
		--timerNoxiousBreathCD:Start(14.3-delay)
		timerSleepingFogCD:Start(21.5-delay)
	end
end

--[[
function mod:SPELL_CAST_START(args)
	if args.spellId == 243661 and self:AntiSpam(3, 1) then
		warningBellowingRoar:Show()
		timerBellowingRoarCD:Start()
	elseif args.spellId == 24818 and self:AntiSpam(3, 2) then
		timerNoxiousBreathCD:Start()
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
