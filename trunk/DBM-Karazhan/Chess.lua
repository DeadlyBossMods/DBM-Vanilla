local mod	= DBM:NewMod("Chess", "DBM-Karazhan")
local L		= mod:GetLocalizedStrings()

local playerFactoin = UnitFactionGroup("player")
mod:SetRevision(("$Revision$"):sub(12, -3))
--UNIT_DIED firing for king assumed
if playerFactoin == "Alliance" then
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
	"CHAT_MSG_RAID_BOSS_EMOTE",
	"UNIT_DIED"
)

local timerHeroism			= mod:NewBuffActiveTimer(10, 37471)
local timerBloodlust		= mod:NewBuffActiveTimer(10, 37472)
local timerRecentlyInGame	= mod:NewBuffFadesTimer(10, 30529)
local timerNextCheat		= mod:NewTimer(108, "timerCheat", 39342)

local firstCheat = false
local secondCheat = false

function mod:OnCombatStart(delay)
	firstCheat = false
	secondCheat = false
	timerNextCheat:Start(111)
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 39331 and not self:IsInCombat() then
		DBM:StartCombat(self, 0)
	elseif args.spellId == 30529 then
		if not self:IsInCombat() then--Because game in session may not go away on wipe, we need to detect a repull off first hop into a chess peice
			DBM:StartCombat(self, 0)
		end
		if args:IsPlayer() then
			timerRecentlyInGame:Start()
		end
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
--Second cheat seems to sometimes come after 120 instead of 108
--We always start the 108 timer, but schedule a check for 110 that if second cheat hasn't come yet, we know it's a 120 one and to update timer
local function cheatDelayed()
	timerNextCheat:Start(10)
end
function mod:CHAT_MSG_RAID_BOSS_EMOTE(msg)
	if msg == L.EchoCheats then
		if not firstCheat then
			firstCheat = true
			timerNextCheat:Start()--Start 108 timer since it's about 50/50 for this one
			self:Schedule(110, cheatDelayed)--But if not cheated by 110, start a 10 second timer for when the cheat will happen, at 120.
		else
			if not secondCheat then
				self:Unschedule(cheatDelayed)
				secondCheat = true
			end
			timerNextCheat:Start()--All other cheats should be every 108 like clockwork. Only the second is random. Ie, 111, 120, 108 repeating, OR 111, 108 repeating.
		end
	end
end

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if playerFactoin == "Alliance" and (cid == 21684) then
		DBM:EndCombat(self, true)
	elseif playerFactoin == "Horde" and (cid == 21752) then
		DBM:EndCombat(self, true)
	end
end
