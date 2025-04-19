if not DBM:IsSeasonal("SeasonOfDiscovery") then return end

local mod	= DBM:NewMod("Solistrasza", "DBM-Raids-Vanilla", 11)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal,heroic,mythic"

mod:SetRevision("@file-date-integer@")

mod:SetZone(2856)
mod:SetEncounterID(3186)
mod:SetCreatureID(238954)
mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 1232018 1232333",
	"SPELL_CAST_START 1228044 1227696 1232032",
	"SPELL_AURA_APPLIED 1231993",
	"SPELL_AURA_APPLIED_DOSE 1231993"
)

-- Blistering Vent
-- DoT on everyone, timing seems mostly regular, but I'm missing some phase info, so will be off sometimes
local timerVent		= mod:NewCDTimer(32, 1232018)
local warnVent		= mod:NewSpellAnnounce(1232018)
local warnVentSoon	= mod:NewSoonAnnounce(1232018)

-- Adds: Lightforged Whelps, seem to show up in groups of 3, explode on death, detectable cause they cast 1232333 on spawn
local warnAdds		= mod:NewSpecialWarningAdds(1232333)

-- Cremation: Hotfixed, can no longer be interrupted
local timerCremation = mod:NewVarTimer("v30-45", 1228044)
local specWarnCremation = mod:NewSpecialWarningDodge(1228044, true, nil, 2, 1, 2)

-- Lightforge: no clue

-- Hallowed Dive: 3 different spells, looks like 1227696 happens first, timer seems random, looks like you need to dodge this, details TBD
local warnHallowedDive = mod:NewSpellAnnounce(1227696)

-- Tarnished Breath: Tank swap mechanic, 10% damage per stack, so probably swap at 1 already, or at most 2
-- Don't make the main warning tank only, there are too many tank specs in SoD that aren't handled by this (Warlock, Shaman, Rogue)
local warnBreathStack		= mod:NewStackAnnounce(1231993, 2)
local specWarnBreathStack	= mod:NewSpecialWarningStack(1231993, "Tank", 2, nil, nil, 1, 6)
local yellBreathStack		= mod:NewCountYell(1231993)

-- Crimson Flare
local timerCrimsonFlare		= mod:NewCastTimer(10, 1232032) -- 3 sec cast, then channeling for 7 sec

mod:NewGtfo{antiSpam = 3, spell = 1232097, spellAura = 1232097, spellPeriodicDamage = false, spellDamage = false}
mod:NewGtfo{antiSpam = 3, spell = 1228063, spellAura = 1228063, spellPeriodicDamage = false, spellDamage = false}


local berserkTimer = mod:NewBerserkTimer(480)

function mod:OnCombatStart(delay)
	timerVent:Start(45 - delay)
	warnVentSoon:Schedule(42 - delay)
	berserkTimer:Start(480 - delay)
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(1232018) then
		warnVentSoon:Cancel()
		timerVent:Start()
		warnVent:Show()
		warnVentSoon:Schedule(29)
	elseif args:IsSpell(1232333) then
		if self:AntiSpam(10, "Adds") then
			warnAdds:Show()
		end
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(1228044) then
		specWarnCremation:Show()
		specWarnCremation:Play("watchstep")
		timerCremation:Start()
	elseif args:IsSpell(1227696) then
		warnHallowedDive:Show()
	elseif args:IsSpell(1232032) then
		timerCrimsonFlare:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(1231993) then
		local amount = args.amount or 1
		local uId = DBM:GetRaidUnitId(args.destName)
		if self:IsTanking(uId, nil, nil, false, args.sourceGUID) then
			warnBreathStack:Show(args.destName, amount)
			if args:IsPlayer() then
				yellBreathStack:Show(amount)
			end
		end
		if args:IsPlayer() then
			if amount >= 2 then
				specWarnBreathStack:Show(amount)
				specWarnBreathStack:Play("stackhigh")
			end
		elseif not DBM:UnitDebuff("player", 1231993) then
			specWarnBreathStack:Show(amount)
			specWarnBreathStack:Play("tauntboss")
		end
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED
