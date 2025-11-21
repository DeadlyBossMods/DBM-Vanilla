local mod	= DBM:NewMod("HeiganVanilla", "DBM-Raids-Vanilla", 1)
local L		= mod:GetLocalizedStrings()

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod.statTypes = "normal,heroic,mythic"
else
	mod.statTypes = "normal"
end

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(15936)
mod:SetEncounterID(1112)
mod:SetModelID(16309)
mod:SetZone(533)

mod:RegisterCombat("combat_yell", L.Pull1, L.Pull2, L.Pull3)

local warnTeleportSoon	= mod:NewAnnounce("WarningTeleportSoon", 2, "135736")
local warnTeleportNow	= mod:NewAnnounce("WarningTeleportNow", 3, "135736")

local timerTeleport		= mod:NewTimer(90, "TimerTeleport", "135736", nil, nil, 6)

function mod:DancePhase()
	timerTeleport:Show(47)
	warnTeleportSoon:Schedule(37, 10)
	warnTeleportNow:Schedule(47)
	self:ScheduleMethod(47, "BackInRoom", 88)
end

function mod:BackInRoom(time)
	timerTeleport:Show(time)
	warnTeleportSoon:Schedule(time - 15, 15)
	warnTeleportNow:Schedule(time)
	self:ScheduleMethod(time, "DancePhase")
end

function mod:OnCombatStart(delay)
	self:BackInRoom(90 - delay)
end
