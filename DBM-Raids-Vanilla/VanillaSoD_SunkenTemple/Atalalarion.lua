local mod	= DBM:NewMod("AtalalarionSoD", "DBM-Raids-Vanilla", 9)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(218624)--Atal'ai High Priest 224258
mod:SetEncounterID(2952)
--mod:SetUsedIcons(8)
--mod:SetHotfixNoticeRev(20240209000000)
--mod:SetMinSyncRevision(20231115000000)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 437503 437597"
--	"SPELL_CAST_SUCCESS",
--	"SPELL_AURA_APPLIED",
--	"SPELL_AURA_APPLIED_DOSE"
)

--[[

--]]
--https://www.wowhead.com/classic/npc=218606/lumbering-dreamwalker
--https://www.wowhead.com/classic/spell=448995/rune-scrying
--local warnTheClaw					= mod:NewTargetNoFilterAnnounce(432062, 3)
local warnPillarsOfMight			= mod:NewCountAnnounce(437503, 3)

--local specWarnGnomereganSmash		= mod:NewSpecialWarningDodge(432423, nil, nil, nil, 3, 2)
--local specWarnTheClaw				= mod:NewSpecialWarningYou(432062, nil, nil, nil, 1, 2)
--local yellTheClaw					= mod:NewYell(432062)

local timerPillarsofMightCD			= mod:NewCDCountTimer(11.3, 437503, nil, nil, nil, 1, nil, DBM_COMMON_L.DAMAGE_ICON)
local timerDemolishingSmashCD		= mod:NewCDCountTimer(15.2, 437597, nil, nil, nil, 3)

--mod:AddSetIconOption("SetIconOnClaw", 432062, true, 0, {8})

mod.vb.pillarsCount = 0
mod.vb.smashCount = 0

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
	self.vb.pillarsCount = 0
	self.vb.smashCount = 0
	timerPillarsofMightCD:Start(4.8-delay, 1)
	timerDemolishingSmashCD:Start(22.6-delay, 1)
end


function mod:SPELL_CAST_START(args)
	if args:IsSpell(437503) then
		self.vb.pillarsCount = self.vb.pillarsCount + 1
		warnPillarsOfMight:Show(self.vb.pillarsCount)
		timerPillarsofMightCD:Start(nil, self.vb.pillarsCount+1)
	elseif args:IsSpell(437597) then
		self.vb.smashCount = self.vb.smashCount + 1

		timerDemolishingSmashCD:Start()
	end
end

--[[
function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(432423) then

	end
end
--]]

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
