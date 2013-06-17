local mod	= DBM:NewMod("Attumen", "DBM-Karazhan")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(16151, 16152)--15550
mod:SetModelID(16416)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"CHAT_MSG_MONSTER_YELL",
	"UNIT_DIED"
)

local warnPhase2			= mod:NewPhaseAnnounce(2)
local warningCurseSoon		= mod:NewSoonAnnounce(43127, 2)
local warningCurse			= mod:NewSpellAnnounce(43127, 3)

local timerCurseCD			= mod:NewNextTimer(31, 43127)

local Phase	= 1

function mod:OnCombatStart(delay)
	Phase = 1
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(43127, 29833) and self:AntiSpam(5) then
		warningCurse:Show()
		timerCurseCD:Show()
		warningCurseSoon:Cancel()
		if Phase == 2 then
			timerCurseCD:Start(41)
			warningCurseSoon:Schedule(36)
		else
			timerCurseCD:Start()
			warningCurseSoon:Schedule(26)
		end
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.DBM_ATH_YELL_1 then
		Phase = 2
		warnPhase2:Show()
		warningCurseSoon:Cancel()
		timerCurseCD:Start(25)
	end
end

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 16152 then
		DBM:EndCombat(self)
	end
end
