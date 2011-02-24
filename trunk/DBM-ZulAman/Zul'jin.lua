local mod	= DBM:NewMod("ZulJin", "DBM-ZulAman")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(23863)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_CAST_SUCCESS",
	"CHAT_MSG_MONSTER_YELL"
)

local warnThrow			= mod:NewTargetAnnounce(43093, 3)
local warnParalyze		= mod:NewSpellAnnounce(43095, 4)
local warnParalyzeSoon	= mod:NewPreWarnAnnounce(43095, 5, 3)
local warnClaw			= mod:NewTargetAnnounce(43150, 3)
local warnFlame			= mod:NewSpellAnnounce(43213, 3)
local warnPhase2		= mod:NewPhaseAnnounce(2)
local warnPhase3		= mod:NewPhaseAnnounce(3)
local warnPhase4		= mod:NewPhaseAnnounce(4)
local warnPhase5		= mod:NewPhaseAnnounce(5)

local specWarnParalyze	= mod:NewSpecialWarningSpell(43095)

local timerParalyzeCD	= mod:NewCDTimer(27, 43095)
local timerParalyze		= mod:NewBuffActiveTimer(5, 43095)

function mod:OnCombatStart(delay)

end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(43093) then
		warnThrow:Show(args.destName)
	elseif args:IsSpellID(43150) then
		warnClaw:Show(args.destName)
	elseif args:IsSpellID(43213) then
		warnFlame:Show()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(43095) then
		warnParalyze:Show()
		warnParalyzeSoon:Schedule(22)
		specWarnParalyze:Show()
		timerParalyze:Start()
		timerParalyzeCD:Start()
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.YellPhase2 or msg:find(L.YellPhase2) then
		warnPhase2:Show()
	elseif msg == L.YellPhase3 or msg:find(L.YellPhase3) then
		warnParalyzeSoon:Cancel()
		timerParalyzeCD:Cancel()
		warnPhase3:Show()
	elseif msg == L.YellPhase4 or msg:find(L.YellPhase4) then
		warnPhase4:Show()
	elseif msg == L.YellPhase5 or msg:find(L.YellPhase5) then
		warnPhase5:Show()
	end
end