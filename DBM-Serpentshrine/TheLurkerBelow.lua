local mod	= DBM:NewMod("LurkerBelow", "DBM-Serpentshrine")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(21217)
mod:SetModelID(20216)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_DAMAGE",
	"SPELL_MISSED",
	"RAID_BOSS_EMOTE"
)

local warnSubmerge		= mod:NewAnnounce("WarnSubmerge", 3)
local warnSubmergeSoon	= mod:NewAnnounce("WarnSubmergeSoon", 3)
local warnEmerge		= mod:NewAnnounce("WarnEmerge", 3)
local warnEmergeSoon	= mod:NewAnnounce("WarnEmergeSoon", 3)
local warnSpout			= mod:NewSpellAnnounce(37433, 4)
local warnWhirl			= mod:NewSpellAnnounce(37363, 3)

local specWarnSpout		= mod:NewSpecialWarningSpell(37433)

local timerSubmerge		= mod:NewTimer(90, "TimerSubmerge", 39091)
local timerEmerge		= mod:NewTimer(60, "TimerEmerge", 39088)
local timerSpoutCD		= mod:NewCDTimer(50, 37433)
local timerSpout		= mod:NewCastTimer(22, 37433)
local timerWhirlCD		= mod:NewCDTimer(17, 37363)

function mod:CheckDive()
	local foundIt
	self:ScheduleMethod(0.5, "CheckDive")
	for i = 1, DBM:GetGroupMembers() do
		if UnitName("raid"..i.."target") == L.name then
			foundIt = true
			break
		end
	end
	if not foundIt then
		warnSubmerge:Show()
		timerEmerge:Show()
		timerSpoutCD:Start(63)
		warnEmerge:Schedule(60)
		self:UnscheduleMethod("CheckDive")
		self:ScheduleMethod(150, "CheckDive")
	end
end

function mod:OnCombatStart(delay)
	submerged = false
	timerWhirlCD:Start(17-delay)
	timerSpoutCD:Start(37-delay)
	warnSubmergeSoon:Schedule(80)
	self:ScheduleMethod(90, "CheckDive")
end

function mod:SPELL_DAMAGE(sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellId)
	if spellId == 37363 and self:AntiSpam(10) then
		warnWhirl:Show()
		timerWhirlCD:Start()
	end
end
mod.SPELL_MISSED = mod.SPELL_DAMAGE

function mod:RAID_BOSS_EMOTE(msg)
	if msg == L.Spout or msg:find(L.Spout) then
		warnSpout:Show()
		specWarnSpout:Show()
		timerSpout:Start()
		timerSpoutCD:Start()
	end
end