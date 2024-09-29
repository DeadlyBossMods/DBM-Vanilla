if not DBM:IsSeasonal("SeasonOfDiscovery") then return end

local mod	= DBM:NewMod("SoDBWLTrials", "DBM-Raids-Vanilla", 5)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod.isTrashMod = true
mod.isTrashModBossFightAllowed = true

mod:RegisterEvents(
	"SPELL_AURA_APPLIED 466357 466435 466448",
	"SPELL_PERIODIC_DAMAGE 466448",
	"SPELL_PERIODIC_MISSED 466448"
)

-- Blue Trial, triggers exactly every 47.3 seconds, but the first one seems to be random
local timerBlueTrial    = mod:NewNextTimer(47.3, 466357)
local specWarnBlueTrial = mod:NewSpecialWarningSpell(466357, nil, nil, nil, 2, 2)
local yellBlueTrial     = mod:NewIconTargetYell(466357, nil, nil, nil, "YELL")
local yellBlueFades     = mod:NewIconFadesYell(466357, nil, nil, nil, "YELL")

-- Green Trial
local yellGreenTrial      = mod:NewIconTargetYell(466435)
local yellGreenTrialFades = mod:NewIconFadesYell(466435)
local specWarnGreenTrial  = mod:NewSpecialWarningYou(466435, nil, nil, nil, 3, 2)
local warnGreenTrial      = mod:NewTargetNoFilterAnnounce(466435, 4)
local specWarnGTFO        = mod:NewSpecialWarningGTFO(466448)

local function gtfo(self, spellName)
	if self:AntiSpam(3, "GreenTrial") then
		specWarnGTFO:Show(spellName)
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(466357) then -- Blue Trial bomb --> gather
		if args:IsPlayer() then
			-- Blue square because it's the blue trial
			yellBlueTrial:Yell(6)
			yellBlueFades:Countdown(8, 5, 6)
		end
		timerBlueTrial:Start()
		specWarnBlueTrial:Show()
		specWarnBlueTrial:Play("gathershare")
	elseif args:IsSpell(466435) then -- Green Trial bomb --> run out
		if args:IsPlayer() then
			yellGreenTrial:Yell(8) -- Skull to make it clear that this is a "go away" thing (could also use the green triangle)
			yellGreenTrialFades:Countdown(8, 3, 8)
			specWarnGreenTrial:Show()
			specWarnGreenTrial:Play("runout")
		end
		warnGreenTrial:Show(args.destName)
	elseif args:IsSpell(466448) and args:IsPlayer() then
		gtfo(self, args.spellName)
	end
end

function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId, spellName)
	if spellId == 466448 and destGUID == UnitGUID("player") then
		gtfo(self, spellName)
	end
end
mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE
