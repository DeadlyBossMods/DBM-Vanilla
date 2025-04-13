if not DBM:IsSeasonal("SeasonOfDiscovery") then return end

local mod	= DBM:NewMod("Caldoran", "DBM-Raids-Vanilla", 11)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal,heroic,mythic"

mod:SetRevision("@file-date-integer@")

mod:SetZone(2856)
mod:SetEncounterID(3189)
mod:SetCreatureID(241006)
mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 1229226 1230908 1229714 1230697 1231651 1229236 1231618 1231654 1230271 1231027",
	"SPELL_CAST_SUCCESS 1230137 1230125",
	"SPELL_AURA_APPLIED 1229272 1229503",
	"UNIT_HEALTH"
)

-- blessed feather: 5:51 1230276, 6:20 1230333 portal, 6:11 dying light 1231582, 5:59 1230268 dying light twice, 5:51 1230271 dying light again, 6:12 collapse cathedral 675770

-- Not 100% sure about the phases and triggers, but looks health based, not sure about good names and what is phase 2 vs. phase 1.5 maybe?
local timerDyingLightCast	= mod:NewStageCountTimer(1230271)
local warnPhase2Soon		= mod:NewPrePhaseAnnounce(2)
local warnPhase4Soon		= mod:NewPrePhaseAnnounce(4)
local warnPhase2			= mod:NewPhaseAnnounce(2)
local warnPhase3			= mod:NewPhaseAnnounce(3)
local warnPhase4			= mod:NewPhaseAnnounce(4)

-- Execution Sentence: Not exactly sure about timer
local warnExecutionSentence		= mod:NewTargetNoFilterAnnounce(1229503)
local timerExecutionSentence	= mod:NewVarTimer("v117-130", 1229503)


-- Quietus: phase 3 only, somewhat exact timer
local timerQuietus = mod:NewVarTimer("v24.5-29", 1231651)
local warnQuietus = mod:NewCastAnnounce(1231651)

-- Blinding Flare
local timerFlare = mod:NewVarTimer("v29-34", 1229714)
local warnFlare = mod:NewCastAnnounce(1229714)

-- Conflagration: timer seems very random and cast often, nothing for now
local warnConflag = mod:NewTargetNoFilterAnnounce(1229272)
local yellConflag = mod:NewYell(1229272)

-- Shattered Onslaught: only last phase, cast quite often, nothing for now

-- Wake of Ashes: phase 1 id 1231618, last phase id 1231654
local timerWake1 = mod:NewVarTimer("v25-33", 1231618)
local warnWake1 = mod:NewCastAnnounce(1231618)
local timerWake2 = mod:NewVarTimer("v19-22", 1231654)
local warnWake2 = mod:NewCastAnnounce(1231654)

-- Reclamation: Rare, not sure about trigger, seems to be every ~2 minutes but +/- 10 sec
local warnReclamation = mod:NewCastAnnounce(1229236)

-- Cessation: rare, not sure about importance
local warnCessation = mod:NewCastAnnounce(1230697)

-- Righteous Flame: cast by adds and interruptible
local specWarnFlame = mod:NewSpecialWarningInterrupt(1234347, nil, nil, nil, 1, 2)

-- Judge Unworthy: cast by boss (rare, later phases only) and interruptible
local specWarnJudge = mod:NewSpecialWarningInterrupt(1234347, nil, nil, nil, 1, 2)

-- Not sure if this Enrage is even working as intended, kill logs suggest people killing him a minute after enrage (and the boss still being active with Enrage, but barely doing damage)
-- Also, the enrage buff timer varies between 11:36 and 11:52 in logs. Maybe only p3 enrages? Or an enrage timer per phase?
local berserkTimer = mod:NewBerserkTimer(710)

mod:NewGtfo{spell = 1230809, spellDamage = false, spellPeriodicDamage = false}
mod:NewGtfo{spell = 1229397, spellDamage = false, spellPeriodicDamage = false}

local p2WarnShown = false
local p4WarnShown = false
function mod:OnCombatStart(delay)
	p2WarnShown = false
	p4WarnShown = false
	berserkTimer:Start(710 - delay)
	timerFlare:Start()
	-- timerWakeP1:Start() -- TODO: inaccurate on pull
	-- timerExecutionSentence:Start() -- TODO: figure out start timer
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(1229226) and self:CheckInterruptFilter(args.sourceGUID, true, true) then
		specWarnFlame:Show(args.sourceName)
		specWarnFlame:Play("kickcast")
	elseif args:IsSpell(1230908) and self:CheckInterruptFilter(args.sourceGUID, false, true) then
		specWarnJudge:Show(args.sourceName)
		specWarnJudge:Play("kickcast")
	elseif args:IsSpell(1229714) then
		timerFlare:Start()
		warnFlare:Show()
	elseif args:IsSpell(1230697) then
		warnCessation:Show()
	elseif args:IsSpell(1231651) then
		timerQuietus:Start()
		warnQuietus:Show()
	elseif args:IsSpell(1229236) then
		warnReclamation:Show()
	elseif args:IsSpell(1231618) then
		warnWake1:Show()
		timerWake1:Start()
	elseif args:IsSpell(1231654) then
		warnWake2:Show()
		timerWake2:Start()
	elseif args:IsSpell(1230271) then
		timerDyingLightCast:Start(20, 3)
		warnPhase3:Schedule(20)
		timerExecutionSentence:Schedule(20)
		self:SetStage(3)
	elseif args:IsSpell(1231027) then
		warnPhase4:Show()
		self:SetStage(4)
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(1230137, 1230125) then
		if self:AntiSpam(10, "Phase2") then
			warnPhase2:Show()
			self:SetStage(2)
			timerExecutionSentence:Stop()
			timerWake1:Stop()
			timerFlare:Stop()
		end
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(1229272) and DBM:GetCIDFromGUID(args.sourceGUID) == 241006 then
		-- TODO: there's also 1229397 which comes from the environment, how are these two related? spread? for now just a yell
		warnConflag:Show(args.destName)
		if args:IsPlayer() then
			yellConflag:Show()
		end
	elseif args:IsSpell(1229503) then
		warnExecutionSentence:Show(args.destName)
		timerExecutionSentence:Start()
	end
end

function mod:UNIT_HEALTH(uId)
	if self:GetUnitCreatureId(uId) == 241006 then
		local hp = UnitHealth(uId) / UnitHealthMax(uId)
		if hp <= 0.59 and hp >= 0.55 and not p2WarnShown then -- triggers at ~55%?
			p2WarnShown = true
			warnPhase2Soon:Show()
		elseif hp <= 0.15 and hp >= 0.10 and not p4WarnShown then -- triggers at ~10.5%?
			p4WarnShown = true
			warnPhase4Soon:Show()
		end
	end
end
