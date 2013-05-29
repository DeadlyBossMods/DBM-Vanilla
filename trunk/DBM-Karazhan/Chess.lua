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
	"SPELL_CAST_SUCCESS",
	"CHAT_MSG_RAID_BOSS_EMOTE"
)

local timerHeroism			= mod:NewBuffActiveTimer(10, 37471)
local timerBloodlust		= mod:NewBuffActiveTimer(10, 37472)
local timerRecentlyInGame	= mod:NewBuffFadesTimer(10, 30529)
local timerNextCheat		= mod:NewTimer(108, "timerCheat", 39342)

local firstCheat = false

function mod:OnCombatStart(delay)
--	firstCheat = false
	timerNextCheat:Start(111)
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 39331 and not self:IsInCombat() then
		DBM:StartCombat(self, 0)
	elseif args.spellId == 30529 and args:IsPlayer() then
		timerRecentlyInGame:Start()
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args.spellId == 39331 and self:IsInCombat() then
		DBM:EndCombat(self, true)
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args.spellId == 37471 then
		timerHeroism:Start()
	elseif args.spellId == 37472 then
		timerBloodlust:Start()
	end
end

--Cheat detection can be detected with unit event but only if medivh is focus or target. otherwise we have to use emote. Since almost no one would do this, we just use emote method
--"<120.0 00:59:30> [UNIT_SPELLCAST_SUCCEEDED] Echo of Medivh [[focus:Karazhan - Chess, Medivh CHEAT: Fury of Medivh, Target Alliance::0:39344]]", -- [367]
--"<120.0 00:59:30> [CHAT_MSG_RAID_BOSS_EMOTE] CHAT_MSG_RAID_BOSS_EMOTE#Echo of Medivh cheats!#Echo of Medivh###Omegall##0#0##0#3458#nil#0#false#false", -- [368]
function mod:CHAT_MSG_RAID_BOSS_EMOTE(msg)
	if msg == L.EchoCheats then
--[[		if not firstCheat then
			firstCheat = true
			timerNextCheat:Start(120)
		else--]]
			timerNextCheat:Start()
--		end
	end
end
