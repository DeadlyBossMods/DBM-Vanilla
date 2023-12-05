local mod	= DBM:NewMod("TwilightLordKelrisSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(209678)
mod:SetEncounterID(2825)--2766 is likely 5 man version in instance type 201
mod:SetHotfixNoticeRev(20231201000000)
--mod:SetMinSyncRevision(20231115000000)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 425265",
	"SPELL_CAST_SUCCESS 425460",
	"SPELL_AURA_APPLIED 426495 423135 426199 425460"
)

--https://www.wowhead.com/classic/spell=425234/orbs-of-shadow
--TODO, https://www.wowhead.com/classic/npc=209773/dream-copy , spawned from https://www.wowhead.com/classic/spell=423135/sleep
--TODO, invading Nightmares cast Shadow form 426223  on spawn, useful info?
local warnShadowyChains			= mod:NewTargetNoFilterAnnounce(426495, 2, nil, "RemoveMagic|Healer")--Failed Interrupt
local warnSleep					= mod:NewTargetNoFilterAnnounce(423135, 2)--No consistent timing found so no timer
local warnShadowCrash			= mod:NewTargetNoFilterAnnounce(426199, 2, nil, false)--Kinda spammy, off by default
local warnDreamEater			= mod:NewTargetNoFilterAnnounce(425460, 2)--Not sure what it does, so don't know what else to do with it yet

local specWarnShadowyChains		= mod:NewSpecialWarningInterrupt(425265, "HasInterrupt", nil, nil, 1, 2)

local timerShadowyChainsCD		= mod:NewCDTimer(11.3, 425265, nil, nil, nil, 4, nil, DBM_COMMON_L.INTERRUPT_ICON)
local timerDreamEaterCD			= mod:NewCDTimer(47.4, 425460, nil, nil, nil, 3)--47.4-57.9, more data needed

function mod:OnCombatStart(delay)
	timerShadowyChainsCD:Start(12.5-delay)
	timerDreamEaterCD:Start(40-delay)
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(425265) then--426494 is non interruptable version in stage 2
		timerShadowyChainsCD:Start()
		if self:CheckInterruptFilter(args.sourceGUID, false, true) then
			specWarnShadowyChains:Show(args.sourceName)
			specWarnShadowyChains:Play("kickcast")
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(425460) then
		timerDreamEaterCD:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(426495) and args:IsDestTypePlayer() then
		warnShadowyChains:CombinedShow(0.5, args.destName)
	elseif args:IsSpell(423135) and args:IsDestTypePlayer() then
		warnSleep:CombinedShow(0.5, args.destName)
	elseif args:IsSpell(426199) then
		warnShadowCrash:Show(args.destName)--Can also be done in success, but they can break that at any time
	elseif args:IsSpell(425460) then
		warnDreamEater:CombinedShow(0.5, args.destName)
	end
end
