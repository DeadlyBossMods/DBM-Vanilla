if not DBM:IsSeasonal("SeasonOfDiscovery") then return end

local mod	= DBM:NewMod("Balnazzar", "DBM-Raids-Vanilla", 11)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal,heroic,mythic"

mod:SetRevision("@file-date-integer@")

mod:SetZone(2856)
mod:SetEncounterID(3185)
mod:SetCreatureID(240811)
mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 1231844 1231836 1231777",
	"SPELL_AURA_APPLIED_DOSE 1231836",
	"SPELL_DAMAGE 1231645",
	"SPELL_MISSED 1231645",
	"SPELL_CAST_START 1231885",
	"UNIT_HEALTH"
)

local warnMc = mod:NewTargetNoFilterAnnounce(1231844)
local warnMcYou = mod:NewSpecialWarningMove(1231844, nil, nil, nil, 2, 2)
local timerMc = mod:NewNextTimer(10, 1231844)
local yellMc = mod:NewYell(1231844)

local warnSilenceYou = mod:NewSpecialWarningMove(1231844, nil, nil, nil, 2, 2)

local warnCarrionYou = mod:NewSpecialWarningYou(1231836, nil, nil, nil, 2, 2)

-- Prey on the weak was changed, apparently it now is cast just once on pull and stays active. Seems to tick every 6 seconds, but sometimes 5? (Maybe related to phases)
-- Warning disabled by default because it got nerfed so hard you can basically ignore it, but the timer is kinda cool if you really wanna optimize it. (Doubt anyone will bother, might disable by default later if it confuses people)
local timerPrey = mod:NewTargetTimer(6, 1231645)
local specWarnPrey = mod:NewSpecialWarningMoveTo(1231636, false, nil, 2, 2, 2)

-- Adds casting fear, this got stealth-nerfed from 1s cast time to 2.5s
local warnFear		= mod:NewSpecialWarningInterrupt(1231885, nil, nil, nil, 1, 2)
local timerFearCast	= mod:NewCastNPTimer(2.5, 1397, nil, nil, nil, 4, nil, DBM_COMMON_L.INTERRUPT_ICON) -- Different spell ID to not confuse NP timers
local timerFear		= mod:NewNextNPTimer(11.4, 1231885, nil, nil, nil, 4, nil, DBM_COMMON_L.INTERRUPT_ICON)

local warnPhase2Soon = mod:NewPrePhaseAnnounce(2)
local warnPhase3Soon = mod:NewPrePhaseAnnounce(3)

local berserkTimer = mod:NewBerserkTimer(600)

local p2WarnShown, p3WarnShown

function mod:OnCombatStart(delay)
	berserkTimer:Start(600 - delay)
	p2WarnShown = false
	p3WarnShown = false
	self:SetStage(1)
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(1231885) then
		if self:CheckInterruptFilter(args.sourceGUID, true, true) then
			warnFear:Show(args.sourceName)
			warnFear:Play("kickcast")
		end
		timerFearCast:Start(args.sourceGUID)
		timerFear:Schedule(2.6, -2.6, args.sourceGUID)
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(1231844) then
		-- MC: Don't fully understand it, why does it give you a 6 sec pre-warning? looks like you can LIP it, but since it's 6 sec no extra delay warning for "useitem" is needed
		if args:IsPlayer() and self:AntiSpam(5, "MCYou") then
			warnMcYou:Show()
			warnMcYou:Play("targetyou")
			yellMc:Show()
		end
		timerMc:Start()
		warnMc:CombinedShow(0.1, args.destName)
	elseif args:IsSpell(1231836) then
		local amount = args.amount or 1
		if args:IsPlayer() then
			if amount >= 2 and self:AntiSpam(amount >= 5 and 2 or 8, "Carrion") then -- If you have 5 stacks: where are you standing?!
				warnCarrionYou:Show()
				warnCarrionYou:Play("scatter")
			end
		end
	elseif args:IsSpell(1231777) then -- Silence, pretty much always active if you stand in the wrong area, so very generous antispam for those who don't care
		if args:IsPlayer() and self:AntiSpam(20, "Silence") then
			warnSilenceYou:Show()
			warnSilenceYou:Play("findshelter")
		end
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:PreyLoop(guessCount)
	if guessCount == 0 then
		self:UnscheduleMethod("PreyLoop")
		timerPrey:Stop(L.Tick)
		timerPrey:Start(6, L.Tick)
		self:ScheduleMethod(6.1, "PreyLoop", 1)
	elseif guessCount <= 6 then
		timerPrey:Start(5.9, L.Tick)
		self:ScheduleMethod(6, "PreyLoop", guessCount + 1)
	end
end

function mod:SPELL_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId)
	if spellId == 1231645 and destGUID == UnitGUID("player") then
		self:PreyLoop(0)
		if self:AntiSpam(8, "Prey") then -- Only warn every other tick to not spam people who might do this intentionally too much
			specWarnPrey:Show(L.OtherPlayer)
		end
	end
end
mod.SPELL_MISSED = mod.SPELL_DAMAGE

function mod:UNIT_HEALTH(uId)
	if self:GetUnitCreatureId(uId) == 240811 then
		local hp = UnitHealth(uId) / UnitHealthMax(uId)
		if hp >= 0.7 and hp <= 0.75 and not p2WarnShown then -- TODO: need to actually detect the phase transition, but not too important
			p2WarnShown = true
			warnPhase2Soon:Show()
		elseif hp <= 0.45 and hp >= 0.4 and not p3WarnShown then
			p3WarnShown = true
			warnPhase3Soon:Show()
		end
	end
end

