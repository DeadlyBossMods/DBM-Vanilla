local mod	= DBM:NewMod("Buru", "DBM-AQ20", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(15370)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"CHAT_MSG_MONSTER_EMOTE"
)

local warnPursue		= mod:NewAnnounce("WarnPursue", 3)

local specWarnPursue	= mod:NewSpecialWarning("SpecWarnPursue")

function mod:OnCombatStart(delay)
end

function mod:CHAT_MSG_MONSTE_EMOTE(msg)
	if not msg then return end
	local _, target = msg.find(L.PursueEmote)
	if target then
		warnPursue:Show(target)
		if target == UnitName("player") then
			specWarnPursue:Show()
		end
	end
end