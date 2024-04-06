local mod	= DBM:NewMod("AvatarofHakkarSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(221394)--221426 Rituals on engage, 221396 Hakkari Bloodkeeper
mod:SetEncounterID(2956)
--mod:SetUsedIcons(8)
mod:SetHotfixNoticeRev(20240405000000)
--mod:SetMinSyncRevision(20231115000000)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 443940 443990 444050 444039 444253 444046 444132",
	"SPELL_CAST_SUCCESS 443964 444761",
	"SPELL_AURA_APPLIED 443964 444039 444255 444165 444046"
--	"SPELL_AURA_APPLIED_DOSE"
)

--[[
(ability.id = 443940 or ability.id = 443990 or ability.id = 444050 or ability.id = 444039 or ability.id = 444253 or ability.id = 444046 or ability.id = 444132) and type = "begincast"
 or ability.id = 443964 and type = "cast"
 or (source.type = "NPC" and source.firstSeen = timestamp) or (target.type = "NPC" and target.firstSeen = timestamp)
--]]
local warnBubblingBlood				= mod:NewSpellAnnounce(443940, 2)
local warnSpiritChains				= mod:NewTargetNoFilterAnnounce(443975, 3)
local warnBloodNova					= mod:NewCountAnnounce(444050, 2, nil, false)--Every 8 seconds, opt in instead of opt out
local warnInsanity					= mod:NewTargetNoFilterAnnounce(444039, 3)
local warnCorruptedBlood			= mod:NewTargetNoFilterAnnounce(444253, 4)--Initial Boss application
local warnCorruptedBloodSpread		= mod:NewTargetSourceAnnounce(444253, 4, nil, nil, nil, nil, nil, nil, true)--Jumps between players
local warnCurseofTongues			= mod:NewTargetNoFilterAnnounce(444046, 3, nil, "RemoveCurse")
local warnDrainBlood				= mod:NewCountAnnounce(444132, 3)--Cast
local warnSkeletal					= mod:NewTargetNoFilterAnnounce(444165, 3)--Drain Blood Targets

local specWarnSpiritChains			= mod:NewSpecialWarningMoveAway(443975, nil, nil, nil, 1, 2)
local yellSpiritChains				= mod:NewYell(443975)
local specWarnFrightsomeHowl		= mod:NewSpecialWarningInterrupt(443990, nil, nil, nil, 1, 2)
local specWarnCorruptedBlood		= mod:NewSpecialWarningMoveAway(444253, nil, nil, nil, 1, 2)
local yellCorruptedBlood			= mod:NewYell(444253)
local specWarnCurseofTongues		= mod:NewSpecialWarningYou(444046, false, nil, nil, 1, 2)
local specWarnSkeletal				= mod:NewSpecialWarningYou(444165, false, nil, nil, 1, 2)

local timerBubblingBloodCD			= mod:NewCDTimer(9.7, 443940, nil, nil, nil, 3)
local timerSpiritChainsCD			= mod:NewCDTimer(16.2, 443975, nil, nil, nil, 3)
local timerFrightsomeHowlCD			= mod:NewCDTimer(16.2, 443990, nil, nil, nil, 4, nil, DBM_COMMON_L.INTERRUPT_ICON)
local timerBloodNovaCD				= mod:NewCDCountTimer(8, 444050, nil, false, nil, 2)
local timerInsanityCD				= mod:NewCDCountTimer(27.5, 444039, nil, nil, nil, 3)--27.5-30.3
local timerCorruptedBloodCD			= mod:NewCDCountTimer(16.2, 444253, nil, nil, nil, 3)
local timerCurseofTonguesCD			= mod:NewCDCountTimer(32.3, 444046, nil, nil, nil, 3, nil, DBM_COMMON_L.CURSE_ICON)
local timerDrainBloodCD				= mod:NewCDCountTimer(34, 444132, nil, nil, nil, 2)

--mod:AddSetIconOption("SetIconOnClaw", 432062, true, 0, {8})

mod.vb.novaCount = 0
mod.vb.curseCount = 0
mod.vb.drainCount = 0
mod.vb.corruptedCount = 0
mod.vb.insanityCount = 0

