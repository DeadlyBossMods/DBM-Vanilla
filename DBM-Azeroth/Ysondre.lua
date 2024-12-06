local mod	= DBM:NewMod("YsondreVanilla", "DBM-Azeroth")
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod:SetCreatureID(235232)
else
	mod:SetCreatureID(14887)--121912 TW ID, 14887 classic ID
end

--mod:SetModelID(17887)
mod:EnableWBEngageSync()--Enable syncing engage in outdoors

mod:SetEncounterID(3114)--Sod Encounter ID

mod:RegisterCombat("combat_yell", L.Pull)

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 24814 24813 24818 1214136",
	"SPELL_AURA_APPLIED 24818 1214136",
	"SPELL_AURA_APPLIED_DOSE 24818",
	"UNIT_SPELLCAST_SUCCEEDED"
)

--TODO, maybe taunt special warnings for classic version when it matters more.
local warnNoxiousBreath			= mod:NewStackAnnounce(24818, 2, nil, "Tank", 2)
local warningLightningWave		= mod:NewSpellAnnounce(24819, 3)

local specWarnSleepingFog		= mod:NewSpecialWarningDodge(24814, nil, nil, nil, 2, 2)

--local timerNoxiousBreathCD		= mod:NewCDTimer(19.4, 24818, nil, "Tank", nil, 5, nil, DBM_COMMON_L.TANK_ICON)--Iffy
local timerSleepingFogCD		= mod:NewCDTimer(16.0, 24814, nil, nil, nil, 3)
local timerLightningWaveCD		= mod:NewCDTimer(13.4, 24819, nil, nil, nil, 3)

mod:AddSetIconOption("SetIconOnBombTarget", 1214136, true, 0, {8, 7, 6})

local timerSoak       = mod:NewCastTimer(1214136)
local warnSoakTargets = mod:NewTargetNoFilterAnnounce(1214136, 4)
local specWarnSoak    = mod:NewSpecialWarningSoak(1214136)
local yellSoakFades	  = mod:NewShortFadesYell(1214136)
local yellSoak        = mod:NewYell(1214136)

--mod:AddReadyCheckOption(48620, false)
local bombIcon = 8

function mod:OnCombatStart(delay, yellTriggered)
	if yellTriggered then
		--timerNoxiousBreathCD:Start(11.9-delay)
		timerSleepingFogCD:Start(18.4-delay)
--		timerLightningWaveCD:Start(53-delay)--Iffy
	end
	bombIcon = 8
end

--[[
function mod:SPELL_CAST_START(args)
	if args.spellId == 24818 and self:AntiSpam(3, 1) then
		--timerNoxiousBreathCD:Start()
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
	elseif args:IsSpell(1214136) then
		specWarnSoak:Show()
		timerSoak:Start()
	end
end


function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(24818) then
		if self:IsTanking(nil, nil, args.destName, nil, args.sourceGUID) then--Basically, HAS to be bosses current target
			warnNoxiousBreath:Show(args.destName, args.amount or 1)
		end
	elseif args:IsSpell(1214136) then
		warnSoakTargets:PreciseShow(3, args.destName)
		if args:IsPlayer() then
			yellSoak:Show()
			yellSoakFades:Countdown(8, 5)
		end
		if self.Options.SetIconOnBombTarget then
			self:SetIcon(args.destName, bombIcon, 8.2)
		end
		bombIcon = bombIcon - 1
		if bombIcon == 5 then
			bombIcon = 8
		end
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 24819 and self:AntiSpam(5, 2) then--Lightning Wave
		warningLightningWave:Show()
		timerLightningWaveCD:Start()
	end
end
