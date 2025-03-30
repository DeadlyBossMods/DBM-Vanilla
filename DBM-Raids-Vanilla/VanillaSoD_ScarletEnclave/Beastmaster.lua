local mod	= DBM:NewMod("Beastmaster", "DBM-Raids-Vanilla", 11)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal,heroic,mythic"

mod:SetRevision("@file-date-integer@")

mod:SetZone(2856)
mod:SetEncounterID(3196)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
)
