local isClassic = WOW_PROJECT_ID == (WOW_PROJECT_CLASSIC or 2)
local isBCC = WOW_PROJECT_ID == (WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5)
local isWrath = WOW_PROJECT_ID == (WOW_PROJECT_WRATH_CLASSIC or 11)
local catID
if isWrath then
	catID = 5
elseif isBCC or isClassic then
	catID = 6
else--retail or cataclysm classic and later
	catID = 4
end
local mod	= DBM:NewMod("Majordomo", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod:SetCreatureID(228437, 228836, 228837)
else
	mod:SetCreatureID(12018, 11663, 11664)
end
mod:SetEncounterID(671)
mod:SetModelID(12029)
mod:SetHotfixNoticeRev(20240724000000)

mod:RegisterCombat("combat")
--mod:RegisterKill("yell", L.Kill)

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 461056 364908",
	"SPELL_CAST_SUCCESS 20619 21075 20534 461056"
)

--[[
(ability.id = 461056 or ability.id = 364908) and type = "begincast"
or (ability.id = 20619 or ability.id = 21075 or ability.id = 20534) and type = "cast"
--]]
--TODO, add https://www.wowhead.com/classic/spell=364895/fireball-volley ?
local warnTeleport			= mod:NewTargetNoFilterAnnounce(20534)
local warnDamageShield		= mod:NewSpellAnnounce(21075, 2)

local specWarnMagicReflect	= mod:NewSpecialWarningReflect(20619, "-Melee", nil, nil, 1, 2)
local specWarnDamageShield	= mod:NewSpecialWarningReflect(21075, "Melee", nil, nil, 1, 2)

local timerMagicReflect		= mod:NewBuffActiveTimer(10, 20619, nil, nil, nil, 5, nil, DBM_COMMON_L.DAMAGE_ICON)
local timerDamageShield		= mod:NewBuffActiveTimer(10, 21075, nil, nil, nil, 5, nil, DBM_COMMON_L.DAMAGE_ICON)
local timerTeleportCD		= mod:NewCDTimer(25, 20534, nil, nil, nil, 5, nil, DBM_COMMON_L.TANK_ICON)--25-30
local timerShieldCD			= mod:NewTimer(30.3, "timerShieldCD", nil, nil, nil, 6, DBM_COMMON_L.DAMAGE_ICON)--33.9 on SoD

-- New in SoD
-- https://sod.warcraftlogs.com/reports/6RBYhaHdc17x94J8#fight=64&type=casts&by=ability&view=events&hostility=1
local specWarnFlare, specWarnDarkMending, timerNextFlare
if DBM:IsSeasonal("SeasonOfDiscovery") then
	specWarnFlare		= mod:NewSpecialWarningSpell(461056, nil, nil, nil, 2, 2)
	specWarnDarkMending	= mod:NewSpecialWarningInterrupt(364908, "HasInterrupt", nil, nil, 1, 2)
	timerNextFlare		= mod:NewNextTimer(30, 461056, nil, nil, nil, 2)
end

function mod:OnCombatStart(delay)
	timerTeleportCD:Start(19.4-delay)
	timerShieldCD:Start(27.8-delay)--27-30
	if DBM:IsSeasonal("SeasonOfDiscovery") then
		timerNextFlare:Start(16-delay)
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(461056) then
		specWarnFlare:Show()
		specWarnFlare:Play("findshelter")
	elseif args:IsSpell(364908) and self:CheckInterruptFilter(args.sourceGUID, nil, true) then
		specWarnDarkMending:Show(args.sourceName)
		specWarnDarkMending:Play("kickcast")
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(20619) then
		specWarnMagicReflect:Show(BOSS)--Always a threat to casters
		specWarnMagicReflect:Play("stopattack")
		timerMagicReflect:Start()
		timerShieldCD:Start(DBM:IsSeasonal("SeasonOfDiscovery") and 33.9 or 30)
	elseif args:IsSpell(21075) then
		if self.Options.SpecWarn21075reflect and (self:IsEvent() or not self:IsTrivial()) then--Not a threat to high level melee
			specWarnDamageShield:Show(BOSS)
			specWarnDamageShield:Play("stopattack")
		else
			warnDamageShield:Show()
		end
		timerDamageShield:Start()
		timerShieldCD:Start(DBM:IsSeasonal("SeasonOfDiscovery") and 33.9 or 30)
	elseif args:IsSpell(20534) then
		warnTeleport:Show(args.destName)
		timerTeleportCD:Start()
	elseif args:IsSpell(461056) then
		-- Next cast is always 30 seconds after *success*, if the cast fails (e.g., mage ice block) then it just tries again ~immediately
		timerNextFlare:Start()
	end
end
