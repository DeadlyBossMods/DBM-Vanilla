local mod	= DBM:NewMod("Mennu", "DBM-Party-BC", 4)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(17941)
mod:SetModelID(17728)

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_SUMMON"
)

local WarnCorruptedNova   	= mod:NewSpellAnnounce(31991)

local specWarnCorruptedNova	= mod:NewSpecialWarningSwitch(31991, mod:IsDps())

function mod:SPELL_SUMMON(args)
	if args.spellId == 31991 then
		WarnCorruptedNova:Show()
		specWarnCorruptedNova:Show()
	end
end