local mod	= DBM:NewMod("Solarian", "DBM-TheEye")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(18805)
mod:SetModelID(18239)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_CAST_START",
	"CHAT_MSG_MONSTER_YELL"
)

local warnDomination	= mod:NewCastAnnounce(37135, 4)--Trash, but most poeple pull this boss with the trash
local warnWrath			= mod:NewTargetAnnounce(42783, 3)
local warnSplit			= mod:NewAnnounce("WarnSplit", 4, 39414)
local warnSplitSoon		= mod:NewAnnounce("WarnSplitSoon", 3, 39414)
local warnAgent			= mod:NewAnnounce("WarnAgent", 3, 39414)
local warnPriest		= mod:NewAnnounce("WarnPriest", 3, 39414)
local warnPhase2		= mod:NewPhaseAnnounce(2)

local specWarnDomination= mod:NewSpecialWarningInterrupt(37135)
local specWarnWrath		= mod:NewSpecialWarningYou(42783)

local timerWrath		= mod:NewTargetTimer(6, 42783)
local timerSplit		= mod:NewTimer(90, "TimerSplit", 39414)
local timerAgent		= mod:NewTimer(6, "TimerAgent", 39414)
local timerPriest		= mod:NewTimer(22, "TimerPriest", 39414)

local berserkTimer		= mod:NewBerserkTimer(600)

mod:AddBoolOption("WrathIcon", true)
mod:AddBoolOption("WrathWhisper", false, "announce")


function mod:OnCombatStart(delay)
	timerSplit:Start(50-delay)
	warnSplitSoon:Schedule(45)
	berserkTimer:Start(-delay)
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 42783 then
		warnWrath:Show(args.destName)
		if args:IsPlayer() then
			specWarnWrath:Show()
		end
		if self.Options.WrathIcon then
			self:SetIcon(args.destName, 8, 6)
		end
		if DBM:GetRaidRank() > 1 and self.Options.WrathWhisper then
			self:SendWhisper(L.WrathWhisper, args.destName)
		end
	end
end

function mod:SPELL_CAST_START(args)
	if args.spellId == 37135 then
		warnDomination:Show()
		specWarnDomination:Show(args.sourceName)
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.YellSplit1 or msg:find(L.YellSplit1) or msg == L.YellSplit2 or msg:find(L.YellSplit2) then
		warnSplit:Show()
		timerAgent:Start()
		warnAgent:Schedule(6)
		timerPriest:Start()
		warnPriest:Schedule(22)
		timerSplit:Start()
		warnSplitSoon:Schedule(85)
	elseif msg == L.YellPhase2 or msg:find(L.YellPhase2) then
		warnPhase2:Show()
		timerAgent:Cancel()
		warnAgent:Cancel()
		timerPriest:Cancel()
		warnPriest:Cancel()
		timerSplit:Cancel()
		warnSplitSoon:Cancel()
	end
end
