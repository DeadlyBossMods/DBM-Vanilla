if not DBM:IsSeasonal("SeasonOfDiscovery") then return end

local mod	= DBM:NewMod("Beastmaster", "DBM-Raids-Vanilla", 11)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal,heroic,mythic"

mod:SetRevision("@file-date-integer@")

mod:SetZone(2856)
mod:SetEncounterID(3196)

mod:SetCreatureID(241906, 240794)
mod:SetBossHPInfoToHighest()

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 1230242 1230200",
	"SPELL_AURA_APPLIED_DOSE 1230242 1230200",
	"SPELL_CAST_SUCCESS 1230242 1230200",
	"SPELL_CAST_START 1230105 1230099 1228295"
)

-- Two main spells seem to be Enkindle and Enervate, both stack and you probably gotta avoid too high stacks
-- Lots of people get it, so likely everyone needs to switch. Is 2 a good treshold? Probably
-- Using "Mark" terminology as people just did Naxx and are used to that from 4HM

local specWarnEnkindleStack1	= mod:NewSpecialWarningStack(1230242, nil, 1, nil, nil, 1, 6)
local specWarnEnkindleStack2	= mod:NewSpecialWarningStack(1230242, nil, 2, nil, nil, 1, 6)
local specWarnEnervateStack1	= mod:NewSpecialWarningStack(1230200, nil, 1, nil, nil, 1, 6)
local specWarnEnervateStack2	= mod:NewSpecialWarningStack(1230200, nil, 2, nil, nil, 1, 6)
local timerMark					= mod:NewTimer(16.2, "TimerMark", 1230200, nil, nil, 2)
local warnMark					= mod:NewAnnounce("WarnMark", 3, 1230200, false)

local specWarnAperture		= mod:NewSpecialWarningDodge(1230105, nil, nil, nil, 2, 2)
local timerAperture			= mod:NewVarTimer("v17.4-24.5", 1230105) -- this one sometimes (<10% has huge outliers raning from 27-38 seconds, not clue why and how)

-- Simple CD abilities
local timerRendingSlash		= mod:NewCDNPTimer(13.8, 1230099)
local timerStomp			= mod:NewCDNPTimer(21, 1228295)

mod.vb.markCount = 0

local berserkTimer = mod:NewBerserkTimer(600)

function mod:OnCombatStart(delay)
	berserkTimer:Start(-delay)
	timerAperture:Start("v4-7") -- basically pretty much immediately after pulling
	timerMark:Start("v15.8-16.2", 1)
	self.vb.markCount = 1
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(1230242) then
		local amount = args.amount or 1
		if args:IsPlayer() then
			if amount == 1 then
				specWarnEnkindleStack1:Play("swapsoon")
				specWarnEnkindleStack1:Show(amount)
			else
				specWarnEnkindleStack2:Play("stackhigh")
				specWarnEnkindleStack2:Show(amount)
			end
		end
	elseif args:IsSpell(1230200) then
		local amount = args.amount or 1
		if args:IsPlayer() then
			if amount == 1 then
				specWarnEnervateStack1:Play("swapsoon")
				specWarnEnervateStack1:Show(amount)
			else
				specWarnEnervateStack2:Play("stackhigh")
				specWarnEnervateStack2:Show(amount)
			end
		end
	end
end

mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(1230242, 1230200) and self:AntiSpam(5, "Mark") then
		warnMark:Show(self.vb.markCount)
		self.vb.markCount = self.vb.markCount + 1
		timerMark:Start(nil, self.vb.markCount)
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(1230105) then
		specWarnAperture:Show()
		specWarnAperture:Play("watchfeet")
		timerAperture:Start()
	elseif args:IsSpell(1230099) then
		timerRendingSlash:Start(nil, args.sourceGUID)
	elseif args:IsSpell(1228295) then
		timerStomp:Start(nil, args.sourceGUID)
	end
end
