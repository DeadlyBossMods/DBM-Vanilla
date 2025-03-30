local mod	= DBM:NewMod("Balnazzar", "DBM-Raids-Vanilla", 11)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal,heroic,mythic"

mod:SetRevision("@file-date-integer@")

mod:SetZone(2856)
mod:SetEncounterID(3185)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
)
