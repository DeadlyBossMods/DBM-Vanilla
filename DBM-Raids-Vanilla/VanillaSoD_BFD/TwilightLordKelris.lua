local mod	= DBM:NewMod("TwilightLordKelrisSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(209678)
mod:SetEncounterID(2825)--2766 is likely 5 man version in instance type 201
mod:SetHotfixNoticeRev(20231201000000)
--mod:SetMinSyncRevision(20231115000000)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 425265 426494 426493",
	"SPELL_CAST_SUCCESS 426223",
	"SPELL_AURA_APPLIED 426495 423135 425460 425239",
	"SPELL_AURA_REMOVED 425460"
)

--https://www.wowhead.com/classic/spell=425234/orbs-of-shadow
--TODO, https://www.wowhead.com/classic/npc=209773/dream-copy , spawned from https://www.wowhead.com/classic/spell=423135/sleep
--TODO, invading Nightmares cast Shadow form 426223  on spawn, useful info?
--NOTE, Sleep seems either health based or just a massively random timer.
local warnShadowyChains			= mod:NewTargetNoFilterAnnounce(426495, 2, nil, "RemoveMagic|Healer")--Failed Interrupt
local warnSleep					= mod:NewTargetNoFilterAnnounce(423135, 2)--No consistent timing found so no timer
local warnShadowCrash			= mod:NewSpellAnnounce(426069, 3)
local warnDreamEater			= mod:NewTargetNoFilterAnnounce(425460, 2)--Not sure what it does, so don't know what else to do with it yet

local specWarnShadowyChains		= mod:NewSpecialWarningInterrupt(425265, "HasInterrupt", nil, nil, 1, 2)

local timerShadowyChainsCD		= mod:NewCDTimer(11.3, 425265, nil, nil, nil, 4)--Remove interrupt icon since timer is used for stage 2 as well, CD affected by spell lockouts, so if shadow school locked out from pain kick, delayed
--local timerSleepCD				= mod:NewCDTimer(40, 423135, nil, nil, nil, 3)
local timerDreamEater			= mod:NewFadesTimer(15, 425460, nil, nil, nil, 5, nil, DBM_COMMON_L.DEADLY_ICON)

function mod:OnCombatStart(delay)
	self:SetStage(1)
--	timerSleepCD:Start(8-delay)
	timerShadowyChainsCD:Start(12.5-delay)
--	timerDreamEaterCD:Start(40-delay)
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(425265) then--426494 is non interruptable version in stage 2
		timerShadowyChainsCD:Start()--11.3
		if self:CheckInterruptFilter(args.sourceGUID, false, true) then
			specWarnShadowyChains:Show(args.sourceName)
			specWarnShadowyChains:Play("kickcast")
		end
	elseif args:IsSpell(426494) then
		timerShadowyChainsCD:Start(9.7)
	elseif args:IsSpell(426493) then--Stage 2 mind blast
		if self:GetStage(1) then
			self:SetStage(2)
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(426223) then--Stage 2 shadow form
		if self:GetStage(1) then
			self:SetStage(2)
		end
	elseif args:IsSpell(426069) then
		warnShadowCrash:Show()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(426495, 425239) and args:IsDestTypePlayer() then
		warnShadowyChains:CombinedShow(0.5, args.destName)
	elseif args:IsSpell(423135) and args:IsDestTypePlayer() then
		--if self:AntiSpam(5, 1) then
		--	timerSleepCD:Start()
		--end
		warnSleep:CombinedShow(0.5, args.destName)
	elseif args:IsSpell(425460) then
		warnDreamEater:CombinedShow(0.5, args.destName)
		if args:IsPlayer() then
			timerDreamEater:Start()
		end
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(425460) and args:IsPlayer() then
		timerDreamEater:Stop()
	end
end
