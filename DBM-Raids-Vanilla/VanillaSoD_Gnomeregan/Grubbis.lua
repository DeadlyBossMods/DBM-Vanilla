local mod	= DBM:NewMod("GrubbisSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(217280)
mod:SetEncounterID(2925)
--mod:SetHotfixNoticeRev(20231201000000)
--mod:SetMinSyncRevision(20231115000000)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 436027",
	"SPELL_CAST_SUCCESS 435520 435525 435526",
	"SPELL_SUMMON 435832 435835",
	"SPELL_AURA_APPLIED 434941",
--	"SPELL_AURA_APPLIED_DOSE",
	"SPELL_AURA_REMOVED 434941",
	"SPELL_PERIODIC_DAMAGE 438732",
	"SPELL_PERIODIC_MISSED 438732"
)

--Notes. This boss seems to be 3 stage boss. Cave A, Cave B, and Final phase. Three waves in A, Three waves in B, then Three waves in final phase
--Notes. this boss seems to open and close vents. Vents remain open 30 seconds based on https://www.wowhead.com/classic/spell=440471/toxic-ventilation

--TODO, obviously clean up staging and correct timer start/stop points (plus real timers not AI ones)
--local warnCorrosion				= mod:NewStackAnnounce(427625, 2, nil, "Tank|Healer")
--Stage 1/2
local warnSpawnAmbusher			= mod:NewSpellAnnounce(435832, 3)
local warnSpawnPillager			= mod:NewSpellAnnounce(435835, 3)
--Stage 3?
local warnGrubbisMad			= mod:NewSpellAnnounce(436027, 3)
local warnToxicVigor			= mod:NewTargetNoFilterAnnounce(434941, 3)
local warnToxicVigorOver		= mod:NewFadesAnnounce(434941, 1)
local warnActivateVents			= mod:NewSpellAnnounce(438732, 3)--Toxic Ventilation spellname used versus one of the 3 activate spells

--local specWarnCorrosiveBlast	= mod:NewSpecialWarningDodge(429168, nil, nil, nil, 2, 2)
--local yellDepthCharge			= mod:NewYell(404806)
local specWarnGTFO				= mod:NewSpecialWarningGTFO(438732, nil, nil, nil, 1, 8)

local timerSpawnAmbusher		= mod:NewAITimer(30, 435832, nil, nil, nil, 1)
local timerSpawnPillager		= mod:NewAITimer(30, 435835, nil, nil, nil, 1)
local timerToxicVigor			= mod:NewBuffActiveTimer(30, 434941, nil, nil, nil, 6)
local timerActivateVentsCD		= mod:NewAITimer(30, 438732, nil, nil, nil, 3)
--local timerCorrosiveBiteCD		= mod:NewCDTimer(6.5, 429207, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK_ICON)


function mod:OnCombatStart(delay)
	self:SetStage(1)
	timerSpawnAmbusher:Start(1)
	timerSpawnPillager:Start(1)
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(436027) then
		warnGrubbisMad:Show()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(435520, 435525, 435526) and self:AntiSpam(3, 1) then
		warnActivateVents:Show()
		timerActivateVentsCD:Start()
	end
end

function mod:SPELL_SUMMON(args)
	if args:IsSpell(435832) and self:AntiSpam(3, 2) then--Spawn Caverndeep Ambusher
		warnSpawnAmbusher:Show()
		timerSpawnAmbusher:Start()
--		if self.Options.SetIconOnGoo then
--			self:ScanForMobs(args.destGUID, 2, self.vb.gooIcon, 1, nil, 12, "SetIconOnGoo")
--		end
	elseif args:IsSpell(435835) and self:AntiSpam(3, 3) then--Spawn Caverndeep Pillager
		warnSpawnPillager:Show()
		timerSpawnPillager:Start()
--		if self.Options.SetIconOnGoo then
--			self:ScanForMobs(args.destGUID, 2, self.vb.gooIcon, 1, nil, 12, "SetIconOnGoo")
--		end
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(434941) then
		warnToxicVigor:Show(args.destName)
		timerToxicVigor:Start()
	end
end
--mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(434941) then
		warnToxicVigorOver:Show()
		timerToxicVigor:Stop()
	end
end

function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId, spellName)
	if spellId == 438732 and destGUID == UnitGUID("player") and self:AntiSpam(3, 4) then--Toxic Ventilation (assumed since it's the boss with vent mechanic)
		specWarnGTFO:Show(spellName)
		specWarnGTFO:Play("watchfeet")
	end
end
mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE

--[[
--Most of these will likely be UNIT_SPELLCAST events and not in combat log, so not drycoding em yet
--https://www.wowhead.com/classic/spells/name-extended:grubbis?filter=21;2;11501
function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 411583 then--Replace Stand with Swim
		self:SendSync("PhaseChange")
	end
end

function mod:OnSync(msg)
	if not self:IsInCombat() then return end
	if msg == "PhaseChange" and self:AntiSpam(30, 2) then

	end
end
--]]
