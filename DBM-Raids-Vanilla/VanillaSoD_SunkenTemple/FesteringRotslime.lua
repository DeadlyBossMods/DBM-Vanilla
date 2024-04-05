local mod	= DBM:NewMod("FesteringRotslimeSoD", "DBM-Raids-Vanilla", 9)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(218819)--Drum 222542, Slab 222543, Mask 222544, Candle 222545
mod:SetEncounterID(2953)
--mod:SetUsedIcons(8)
mod:SetHotfixNoticeRev(20240404000000)
--mod:SetMinSyncRevision(20231115000000)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 438142",
	"SPELL_CAST_SUCCESS 438130"
--	"SPELL_AURA_APPLIED",
--	"SPELL_AURA_APPLIED_DOSE"
)

--[[
ability.id = 438142 and type = "begincast"
 or ability.id = 438130 and type = "cast"
--]]
--TODO, figure out what the actual objects do, for boss mod purposes?
local warnGunk						= mod:NewCountAnnounce(432062, 3)
local warnNauseousGas				= mod:NewCountAnnounce(438130, 2)

--local specWarnGnomereganSmash		= mod:NewSpecialWarningDodge(432423, nil, nil, nil, 3, 2)
--local specWarnTheClaw				= mod:NewSpecialWarningYou(432062, nil, nil, nil, 1, 2)
--local yellTheClaw					= mod:NewYell(432062)

--local timerGnomereganSmashCD		= mod:NewAITimer(11.3, 432423, nil, nil, nil, 3, nil, DBM_COMMON_L.DEADLY_ICON)
local timerGunkCD					= mod:NewCDCountTimer(17.8, 438142, nil, nil, nil, 3)
local timerNauseousGasCD			= mod:NewCDCountTimer(8, 438130, nil, nil, nil, 3)

--mod:AddSetIconOption("SetIconOnClaw", 432062, true, 0, {8})

mod.vb.gunkCount = 0
mod.vb.gasCount = 0

--[[
function mod:ClawTarget(targetname, uId)
	if not targetname then return end
	if targetname == UnitName("player") then
		specWarnTheClaw:Show()
		specWarnTheClaw:Play("runout")
		yellTheClaw:Yell()
	else
		warnTheClaw:Show(targetname)
	end
	if self.Options.SetIconOnClaw then
		self:SetIcon(targetname, 8, 3)
	end
end
--]]

function mod:OnCombatStart(delay)
	self.vb.gunkCount = 0
	self.vb.gasCount = 0
	timerNauseousGasCD:Start(8-delay, 1)
	timerGunkCD:Start(12.8-delay, 1)
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
