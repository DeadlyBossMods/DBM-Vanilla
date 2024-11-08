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
local mod	= DBM:NewMod("Garr-Classic", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(DBM:IsSeasonal("SeasonOfDiscovery") and 228432 or 12057)--, 12099
mod:SetEncounterID(666)
mod:SetModelID(12110)
mod:SetHotfixNoticeRev(20240724000000)
mod:SetZone(409)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 15732",
	"SPELL_CAST_SUCCESS 19492 20506"
)

--[[
(ability.id = 20506 or ability.id = 19492) and type = "cast"
--]]
--TODO, add https://www.wowhead.com/classic/spell=19496/magma-shackles ?
local warnAntiMagicPulse	= mod:NewSpellAnnounce(19492, 2)
local warnImmolate			= mod:NewTargetNoFilterAnnounce(15732, 2, nil, false, 3)

local timerAntiMagicPulseCD	= mod:NewCDTimer(15.7, 19492, nil, nil, nil, 2)--15.7-20 variation
local timerMagmakinCD		= mod:NewCDTimer(5, 20506, nil, nil, nil, 1)--5-6.5 variation

function mod:OnCombatStart(delay)
	if DBM:IsSeasonal("SeasonOfDiscovery") then
		timerMagmakinCD:Start(4.9-delay)
	end
	timerAntiMagicPulseCD:Start(10-delay)
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(15732) and args:IsDestTypePlayer() then
		warnImmolate:CombinedShow(1, args.destName)
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(19492) then
		warnAntiMagicPulse:Show()
		timerAntiMagicPulseCD:Start()
	elseif args:IsSpell(20506) then
		timerMagmakinCD:Start()
	end
end
