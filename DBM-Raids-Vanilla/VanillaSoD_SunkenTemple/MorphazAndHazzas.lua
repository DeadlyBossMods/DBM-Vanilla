local mod	= DBM:NewMod("MorphazandHazzasSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(221942, 221943)--Morphaz, Hazzas
mod:SetEncounterID(2958)
mod:SetBossHPInfoToHighest()
--mod:SetUsedIcons(8)
mod:SetHotfixNoticeRev(20240405000000)
--mod:SetMinSyncRevision(20231115000000)
mod:SetZone(109)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 446489 446468 446661 445235 449422 446144",
	"SPELL_CAST_SUCCESS 446487",
	"SPELL_AURA_APPLIED 446487",
	"SPELL_AURA_APPLIED_DOSE 446487"
)

--[[
(ability.id = 446489 or ability.id = 446468 or ability.id = 446661 or ability.id = 445235 or ability.id = 449422 or ability.id = 446144) and type = "begincast"
 or ability.id = 446487 and type = "cast"
--]]
--NOTE: Timers have significant variation even when not delayed by Eternal Slumber phase.
--TODO, Maybe add taunt warning. Have to see how often people swap
--TODO, auto mark flame adds with SPELL_CAST_SUCCESS 446420?
--TODO, a good way to detect if players have clicked a portal to escape eternal slumber. Cannot find any buff or debuff player gains in combat log. Probably hidden aura
local warnDreamersLament			= mod:NewCountAnnounce(446468, 3)
local warnCorruptedBreath			= mod:NewStackAnnounce(446487, 2, nil, "Tank|Healer")
local warnAnimateFlame				= mod:NewSpellAnnounce(446661, 3)

local specWarnBackfire				= mod:NewSpecialWarningCount(446489, nil, nil, nil, 2, 2)
--local specWarnTheClaw				= mod:NewSpecialWarningYou(432062, nil, nil, nil, 1, 2)
--local yellTheClaw					= mod:NewYell(432062)

--local timerBackfireCD				= mod:NewCDCountTimer(19.5, 446489, nil, nil, nil, 2)--19.5-38
--local timerDreamersLamentCD		= mod:NewCDCountTimer(13.3, 446468, nil, nil, nil, 2)--13.3-30.7 (too much variation for now without further study)
local timerCorruptedBreathCD		= mod:NewCDTimer(11.3, 446487, nil, nil, nil, 5, nil, DBM_COMMON_L.TANK_ICON)--11.3-16 except when delayed by Eternal Slumber
local timerLucidDreaming			= mod:NewCastTimer(20, 445235, nil, nil, nil, 6)--Phase transition into Eternal Slumber
local timerEternalSlumber			= mod:NewCastTimer(30, 446144, nil, nil, nil, 6, nil, DBM_COMMON_L.DEADLY_ICON)--Time til slumber ends and everyone dies

--mod:AddSetIconOption("SetIconOnClaw", 432062, true, 0, {8})

mod.vb.backfireCount = 0
mod.vb.lamentCount = 0

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
	self.vb.backfireCount = 0
	self.vb.lamentCount = 0
	--Dreamer's Lament and backfire can swap orders on pull
	--One will be at 6.1-6.2 and other at 7.7-7.8
--	timerBackfireCD:Start(6.2-delay, 1)
--	timerDreamersLamentCD:Start(6.2-delay, 1)
	timerCorruptedBreathCD:Start(9.7-delay)
	self:SetStage(1)
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(446489) then
		self.vb.backfireCount = self.vb.backfireCount + 1
		specWarnBackfire:Show(self.vb.backfireCount)
		specWarnBackfire:Play("carefly")
--		timerBackfireCD:Start(nil, self.vb.backfireCount+1)
	elseif args:IsSpell(446468) then
		self.vb.lamentCount = self.vb.lamentCount + 1
		warnDreamersLament:Show(self.vb.lamentCount)
--		timerDreamersLamentCD:Start(nil, self.vb.lamentCount+1)
	elseif args:IsSpell(446661) then
		warnAnimateFlame:Show()
	elseif args:IsSpell(445235) then--First lucid dreaming (20sec cast til players sent to dream, fire adds to kill during cast)
		self:SetStage(2)
		timerCorruptedBreathCD:Stop()
		timerLucidDreaming:Start(20)
	elseif args:IsSpell(449422) then--Second lucid dreaming (4 second cast til players sent to dream, no adds)
		self:SetStage(3)
		timerCorruptedBreathCD:Stop()
		timerLucidDreaming:Start(4)
	elseif args:IsSpell(446144) then
		timerEternalSlumber:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(446487) then
		timerCorruptedBreathCD:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 446487 then
		local uId = DBM:GetRaidUnitId(args.destName)
		if self:IsTanking(uId, nil, nil, false, args.sourceGUID) then
			local amount = args.amount or 1
			warnCorruptedBreath:Show(args.destName, amount)
		end
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

--[[
function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 55862 then

	end
end

--https://www.wowhead.com/classic/spell=446678/dnt-morphaz-sleep-phase-and-anim
--https://www.wowhead.com/classic/spell=446898/dnt-morphaz-death-phase
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
