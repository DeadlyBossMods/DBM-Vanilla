local mod	= DBM:NewMod("Alar", "DBM-TheEye")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(19514)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED",
	"SPELL_HEAL",
	"SPELL_DAMAGE",
	"SPELL_MISSED"
)

local warnPhase1		= mod:NewPhaseAnnounce(1)
local warnQuill			= mod:NewSpellAnnounce(34229, 3)
local warnPhase2		= mod:NewPhaseAnnounce(2)
local warnArmor			= mod:NewTargetAnnounce(35410, 3)
local warnMeteor		= mod:NewSpellAnnounce(35181, 3)

local specWarnQuill		= mod:NewSpecialWarningSpell(34229)
local specWarnFire		= mod:NewSpecialWarningMove(35383)

local timerQuill		= mod:NewCastTimer(10, 34229)
local timerMeteor		= mod:NewCDTimer(52, 35181)
local timerArmor		= mod:NewTargetTimer(60, 35410)
local timerNextPlatform	= mod:NewTimer(35, "NextPlatform")--This has no spell trigger, the target scanning bosses target is still required if loop isn't accurate enough.

local berserkTimer		= mod:NewBerserkTimer(600)

local fireSpam = 0
local meteorTime = 0

function mod:Platform()--An attempt to avoid ugly target scanning, but i get feeling this won't be accurate enough.
	timerNextPlatform:Start()
	self:ScheduleMethod(35, "Platform")
end

function mod:OnCombatStart(delay)
	fireSpam = 0
	meteorTime = 0
	warnPhase1:Show()
	timerNextPlatform:Start(-delay)
	self:ScheduleMethod(35-delay, "Platform")
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(34229) then
		warnQuill:Show()
		specWarnQuill:Show()
		timerQuill:Start()
	elseif args:IsSpellID(35383) and args:IsPlayer() and GetTime() - fireSpam >= 2 then
		specWarnFire:Show()
		fireSpam = GetTime()
	elseif args:IsSpellID(35410) then
		warnArmor:Show(args.destName)
		timerArmor:Start(args.destName)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(35410) then
		timerArmor:Cancel(args.destName)
	end
end

function mod:SPELL_HEAL(args)
	if args:IsSpellID(34342) then
		warnPhase2:Show()
		berserkTimer:Start()
		timerMeteor:Start(40)--This seems to vary slightly depending on where in room he shoots it.
	end
end

function mod:SPELL_DAMAGE(args)
	if args:IsSpellID(35181) and GetTime() - meteorTime > 30 then
		warnMeteor:Show()
		timerMeteor:Start()
		meteorTime = GetTime()
	end
end

function mod:SPELL_MISSED(args)
	if args:IsSpellID(45680) and GetTime() - meteorTime > 30 then
		warnMeteor:Show()
		timerMeteor:Start()
		meteorTime = GetTime()
	end
end
