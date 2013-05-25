local mod	= DBM:NewMod("Chess", "DBM-Karazhan")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
--UNIT_DIED firing for king assumed
if UnitFactionGroup("player") == "Alliance" then
	mod:SetCreatureID(21752)--Warchief Blackhand
else
	mod:SetCreatureID(21684)--King Llane
end
mod:RegisterCombat("combat")--Actually not how we register combat, bogus because SetWipeTime needs it
mod:SetWipeTime(600)

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED",
	"CHAT_MSG_RAID_BOSS_EMOTE"
)

local timerHeroism			= mod:NewBuffActiveTimer(10, 37471)
local timerRecentlyInGame	= mod:NewBuffFadesTimer(10, 30529)
local timerNextCheat		= mod:NewTimer(108, "timerCheat", 39342)

local firstCheat = false

function mod:OnCombatStart(delay)
	firstCheat = false
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 39331 and not self:IsInCombat() then
		DBM:StartCombat(self, 0)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args.spellId == 39331 and self:IsInCombat() then
		DBM:EndCombat(self, true)
	end
end

function mod:CHAT_MSG_RAID_BOSS_EMOTE(msg)
	if msg == L.EchoCheats then
		if not firstCheat then
			firstCheat = true
			timerNextCheat:Start(120)
		else
			timerNextCheat:Start()
		end
	end
end