function mod:OnCombatStart(delay)
	self:SetStage(1)
	self.vb.novaCount = 0
	self.vb.curseCount = 0
	self.vb.drainCount = 0
	self.vb.corruptedCount = 0
	self.vb.insanityCount = 0
	timerBubblingBloodCD:Start(20.6)
	timerSpiritChainsCD:Start(25.5)
	timerFrightsomeHowlCD:Start(31.9)
end


function mod:SPELL_CAST_START(args)
	if args:IsSpell(443940) then
		warnBubblingBlood:Show()
		timerBubblingBloodCD:Start()
	elseif args:IsSpell(443990) then
		if self:CheckInterruptFilter(args.sourceGUID, false, true) then
			specWarnFrightsomeHowl:Show(args.sourceName)
			specWarnFrightsomeHowl:Play("kickcast")
		end
	elseif args:IsSpell(444050) then
		self.vb.novaCount = self.vb.novaCount + 1
		warnBloodNova:Show(self.vb.novaCount)
		timerBloodNovaCD:Start(nil, self.vb.novaCount+1)
	elseif args:IsSpell(444039) then
		self.vb.insanityCount = self.vb.insanityCount + 1
		timerInsanityCD:Start(nil, self.vb.insanityCount+1)
	elseif args:IsSpell(444253) then
		self.vb.corruptedCount = self.vb.corruptedCount + 1
		timerCorruptedBloodCD:Start(nil, self.vb.corruptedCount+1)
	elseif args:IsSpell(444046) then
		self.vb.curseCount = self.vb.curseCount + 1
		timerCurseofTonguesCD:Start(nil, self.vb.curseCount+1)
	elseif args:IsSpell(444132) then
		self.vb.drainCount = self.vb.drainCount + 1
		warnDrainBlood:Show(self.vb.drainCount)
		timerDrainBloodCD:Start(nil, self.vb.drainCount+1)
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(443964) then
		timerSpiritChainsCD:Start()
	elseif args:IsSpell(444761) then--Hakkar
		self:SetStage(2)
		timerBubblingBloodCD:Stop()
		timerSpiritChainsCD:Stop()
		--timerFrightsomeHowlCD:Stop()
		timerBloodNovaCD:Start(6.4, 1)
		timerInsanityCD:Start(12.9, 1)
		timerCorruptedBloodCD:Start(16.1, 1)
		timerCurseofTonguesCD:Start(19.4, 1)
		timerDrainBloodCD:Start(25.9, 1)
	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if args:IsSpell(443964) then
		warnSpiritChains:PreciseShow(2, args.destName)
		if args:IsPlayer() then
			specWarnSpiritChains:Show()
			specWarnSpiritChains:Play("scatter")
			yellSpiritChains:Yell()
		end
	elseif args:IsSpell(444039) then
		warnInsanity:CombinedShow(0.3, args.destName)
	elseif args:IsSpell(444255) then
		if args:GetSrcCreatureID() == 221394 then--Initial cast from boss
			warnCorruptedBlood:PreciseShow(2, args.destName)--Anywhere from .1 to 1.2 sec, but precise show uses count aggregation instead
		else--Spreads from players
			warnCorruptedBloodSpread:CombinedShow(0.3, args.sourceName, args.destName)
		end
		if args:IsPlayer() then
			specWarnCorruptedBlood:Show()
			specWarnCorruptedBlood:Play("scatter")
			yellCorruptedBlood:Yell()
		end
	elseif args:IsSpell(444046) then
		warnCurseofTongues:CombinedShow(0.3, args.destName)
		if args:IsPlayer() then
			specWarnCurseofTongues:Show()
			specWarnCurseofTongues:Play("targetyou")
		end
	elseif args:IsSpell(444165) then
		warnSkeletal:CombinedShow(0.5, args.destName)
		if args:IsPlayer() then
			specWarnSkeletal:Show()
			specWarnSkeletal:Play("targetyou")
		end
	end
end
--mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED
--]]

--[[


function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 411583 then--Replace Stand with Swim
		self:SendSync("PhaseChange")
	end
end

function mod:OnSync(msg)
	if not self:IsInCombat() then return end
	if msg == "PhaseChange" and self:AntiSpam(30, 2) then

	end
end
--]]
