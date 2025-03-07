local isClassic = WOW_PROJECT_ID == (WOW_PROJECT_CLASSIC or 2)
local isBCC = WOW_PROJECT_ID == (WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5)
local isWrath = WOW_PROJECT_ID == (WOW_PROJECT_WRATH_CLASSIC or 11)
local catID
if isBCC or isClassic then
	catID = 4
elseif isWrath then--Wrath classic
	catID = 3
else--Cataclysm classic
	catID = 5
end
local mod = DBM:NewMod("Bloodlord", "DBM-Raids-Vanilla", catID)
local L = mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(11382, 14988)
mod:SetEncounterID(787)
mod:SetHotfixNoticeRev(20200418000000)--2020, 04, 18
mod:SetZone(309)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 24314 24318 16856",
	"CHAT_MSG_MONSTER_YELL"
)

--TODO, actual timer for abilities. Tank swap for mortal?
local warnFrenzy	= mod:NewTargetNoFilterAnnounce(24318, 3, nil, "Tank|Healer", 2)
local warnGaze		= mod:NewTargetNoFilterAnnounce(24314, 4)
local warnMortal	= mod:NewTargetNoFilterAnnounce(16856, 2, nil, "Tank|Healer", 2)

local specWarnGaze	= mod:NewSpecialWarningCast(24314, nil, nil, nil, 3, 2)

local timerGaze 	= mod:NewTargetTimer(6, 24314, nil, nil, nil, 3)
local timerMortal	= mod:NewTargetTimer(5, 16856, nil, "Tank|Healer", 2, 5, nil, DBM_COMMON_L.TANK_ICON)

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(24314) then
		timerGaze:Start(args.destName)
		if self:AntiSpam(3, args.destName) then
			if args:IsPlayer() then
				specWarnGaze:Show()
				specWarnGaze:Play("stopcast")
			else
				warnGaze:Show(args.destName)
			end
		end
	elseif args:IsSpell(24318) and args:IsDestTypeHostile() then
		warnFrenzy:Show(args.destName)
	elseif args:IsSpell(16856) and args:IsDestTypePlayer() then
		warnMortal:Show(args.destName)
		timerMortal:Start(args.destName)
	end
end

--Yell gives target 1.5-2 seconds faster than combat log, so we attempt to parse it first
--Combat log is used as fallback and to start the duration timer
function mod:CHAT_MSG_MONSTER_YELL(msg, mob, _, _, targetName)
	if msg:find(L.GazeYell) and targetName then
		if self:AntiSpam(3, targetName) then
			if targetName == UnitName("player") then
				specWarnGaze:Show()
				specWarnGaze:Play("stopcast")
			else
				warnGaze:Show(targetName)
			end
		end
	end
end
