local mod	= DBM:NewMod("PatchwerkVanilla", "DBM-Raids-Vanilla", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(16028)
mod:SetEncounterID(1118)
mod:SetModelID(16174)
mod:SetZone(533)

mod:RegisterCombat("combat_yell", L.yell1, L.yell2)

local enrageTimer	= mod:NewBerserkTimer(360)

function mod:OnCombatStart(delay)
	enrageTimer:Start(360 - delay)
end
