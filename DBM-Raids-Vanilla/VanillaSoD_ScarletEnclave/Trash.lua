if not DBM:IsSeasonal("SeasonOfDiscovery") then return end

local mod	= DBM:NewMod("SE_Trash", "DBM-Raids-Vanilla", 11)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal,heroic,mythic"

mod:SetRevision("@file-date-integer@")
mod:SetZone(2856)
mod.isTrashMod = true

mod:RegisterEvents(
)

-- Consecration
mod:NewGtfo{antiSpam = 5, spell = 1233069, spellAura = 1233069, spellPeriodicDamage = 1233069}
