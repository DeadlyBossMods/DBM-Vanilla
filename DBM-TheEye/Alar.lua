local mod	= DBM:NewMod("Alar", "DBM-TheEye")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(19514)
mod:SetModelID(18945)
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
local timerNextPlatform	= mod:NewTimer(34.5, "NextPlatform", 40192)--This has no spell trigger, the target scanning bosses target is still required if loop isn't accurate enough.

local berserkTimer		= mod:NewBerserkTimer(600)


function mod:Platform()--An attempt to avoid ugly target scanning, but i get feeling this won't be accurate enough.
	timerNextPlatform:Start()
	self:ScheduleMethod(34.5, "Platform")
end

function mod:OnCombatStart(delay)
	warnPhase1:Show()
	timerNextPlatform:Start(-delay)
	self:ScheduleMethod(34.5-delay, "Platform")
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 34229 then
		warnQuill:Show()
		specWarnQuill:Show()
		timerQuill:Start()
	elseif args.spellId == 35383 and args:IsPlayer() and self:AntiSpam(3, 1) then
		specWarnFire:Show()
	elseif args.spellId == 35410 then
		warnArmor:Show(args.destName)
		timerArmor:Start(args.destName)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args.spellId == 35410 then
		timerArmor:Cancel(args.destName)
	end
end

function mod:SPELL_HEAL(sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellId)
	if spellId == 34342 then
		warnPhase2:Show()
		berserkTimer:Start()
		timerMeteor:Start(40)--This seems to vary slightly depending on where in room he shoots it.
		self:UnscheduleMethod("Platform")
		timerNextPlatform:Cancel()
	end
end

function mod:SPELL_DAMAGE(sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellId)
	if (spellId == 35181 or spellId == 45680) and self:AntiSpam(30, 2) then
		warnMeteor:Show()
		timerMeteor:Start()
	end
end
mod.SPELL_MISSED = mod.SPELL_DAMAGE
