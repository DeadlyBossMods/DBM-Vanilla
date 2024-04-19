local mod	= DBM:NewMod("JammalanAndOgomSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(218721, 218718)--Jammal'an, Ogom
mod:SetEncounterID(2957)
mod:SetBossHPInfoToHighest()
--mod:SetUsedIcons(8)
mod:SetHotfixNoticeRev(20240405000000)
--mod:SetMinSyncRevision(20231115000000)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 437805 437868 437817 437995 437928 437921 437809 437927 437915 437951 437920",
	"SPELL_CAST_SUCCESS 437847 437930 437915 437884 437920",
	"SPELL_AURA_APPLIED 437809 437847 437927 437930",
	"UNIT_DIED",
	"SPELL_DAMAGE 437887", -- Consecration damage is a different spell ID than consecration cast
	"SPELL_MISSED 437887"
)

--[[
(ability.id = 437995 or ability.id = 437805 or ability.id = 437809 or ability.id = 437868 or ability.id = 437817 or ability.id = 437928 or ability.id = 437927 or ability.id = 437921) and type = "begincast"
 or (ability.id = 437847 or ability.id = 437930) and type = "cast"
 or (target.id = 218721 or target.id = 218718) and type = "death"
--]]
local warnPhase2					= mod:NewPhaseAnnounce(2, 2, nil, nil, nil, nil, nil, 2)
local warnHolyFire					= mod:NewTargetNoFilterAnnounce(437809, 2, nil, "RemoveMagic")
local warnMortalLash				= mod:NewTargetNoFilterAnnounce(437847, 2, nil, "Healer|Tank")
local warnAgonizingWeakness			= mod:NewSpellAnnounce(437868, 3)
local warnShadowSermonPain			= mod:NewTargetNoFilterAnnounce(437927, 2, nil, "RemoveMagic")
local warnPowerWordShield			= mod:NewTargetNoFilterAnnounce(437930, 2)
local warnHammersOfJustice			= mod:NewCastAnnounce(437915, 3, 4)
local warnConsecration				= mod:NewSpellAnnounce(437884, 3)
local warnDivineStorm				= mod:NewCastAnnounce(437920, 3, 1.5)

local specWarnSmite					= mod:NewSpecialWarningInterrupt(437805, "HasInterrupt", nil, nil, 1, 2)
local specWarnHolyNova				= mod:NewSpecialWarningDodge(437817, nil, nil, nil, 2, 2)
local specWarnPsychicScream			= mod:NewSpecialWarningSpell(437928, nil, nil, nil, 2, 2)
local specWarnMassPenance			= mod:NewSpecialWarningDodge(437921, nil, nil, nil, 2, 2)
local specWarnGTFO					= mod:NewSpecialWarningGTFO(437884, nil, nil, nil, 1, 8)
local specWarnPowerWordShieldPurge	= mod:NewSpecialWarningDispel(437930, "MagicDispeller", nil, nil, 1, 2)

local timerHolyFireCD				= mod:NewCDTimer(13.4, 437809, nil, nil, nil, 5, nil, DBM_COMMON_L.MAGIC_ICON)
local timerHolyNovaCD				= mod:NewCDTimer(17.3, 437817, nil, nil, nil, 3)
local timerMortalLashCD				= mod:NewCDTimer(25.4, 437847, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK_ICON)
local timerAgonizingWeaknessCD		= mod:NewCDTimer(27.1, 437868, nil, nil, nil, 3, nil, DBM_COMMON_L.CURSE_ICON)
local timerShadowSermonPainCD		= mod:NewCDTimer(22.2, 437927, nil, nil, nil, 5, nil, DBM_COMMON_L.MAGIC_ICON)
local timerPsychicScreamCD			= mod:NewCDTimer(43.7, 437928, nil, nil, nil, 3, nil, DBM_COMMON_L.MAGIC_ICON)--Can be delayed by other casts
local timerMassPenanceCD			= mod:NewCDTimer(21, 437921, nil, nil, nil, 3)
local timerPWSCD					= mod:NewCDTimer(15.8, 437930, nil, nil, nil, 5)--15.8-23 (lowest spell priority, so gets queued often)
-- "Hammers of Justice-437915-npc:218718-000016C225 = pull:121.8, 35.5, 35.0"
local timerHammersOfJustice			= mod:NewNextTimer(35.0, 437915, nil, nil, nil, 3)
-- "Consecration-437884-npc:218718-000016C225 = pull:103.9, 16.2, 16.2, 15.8, 16.6, 16.2"
local timerConsecration				= mod:NewCDTimer(15.8, 437884, nil, nil, nil, 3)
-- "Divine Storm-437920-npc:218718-000016C225 = pull:106.9, 32.7, 32.4"
local timerDivineStorm				= mod:NewCDTimer(32.4, 437920, nil, nil, nil, 3)

-- There is some correlation between Divine Storm and Consecration, we could maybe use it to update the timer
--[[
"<304.22 20:20:12> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5209-109-15379-218718-000016C225#Ogom the Wretched##nil#437884#Consecration#nil#nil",
"<308.64 20:20:16> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5209-109-15379-218718-000016C225#Ogom the Wretched##nil#437920#Divine Storm#nil#nil", +4.4
"<336.58 20:20:44> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5209-109-15379-218718-000016C225#Ogom the Wretched##nil#437884#Consecration#nil#nil",
"<341.32 20:20:49> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5209-109-15379-218718-000016C225#Ogom the Wretched##nil#437920#Divine Storm#nil#nil", +4.7
"<368.93 20:21:16> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5209-109-15379-218718-000016C225#Ogom the Wretched##nil#437884#Consecration#nil#nil",
"<373.67 20:21:21> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5209-109-15379-218718-000016C225#Ogom the Wretched##nil#437920#Divine Storm#nil#nil", +4.7
]]

