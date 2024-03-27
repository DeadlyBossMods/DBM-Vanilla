local mod	= DBM:NewMod("ShadeofEranikusSoD", "DBM-Raids-Vanilla", 9)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(218571)
mod:SetEncounterID(2959)
--mod:SetUsedIcons(8)
--mod:SetHotfixNoticeRev(20240209000000)
--mod:SetMinSyncRevision(20231115000000)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
--	"SPELL_CAST_START",
--	"SPELL_CAST_SUCCESS",
--	"SPELL_AURA_APPLIED",
--	"SPELL_AURA_APPLIED_DOSE"
)

--[[

--]]
--https://www.wowhead.com/classic/spell=437398/waking-nightmare
--https://www.wowhead.com/classic/spell=446274/dream-fog or https://www.wowhead.com/classic/spell=437424/deep-slumber or https://www.wowhead.com/classic/spell=437324/deep-slumber used to avoid waking nightmare?
--https://www.wowhead.com/classic/spell=447282/rift-ripping-roar or https://www.wowhead.com/classic/spell=447280/rift-ripping-roar or https://www.wowhead.com/classic/spell=446298/rift-ripping-roar
--https://www.wowhead.com/classic/spell=445158/lucid-dreaming or https://www.wowhead.com/classic/spell=446093/the-nightmare
--https://www.wowhead.com/classic/spell=445280/exit-dream
--local warnTheClaw					= mod:NewTargetNoFilterAnnounce(432062, 3)

--local specWarnGnomereganSmash		= mod:NewSpecialWarningDodge(432423, nil, nil, nil, 3, 2)
--local specWarnTheClaw				= mod:NewSpecialWarningYou(432062, nil, nil, nil, 1, 2)
--local yellTheClaw					= mod:NewYell(432062)

--local timerGnomereganSmashCD		= mod:NewAITimer(11.3, 432423, nil, nil, nil, 3, nil, DBM_COMMON_L.DEADLY_ICON)
--local timerTheClawCD				= mod:NewAITimer(15.2, 432062, nil, nil, nil, 3)

--mod:AddSetIconOption("SetIconOnClaw", 432062, true, 0, {8})

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

--function mod:OnCombatStart(delay)
--
--end

--[[
function mod:SPELL_CAST_START(args)
	if args:IsSpell(432062) then

	end
end

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
