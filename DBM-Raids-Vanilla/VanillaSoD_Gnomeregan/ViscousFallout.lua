local mod	= DBM:NewMod("ViscousFalloutSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(220007)--217308 Irradiated Goo adds
mod:SetEncounterID(2928)
mod:SetUsedIcons(8, 7, 6)
mod:SetHotfixNoticeRev(20240305000000)
--mod:SetMinSyncRevision(20231115000000)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 434358 433546",
	"SPELL_CAST_SUCCESS 433546 434434",
	"SPELL_AURA_APPLIED 434399",
	"SPELL_PERIODIC_DAMAGE 434433",
	"SPELL_PERIODIC_MISSED 434433",
	"UNIT_DIED"
)

--[[
 (ability.id = 434358 or ability.id = 433546) and type = "begincast"
 or (ability.id = 434434) and type = "cast"
 or (source.type = "NPC" and source.firstSeen = timestamp) or (target.type = "NPC" and target.firstSeen = timestamp)
--]]
local warnSummonIrradiatedGoo		= mod:NewSpellAnnounce(434358, 3)
local warnSludge					= mod:NewSpellAnnounce(434434, 2)
local warnRadiationBurn				= mod:NewSpellAnnounce(433546, 4)--Cast got off

local specWarnRadiationBurn			= mod:NewSpecialWarningInterruptCount(433546, "HasInterrupt", nil, nil, 1, 2)
local specWarnGTFO					= mod:NewSpecialWarningGTFO(434433, nil, nil, nil, 1, 8)

local timerSummonIrradiatedGooCD	= mod:NewCDTimer(63, 434358, nil, nil, nil, 1)
local timerSludgeCD					= mod:NewCDTimer(16, 434434, nil, nil, nil, 3)

mod:AddSetIconOption("SetIconOnGoo", 434358, true, 5, {8, 7, 6})

mod.vb.gooIcon = 8
local castsPerGUID = {}

function mod:OnCombatStart(delay)
	table.wipe(castsPerGUID)
	timerSummonIrradiatedGooCD:Start(11.1)
	timerSludgeCD:Start(16)
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(434358) then
		self.vb.gooIcon = 8
		warnSummonIrradiatedGoo:Show()
		timerSummonIrradiatedGooCD:Start()
	elseif args:IsSpell(433546) then
		if not castsPerGUID[args.sourceGUID] then
			castsPerGUID[args.sourceGUID] = 0
		end
		castsPerGUID[args.sourceGUID] = castsPerGUID[args.sourceGUID] + 1
		local count = castsPerGUID[args.sourceGUID]
		if self:CheckInterruptFilter(args.sourceGUID, false, false) then
			specWarnRadiationBurn:Show(args.sourceName, count)
			if count < 6 then
				specWarnRadiationBurn:Play("kick"..count.."r")
			else
				specWarnRadiationBurn:Play("kickcast")
			end
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(433546) and self:AntiSpam(3, 1) then
		warnRadiationBurn:Show()
	elseif args:IsSpell(434434) then
		warnSludge:Show()
		timerSludgeCD:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(434399) then--Toxic Emission (gained on spawn)
		if self.Options.SetIconOnGoo then
			self:ScanForMobs(args.destGUID, 2, self.vb.gooIcon, 1, nil, 12, "SetIconOnGoo", nil, nil, true)
		end
		self.vb.gooIcon = self.vb.gooIcon - 1
	end
end

function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId, spellName)
	if spellId == 434433 and destGUID == UnitGUID("player") and self:AntiSpam(3, 1) then
		specWarnGTFO:Show(spellName)
		specWarnGTFO:Play("watchfeet")
	end
end
mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 217308 then--Irradiated Goo
		castsPerGUID[args.destGUID] = nil
	end
end
