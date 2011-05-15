local mod	= DBM:NewMod("Souls", "DBM-BlackTemple")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(23420)
mod:SetModelID(21483)
mod:SetZone()
mod:SetUsedIcons(4, 5, 6, 7, 8)

mod:RegisterCombat("yell", L.Pull)

mod:RegisterEvents(
	"CHAT_MSG_RAID_BOSS_EMOTE",
	"CHAT_MSG_MONSTER_YELL",
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_APPLIED_DOSE",
	"SPELL_CAST_START",
	"SPELL_DAMAGE"
)

local warnFixate		= mod:NewTargetAnnounce(41294, 3)
local warnDrain			= mod:NewSpellAnnounce(41303, 3)
local warnEnrage		= mod:NewAnnounce("WarnEnrage", 4, 41292)
local warnEnrageSoon	= mod:NewAnnounce("WarnEnrageSoon", 3, 41292)
local warnEnrageEnd		= mod:NewAnnounce("WarnEnrageEnd", 3, 41292)
local warnPhase2		= mod:NewPhaseAnnounce(2)
local warnMana			= mod:NewAnnounce("WarnMana", 4, 41350)
local warnDeaden		= mod:NewTargetAnnounce(41410, 3)
local warnShockCast		= mod:NewSpellAnnounce(41426, 3, false)
local warnShield		= mod:NewSpellAnnounce(41431, 3)
local warnPhase3		= mod:NewPhaseAnnounce(3)
local warnSoul			= mod:NewSpellAnnounce(41545, 3)
local warnSpite			= mod:NewSpellAnnounce(41376, 3)

local specWarnShock		= mod:NewSpecialWarningInterrupt(41426, false)
local specWarnShield	= mod:NewSpecialWarningDispel(41431)
local specWarnSpite		= mod:NewSpecialWarningYou(41376)

local timerEnrage		= mod:NewTimer(15, "TimerEnrage", 40683)
local timerNextEnrage	= mod:NewTimer(32, "TimerNextEnrage", 40683)
local timerDeaden		= mod:NewTargetTimer(10, 41410)
local timerNextDeaden	= mod:NewCDTimer(31, 41410)
local timerMana			= mod:NewTimer(160, "TimerMana", 41350)
local timerNextShield	= mod:NewCDTimer(15, 41431)
local timerNextSoul		= mod:NewCDTimer(10, 41545)

mod:AddBoolOption("DrainIcon", true)
mod:AddBoolOption("SpiteIcon", true)
mod:AddBoolOption("SpiteWhisper", false, "announce")

local warnDrainTargets = {}
local warnSpiteTargets = {}
local lastFixate = false
local drainIcon = 8
local spiteIcon = 8
local soulSpam = 0

local function showDrain()
	warnDrain:Show(table.concat(warnDrainTargets, "<, >"))
	table.wipe(warnDrainTargets)
	drainIcon = 8
end

local function showSpite()
	warnSpite:Show(table.concat(warnSpiteTargets, "<, >"))
	table.wipe(warnSpiteTargets)
	spiteIcon = 8
end

function mod:OnCombatStart(delay)
	lastFixate = false
	soulSpam = 0
	table.wipe(warnSpiteTargets)
	timerNextEnrage:Start(47-delay)
	warnEnrageSoon:Schedule(42-delay)
	DBM.BossHealth:AddBoss(23418, L.Suffering)
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(41431) and not args:IsDestTypePlayer() then
		warnShield:Show()
		timerNextShield:Start()
		specWarnShield:Show(args.destName)
	elseif args:IsSpellID(41376) then
		warnSpiteTargets[#warnSpiteTargets + 1] = args.destName
		self:Unschedule(showSpite)
		if self.Options.SpiteIcon then
			self:SetIcon(args.destName, spiteIcon)
			spiteIcon = spiteIcon - 1
		end
		if args:IsPlayer() then
			specWarnSpite:Show()
		end
		if IsRaidLeader() and self.Options.SpiteWhisper then
			self:SendWhisper(L.SpiteWhisper, args.destName)
		end
		self:Schedule(0.3, showSpite)
	elseif args:IsSpellID(41303) then
		warnDrainTargets[#warnDrainTargets + 1] = args.destName
		self:Unschedule(showDrain)
		if self.Options.DrainIcon then
			self:SetIcon(args.destName, drainIcon)
			drainIcon = drainIcon - 1
		end
		self:Schedule(1, showDrain)
	elseif args:IsSpellID(41294) then
		if lastFixate ~= args.destName then
			warnFixate:Show(args.destName)
			lastFixate = args.destName
		end
	elseif args:IsSpellID(41410) then
		warnDeaden:Show(args.destName)
		timerDeaden:Start(args.destName)
	end
end

mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(41410) then
		timerNextDeaden:Start()
	elseif args:IsSpellID(41426) then
		warnShockCast:Show()
		if self:GetUnitCreatureId("target") == 23419 or self:GetUnitCreatureId("focus") == 23419 then
			specWarnShock:Show()
		end
	end
end

function mod:SPELL_DAMAGE(args)
	if args:IsSpellID(41545) and GetTime() - soulSpam >= 3 then
		warnSoul:Show()
		timerNextSoul:Start()
		soulSpam = GetTime()
	end
end

function mod:CHAT_MSG_RAID_BOSS_EMOTE(msg)
	if msg == L.Enrage or msg:find(L.Enrage) then
		warnEnrage:Show()
		timerEnrage:Start()
		timerNextEnrage:Schedule(15)
		warnEnrageEnd:Schedule(15)
		warnEnrageSoon:Schedule(42)
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.Phase2 or msg:find(L.Phase2) or msg == L.Phase2d or msg:find(L.Phase2d) then
		timerNextEnrage:Cancel()
		warnEnrageEnd:Cancel()
		warnEnrageSoon:Cancel()
		warnPhase2:Show()
		warnMana:Schedule(130)
		timerMana:Start()
		timerNextShield:Start(13)
		timerNextDeaden:Start(28)
		DBM.BossHealth:AddBoss(23419, L.Desire)
	elseif msg == L.Phase3 or msg:find(L.Phase3) then
		warnMana:Cancel()
		timerMana:Cancel()
		timerNextShield:Cancel()
		timerNextDeaden:Cancel()
		warnPhase3:Show()
		timerNextSoul:Start()
		DBM.BossHealth:AddBoss(23450, L.Anger)
	end
end
