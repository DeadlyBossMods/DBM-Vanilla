if not DBM:IsSeasonal("SeasonOfDiscovery") then return end

local mod	= DBM:NewMod("Beatrix", "DBM-Raids-Vanilla", 11)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal,heroic,mythic"

mod:SetRevision("@file-date-integer@")

mod:SetZone(2856)
mod:SetEncounterID(3187)
mod:SetCreatureID(240812)
mod:RegisterCombat("combat")
mod:SetWipeTime(30)

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 1236174 1232389 1236162 1236182 1232390",
	"SPELL_AURA_REFRESH 1232389",
	"CHAT_MSG_MONSTER_YELL",
	"NAME_PLATE_UNIT_ADDED"
)

local startTimer = mod:NewCombatTimer(185)

-- Froggers
local timerFroggers = mod:NewCastTimer(30, 1232690)
local warnFroggers = mod:NewSoonAnnounce(1232690)
local specWarnFroggers = mod:NewSpecialWarningDodgeLoc(1232690, nil, nil, nil, 2, 8)

-- Cannons
local timerCannons = mod:NewCastTimer(15, 24933)
local specWarnCannons = mod:NewSpecialWarningDodge(24933)

-- This fight is full of dispellable debuffs that stack up in bad ways
-- Currently just showing for dispellers, but do we maybe want some logic for warning if a tank gets certain stacks too high?
local warnSheep = mod:NewSpellAnnounce(1236174, nil, nil, "MagicDispeller", 2)
local warnHolyFire = mod:NewTargetNoFilterAnnounce(1236162, nil, nil, "MagicDispeller", 2)
local warnCrusaderStrike = mod:NewTargetNoFilterAnnounce(1236182, nil, nil, "MagicDispeller", 2)

-- This seems to be a *buff* that needs to be healed to 100%
local warnRosesThorns = mod:NewTargetNoFilterAnnounce(1232390)
local specWarnRosesThorns = mod:NewSpecialWarningSpell(1232390, "Healer", nil, nil, 2, 8)


-- Probably a special warning if you are targeted (as you are tanking) TBD
local warnBlade = mod:NewTargetNoFilterAnnounce(1232389)

-- Odd time, but confirmed by multiple logs, ~5 minutes after she joins the fight, probably some RP during phase transition
local berserkTimer = mod:NewBerserkTimer(493)

function mod:OnCombatStart(delay)
	startTimer:Start(120 - delay)
	self.vb.phase = 1
end


function mod:NAME_PLATE_UNIT_ADDED(uId) -- Fallback if the yell trigger for phase 2 doesn't work
	if self:GetUnitCreatureId(uId) == 240812 then
		berserkTimer:Start(300)
		startTimer:Stop()
	end
end


local selfSync = false -- TODO: remove this hack once we're sure combat deteciton works
function mod:CHAT_MSG_MONSTER_YELL(msg, source)
	if msg and msg:match(L.YellFroggers1) then
		selfSync = true
		self:SendSync("Froggers1")
	elseif msg and msg:match(L.YellFroggers2) then
		selfSync = true
		self:SendSync("Froggers2")
	elseif source and source:match(L.CannonMistress) then -- First yell seems unreliable? trigger only on NPC for now
		selfSync = true
		self:SendSync("Cannons2")
	elseif msg == L.YellPhase2 then
		selfSync = true
		self:SendSync("Phase2")
	end
end

function mod:OnSync(msg)
	if not self:IsInCombat() and not selfSync then return end -- I don't trust combat detection yet, it's a bit buggy in general in this fight
	if msg == "Froggers1" and self:AntiSpam(30, "Froggers") then
		timerFroggers:Start(36)
		warnFroggers:Show()
		specWarnFroggers:Schedule(6, L.Footmen)
		specWarnFroggers:ScheduleVoice(6, "watchstep")
	elseif msg == "Froggers2" and self:AntiSpam(25, "Froggers") then
		timerFroggers:Start(20)
		warnFroggers:Show()
		specWarnFroggers:Schedule(6, L.Horses)
		specWarnFroggers:ScheduleVoice(6, "watchstep")
	elseif msg == "Cannons2" and self:AntiSpam(30, "Cannons") then
		timerCannons:Start()
		specWarnCannons:Show()
	elseif msg == "Phase2" and self.vb.phase == 1 then
		self.vb.phase = 2
		self:SetStage(2)
		startTimer:Stop()
		berserkTimer:Cancel()
		berserkTimer:Start(300)
	end
	selfSync = false
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(1236174) then
		warnSheep:CombinedShow(0.2, args.destName)
	elseif args:IsSpell(1232389) and self:AntiSpam(10, "Blade") then -- Gets refreshed if you ignore it, looks like it really affects the tank
		warnBlade:Show(args.destName)
	elseif args:IsSpell(1236162) then
		warnHolyFire:CombinedShow(0.2, args.destName)
	elseif args:IsSpell(1236182) then
		warnCrusaderStrike:CombinedShow(0.2, args.destName)
	elseif args:IsSpell(1232390) then
		warnRosesThorns:CombinedShow(0.2, args.destName)
		if self:AntiSpam(5, "RosesThorns") then
			specWarnRosesThorns:Show()
			specWarnRosesThorns:Play("healfull")
		end
	end
end

mod.SPELL_AURA_REFRESH = mod.SPELL_AURA_APPLIED
