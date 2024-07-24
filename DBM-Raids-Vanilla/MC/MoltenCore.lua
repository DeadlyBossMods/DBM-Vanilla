if not DBM:IsSeasonal("SeasonOfDiscovery") then return end
local mod	= DBM:NewMod("MoltenCore", "DBM-Raids-Vanilla", 6)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
--mod:SetCreatureID(11988)
mod:SetEncounterID(3018)
mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
--	"SPELL_CAST_SUCCESS"
)

----TODO, verify spellId, it might be 19798
--local warnQuake		= mod:NewSpellAnnounce(20553)
--
--function mod:SPELL_CAST_SUCCESS(args)
--	if args:IsSpell(20553) then
--		warnQuake:Show()
--	end
--end
