local isClassic = WOW_PROJECT_ID == (WOW_PROJECT_CLASSIC or 2)
local isBCC = WOW_PROJECT_ID == (WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5)
local isWrath = WOW_PROJECT_ID == (WOW_PROJECT_WRATH_CLASSIC or 11)
local catID
if isWrath then
	catID = 4
elseif isBCC or isClassic then
	catID = 5
else--retail or cataclysm classic and later
	catID = 3
end
local mod	= DBM:NewMod("Broodlord", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(12017)
mod:SetEncounterID(612)
mod:SetModelID(14308)
mod:RegisterCombat("combat_yell", L.Pull)--L.Pull is backup for classic, since classic probably won't have ENCOUNTER_START to rely on and player regen never works for this boss

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 23331 18670",
	"SPELL_AURA_APPLIED 24573",
	"SPELL_AURA_REMOVED 24573",
	"UNIT_HEALTH"
)

--(ability.id = 18670 or ability.id = 23331 or ability.id = 24573) and type = "cast"
local warnBlastWave		= mod:NewSpellAnnounce(23331, 2)
local warnKnockAway		= mod:NewSpellAnnounce(18670, 3)
local warnMortal		= mod:NewTargetNoFilterAnnounce(24573, 2, nil, "Tank|Healer", 3)

local warnPhase2Soon
if DBM:IsSeasonal("SeasonOfDiscovery") then
	 warnPhase2Soon	= mod:NewPrePhaseAnnounce(2)
end

local timerMortal		= mod:NewTargetTimer(5, 24573, nil, "Tank|Healer", 3, 5, nil, DBM_COMMON_L.TANK_ICON)


-- Polyfill because I don't feel like this justifies a forced core update
local function isBlackEssenceEnabled()
	if mod.IsBwlBlackEssenceEnabled then
		return mod:IsBwlBlackEssenceEnabled()
	else
		return DBM:UnitDebuff("player", 467047) ~= nil
	end
end


function mod:OnCombatStart(delay)
	self.vb.teleportPrewarnShown = false
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(23331) and args:IsSrcTypeHostile() then
		warnBlastWave:Show()
	elseif args:IsSpell(18670) then
		warnKnockAway:Show()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(24573) and args:IsDestTypePlayer() then
		warnMortal:Show(args.destName)
		timerMortal:Start(args.destName)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(24573) and args:IsDestTypePlayer() then
		timerMortal:Stop(args.destName)
	end
end

function mod:UNIT_HEALTH(uId)
	if warnPhase2Soon and isBlackEssenceEnabled() and not self.vb.teleportPrewarnShown and self:GetUnitCreatureId(uId) == 12017 and UnitHealth(uId) / UnitHealthMax(uId) <= 0.55 then
		self.vb.teleportPrewarnShown = true
		warnPhase2Soon:Show()
	end
end
