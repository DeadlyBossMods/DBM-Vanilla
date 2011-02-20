local mod	= DBM:NewMod("RomuloAndJulianne", "DBM-Karazhan")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(17534, 17533, 99999)--99999 bogus screature id to keep mod from pre mature combat end.

mod:RegisterCombat("yell", L.RJ_Pull)
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
local warnPhase3		= mod:NewPhaseAnnounce(3)
local warningHeal		= mod:NewCastAnnounce(30878, 4)
local warningDaring		= mod:NewTargetAnnounce(30841, 3)
local warningDevotion	= mod:NewTargetAnnounce(30887, 3)
local warningPosion		= mod:NewAnnounce("warningPosion", 2, 30830, mod:IsHealer() or mod:IsTank())

local timerHeal			= mod:NewCastTimer(2.5, 30878)
local timerDaring		= mod:NewTargetTimer(8, 30841)
local timerDevotion		= mod:NewTargetTimer(10, 30887)
local timerCombatStart	= mod:NewTimer(55, "TimerCombatStart", 2457)

mod:AddBoolOption("HealthFrame", true)

local phase	= 0
local JulianneDied = 0
local RomuloDied = 0

function mod:OnCombatStart(delay)
	JulianneDied = 0
	RomuloDied = 0
	phase = 0
	self:NextPhase()
end

function mod:NextPhase()
	phase = phase + 1
	if phase == 1 then
		DBM.BossHealth:Clear()
		DBM.BossHealth:AddBoss(17534, L.Julianne)
	elseif phase == 2 then
		DBM.BossHealth:AddBoss(17533, L.Romulo)
		warnPhase2:Show()
	elseif phase == 3 then
		DBM.BossHealth:AddBoss(17534, L.Julianne)
		DBM.BossHealth:AddBoss(17533, L.Romulo)
	end
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
	if msg == L.DBM_RJ_PHASE2_YELL or msg:find(L.DBM_RJ_PHASE2_YELL) then
		warnPhase3:Show()
		self:NextPhase()--Trigger Phase 3
	elseif msg == L.Event or msg:find(L.Event) then
		timerCombatStart:Start()
	end
end


function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 17534 and self:IsInCombat() then
		if phase == 3 then--Only want to remove from boss health frame first time they die, and kill only in phase 3.
			JulianneDied = GetTime()
			if (GetTime() - RomuloDied) < 10 then
				DBM:EndCombat(self)
			end
		else
			DBM.BossHealth:RemoveBoss(cid)
			self:NextPhase()--Trigger phase 2
		end
	elseif cid == 17533 and self:IsInCombat() then
		if phase == 3 then--Only want to remove from boss health frame first time they die, and kill only in phase 3.
			RomuloDied = GetTime()
			if (GetTime() - JulianneDied) < 10 then
				DBM:EndCombat(self)
			end
		else
			DBM.BossHealth:RemoveBoss(cid)
		end
	end
end