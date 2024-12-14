local isClassic = WOW_PROJECT_ID == (WOW_PROJECT_CLASSIC or 2)
local isBCC = WOW_PROJECT_ID == (WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5)
local catID
if isBCC or isClassic then
	catID = 3
else--retail or wrath classic and later
	catID = 2
end
local mod	= DBM:NewMod("Rajaxx", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(15341)
mod:SetEncounterID(719)
mod:SetZone(509)

if not mod:IsClassic() then
	mod:SetModelID(15376)
end
mod:RegisterCombat("combat")

mod:RegisterEvents(--An exception to not use incombat events, cause boss might not engage until after his waves
	"SPELL_AURA_APPLIED 25471",
	"SPELL_CAST_SUCCESS 26550 25599",
	"CHAT_MSG_MONSTER_YELL"
)

local timerCombatStart  = mod:NewCombatTimer(30)
local warnWave			= mod:NewAnnounce("WarnWave", 2, "136116")
local warnOrder			= mod:NewTargetAnnounce(25471)
local warnCloud			= mod:NewSpellAnnounce(26550)
local warnThundercrash	= mod:NewSpellAnnounce(25599)

local specWarnOrder		= mod:NewSpecialWarningYou(25471, nil, nil, nil, 1, 2)
local yellOrder			= mod:NewYell(25471)

local timerOrder		= mod:NewTargetTimer(10, 25471, nil, nil, nil, 3)
local timerCloud		= mod:NewBuffActiveTimer(15, 26550, nil, nil, nil, 3)--? Good color?

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(25471) then
		timerOrder:Start(args.destName)
		if args:IsPlayer() then
			specWarnOrder:Show()
			specWarnOrder:Play("targetyou")
			yellOrder:Yell()
		else
			warnOrder:Show(args.destName)
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(26550) then
		warnCloud:Show()
		timerCloud:Start()
	elseif args:IsSpell(25599) then
		warnThundercrash:Show()
	end
end

-- "<156.72 22:13:40> [CHAT_MSG_MONSTER_YELL] Remember, Rajaxx, when I said I'd kill you last?#Lieutenant General Andorov###Paszeko##0#0##0#615#nil#0#false#false#false#false",
-- "<160.22 22:13:43> [CHAT_MSG_MONSTER_YELL] I lied...#Lieutenant General Andorov###Paszeko##0#0##0#617#nil#0#false#false#false#false",
-- "<178.07 22:14:01> [CHAT_MSG_MONSTER_YELL] They come now. Try not to get yourself killed, young blood.#Lieutenant General Andorov###Paszeko##0#0##0#622#nil#0#false#false#false#false",
-- "<187.59 22:14:11> [ENCOUNTER_START] 719#General Rajaxx#148#20",
-- "<187.76 22:14:11> [CHAT_MSG_MONSTER_YELL] Kill first, ask questions later... Incoming!#Lieutenant General Andorov###Paszeko##0#0##0#629#nil#0#false#false#false#false",
-- "<188.81 22:14:12> [CLEU] SPELL_CAST_SUCCESS#Player-5827-02704792#Azká#Creature-0-5208-509-200-15344-0009536630#Swarmguard Needler#400613#Living Bomb#nil#nil#nil#nil#nil#nil",

function mod:CHAT_MSG_MONSTER_YELL(msg)--some of these yells have line breaks that message match doesn't grab, so will try find.
	if msg == L.Wave12Alt or msg:find(L.Wave12Alt) then -- RP start
		self:SendSync("Pull")
	elseif msg == L.Wave12 or msg:find(L.Wave12) then -- Actual first waves
		self:SendSync("Wave", "1, 2")
	elseif msg == L.Wave3 or msg:find(L.Wave3) then
		self:SendSync("Wave", 3)
	elseif msg == L.Wave4 or msg:find(L.Wave4) then
		self:SendSync("Wave", 4)
	elseif msg == L.Wave5 or msg:find(L.Wave5) then
		self:SendSync("Wave", 5)
	elseif msg == L.Wave6 or msg:find(L.Wave6) then
		self:SendSync("Wave", 6)
	elseif msg == L.Wave7 or msg:find(L.Wave7) then
		self:SendSync("Wave", 7)
	elseif msg == L.Wave8 or msg:find(L.Wave8) then
		self:SendSync("Wave", 8)
	end
end

function mod:OnSync(msg, count)
	if DBM:GetCurrentArea() ~= 509 then return end--Block syncs if not in the zone
	if msg == "Wave" then
		warnWave:Show(count)
	elseif msg == "Pull" then
		timerCombatStart:Start(31.8) -- 31 seconds until wave starts moving, ~31.8 until they enter the room
	end
end
