local isClassic = DBM:IsVanillaEra()
local isBCC = DBM:IsTBC()
local isWrath = DBM:IsWrath()
local catID
if isBCC or isClassic then
	catID = 4
elseif isWrath then--Wrath classic
	catID = 3
else--Cataclysm classic
	catID = 5
end
local mod	= DBM:NewMod("Gahzranka", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:DisableHardcodedOptions()
mod:SetCreatureID(15114)
mod:SetEncounterID(790)
mod:SetZone(309)

mod:RegisterCombat("combat")
if DBM:IsRestricted() then
	--do stuff
	--mod:AddAuraSoundOption(372820, true, 372820, 1, 2, "watchfeet", 8, 0)
else

	mod:RegisterEventsInCombat(
		"SPELL_CAST_START 16099 22421"
	)

	local warnBreath	= mod:NewCastAnnounce(16099)
	local warnGeyser	= mod:NewCastAnnounce(22421)

	function mod:SPELL_CAST_START(args)
		if args:IsSpell(16099) then
			warnBreath:Show()
		elseif args:IsSpell(22421) then
			warnGeyser:Show()
		end
	end
end
