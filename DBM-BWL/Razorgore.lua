local mod	= DBM:NewMod("Razorgore", "DBM-BWL", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(12435)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED"
)

local warnConflagration		= mod:NewTargetAnnounce(23023)

local timerConflagration	= mod:NewTargetTimer(10, 23023)
local timerAddsSpawn		= mod:NewTimer(45, "TimerAddsSpawn")

function mod:OnCombatStart(delay)
	timerAddsSpawn:Start()
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(23023) then
		warnConflagration:Show(args.destName)
		timerConflagration:Start(args.destName)
	end
end