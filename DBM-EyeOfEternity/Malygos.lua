local mod	= DBM:NewMod("Malygos", "DBM-EyeOfEternity")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 3726 $"):sub(12, -3))
mod:SetCreatureID(28859)
mod:SetModelID(26752)

mod:RegisterCombat("yell", L.YellPull)

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS",
	"CHAT_MSG_MONSTER_YELL",
	"RAID_BOSS_EMOTE",
	"UNIT_SPELLCAST_SUCCEEDED"
)

local warnSpark				= mod:NewSpellAnnounce(56140, 2, 59381)
local warnVortex			= mod:NewSpellAnnounce(56105, 3)
local warnVortexSoon		= mod:NewSoonAnnounce(56105, 2)
local warnBreathInc			= mod:NewAnnounce("WarningBreathSoon", 3, 60072)
local warnBreath			= mod:NewAnnounce("WarningBreath", 4, 60072)
local warnSurge				= mod:NewTargetAnnounce(60936, 3)
local warnStaticField		= mod:NewSpellAnnounce(57430, 3)

local specWarnSurge			= mod:NewSpecialWarningYou(60936)

local enrageTimer			= mod:NewBerserkTimer(615)
local timerSpark			= mod:NewNextTimer(30, 56140, nil, nil, nil, 59381)
local timerArcaneBreathCD	= mod:NewCDTimer(30, 56272)--Don't know CD, need a log he doesn't die too fast in.
local timerVortex			= mod:NewCastTimer(11, 56105)
local timerVortexCD			= mod:NewNextTimer(60, 56105)
local timerBreath			= mod:NewTimer(59, "TimerBreath", 60072)
local timerStaticFieldCD	= mod:NewCDTimer(15.5, 57430)
local timerAchieve      	= mod:NewAchievementTimer(360, 1875, "TimerSpeedKill")

local guids = {}
local surgeTargets = {}

local function buildGuidTable()
	for i = 1, GetNumRaidMembers() do
		guids[UnitGUID("raid"..i.."pet") or ""] = UnitName("raid"..i)
	end
end

local function announceTargets(self)
	warnSurge:Show(table.concat(surgeTargets, "<, >"))
	table.wipe(surgeTargets)
end

function mod:OnCombatStart(delay)
	timerArcaneBreathCD:Start(20-delay)
	timerVortexCD:Start(48-delay)--Will verify with more logs next week.
	enrageTimer:Start(-delay)
	timerAchieve:Start(-delay)
	table.wipe(guids)
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(60936, 57407) then
		local target = guids[args.destGUID or 0]
		if target then
			surgeTargets[#surgeTargets + 1] = target
			self:Unschedule(announceTargets)
			if #surgeTargets >= 3 then
				announceTargets()
			else
				self:Schedule(0.5, announceTargets, self)
			end
			if target == UnitName("player") then
				specWarnSurge:Show()
			end
		end
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(56272) then
--		timerArcaneBreathCD:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(56105) then
		timerArcaneBreathCD:Start(23)
		timerVortexCD:Start()
		warnVortexSoon:Schedule(54)
		warnVortex:Show()
		timerVortex:Start()
		if timerSpark:GetTime() < 11 and timerSpark:IsStarted() then
			timerSpark:Update(18, 30)
		end
	elseif args:IsSpellID(57430) then
		warnStaticField:Show()
		timerStaticFieldCD:Start()
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg:sub(0, L.YellPhase2:len()) == L.YellPhase2 then
		self:SendSync("Phase2")
	elseif msg == L.YellBreath or msg:find(L.YellBreath) then
		self:SendSync("BreathSoon")
	elseif msg:sub(0, L.YellPhase3:len()) == L.YellPhase3 then
		self:SendSync("Phase3")
	end
end

function mod:RAID_BOSS_EMOTE(msg)
	if msg == L.EmoteSpark or msg:find(L.EmoteSpark) then
		self:SendSync("Spark")
	elseif msg == L.EmoteBreath or msg:find(L.EmoteBreath) then
		self:SendSync("Breath")
	end
end

--local free triggers but not reliable in instances that didn't impliment bossN args so backup emote/yell triggers still in place.
--Anti spam will be handled by sync handler
function mod:UNIT_SPELLCAST_SUCCEEDED(uId, spellName)
--	"<39.8> [UNIT_SPELLCAST_SUCCEEDED] Malygos:Possible Target<Omegal>:target:Summon Power Spark::0:56140", -- [998]
	if spellName == GetSpellInfo(56140) then
		self:SendSync("Spark")
	end
end

function mod:OnSync(event, arg)
	if event == "Spark" then
		warnSpark:Show()
		timerSpark:Start()
	elseif event == "Phase2" then
		timerArcaneBreathCD:Cancel()
		timerSpark:Cancel()
		timerVortexCD:Cancel()
		warnVortexSoon:Cancel()
		timerBreath:Start(92)
	elseif event == "Breath" then
		timerBreath:Schedule(1)
		warnBreath:Schedule(1)
	elseif event == "BreathSoon" then
		warnBreathInc:Show()
	elseif event == "Phase3" then
		self:Schedule(6, buildGuidTable)
		timerBreath:Stop()
		timerStaticFieldCD:Start(49.5)--Consistent?
	end
end
