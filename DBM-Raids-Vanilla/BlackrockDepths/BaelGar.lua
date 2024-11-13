local mod	= DBM:NewMod(2664, "DBM-Raids-Vanilla", 5, 1301)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "lfr,normal,heroic"

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(226303)
mod:SetEncounterID(3044)
mod:SetUsedIcons(1, 2, 3, 4)
mod:SetHotfixNoticeRev(20241029000000)
--mod:SetMinSyncRevision(20211203000000)
mod:SetZone(2792)
--mod.respawnTime = 29

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 463890 462969 462972",
	"SPELL_CAST_SUCCESS 462969",
	"SPELL_SUMMON 462949 462966"
--	"SPELL_AURA_REMOVED",
--	"SPELL_PERIODIC_DAMAGE",
--	"SPELL_PERIODIC_MISSED",
--	"UNIT_DIED"
--	"UNIT_SPELLCAST_SUCCEEDED boss1"
)

--[[
(ability.id = 463890 or ability.id = 462969 or ability.id = 462972) and type = "begincast"
 or ability.id = 462969 and type = "cast"
--]]
--NOTE, Figure out how many boulders fall during rockfall for automarking
--TODO, auto mark spawns of bael'Gar with https://www.wowhead.com/ptr-2/spell=462966/spawn-of-baelgar ?
local warnMoltenFurnaceOver					= mod:NewEndAnnounce(462969, 1, nil, nil, nil, nil, nil, 2)

local specWarnRockFall						= mod:NewSpecialWarningDodgeCount(463890, nil, nil, nil, 2, 2)
local specWarnMoltenFurnace					= mod:NewSpecialWarningMoveTo(462969, nil, nil, nil, 2, 2)
local specWarnShatter						= mod:NewSpecialWarningCount(462972, nil, nil, nil, 2, 2)
--local yellHoneyMarinade					= mod:NewShortYell(438025)
--local yellHoneyMarinadeFades				= mod:NewShortFadesYell(438025)

local timerRockfallCD						= mod:NewCDCountTimer(33, 463890, nil, nil, nil, 3)
local timerMoltenFurnaceCD					= mod:NewCDCountTimer(33, 462969, nil, nil, nil, 5, nil, DBM_COMMON_L.DEADLY_ICON)
local timerShatterCD						= mod:NewCDCountTimer(22, 462972, nil, nil, nil, 2)

--mod:AddNamePlateOption("NPOnHoney", 443983)
mod:AddSetIconOption("SetIconOnRockfall", -30947, true, 5, {1, 2, 3, 4})
--mod:AddInfoFrameOption(462969, false)

--local castsPerGUID = {}
mod.vb.GiantStrikeCount = 0
mod.vb.RockfallCount = 0
mod.vb.rockIcon = 1
mod.vb.furnaceCount = 0
mod.vb.activeBoulders = 0
mod.vb.shatterCount = 0
local BoulderName = DBM:GetSpellName(42139)

function mod:OnCombatStart(delay)
	self.vb.GiantStrikeCount = 0
	self.vb.RockfallCount = 0
	self.vb.rockIcon = 1
	self.vb.furnaceCount = 0
	self.vb.activeBoulders = 0
	self.vb.shatterCount = 0
	timerRockfallCD:Start(10-delay, 1)
	timerMoltenFurnaceCD:Start(50-delay, 1)
end

--function mod:OnCombatEnd()

--end

function mod:SPELL_CAST_START(args)
	local spellId = args.spellId
	if spellId == 463890 then
		self.vb.rockIcon = 1
		self.vb.RockfallCount = self.vb.RockfallCount + 1
		specWarnRockFall:Show(self.vb.RockfallCount)
		specWarnRockFall:Play("watchstep")
	elseif spellId == 462969 then
		self.vb.furnaceCount = self.vb.furnaceCount + 1
		specWarnMoltenFurnace:Show(BoulderName)
		specWarnMoltenFurnace:Play("findshelter")
		--if self.Options.InfoFrame then
		--	DBM.InfoFrame:SetHeader(DBM_COMMON_L.NOTSAFE)
		--	DBM.InfoFrame:Show(15, "playergooddebuff", 462971)
		--end
	elseif spellId == 462972 then
		self.vb.shatterCount = self.vb.shatterCount + 1
		specWarnShatter:Show(self.vb.shatterCount)
		specWarnShatter:Play("aesoon")
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	local spellId = args.spellId
	if spellId == 462969 then--Molten Furnace
		warnMoltenFurnaceOver:Show()
		warnMoltenFurnaceOver:Play("safenow")
		timerShatterCD:Start(21.9, self.vb.shatterCount+1)
		timerRockfallCD:Start(39, self.vb.RockfallCount+1)
		timerMoltenFurnaceCD:Start(79, self.vb.furnaceCount+1)
		--if self.Options.InfoFrame then
		--	DBM.InfoFrame:Hide()
		--end
	end
end

function mod:SPELL_SUMMON(args)
	local spellId = args.spellId
	if spellId == 462949 then--Boulder Spawning
		self.vb.activeBoulders = self.vb.activeBoulders + 1
		if self.Options.SetIconOnRockfall then
			self:ScanForMobs(args.destGUID, 2, self.vb.rockIcon, 1, nil, 14, "SetIconOnRockfall", nil, nil, true)
		end
		self.vb.rockIcon = self.vb.rockIcon + 1
	elseif spellId == 462966 then--Spawn of Bael'Gar (boulder dying)
		self.vb.activeBoulders = self.vb.activeBoulders - 1
	end
end

--[[
function mod:SPELL_AURA_REMOVED(args)
	local spellId = args.spellId
	if spellId == 440134 then

	end
end
--]]

--[[
function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId, spellName)
	if spellId == 440141 and destGUID == UnitGUID("player") and self:AntiSpam(3, 2) then
		specWarnGTFO:Show(spellName)
		specWarnGTFO:Play("watchfeet")
	end
end
mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE
--]]

--[[
function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 218016 then

	end
end
--]]

--[[
function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 74859 then

	end
end
--]]
