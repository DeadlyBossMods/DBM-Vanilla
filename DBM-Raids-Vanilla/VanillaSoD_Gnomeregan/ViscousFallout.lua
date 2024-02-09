local mod	= DBM:NewMod("ViscousFalloutSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(220007)--217308 Irradiated Goo adds
mod:SetEncounterID(2928)
mod:SetUsedIcons(8, 7, 6)
--mod:SetHotfixNoticeRev(20231201000000)
--mod:SetMinSyncRevision(20231115000000)

mod:RegisterCombat("combat")

--mod:RegisterEventsInCombat(
	"SPELL_CAST_START 434358",
--	"SPELL_CAST_SUCCESS",
	"SPELL_SUMMON 434762",
--	"SPELL_AURA_APPLIED",
--	"SPELL_AURA_APPLIED_DOSE",
--	"SPELL_AURA_REMOVED",
	"SPELL_PERIODIC_DAMAGE 434433",
	"SPELL_PERIODIC_MISSED 434433"
--)

--local warnCorrosion				= mod:NewStackAnnounce(427625, 2, nil, "Tank|Healer")
local warnSummonIrradiatedGoo		= mod:NewSpellAnnounce(434358, 3)

--local specWarnCorrosiveBlast		= mod:NewSpecialWarningDodge(429168, nil, nil, nil, 2, 2)
--local yellDepthCharge				= mod:NewYell(404806)
local specWarnGTFO					= mod:NewSpecialWarningGTFO(434433, nil, nil, nil, 1, 8)

local timerSummonIrradiatedGooCD	= mod:NewAITimer(21, 434358, nil, nil, nil, 1)
--local timerCorrosiveBiteCD		= mod:NewCDTimer(6.5, 429207, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK_ICON)

mod:AddSetIconOption("SetIconOnGoo", 434358, true, 5, {8, 7, 6})

mod.vb.gooIcon = 8

function mod:OnCombatStart(delay)
	timerSummonIrradiatedGooCD:Start(1)
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(429168) then
		self.vb.gooIcon = 8
		warnSummonIrradiatedGoo:Show()
		timerSummonIrradiatedGooCD:Start()
	end
end

--[[
function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(429207) then

	end
end
--]]

function mod:SPELL_SUMMON(args)
	if args:IsSpell(434762) then
		if self.Options.SetIconOnGoo then
			self:ScanForMobs(args.destGUID, 2, self.vb.gooIcon, 1, nil, 12, "SetIconOnGoo")
		end
	end
end

--[[
function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(427625) then

	end
end
--mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED
--]]

--[[
function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(429541) then

	end
end
--]]

function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId, spellName)
	if spellId == 434433 and destGUID == UnitGUID("player") and not playerSong and self:AntiSpam(3, 1) then
		specWarnGTFO:Show(spellName)
		specWarnGTFO:Play("watchfeet")
	end
end
mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE

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
