local mod	= DBM:NewMod("Supremus", "DBM-BlackTemple")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(22898)
mod:SetModelID(21145)
mod:SetZone()
mod:SetUsedIcons(8)

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"RAID_BOSS_EMOTE"
)

local warnPhase			= mod:NewAnnounce("WarnPhase", 4, 42052)
local warnPhaseSoon		= mod:NewAnnounce("WarnPhaseSoon", 3, 42052)
local warnKite			= mod:NewAnnounce("WarnKite", 3, 42052)

local specWarnMolten	= mod:NewSpecialWarningMove(40265)
local specWarnVolcano	= mod:NewSpecialWarningMove(42052)

local timerPhase		= mod:NewTimer(60, "TimerPhase", 42052)

local berserkTimer		= mod:NewBerserkTimer(900)

mod:AddBoolOption("KiteIcon", true)
mod:AddBoolOption("KiteWhisper", false, "announce")

local phase2 = false
local lastTarget = false

function mod:ScanTarget()
	local target = self:GetBossTarget(22898)
	if target then
		if lastTarget ~= target then
			warnKite:Show(target)
			lastTarget = Target
			if self.Options.KiteIcon then
				self:SetIcon(target, 8)
			end
			if IsRaidLeader() and self.Options.KiteWhisper then
				self:SendWhisper(L.KiteWhisper, target)
			end
		end
	end
end

function mod:OnCombatStart(delay)
	berserkTimer:Start(-delay)
	timerPhase:Start(-delay, L.Kite)
	warnPhaseSoon:Schedule(50, L.Kite)
	phase2 = false
	lastTarget = false
end

function mod:OnCombatEnd()
	if lastTarget then
		self:SetIcon(lastTarget, 0)
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(40265) and args:IsPlayer() and self:AntiSpam(4, 1) then
		specWarnMolten:Show()
	elseif args:IsSpellID(42052) and args:IsPlayer() and self:AntiSpam(4, 2) then
		specWarnVolcano:Show()
	end
end

function mod:RAID_BOSS_EMOTE(msg)
	if msg == L.PhaseKite or msg:find(L.PhaseKite) then
		phase2 = true
		warnPhase:Show(L.Kite)
		warnPhaseSoon:Schedule(50, L.Tank)
		timerPhase:Start(L.Tank)
		self:ScheduleMethod(4, "ScanTarget")
		if lastTarget then
			self:SetIcon(lastTarget, 0)
		end
	elseif msg == L.ChangeTarget or msg:find(L.ChangeTarget) then
		self:ScheduleMethod(0.5, "ScanTarget")
	elseif msg == L.PhaseTank or msg:find(L.PhaseTank) then
		phase2 = false
		warnPhase:Show(L.Tank)
		warnPhaseSoon:Schedule(50, L.Kite)
		timerPhase:Start(L.Kite)
		if lastTarget then
			self:SetIcon(lastTarget, 0)
		end
	end
end
