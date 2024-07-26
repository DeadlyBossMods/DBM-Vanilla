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
	"SPELL_CAST_SUCCESS 19408 19451 461125",
	"UNIT_SPELLCAST_SUCCEEDED"
)

--[[
(ability.id = 19408 or ability.id = 19451 or ability.id = 461125) and type = "cast"
 or ability.id = 19428 and type = "applydebuff"
--]]
--TODO, core hound summon not in combat log, so need transcriptor to add alert/timer for that
local warnPanic			= mod:NewSpellAnnounce(19408, 2)
local warnFrenzy		= mod:NewTargetNoFilterAnnounce(19451, 3, nil , "Healer|Tank|RemoveEnrage")

local specWarnFrenzy	= mod:NewSpecialWarningDispel(19451, "RemoveEnrage", nil, nil, 1, 2)

local timerPanicCD		= mod:NewCDTimer(30, 19408)--30-40
local timerFrenzyCD		= mod:NewCDTimer(17.8, 19451, nil, nil, nil, 3, nil, DBM_COMMON_L.ENRAGE_ICON)
local timerFrenzy		= mod:NewBuffActiveTimer(8, 19451, nil, nil, nil, 5, nil, DBM_COMMON_L.ENRAGE_ICON)

local warnCoreHound--timerCoreHound
if DBM:IsSeasonal("SeasonOfDiscovery") then
	warnCoreHound		= mod:NewSpellAnnounce(364727, 2)
--	timerCoreHound		= mod:NewCDTimer(30, 364727, nil, nil, nil, 1)
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(19451) and args:IsDestTypeHostile() then
		if self.Options.SpecWarn19451dispel then
			specWarnFrenzy:Show(args.destName)
			specWarnFrenzy:Play("enrage")
		else
			warnFrenzy:Show(args.destName)
		end
		timerFrenzy:Start()
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(19451) and args:IsDestTypeHostile() then
		timerFrenzy:Stop()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(19408, 461125) then
		warnPanic:Show()
		timerPanicCD:Start()
	elseif args:IsSpell(19451) and DBM:IsSeasonal("SeasonOfDiscovery") then--Timer is chaotic in regular classic but in SoD it's consistent 17.8-21~
		timerFrenzyCD:Start()
	end
end

function mod:UNIT_SPELLCAST_SUCCEEDED(_, _, spellId)
	if spellId == 364727 or spellId == 461131 then--Lower heat levels (confirmed), higher heat levels?
		self:SendSync("CoreHound")
	end
end

function mod:OnSync(msg)
	if msg == "CoreHound" and self:AntiSpam(5, 1) then
		warnCoreHound:Show()
--		timerCoreHound:Start()
	end
end

--Snoop BW comms for event as well
function mod:OnBWSync(msg)
	if msg == "sum" and self:AntiSpam(5, 1) then
		warnCoreHound:Show()
--		timerCoreHound:Start()
	end
end
