local mod	= DBM:NewMod("Krystallus", "DBM-Party-WotLK", 7)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 2250 $"):sub(12, -3))
mod:SetCreatureID(27977)
-- mod:SetModelID(20909)  -- barely visible
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_CAST_SUCCESS"
)

local warningShatter	= mod:NewSpellAnnounce(50810, 3)
local timerShatterCD	= mod:NewCDTimer(25, 50810)

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(50833) then
		warningShatter:Show()	-- Shatter warning when Ground Slam is cast
		timerShatterCD:Start()
	end
end