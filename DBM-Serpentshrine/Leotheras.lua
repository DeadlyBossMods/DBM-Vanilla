local mod	= DBM:NewMod("Leotheras", "DBM-Serpentshrine")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(21215)
mod:SetModelID(20514)
mod:SetZone()
mod:SetUsedIcons(5, 6, 7, 8)

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"CHAT_MSG_MONSTER_YELL"
)

local warnWhirl			= mod:NewSpellAnnounce(37640, 3)
local warnPhase			= mod:NewAnnounce("WarnPhase", 3)
local warnPhaseSoon		= mod:NewAnnounce("WarnPhaseSoon", 3)
local warnDemon			= mod:NewTargetAnnounce(37676, 4)
local warnMC			= mod:NewTargetAnnounce(37749, 4)
local warnPhase2		= mod:NewPhaseAnnounce(2)

local specWarnWhirl		= mod:NewSpecialWarningRun(37640)
local specWarnDemon		= mod:NewSpecialWarningYou(37676)

local timerWhirlCD		= mod:NewCDTimer(27, 37640)
local timerWhirl		= mod:NewCastTimer(12, 37640)
local timerPhase		= mod:NewTimer(60, "TimerPhase", 39088)
local timerDemonCD		= mod:NewCDTimer(23, 37676)
local timerDemon		= mod:NewBuffActiveTimer(30, 37676)

local berserkTimer		= mod:NewBerserkTimer(600)

mod:AddBoolOption("DemonIcon", true)

local warnDemonTargets = {}
local warnMCTargets = {}
local demonIcon = 8
local whirlCount = 0
local phase2 = false

local function humanWarns()
	warnPhase:Show(L.Human)
	warnPhaseSoon:Schedule(55, L.Demon)
	timerWhirlCD:Start(15)
	timerPhase:Start(L.Demon)
end

local function showDemonTargets()
	warnDemon:Show(table.concat(warnDemonTargets, "<, >"))
	table.wipe(warnDemonTargets)
	demonIcon = 8
	timerDemon:Start()
end

local function showMCTargets()
	warnMC:Show(table.concat(warnMCTargets, "<, >"))
	table.wipe(warnMCTargets)
end

function mod:OnCombatStart(delay)
	demonIcon = 8
	whirlCount = 0
	phase2 = false
	table.wipe(warnMCTargets)
	table.wipe(warnDemonTargets)
	timerWhirlCD:Start(15)
	timerPhase:Start(nil, L.Demon)
	warnPhaseSoon:Schedule(55, L.Demon)
	berserkTimer:Start(-delay)
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 37640 then
		warnWhirl:Show()
		specWarnWhirl:Show()
		timerWhirl:Start()
		if not phase2 then
			whirlCount = whirlCount + 1
			if whirlCount <= 1 then
				timerWhirlCD:Start()
			end
		else
			timerWhirlCD:Start()
		end
	elseif args.spellId == 37676 then
		warnDemonTargets[#warnDemonTargets + 1] = args.destName
		self:Unschedule(showDemonTargets)
		if self.Options.DemonIcon then
			self:SetIcon(args.destName, demonIcon)
			demonIcon = demonIcon - 1
		end
		if args:IsPlayer() then
			specWarnDemon:Show()
		end
		if #warnDemonTargets >= 5 then
			showDemonTargets()
		else
			self:Schedule(0.7, showDemonTargets)
		end
	elseif args.spellId == 37749 then
		warnMCTargets[#warnMCTargets + 1] = args.destName
		self:Unschedule(showMCTargets)
		self:Schedule(0.3, showMCTargets)
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.YellDemon or msg:find(L.YellDemon) then
		warnPhase:Show(L.Demon)
		timerWhirl:Cancel()
		timerWhirlCD:Cancel()
		timerDemonCD:Start()
		timerPhase:Start(L.Human)
		warnPhaseSoon:Schedule(55, L.Human)
		self:Schedule(60, humanWarns)
	elseif msg == L.YellPhase2 or msg:find(L.YellPhase2) then
		phase2 = true
		timerPhase:Cancel()
		timerWhirl:Cancel()
		timerWhirlCD:Cancel()
		timerDemonCD:Cancel()
		warnPhase2:Show()
		timerWhirlCD:Start(22.5)
	end
end
