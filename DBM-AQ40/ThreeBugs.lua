local mod	= DBM:NewMod("ThreeBugs", "DBM-AQ40", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(15544, 15511, 15543)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED",
	"SPELL_CAST_START"
)
mod:SetBossHealthInfo(
	15543, L.Yauj,
	15544, L.Vem,
	15511, L.Kri
)

local warnFear	= mod:NewTargetAnnounce(26580, 2)
local warnHeal	= mod:NewCastAnnounce(25807, 3)

local timerFear	= mod:NewTargetTimer(8, 26580)
local timerHeal	= mod:NewCastTimer(2, 25807)

function mod:OnCombatStart(delay)
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(26580) then
		warnFear:Show(args.destName)
		timerFear:Start(args.destName)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(26580) then
		timerFear:Cancel(args.destName)
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(25807) then
		warnHeal:Show()
		timerHeal:Start()
	end
end