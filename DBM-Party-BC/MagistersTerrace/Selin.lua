local mod = DBM:NewMod(530, "DBM-Party-BC", 16, 249)
local L = mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))

mod:SetCreatureID(24723)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"CHAT_MSG_MONSTER_EMOTE"
)

local specWarnChannel		= mod:NewSpecialWarningSwitch("ej5081", "Dps", nil, 2)

function mod:CHAT_MSG_MONSTER_EMOTE(msg)
	if msg == L.ChannelCrystal then
        specWarnChannel:Show()
	end
end