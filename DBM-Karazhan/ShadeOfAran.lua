local mod	= DBM:NewMod("Aran", "DBM-Karazhan")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(16524)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED",
	"CHAT_MSG_MONSTER_YELL"
)

local warningFlameCast		= mod:NewCastAnnounce(30004, 4)
local warningArcaneCast		= mod:NewCastAnnounce(29973, 4)
local warningBlizzard		= mod:NewSpellAnnounce(29969, 3)
local warningElementals		= mod:NewSpellAnnounce(37053, 3)
local warningChains			= mod:NewTargetAnnounce(29991, 2)

local specWarnDontMove		= mod:NewSpecialWarning("DBM_ARAN_DO_NOT_MOVE")
local specWarnArcane		= mod:NewSpecialWarningRun(29973)

--local timerSpecial			= mod:NewTimer(30, "timerSpecial")
local timerFlameCast		= mod:NewCastTimer(5, 30004)
local timerArcaneExplosion	= mod:NewCastTimer(10, 29973)
local timerBlizzadCast		= mod:NewCastTimer(3.7, 29969)
local timerFlame			= mod:NewBuffActiveTimer(20.5, 30004)
local timerBlizzad			= mod:NewBuffActiveTimer(40, 29952)
local timerElementals		= mod:NewBuffActiveTimer(90, 37053)
local timerChains			= mod:NewTargetTimer(10, 29991)

local berserkTimer			= mod:NewBerserkTimer(900)

local soundArcane			= mod:NewSound(29973)

function mod:OnCombatStart(delay)
	berserkTimer:Start(-delay)
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(30004) then
		warningFlameCast:Show()
		timerFlameCast:Start()
		specWarnDontMove:Schedule(5)
		timerFlame:Schedule(5)
--		timerSpecial:Start()
	elseif args:IsSpellID(29973) then
		warningArcaneCast:Show()
		timerArcaneExplosion:Start()
		specWarnArcane:Show()
		soundArcane:Play()
--		timerSpecial:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(29991) then
		warningChains:Show(args.destName)
		timerChains:Start(args.destName)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(29991) then
		timerChains:Cancel(args.destName)
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == DBM_ARAN_YELL_BLIZZ1 or msg == DBM_ARAN_YELL_BLIZZ2 then
		warningBlizzard:Show()
		timerBlizzadCast:Show()
		timerBlizzad:Schedule(3.7)
--		timerSpecial:Start()
	elseif msg == DBM_ARAN_YELL_ADDS then
		warningElementals:Show()
		timerElementals:Show()
	end
end
