local mod	= DBM:NewMod(534, "DBM-Party-BC", 8, 250)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(18341)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 32358 38759"
)

local specWarnShell			= mod:NewSpecialWarningReflect(32358, "-Melee", nil, 2, 1)

local timerShell			= mod:NewBuffActiveTimer(7, 32358)

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(32358, 38759) then
		specWarnShell:Show(args.sourceName)
		timerShell:Start()
	end
end