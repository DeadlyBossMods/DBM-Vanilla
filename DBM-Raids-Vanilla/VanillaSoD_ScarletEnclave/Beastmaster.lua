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
	"SPELL_CAST_SUCCESS 1230242 1230200"
)

-- Two main spells seem to be Enkindle and Enervate, both stack and you probably gotta avoid too high stacks
-- Lots of people get it, so likely everyone needs to switch. Is 2 a good treshold? Probably
-- Using "Mark" terminology as people just did Naxx and are used to that from 4HM

local specWarnEnkindleStack = mod:NewSpecialWarningStack(1230242, nil, 2, nil, nil, 1, 6)
local specWarnEnervateStack = mod:NewSpecialWarningStack(1230200, nil, 2, nil, nil, 1, 6)
local timerMark				= mod:NewTimer(15.9, "TimerMark", 1230200, nil, nil, 2)

mod.vb.markCount = 0

mod:AddInfoFrameOption()

local berserkTimer = mod:NewBerserkTimer(300)

function mod:OnCombatStart(delay)
	berserkTimer:Start(300 - delay)
	self.vb.markCount = 0
	if self.Options.InfoFrame then
		DBM.InfoFrame:Show(10, "bosshealth", self)
		self.bossHealthUpdateTime = 0.5
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(1230242) then
		local amount = args.amount or 1
		if args:IsPlayer() then
			if amount >= 2 then
				specWarnEnkindleStack:Show(amount)
				specWarnEnkindleStack:Play("stackhigh")
			end
		end
	elseif args:IsSpell(1230200) then
		local amount = args.amount or 1
		if args:IsPlayer() then
			if amount >= 2 then
				specWarnEnervateStack:Show(amount)
				specWarnEnervateStack:Play("stackhigh")
			end
		end
	end
end

mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(1230242, 1230200) and self:AntiSpam(5, "Mark") then
		self.vb.markCount = self.vb.markCount + 1
		timerMark:Start(self.vb.markCount)
	end
end
