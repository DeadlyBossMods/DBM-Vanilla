local mod = DBM:NewMod(531, "DBM-Party-BC", 16, 249)
local L = mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))

mod:SetCreatureID(24744)
mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"CHAT_MSG_MONSTER_YELL"
)

local specWarnEnergy	= mod:NewSpecialWarningSwitch("ej5085", "Dps", nil, 2)

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.Discharge then
        specWarnEnergy:Show()
	end
end
