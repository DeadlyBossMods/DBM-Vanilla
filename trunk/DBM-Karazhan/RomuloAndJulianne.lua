local mod	= DBM:NewMod("RomuloAndJulianne", "Karazhan")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(17534, 17533)

mod:RegisterCombat("combat")--May need changing to yell if kill detection is funny.
mod:SetMinCombatTime(25)--guesswork
mod:SetWipeTime(25)--guesswork

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_APPLIED_DOSE",
	"SPELL_AURA_REMOVED",
	"CHAT_MSG_MONSTER_YELL",
	"UNIT_DIED"
)

local warnPhase2		= mod:NewPhaseAnnounce(2)
local warningHeal		= mod:NewCastAnnounce(30878, 4)
local warningDaring		= mod:NewTargetAnnounce(30841, 3)
local warningDevotion	= mod:NewTargetAnnounce(30887, 3)
local warningPosion		= mod:NewAnnounce("warningPosion", 2, 30830, mod:IsHealer() or mod:IsTank())

local timerHeal			= mod:NewCastTimer(2.5, 30878)
local timerDaring		= mod:NewTargetTimer(8, 30841)
local timerDevotion		= mod:NewTargetTimer(10, 30887)

mod:AddBoolOption("HealthFrame", true)

local phases = {}

local function updateHealthFrame(phase)--WIP
	if phases[phase] then
		return
	end
	phases[phase] = true
	if phase == 1 then
		DBM.BossHealth:Clear()
		DBM.BossHealth:AddBoss(17534, L.Julianne)
	elseif phase == 2 then--UNIT_DIED event triggers not tested yet
		DBM.BossHealth:AddBoss(17533, L.Romulo)
	elseif phase == 3 then
		DBM.BossHealth:AddBoss(17534, L.Julianne)
		DBM.BossHealth:AddBoss(17533, L.Romulo)
	end
end

function mod:OnCombatStart(delay)
	updateHealthFrame(1)
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(30878) then
		warningHeal:Show()
		timerHeal:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(30822, 30830) then
		warningPosion:Show(args.spellName, args.destName, args.amount or 1)
	elseif args:IsSpellID(30841) then
		warningDaring:Show(args.destName)
		timerDaring:Start(args.destName)
	elseif args:IsSpellID(30887) then
		warningDevotion:Show(args.destName)
		timerDevotion:Start(args.destName)
	end
end

mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(30841) then
		timerDaring:Cancel(args.destName)
	elseif args:IsSpellID(30887) then
		timerDevotion:Cancel(args.destName)
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == DBM_RJ_PHASE2_YELL then
		warnPhase2:Show()
		updateHealthFrame(3)
	end
end


function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 17534 then
		DBM.BossHealth:RemoveBoss(cid)
		updateHealthFrame(2)
	elseif cid == 17533 then
		DBM.BossHealth:RemoveBoss(cid)
	end
end