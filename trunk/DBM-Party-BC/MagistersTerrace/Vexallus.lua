local mod = DBM:NewMod("Vexallus", "DBM-Party-BC", 16)
local L = mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))

mod:SetCreatureID(24744)
mod:SetModelID(22731)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"CHAT_MSG_MONSTER_YELL"
)

local WarnEnergy		= mod:NewSpellAnnounce("ej5085", 3, 44335)

local specWarnEnergy	= mod:NewSpecialWarningSwitch("ej5085", false)

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.Discharge then
        WarnEnergy:Show()
        specWarnEnergy:Show()
	end
end
