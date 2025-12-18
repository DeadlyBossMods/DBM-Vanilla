local mod	= DBM:NewMod(2665, "DBM-Raids-Vanilla", 5, 1301)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "lfr"

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(226304)
mod:SetEncounterID(3043)
mod:SetUsedIcons(8, 7, 6)
mod:SetHotfixNoticeRev(20241028000000)
--mod:SetMinSyncRevision(20211203000000)
mod:SetZone(2792)
--mod.respawnTime = 29

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 463503 463486 463472 463495",
	"SPELL_SUMMON 463470",
	"SPELL_AURA_APPLIED 463504",
	"SPELL_PERIODIC_DAMAGE 463492",
	"SPELL_PERIODIC_MISSED 463492"
)

--[[
(ability.id = 463503 or ability.id = 463486 or ability.id = 463472 or ability.id = 463495) and type = "begincast"
--]]
--TODO, add tank to switch alert if adds need to be tanked
--TODO, add total for auto marking
--TODO, possibly calculate cast time for https://www.wowhead.com/ptr-2/spell=463471/blaze and add cast bar or cast nameplate prio bar
--TODO, possibly non emphasized warning for https://www.wowhead.com/ptr-2/spell=463500/blowback target that announces to tanks and healers
local warnConsumptiveFlames					= mod:NewTargetNoFilterAnnounce(463503, 3, nil, "Healer")

local specWarnSummonFlameGeyser				= mod:NewSpecialWarningSwitchCount(463486, "Dps", nil, nil, 1, 2)
local specWarnScorchingWind					= mod:NewSpecialWarningCount(463495, nil, nil, nil, 2, 13)
local specWarnDyingFlare					= mod:NewSpecialWarningSoak(463472, nil, nil, nil, 2, 2)
local specWarnGTFO							= mod:NewSpecialWarningGTFO(463492, nil, nil, nil, 1, 8)

local timerConsumptiveFlamesCD				= mod:NewCDCountTimer(30, 463503, nil, nil, nil, 3, nil, DBM_COMMON_L.HEALER_ICON)
local timerSummonFlameGeyserCD				= mod:NewCDCountTimer(60, 463486, nil, nil, nil, 1, nil, DBM_COMMON_L.DAMAGE_ICON)
local timerDyingFlare						= mod:NewCastNPTimer(10, 463472, nil, nil, nil, 5)--Nameplate only prio cast timer with glow feature
local timerScorchingWindCD					= mod:NewCDCountTimer(60, 463495, nil, nil, nil, 2)

mod:AddSetIconOption("SetIconOnAdds", 463486, true, 5, {8, 7, 6})

mod.vb.FirewallCount = 0
mod.vb.ConsumptiveFlamesCount = 0
mod.vb.SummonFlameGeyserCount = 0
mod.vb.addIcon = 8
mod.vb.scorchingWindCount = 0

function mod:OnCombatStart(delay)
	self.vb.FirewallCount = 0
	self.vb.ConsumptiveFlamesCount = 0
	self.vb.SummonFlameGeyserCount = 0
	self.vb.addIcon = 8
	self.vb.scorchingWindCount = 0
	timerConsumptiveFlamesCD:Start(10-delay, 1)
	timerSummonFlameGeyserCD:Start(15-delay, 1)
	timerScorchingWindCD:Start(25-delay, 1)
end

function mod:OnCombatEnd()

end

function mod:SPELL_CAST_START(args)
	local spellId = args.spellId
	if spellId == 463503 then
		self.vb.ConsumptiveFlamesCount = self.vb.ConsumptiveFlamesCount + 1
		timerConsumptiveFlamesCD:Start(self.vb.ConsumptiveFlamesCount == 1 and 40 or 30, self.vb.ConsumptiveFlamesCount+1)
	elseif spellId == 463486 then
		self.vb.SummonFlameGeyserCount = self.vb.SummonFlameGeyserCount + 1
		self.vb.addIcon = 8
		specWarnSummonFlameGeyser:Show(self.vb.SummonFlameGeyserCount)
		specWarnSummonFlameGeyser:Play("killmob")
		timerSummonFlameGeyserCD:Start(self.vb.SummonFlameGeyserCount == 1 and 40 or 60, self.vb.SummonFlameGeyserCount+1)
	elseif spellId == 463472 then
		if self:AntiSpam(2.5, 1) then
			specWarnDyingFlare:Show()
			specWarnDyingFlare:Play("helpsoak")
		end
		timerDyingFlare:Start(nil, args.sourceGUID)
	elseif spellId == 463495 then
		self.vb.scorchingWindCount = self.vb.scorchingWindCount + 1
		specWarnScorchingWind:Show(self.vb.scorchingWindCount)
		specWarnScorchingWind:Play("pushbackincoming")
		specWarnScorchingWind:ScheduleVoice(1.5, "keepmove")
		timerScorchingWindCD:Start(nil, self.vb.scorchingWindCount+1)
	end
end

function mod:SPELL_SUMMON(args)
	if args.spellId == 463470 then
		if self.Options.SetIconOnAdds then
			self:ScanForMobs(args.destGUID, 2, self.vb.addIcon, 1, nil, 12, "SetIconOnAdds")
		end
		self.vb.addIcon = self.vb.addIcon - 1
	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 463504 then
		warnConsumptiveFlames:CombinedShow(0.3, args.destName)
	end
end

function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId, spellName)
	if spellId == 463492 and destGUID == UnitGUID("player") and self:AntiSpam(3, 2) then
		specWarnGTFO:Show(spellName)
		specWarnGTFO:Play("watchfeet")
	end
end
mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE
