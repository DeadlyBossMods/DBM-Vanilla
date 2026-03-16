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
mod:DisableHardcodedOptions()
mod:SetCreatureID(DBM:IsSeasonal("SeasonOfDiscovery") and 228432 or 12057)--, 12099
mod:SetEncounterID(666)
mod:SetModelID(12110)
mod:SetHotfixNoticeRev(20240724000000)
mod:SetZone(409)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 15732",
	"SPELL_CAST_SUCCESS 19492 19496 20506"
)

local warnImmolate			= mod:NewTargetNoFilterAnnounce(15732, 2, nil, false, 3)
local warnAntiMagicPulse	= mod:NewSpellAnnounce(19492, 2)
local warnMagmaShackles		= mod:NewSpellAnnounce(19496, 2)

local timerAntiMagicPulse	= mod:NewVarTimer("v16.1-21.1", 19492, nil, nil, nil, 2)
local timerMagmaShackles	= mod:NewVarTimer("v10.9-16.2", 19496, nil, nil, nil, 2)

local warnMamakin, timerMagmakinCD
if DBM:IsSeasonal("SeasonOfDiscovery") then
local warnMamakin 		= mod:NewSpellAnnounce(20506, 2)
local timerMagmakinCD 	= mod:NewCDTimer(4.8, 20506, nil, nil, nil, 1)--5-6.5 variation, SoD: 4.8-5.0
end


function mod:OnCombatStart()
	if DBM:IsSeasonal("SeasonOfDiscovery") then
		timerMagmakinCD:Start(4.9)
	end
	timerAntiMagicPulse:Start("v11-16.2")
	timerMagmaShackles:Start("v5.6-11.3")
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(15732) and args:IsDestTypePlayer() then
		warnImmolate:CombinedShow(1, args.destName)
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(19492) then
		warnAntiMagicPulse:Show()
		timerAntiMagicPulse:Start()
	elseif args:IsSpell(20506) then
		timerMagmakinCD:Start()
	end
end
