local mod	= DBM:NewMod("FesteringRotslimeSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(218819)--Drum 222542, Slab 222543, Mask 222544, Candle 222545
mod:SetEncounterID(2953)
--mod:SetUsedIcons(8)
mod:SetHotfixNoticeRev(20240404000000)
--mod:SetMinSyncRevision(20231115000000)
mod:SetZone(109)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 438142",
	"SPELL_CAST_SUCCESS 438130",
	"SPELL_DAMAGE 438136",
	"SPELL_MISSED 438136",
	"SPELL_AURA_APPLIED_DOSE 446311",
	"SPELL_AURA_REMOVED 446311",
	"SPELL_AURA_APPLIED 448824"
)

-- Slow stuff
-- on pull: 448526 which activates it stacks of "move faster"
-- 446311 keeps adding up, and REMOVED when it's slow
-- "<139.75 22:01:42> [CLEU] SPELL_AURA_REMOVED#Vehicle-0-5250-109-7069-218819-0000144CB7#Festering Rotslime#Vehicle-0-5250-109-7069-218819-0000144CB7#Festering Rotslime#446311#Slime Time#BUFF#nil", -- [4384]
-- "<141.62 22:01:43> [CLEU] SPELL_AURA_APPLIED#Vehicle-0-5250-109-7069-218819-0000144CB7#Festering Rotslime#Vehicle-0-5250-109-7069-218819-0000144CB7#Festering Rotslime#446311#Slime Time#BUFF#nil", -- [4549]

-- Devour: can be both on players (which means you should heal them, but doesn't help) or objects which eventually triggers slow
-- "<1097.16 21:53:11> [CLEU] SPELL_AURA_APPLIED##nil#Player-5826-020CBDBB#Tandanu#448824#Devour#DEBUFF#nil", -- [51512]



local warnGunk						= mod:NewCountAnnounce(438142, 3)
local warnNauseousGas				= mod:NewCountAnnounce(438130, 2, nil, false, 2)
local warnSlimeTime					= mod:NewCountAnnounce(446311, 4, nil, nil, DBM_CORE_L.AUTO_ANNOUNCE_OPTIONS.stack:format(446311))

local specWarnGTFO					= mod:NewSpecialWarningGTFO(438136, nil, nil, nil, 1, 8)
local specWarnSlimeTimeFades		= mod:NewSpecialWarningFades(446311, nil, nil, nil, nil, 16)
local devourPlayerYell				= mod:NewYell(448824)


local timerGunkCD					= mod:NewCDCountTimer(17.8, 438142, nil, nil, nil, 3)
local timerNauseousGasCD			= mod:NewCDCountTimer(8, 438130, nil, false, 2, 3)


mod.vb.gunkCount = 0
mod.vb.gasCount = 0

function mod:OnCombatStart(delay)
	self.vb.gunkCount = 0
	self.vb.gasCount = 0
	timerNauseousGasCD:Start(8-delay, 1)
	timerGunkCD:Start(12.8-delay, 1)
end

function mod:SPELL_AURA_APPLIED_DOSE(args)
	if args:IsSpell(446311) and args.amount % 5 == 0 then
		warnSlimeTime:Show(args.amount)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(446311) then
		specWarnSlimeTimeFades:Show()
		specWarnSlimeTimeFades:Play("dpshard")
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(448824) and args:IsPlayer() and self:AntiSpam(10, 1) then
		devourPlayerYell:Yell()
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(438142) then
		self.vb.gunkCount = self.vb.gunkCount + 1
		warnGunk:Show(self.vb.gunkCount)
		timerGunkCD:Start(nil, self.vb.gunkCount+1)
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(438130) then
		self.vb.gasCount = self.vb.gasCount + 1
		warnNauseousGas:Show(self.vb.gasCount)
		timerNauseousGasCD:Start(nil, self.vb.gasCount+1)
	end
end

--[[
function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 431839 and args:IsPlayer() then

	end
end
--mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED
--]]

function mod:SPELL_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId, spellName)
	if spellId == 438136 and destGUID == UnitGUID("player") and self:AntiSpam(3, 2) then
		specWarnGTFO:Show(spellName)
		specWarnGTFO:Play("watchfeet")
	end
end
mod.SPELL_MISSED = mod.SPELL_DAMAGE

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
