local mod	= DBM:NewMod("AtalalarionSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(218624)
mod:SetEncounterID(2952)
--mod:SetUsedIcons(8)
mod:SetHotfixNoticeRev(20240404000000)
--mod:SetMinSyncRevision(20231115000000)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 437503 437597"
)

--[[
(ability.id = 437503 or ability.id = 437597) and type = "begincast"
--]]
--https://www.wowhead.com/classic/spell=448995/rune-scrying cast by trash mob if you don't pull balcony?
local warnPillarsOfMight			= mod:NewCountAnnounce(437503, 3)

local specWarnDemolishingSmash		= mod:NewSpecialWarningCount(437597, nil, nil, nil, 2, 2)

local timerPillarsofMightCD			= mod:NewCDCountTimer(12.9, 437503, nil, nil, nil, 1, nil, DBM_COMMON_L.DAMAGE_ICON)--12.9-14.5
local timerDemolishingSmashCD		= mod:NewCDCountTimer(27.5, 437597, nil, nil, nil, 3)--27.5-29.1

mod.vb.pillarsCount = 0
mod.vb.smashCount = 0

function mod:OnCombatStart(delay)
	self.vb.pillarsCount = 0
	self.vb.smashCount = 0
	timerPillarsofMightCD:Start(4.8-delay, 1)
	timerDemolishingSmashCD:Start(22.6-delay, 1)--22.6-44.5
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
