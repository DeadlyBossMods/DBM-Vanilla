local mod	= DBM:NewMod("AtalalarionSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(218624)
mod:SetEncounterID(2952)
--mod:SetUsedIcons(8)
mod:SetHotfixNoticeRev(20240404000000)
--mod:SetMinSyncRevision(20231115000000)
mod:SetZone(109)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 437503 437597"
)

--https://www.wowhead.com/classic/spell=448995/rune-scrying are doorway blocker NPCs, on every boss, ignore these

--[[
(ability.id = 437503 or ability.id = 437597) and type = "begincast"
--]]
local warnPillarsOfMight			= mod:NewCountAnnounce(437503, 3)

local specWarnDemolishingSmash		= mod:NewSpecialWarningCount(437597, nil, nil, nil, 2, 2)

--12.2-14.6 "Pillars of Might-437503-npc:218624-0000143F40 = pull:6.4, 21.0, 13.4, 13.7, 12.2, 18.3, 13.6, 14.6, 13.6, 15.6",
local timerPillarsofMightCD			= mod:NewCDCountTimer(12, 437503, nil, nil, nil, 1, nil, DBM_COMMON_L.DAMAGE_ICON)
--27.1-29.2 "Demolishing Smash-437597-npc:218624-0000143F40 = pull:21.3, 27.1, 29.1, 29.1, 29.2"
local timerDemolishingSmashCD		= mod:NewCDCountTimer(27.1, 437597, nil, nil, nil, 3)

mod.vb.pillarsCount = 0
mod.vb.smashCount = 0

function mod:OnCombatStart(delay)
	self.vb.pillarsCount = 0
	self.vb.smashCount = 0
	timerPillarsofMightCD:Start(4.8 - delay, 1)
	timerDemolishingSmashCD:Start(21.3 - delay, 1)--21.3-44.5
end


function mod:SPELL_CAST_START(args)
	if args:IsSpell(437503) then
		self.vb.pillarsCount = self.vb.pillarsCount + 1
		warnPillarsOfMight:Show(self.vb.pillarsCount)
		timerPillarsofMightCD:Start(nil, self.vb.pillarsCount+1)
	elseif args:IsSpell(437597) then
		self.vb.smashCount = self.vb.smashCount + 1
		specWarnDemolishingSmash:Show(self.vb.smashCount)
		specWarnDemolishingSmash:Play("carefly")
		specWarnDemolishingSmash:ScheduleVoice(2, "movetopillar")
		timerDemolishingSmashCD:Start(nil, self.vb.smashCount+1)
	end
end