function mod:OnCombatStart(delay)
	self:SetStage(1)
	timerHolyFireCD:Start(6-delay)
	timerMortalLashCD:Start(6-delay)
	timerHolyNovaCD:Start(8-delay)
	timerAgonizingWeaknessCD:Start(12.5-delay)
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(437805) then
		if self:CheckInterruptFilter(args.sourceGUID, false, true) then
			specWarnSmite:Show(args.sourceName)
			specWarnSmite:Play("kickcast")
		end
	elseif args:IsSpell(437868) then
		warnAgonizingWeakness:Show()
		timerAgonizingWeaknessCD:Start()
	elseif args:IsSpell(437817) then
		specWarnHolyNova:Show()
		specWarnHolyNova:Play("watchstep")
		timerHolyNovaCD:Start()
	elseif args:IsSpell(437995, 437951) then -- "Draining..."" or "Eating...""
		self:SetStage(2)
		warnPhase2:Show()
		warnPhase2:Play("ptwo")
		--Stop stage 1 timers
		timerHolyFireCD:Stop()
		timerMortalLashCD:Stop()
		timerHolyNovaCD:Stop()
		timerAgonizingWeaknessCD:Stop()
		if args:IsSpell(437995) then -- Jammal'an casting
			timerShadowSermonPainCD:Start(15.7)
			timerHolyNovaCD:Start(17.7)--17.7-19.4
			timerPsychicScreamCD:Start(22.6)
			timerPWSCD:Start(25.4)
			timerMassPenanceCD:Start(28.7)
		elseif args:IsSpell(437951) then -- Ogam casting
			-- "<291.25 20:19:59> [CLEU] SPELL_CAST_START#Creature-0-5209-109-15379-218718-000016C225#Ogom the Wretched##nil#437951#Eating...#nil#nil",
			-- "<322.06 20:20:29> [CLEU] SPELL_CAST_START#Creature-0-5209-109-15379-218718-000016C225#Ogom the Wretched##nil#437915#Hammers of Justice#nil#nil",
			-- "<326.06 20:20:33> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5209-109-15379-218718-000016C225#Ogom the Wretched##nil#437915#Hammers of Justice#nil#nil",
			timerHammersOfJustice:Start() -- TODO: was it co-incidence that this was pretty much exactly the usual delay?
			-- "<304.22 20:20:12> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5209-109-15379-218718-000016C225#Ogom the Wretched##nil#437884#Consecration#nil#nil",
			timerConsecration:Start(13) -- TODO: is this accurate? just based on one log
			-- "<308.64 20:20:16> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5209-109-15379-218718-000016C225#Ogom the Wretched##nil#437920#Divine Storm#nil#nil"
			timerDivineStorm:Start(17.4) -- Seems to be correlated to Consecration in general
		end
	elseif args:IsSpell(437928) then
		specWarnPsychicScream:Show()
		specWarnPsychicScream:Play("fearsoon")
		timerPsychicScreamCD:Start()
	elseif args:IsSpell(437921) then
		specWarnMassPenance:Show()
		specWarnMassPenance:Play("watchstep")
		timerMassPenanceCD:Start()
	elseif args:IsSpell(437809) then
		timerHolyFireCD:Start()
	elseif args:IsSpell(437927) then
		timerShadowSermonPainCD:Start()
	elseif args:IsSpell(437915) then
		warnHammersOfJustice:Show()
		timerHammersOfJustice:Update(31, 35)
	elseif args:IsSpell(437920) then
		warnDivineStorm:Show()
		timerDivineStorm:Update(32.4 - 1.5, 32.4)
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(437847) then
		timerMortalLashCD:Start()
	elseif args:IsSpell(437930) then
		timerPWSCD:Start()
	elseif args:IsSpell(437915) then
		timerHammersOfJustice:Start()
	elseif args:IsSpell(437884) then
		timerConsecration:Start()
		warnConsecration:Show()
	elseif args:IsSpell(437920) then
		timerDivineStorm:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 437809 then
		warnHolyFire:CombinedShow(0.3, args.destName)--On multiple targets?
	elseif args.spellId == 437847 then
		warnMortalLash:Show(args.destName)
	elseif args.spellId == 437927 then
		warnShadowSermonPain:CombinedShow(0.3, args.destName)--On multiple targets?
	elseif args.spellId == 437930 then
		if not self.Options[specWarnPowerWordShieldPurge.option] then
			warnPowerWordShield:Show(args.destName)
		end
		specWarnPowerWordShieldPurge:Show(args.destName)
		specWarnPowerWordShieldPurge:Play("dispelboss")
	end
end

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 218718 then
		timerMortalLashCD:Stop()
		timerAgonizingWeaknessCD:Stop()
	elseif cid == 218721 then
		timerHolyFireCD:Stop()
		timerHolyNovaCD:Stop()
	end
end

function mod:SPELL_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId, spellName)
	if spellId == 437887 and destGUID == UnitGUID("player") and self:AntiSpam(4, 1) then
		specWarnGTFO:Show(spellName)
		specWarnGTFO:Play("watchfeet")
	end
end
mod.SPELL_MISSED = mod.SPELL_DAMAGE
