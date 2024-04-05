local mod	= DBM:NewMod("JammalanAndOgomSoD", "DBM-Raids-Vanilla", 9)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(218721, 218718)--Jammal'an, Ogom
mod:SetEncounterID(2957)
mod:SetBossHPInfoToHighest()
--mod:SetUsedIcons(8)
mod:SetHotfixNoticeRev(20240404000000)
--mod:SetMinSyncRevision(20231115000000)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 437805 437868 437817 437995 437928 437921 437809 437927",
	"SPELL_CAST_SUCCESS 437847 437930",
	"SPELL_AURA_APPLIED 437809 437847 437927 437930"
--	"SPELL_AURA_APPLIED_DOSE"
)

--[[
(ability.id = 437995 or ability.id = 437805 or ability.id = 437809 or ability.id = 437868 or ability.id = 437817 or ability.id = 437928 or ability.id = 437927 or ability.id = 437921) and type = "begincast"
 or (ability.id = 437847 or ability.id = 437930) and type = "cast"
 or (target.id = 218721 or target.id = 218718) and type = "death"
--]]
--TODO. First kill killed Ogom first and Jammal cast draining (and empowere). Can Jammal die first and then have Ogom empower instead?
local warnPhase2					= mod:NewPhaseAnnounce(2, 2, nil, nil, nil, nil, nil, 2)
local warnHolyFire					= mod:NewTargetNoFilterAnnounce(437809, 2, nil, "RemoveMagic")
local warnMortalLash				= mod:NewTargetNoFilterAnnounce(437847, 2, nil, "Healer|Tank")
local warnAgonizingWeakness			= mod:NewSpellAnnounce(437868, 3)
local warnShadowSermonPain			= mod:NewTargetNoFilterAnnounce(437927, 2, nil, "RemoveMagic")
local warnPowerWordShield			= mod:NewTargetNoFilterAnnounce(437930, 2)--Maybe a special warning for purgers?

local specWarnSmite					= mod:NewSpecialWarningInterrupt(437805, "HasInterrupt", nil, nil, 1, 2)
local specWarnHolyNova				= mod:NewSpecialWarningDodge(437817, nil, nil, nil, 2, 2)
local specWarnPsychicScream			= mod:NewSpecialWarningSpell(437928, nil, nil, nil, 2, 2)
local specWarnMassPenance			= mod:NewSpecialWarningDodge(437921, nil, nil, nil, 2, 2)

local timerHolyFireCD				= mod:NewCDTimer(13.4, 437809, nil, nil, nil, 5, nil, DBM_COMMON_L.MAGIC_ICON)
local timerHolyNovaCD				= mod:NewCDTimer(17.3, 437817, nil, nil, nil, 3)
local timerMortalLashCD				= mod:NewCDTimer(25.4, 437847, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK_ICON)
local timerAgonizingWeaknessCD		= mod:NewCDTimer(27.1, 437868, nil, nil, nil, 3, nil, DBM_COMMON_L.CURSE_ICON)
local timerShadowSermonPainCD		= mod:NewCDTimer(22.2, 437927, nil, nil, nil, 5, nil, DBM_COMMON_L.MAGIC_ICON)
local timerPsychicScreamCD			= mod:NewCDTimer(43.7, 437928, nil, nil, nil, 3, nil, DBM_COMMON_L.MAGIC_ICON)--Can be delayed by other casts
local timerPWSCD					= mod:NewCDTimer(15.8, 437930, nil, nil, nil, 5)--15.8-23 (lowest spell priority, so gets queued often)

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
	elseif args:IsSpell(437995) then--Draining...
		self:SetStage(2)
		warnPhase2:Show()
		warnPhase2:Play("p2two")
		--TODO< find a log where Jammal dies first and see if Ogom casts this instead (with diff ability timers)
		if args:GetSrcCreatureID() == 218721 then--Jammal'an the Prophet casting it
			timerShadowSermonPainCD:Start(15.7)
			timerPsychicScreamCD:Start(22.6)
			timerPWSCD:Start(25.4)
		else
			DBM:AddMsg("Please share your kill log with DBM authors, we don't have this kill order implimented yet")
		end
	elseif args:IsSpell(437928) then
		specWarnPsychicScream:Show()
		specWarnPsychicScream:Play("fearsoon")
		timerPsychicScreamCD:Start()
	elseif args:IsSpell(437921) then
		specWarnMassPenance:Show()
		specWarnMassPenance:Play("watchstep")
	elseif args:IsSpell(437809) then
		timerHolyFireCD:Start()
	elseif args:IsSpell(437927) then
		timerShadowSermonPainCD:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(437847) then
		timerMortalLashCD:Start()
	elseif spellId == 437930 then
		timerPWSCD:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 437809 then
		warnHolyFire:CombinedShow(0.3, args.destName)--On multiple targets?
	elseif spellId == 437847 then
		warnMortalLash:Show(args.destName)
	elseif spellId == 437927 then
		warnShadowSermonPain:CombinedShow(0.3, args.destName)--On multiple targets?
	elseif spellId == 437930 then
		warnPowerWordShield:Show(args.destName)
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
