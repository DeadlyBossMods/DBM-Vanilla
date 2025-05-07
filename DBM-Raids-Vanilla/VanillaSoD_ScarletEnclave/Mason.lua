if not DBM:IsSeasonal("SeasonOfDiscovery") then return end

local mod	= DBM:NewMod("Mason", "DBM-Raids-Vanilla", 11)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal,heroic,mythic"

mod:SetRevision("@file-date-integer@")

mod:SetZone(2856)
mod:SetEncounterID(3197)
mod:SetCreatureID(241021)
mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 1231592 1229005 1231587",
	"SPELL_AURA_APPLIED_DOSE 1229005 1231587",
	"SPELL_AURA_REMOVED 1231585",
	"SPELL_CAST_START 1234347 1231585",
	"UNIT_HEALTH",
	"CHAT_MSG_MONSTER_YELL"
)

-- Mortal Wound, might require a tank swap, but not sure when exactly, for now just a stack warning
local warnMortalWoundStack = mod:NewStackAnnounce(1229005)

-- Decurse this
local warnDrown = mod:NewSpecialWarningDispel(1231592, "RemoveCurse", nil, nil, 2, 8)

local timerCannons = mod:NewNextTimer(30.5, 1228376)
local specWarnCannons = mod:NewSpecialWarningDodge(1228376, nil, nil, nil, 2, 2)

local timerBossStackCount = mod:NewNextCountTimer(3, 1231587)

-- Ignite Flesh (cast by adds) can be interrupted, but it's hard because 1 sec cast time
local specWarnIgnite = mod:NewSpecialWarningInterrupt(1234347, "HasInterrupt", nil, nil, 1, 2)
local timerIgniteCast = mod:NewCastNPTimer(1, 1234347)

local warnPhase2	= mod:NewPhaseAnnounce(2)
local warnPhase2Soon = mod:NewPrePhaseAnnounce(2)

local berserkTimer = mod:NewBerserkTimer(600)

local hpWarnShown1, hpWarnShown2, hpWarnShown3

mod:NewGtfo{antiSpam = 2.5, spell = 1228509, spellDamage = false, spellPeriodicDamage = false, spellAuraDose = true}

function mod:OnCombatStart(delay)
	berserkTimer:Start(-delay)
	timerCannons:Start(30 - delay)
	hpWarnShown1, hpWarnShown2, hpWarnShown3 = false, false, false
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(1231592) then
		if self:AntiSpam(5, "Decurse") then
			warnDrown:Show(DBM_COMMON_L.ALLIES)
			warnDrown:Play("helpdispel")
		end
	elseif args:IsSpell(1229005) then
		local amount = args.amount or 1
		local uId = DBM:GetRaidUnitId(args.destName)
		if self:IsTanking(uId, nil, nil, false, args.sourceGUID) then
			warnMortalWoundStack:Show(args.destName, amount)
		end
	elseif args:IsSpell(1231587) then
		local amount = args.amount or 1
		timerBossStackCount:Start(amount + 1)
	end
end

mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_CAST_START(args)
	if args:IsSpell(1234347) then
		if self:CheckInterruptFilter(args.sourceGUID, true, true) then
			specWarnIgnite:Show(args.sourceName)
			specWarnIgnite:Play("kickcast")
		end
		timerIgniteCast:Start(args.sourceGUID)
	elseif args:IsSpell(1231585) then
		warnPhase2:Show()
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(1231585) then
		if not timerCannons:IsStarted() then
			timerCannons:Start()
		end
	end
end

function mod:UNIT_HEALTH(uId)
	if self:GetUnitCreatureId(uId) == 241021 then
		local hp = UnitHealth(uId) / UnitHealthMax(uId)
		if hp >= 0.76 and hp <= 0.8 and not hpWarnShown1 then
			hpWarnShown1 = true
			warnPhase2Soon:Show()
		elseif hp >= 0.51 and hp <= 0.55 and not hpWarnShown2 then
			hpWarnShown2 = true
			warnPhase2Soon:Show()
		elseif hp >= 0.26 and hp <= 0.3 and not hpWarnShown3 then
			hpWarnShown3 = true
			warnPhase2Soon:Show()
		end
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.Cannons1 or msg == L.Cannons2 then
		self:SendSync("Cannons")
	end
end

function mod:OnSync(msg)
	if msg == "Cannons" and self:AntiSpam(5, "Cannons") then
		timerCannons:Start()
		specWarnCannons:Show()
		specWarnCannons:Play("watchstep")
	end
end
