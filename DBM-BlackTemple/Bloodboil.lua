local mod	= DBM:NewMod("Bloodboil", "DBM-BlackTemple")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(22948)
mod:SetModelID(21443)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_APPLIED_DOSE"
)

local warnBlood			= mod:NewTargetAnnounce(42005, 3)
local warnRage			= mod:NewTargetAnnounce(40604, 3)
local warnRageSoon		= mod:NewPreWarnAnnounce(40604, 5, 3)
local warnRageEnd		= mod:NewAnnounce("WarnRageEnd", 3, 40604)

local specWarnBlood		= mod:NewSpecialWarningYou(42005)
local specWarnRage		= mod:NewSpecialWarningYou(40604)

local timerBlood		= mod:NewCDTimer(10, 42005)
local timerRage			= mod:NewCDTimer(52, 40604)
local timerRageEnd		= mod:NewTimer(28, "TimerRageEnd", 38739)

local berserkTimer		= mod:NewBerserkTimer(600)

local warnBloodTargets = {}

local function nextRage()
	warnRageEnd:Show()
	timerRage:Start()
	warnRageSoon:Schedule(47)
	timerBlood:Start(11.5)
	table.wipe(warnBloodTargets)
end

local function showBlood()
	warnBlood:Show(table.concat(warnBloodTargets, "<, >"))
	table.wipe(warnBloodTargets)
	timerBlood:Start()
end

function mod:OnCombatStart(delay)
	berserkTimer:Start(-delay)
	timerRage:Start(-delay)
	warnRageSoon:Schedule(52-delay)
	timerBlood:Start(11.5-delay)
	table.wipe(warnBloodTargets)
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 42005 then
		warnBloodTargets[#warnBloodTargets + 1] = args.destName
		self:Unschedule(showBlood)
		if #warnBloodTargets >= 6 then
			showBlood()
		else
			self:Schedule(0.8, showBlood)
		end
		if args:IsPlayer() then
			specWarnBlood:Show()
		end
	elseif args.spellId == 40604 then
		warnRage:Show(args.destName)
		timerBlood:Cancel()
		timerRageEnd:Start()
		self:Schedule(28, nextRage)
		if args:IsPlayer() then
			specWarnRage:Show()
		end
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED
