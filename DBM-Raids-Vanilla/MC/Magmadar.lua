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
local mod	= DBM:NewMod("Magmadar", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(DBM:IsSeasonal("SeasonOfDiscovery") and 228430 or 11982)
mod:SetEncounterID(664)
mod:SetModelID(10193)
mod:SetHotfixNoticeRev(20240724000000)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 19451",
	"SPELL_AURA_REMOVED 19451",
	"SPELL_CAST_SUCCESS 19408 461125"
)

--[[
(ability.id = 19408 or ability.id = 19451 or ability.id = 461125) and type = "cast"
 or ability.id = 19428 and type = "applydebuff"
--]]
--TODO, core hound summon not in combat log, so need transcriptor to add alert/timer for that
local warnPanic			= mod:NewSpellAnnounce(19408, 2)
local warnEnrage		= mod:NewTargetNoFilterAnnounce(19451, 3, nil , "Healer|Tank|RemoveEnrage")

local specWarnEnrage	= mod:NewSpecialWarningDispel(19451, "RemoveEnrage", nil, nil, 1, 2)

local timerPanicCD		= mod:NewCDTimer(30, 19408)--30-40
local timerEnrage		= mod:NewBuffActiveTimer(8, 19451, nil, nil, nil, 5, nil, DBM_COMMON_L.ENRAGE_ICON)

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(19451) and args:IsDestTypeHostile() then
		if self.Options.SpecWarn19451dispel then
			specWarnEnrage:Show(args.destName)
			specWarnEnrage:Play("enrage")
		else
			warnEnrage:Show(args.destName)
		end
		timerEnrage:Start()
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(19451) and args:IsDestTypeHostile() then
		timerEnrage:Stop()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(19408, 461125) then
		warnPanic:Show()
		timerPanicCD:Start()
	end
end
