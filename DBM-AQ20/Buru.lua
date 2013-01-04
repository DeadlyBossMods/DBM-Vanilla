local mod	= DBM:NewMod("Buru", "DBM-AQ20", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(15370)
mod:SetModelID(15654)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_APPLIED_DOSE",
	"CHAT_MSG_MONSTER_EMOTE"
)

local WarnDismember		= mod:NewAnnounce("WarnDismember", 3)
local warnPursue		= mod:NewAnnounce("WarnPursue", 3)

local specWarnDismember	= mod:NewSpecialWarningStack(96, nil, 5)
local specWarnPursue	= mod:NewSpecialWarning("SpecWarnPursue")

local timerDismember	= mod:NewTargetTimer(10, 96)

function mod:OnCombatStart(delay)
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(96) then
		if (args.amount or 1) >= 5 and args:IsPlayer() then
			specWarnDismember:Show(args.amount)
		end
		WarnDismember:Show(args.spellName, args.destName, args.amount or 1)
		timerDismember:Start(args.destName)
	end
end

mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:CHAT_MSG_MONSTER_EMOTE(msg, _, _, _, target)
	if not msg.find(L.PursueEmote) then return end
	if not target then return end
	if target then
		warnPursue:Show(target)
		if target == UnitName("player") then
			specWarnPursue:Show()
		end
	end
end