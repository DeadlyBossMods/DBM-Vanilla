local mod	= DBM:NewMod("Kazrogal", "DBM-Hyjal")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(17888)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_CAST_START"
)

local warnMark			= mod:NewAnnounce("WarnMark", 3 , 31447)

local timerMark			= mod:NewCDTimer(45, 31447)

local count = 0
local time = 45

function mod:OnCombatStart(delay)
	time = 45
	count = 0 
	timerMark:Start(time-delay)
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(31447) then
		count = count + 1
		if time > 10 then
			time = time - 5
		end
		warnMark:Show(count)
		timerMark:Start(time)
	end
end
