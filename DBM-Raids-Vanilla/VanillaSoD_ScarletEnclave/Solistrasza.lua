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
	"SPELL_CAST_START 1228044 1227696 1232032 1227520",
	"SPELL_AURA_APPLIED 1231993",
	"SPELL_AURA_APPLIED_DOSE 1231993"
)

mod:SetUsedIcons(6, 7, 8)

-- Blistering Vent and Crimson Flare happen at the same time, Crimson Flare is the relevant one but it looks impossible to track the target
-- Timing seems mostly regular, but probably related to phases, so may be off
local timerFlare		= mod:NewCDTimer(37, 1232032)
local warnFlare			= mod:NewSpecialWarningDodge(1232032)
local warnFlareSoon		= mod:NewSoonAnnounce(1232032)
local timerFlareCast	= mod:NewCastTimer(10, 1232032) -- 3 sec cast, then channeling for 7 sec

-- Adds: Lightforged Whelps, seem to show up in groups of 3, explode on death, detectable cause they cast 1232333 on spawn
local warnAdds			= mod:NewSpecialWarningAdds(1232333)
local timerAddExplode	= mod:NewCastNPTimer(30, 1232333)

-- Cremation: Hotfixed, can no longer be interrupted
local timerCremation	= mod:NewVarTimer("v30-45", 1228044)
local specWarnCremation	= mod:NewSpecialWarningDodge(1228044, true, nil, 2, 1, 2)

-- Hallowed Dive: 3 different spells, looks like 1227696 happens first, timer seems random, dodge this, but not super important
-- This might mess with other timers, as it's a somewhat long animation
local warnHallowedDive = mod:NewSpellAnnounce(1227696)

-- Tarnished Breath: Tank swap mechanic, 10% damage per stack, so probably swap at 1 already, or at most 2
-- Don't make the main warning tank only, there are too many tank specs in SoD that aren't handled by this (Warlock, Shaman, Rogue)
local warnBreathStack		= mod:NewStackAnnounce(1231993, 2)
local specWarnBreathStack	= mod:NewSpecialWarningStack(1231993, "Tank", 2, nil, nil, 1, 6)
local yellBreathStack		= mod:NewCountYell(1231993)


local warnPhase2 = mod:NewPhaseAnnounce(2)
local warnPhase3 = mod:NewPhaseAnnounce(3)

mod:AddSetIconOption("SetIconOnAdds", 1232333, true, 5, {6, 7, 8})

mod:NewGtfo{antiSpam = 3, spell = 1232097, spellAura = 1232097, spellPeriodicDamage = false, spellDamage = false}
mod:NewGtfo{antiSpam = 3, spell = 1228063, spellAura = 1228063, spellPeriodicDamage = false, spellDamage = false}


local berserkTimer = mod:NewBerserkTimer(600)

local addIcon = 8

function mod:OnCombatStart(delay)
	addIcon = 8
	timerFlare:Start(45 - delay)
	warnFlareSoon:Schedule(38 - delay) -- target selection happens ~here
	berserkTimer:Start(-delay)
	self:SetStage(1)
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(1232333) then
		if self:AntiSpam(10, "Adds") then
			warnAdds:Show()
		end
		timerAddExplode:Start(nil, args.sourceGUID)
		if self.Options.SetIconOnAdds then
			self:ScanForMobs(args.destGUID, 2, addIcon, 1, nil, 5, "SetIconOnAdds")
			addIcon = addIcon - 1
			self:Schedule(3, function() addIcon = 8 end)
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
		local flareTime = self.vb.phase == 1 and 45 or 37
		timerFlareCast:Start()
		timerFlare:Start(flareTime)
		warnFlare:Show()
		warnFlareSoon:Cancel()
		warnFlareSoon:Schedule(flareTime - 7)
	elseif args:IsSpell(1227520) then
		self:SetStage(0)
		if self.vb.phase == 2 then
			warnPhase2:Show()
			timerFlare:Cancel()
			timerFlare:Start(37)
			warnFlareSoon:Cancel()
			warnFlareSoon:Schedule(30)
		elseif self.vb.phase == 3 then
			warnPhase3:Show()
		end
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
			specWarnBreathStack:Play("tauntboss")
		end
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED
