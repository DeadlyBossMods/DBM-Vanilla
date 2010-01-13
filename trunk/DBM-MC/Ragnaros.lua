local mod	= DBM:NewMod("Ragnaros", "DBM-MC", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 1 $"):sub(12, -3))
mod:SetCreatureID(11502)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS",
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED",
	"CHAT_MSG_MONSTER_YELL"
)

local warnWrathRag		= mod:NewSpellAnnounce(20566)
local warnHandRag		= mod:NewSpellAnnounce(19780)
local warnSubmergeSoon	= mod:NewAnnounce("WarnSubmergeSoon")
local warnSubmerge		= mod:NewAnnounce("WarnSubmerge")
local warnEmergeSoon	= mod:NewAnnounce("WarnEmergeSoon")
local warnEmerge		= mod:NewAnnounce("WarnEmerge")

local timerWrathRag		= mod:NewNextTimer(111, 20566)
--local timerHandRag		= mod:NewNextTimer(111, 19780)
local timerSubmerge		= mod:NewNextTimer(180, "TimerSubmerge")
local timerEmerge		= mod:NewNextTimer(90, "TimerEmerge")

local submerged
function mod:OnCombatStart(delay)
	submerged = false
	timerSubmerge:Start(-delay)
	warnSubmergeSoon:Schedule(170-delay)
end

function mod:submerge()
	warnEmerge:Show()
	timerSubmerge:Start()
	warnSubmergeSoon:Schedule(170)
	submerge = false
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(20566) then
		warnWrathRag:Show()
		timerWrathRag:Start()
	elseif args:IsSpellID(19780) then
		warnHandRag:Show()
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.Submerge then
		self:SendSync("Submerge")
	end
end

function mod:OnSync(msg, arg)
	if msg == "Submerge" and not submerge then
		submerge = true
		warnSubmerge:Show()
		timerEmerge:Start()
		warnEmergeSoon:Schedule(80)
		self:ScheduleMethod(90, "submerge")
	end
end