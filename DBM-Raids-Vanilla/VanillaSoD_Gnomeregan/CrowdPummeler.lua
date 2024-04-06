local mod	= DBM:NewMod("CrowdPummellerSoD", "DBM-Raids-Vanilla", 9)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(215728)
mod:SetEncounterID(2899)
mod:SetUsedIcons(8)
mod:SetHotfixNoticeRev(20240209000000)
--mod:SetMinSyncRevision(20231115000000)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 432062",
	"SPELL_CAST_SUCCESS 432423",
	"SPELL_AURA_APPLIED 431839",
	"SPELL_AURA_APPLIED_DOSE 431839"
)

--[[
ability.id = 432062 and type = "begincast"
 or (ability.id = 436532 or ability.id = 432423) and type = "cast"
 or ability.id = 431839
--]]
--TODO, announce he's murdering gnomes in bleachers? does this affect players?
--TODO, detect blades spawning on ground? probably needs transcriptor, didn't see a CLEU event
--TODO, true stage 2 trigger for starting claw timer and updating smash timer. Again, needs transcriptor probably a yell or emote or USCS
local warnTheClaw					= mod:NewTargetNoFilterAnnounce(432062, 3)
local warnOffBalance				= mod:NewCountAnnounce(431839, 3, nil, nil, DBM_CORE_L.AUTO_ANNOUNCE_OPTIONS.stack:format(431839))--Player

local specWarnGnomereganSmash		= mod:NewSpecialWarningDodge(432423, nil, nil, nil, 3, 2)
local specWarnTheClaw				= mod:NewSpecialWarningYou(432062, nil, nil, nil, 1, 2)
local yellTheClaw					= mod:NewYell(432062)

local timerGnomereganSmashCD		= mod:NewCDTimer(11.3, 432423, nil, nil, nil, 3, nil, DBM_COMMON_L.DEADLY_ICON)
local timerTheClawCD				= mod:NewCDTimer(15.2, 432062, nil, nil, nil, 3)--15-20 (needs larger sample)

mod:AddSetIconOption("SetIconOnClaw", 432062, true, 0, {8})

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

function mod:OnCombatStart(delay)
	timerGnomereganSmashCD:Start(6.2)
	--Claw has no initial timer, boss gains ability when his health gets low
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(432062) then
		timerTheClawCD:Start()
		self:ScheduleMethod(0.1, "BossTargetScanner", args.sourceGUID, "ClawTarget", 0.1, 5)
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(432423) then
		specWarnGnomereganSmash:Show()
		specWarnGnomereganSmash:Play("shockwave")
		timerGnomereganSmashCD:Start()
--	elseif args:IsSpell(436532) then--Throw and Despawn Closest Bleacher and Leper Gnomes

	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 431839 and args:IsPlayer() then
		warnOffBalance:Show(args.amount or 1)
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

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
