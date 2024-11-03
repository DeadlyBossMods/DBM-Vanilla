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
local mod	= DBM:NewMod("Gehennas", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(DBM:IsSeasonal("SeasonOfDiscovery") and 228431 or 12259)--, 11661
mod:SetEncounterID(665)
mod:SetModelID(13030)
mod:SetHotfixNoticeRev(20240724000000)
mod:SetZone(409)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 19716 19717 461232",
	"SPELL_SUMMON 365100",
	"SPELL_AURA_APPLIED 20277"
)

--[[
(ability.id = 19716 or ability.id = 19717 or ability.id = 461232) and type = "cast"
 or ability.id = 365100 and type = "summon"
--]]
local warnRainFire	= mod:NewSpellAnnounce(19717, 2, nil, false)
local warnCurse		= mod:NewSpellAnnounce(19716, 3)
local warnFist		= mod:NewTargetAnnounce(20277, 2, nil, false, 2)

local specWarnGTFO	= mod:NewSpecialWarningGTFO(19717, nil, nil, nil, 1, 8)

local timerRoF		= mod:NewCDTimer(6, 19717, nil, false, nil, 3)
local timerCurse	= mod:NewCDTimer(26.7, 19716, nil, nil, nil, 3, nil, DBM_COMMON_L.HEALER_ICON..DBM_COMMON_L.CURSE_ICON)--26.7-30
--local timerFist	= mod:NewBuffActiveTimer(4, 20277, nil, false, 2, 3)

function mod:OnCombatStart(delay)
	timerCurse:Start(6-delay)
	if self:IsEvent() or not self:IsTrivial() then
		self:RegisterShortTermEvents(
			"SPELL_PERIODIC_DAMAGE 19717",
			"SPELL_PERIODIC_MISSED 19717"
		)
	end
end

function mod:OnCombatEnd()
	self:UnregisterShortTermEvents()
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(19716, 461232) and args:IsSrcTypeHostile() then
		warnCurse:Show()
		timerCurse:Start()
	--Classic Era and retail version (this ID on SoD fires on players getting hit by it for some reason, so we MUST ignore it)
	elseif args:IsSpell(19717) and args:IsSrcTypeHostile() and not DBM:IsSeasonal("SeasonOfDiscovery") then
		warnRainFire:Show()
		timerRoF:Start()
	end
end

function mod:SPELL_SUMMON(args)
	--Season of Mastery and Season of Discovery version
	if args.spellId == 365100 then
		warnRainFire:Show()
		timerRoF:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(20277) and args:IsDestTypePlayer() then
		warnFist:CombinedShow(0.3, args.destName)
	end
end

do
	local RainofFire = DBM:GetSpellName(19717)--Classic Note
	function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, destName, _, _, spellId, spellName)
		if (spellId == 19717 or spellName == RainofFire) and destGUID == UnitGUID("player") and self:AntiSpam() then
			specWarnGTFO:Show(spellName)
			specWarnGTFO:Play("watchfeet")
		end
	end
	mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE
end
