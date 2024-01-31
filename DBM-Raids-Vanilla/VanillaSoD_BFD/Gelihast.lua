local mod	= DBM:NewMod("GelihastSoD", "DBM-Raids-Vanilla", 9)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(204921)
mod:SetEncounterID(2704)--2763 is likely 5 man version in instance type 201
mod:SetHotfixNoticeRev(20231208000000)
--mod:SetMinSyncRevision(20231115000000)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 412072 411973 411990 412528 412079 412080 412456",
	"SPELL_AURA_APPLIED 412072 411956 412079 412080",
	"SPELL_AURA_APPLIED_DOSE 412072",
	"UNIT_SPELLCAST_SUCCEEDED"--no boss unit Ids in classic
)

--TODO, what does shadow crash even do, does it need an alert?
--[[
(ability.id = 412456  or ability.id = 411973 or ability.id = 412072 or ability.id = 411990 or ability.id = 412248 or ability.id = 412528 or ability.id = 412079 or ability.id = 412080 or ability.id = 412296 or ability.id = 412421 or ability.id = 412443) and type = "cast"
--]]
local warnShadowStrike			= mod:NewStackAnnounce(412072, 2, nil, "Tank|Healer")
local warnCurseofBlackfathom	= mod:NewTargetNoFilterAnnounce(411956, 2, nil, "RemoveCurse")
local warnMarchofMurlocs		= mod:NewSpellAnnounce(412456, 2, 24939)
local warnGroundRupture			= mod:NewSpellAnnounce(412528, 2)

local timerShadowStrikeCD		= mod:NewCDTimer(11.3, 412072, nil, "Tank|Healer", 2, 5, nil, DBM_COMMON_L.MAGIC_ICON)
local timerCurseofBlackfathomCD	= mod:NewCDTimer(11.3, 411973, nil, "RemoveCurse", 2, 5, nil, DBM_COMMON_L.CURSE_ICON)
local timerShadowCrashCD		= mod:NewCDTimer(11.3, 411990, nil, nil, nil, 3)
local timerGroundRuptureCD		= mod:NewCDTimer(11.3, 412528, nil, nil, nil, 3)

-- Murlocs actively spawn for 18.0 seconds starting 2 seconds after the UCS trigger and it takes about 14 seconds for them to cross the room.
-- However, we don't care about a few murlocs left at the edge of the room at the end, so 32 second timer it is.
-- Boss becomes immune 2.0 seconds prior to murloc spawning and stays immune for 4.2 more seconds
local murlocsActive				= mod:NewBuffActiveTimer(32, 412456, nil, nil, nil, 6, 24939)
local bossImmune				= mod:NewTimer(24.2, "TimerImmune", 14893, nil, "TimerImmune", 6, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, "active")

function mod:OnCombatStart(delay)
	self:SetStage(1)
	timerShadowStrikeCD:Start(3-delay)
	timerCurseofBlackfathomCD:Start(6-delay)
	timerShadowCrashCD:Start(8-delay)
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(412072, 412079, 412080) then--Spell Id for each stage
		timerShadowStrikeCD:Start()
	elseif args:IsSpell(411973) then
		timerCurseofBlackfathomCD:Start()
	elseif args:IsSpell(411990) then
		timerShadowCrashCD:Start()
	elseif args:IsSpell(412528) and self:AntiSpam(5, 1) then
		warnGroundRupture:Show()
		timerGroundRuptureCD:Start()
	elseif args:IsSpell(412456) and self:AntiSpam(25, "Murlocs") then--Backup, but USCS is 2 seconds faster and more accurate
		self:SendSync("PhaseChange", 2)
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(412072, 412079, 412080) and args:IsDestTypePlayer() then--Spell Id for each stage
		local amount = args.amount or 1
		warnShadowStrike:Show(args.destName, amount)
	elseif args:IsSpell(412072) and args:IsDestTypePlayer() then
		warnCurseofBlackfathom:CombinedShow(0.5, args.destName)
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

--"<709.97 20:52:13> [UNIT_SPELLCAST_SUCCEEDED] Gelihast(6.5%-0.0%){Target:Valiseer} -Replace Stand with Swim- [[nameplate1:Cast-3-5164-48-10012-411583-00016E824D:411583]]", -- [10473]
--"<709.97 20:52:13> [UNIT_SPELLCAST_SUCCEEDED] Gelihast(6.5%-0.0%){Target:Valiseer} -Replace Stand with Swim- [[target:Cast-3-5164-48-10012-411583-00016E824D:411583]]", -- [10474]
--"<709.97 20:52:13> [UNIT_SPELLCAST_SUCCEEDED] Gelihast(6.5%-0.0%){Target:Valiseer} -Void Empowerment- [[nameplate1:Cast-3-5164-48-10012-412296-0001EE824D:412296]]", -- [10475]
--"<709.97 20:52:13> [UNIT_SPELLCAST_SUCCEEDED] Gelihast(6.5%-0.0%){Target:Valiseer} -Void Empowerment- [[target:Cast-3-5164-48-10012-412296-0001EE824D:412296]]", -- [10476]
--"<711.97 20:52:15> [CLEU] SPELL_SUMMON#Creature-0-5164-48-10012-205765-00036E79CF#Murloc Egg#Creature-0-5164-48-10012-205767-00006E824F#Void Murloc#412272#March of the Murlocs#nil#nil", -- [10501]
--"<711.97 20:52:15> [CLEU] SPELL_SUMMON#Creature-0-5164-48-10012-205765-0002EE79CF#Murloc Egg#Creature-0-5164-48-10012-205767-0000EE824F#Void Murloc#412272#March of the Murlocs#nil#nil", -- [10502]
--"<711.97 20:52:15> [CLEU] SPELL_SUMMON#Creature-0-5164-48-10012-205765-0001EE79CF#Murloc Egg#Creature-0-5164-48-10012-205767-00016E824F#Void Murloc#412272#March of the Murlocs#nil#nil", -- [10503]
function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 411583 then--Replace Stand with Swim
		self:SendSync("PhaseChange", 0)
	end
end

function mod:OnSync(msg, delay)
	if not self:IsInCombat() then return end
	delay = tonumber(delay) or 0
	if msg == "PhaseChange" and self:AntiSpam(30, "Murlocs") then
		self:SetStage(0)
		--Boss stops casting these during murlocs
		timerCurseofBlackfathomCD:Stop()
		timerShadowStrikeCD:Stop()
		timerShadowCrashCD:Stop()
		warnMarchofMurlocs:Show()
		murlocsActive:Start(-delay)
		bossImmune:Start(-delay)
	end
end
