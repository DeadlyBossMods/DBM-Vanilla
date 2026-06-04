local isClassic = WOW_PROJECT_ID == (WOW_PROJECT_CLASSIC or 2)
local isBCC = WOW_PROJECT_ID == (WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5)
local isWrath = WOW_PROJECT_ID == (WOW_PROJECT_WRATH_CLASSIC or 11)
local catID
if isBCC or isClassic then
	catID = 4
elseif isWrath then--Wrath classic
	catID = 3
else--Cataclysm classic
	catID = 5
end
local mod	= DBM:NewMod("Hakkar", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:DisableHardcodedOptions()
mod:SetCreatureID(14834)
mod:SetEncounterID(793)
mod:SetHotfixNoticeRev(20200419000000)--2020, 04, 19
mod:SetZone(309)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 24324 24686 24687 24688 24689 24690",
	"SPELL_AURA_APPLIED 24327 24328 24686 24687 24688 24689 24690 468408 468012 468491",
	"SPELL_AURA_REMOVED 24687 24688 24689"
)

--[[
(ability.id = 24324 or ability.id = 24686 or ability.id = 24687 or ability.id = 24688 or ability.id = 24689 or ability.id = 24690) and type = "cast"
--]]
local warnSiphonSoon			= mod:NewSoonAnnounce(24324, 3)
local warnInsanity				= mod:NewTargetNoFilterAnnounce(24327, 4)
local warnBlood					= mod:NewTargetAnnounce(24328, 2)--Not exempt from filter since it could be spammy
local yellBlood					= mod:NewYell(24328, nil, nil, 2)
local warnAspectOfMarli			= mod:NewTargetNoFilterAnnounce(24686, 4)
local warnAspectOfJeklik		= mod:NewSpellAnnounce(24687, 2, nil, "SpellCaster")
local warnAspectOfVenoxis		= mod:NewSpellAnnounce(24688, 2)
local warnAspectOfThekal		= mod:NewSpellAnnounce(24689, 3, nil, "Tank|RemoveEnrage|Healer", 4)
local warnAspectOfArlokk		= mod:NewTargetNoFilterAnnounce(24690, 4)

local specWarnAspectOfThekal	= mod:NewSpecialWarningDispel(24689, "RemoveEnrage", nil, nil, 1, 6, nil, nil, "enrage")
local specWarnBlood				= mod:NewSpecialWarningMoveAway(24328, nil, nil, nil, 1, 2, nil, nil, "runout")

local timerSiphon				= mod:NewNextTimer(90, 24324, nil, nil, nil, 2)
local timerAspectOfMarli
local timerAspectOfMarliCD
local timerAspectOfJeklik
local timerAspectOfJeklikCD
local timerAspectOfVenoxisCD
local timerAspectOfThekal
local timerAspectOfThekalCD
local timerAspectOfArlokk
local timerAspectOfArlokkCD
local timerNextAspect, timerSilenced
if DBM:IsSeasonal("SeasonOfDiscovery") then
	timerNextAspect				= mod:NewNextSpecialTimer(20, 24687)
	timerSilenced				= mod:NewBuffFadesTimer(10, 468012)
else
	timerAspectOfMarli			= mod:NewTargetTimer(6, 24686, nil, nil, nil, 3)
	timerAspectOfMarliCD		= mod:NewVarTimer("v16.1-22.8", 24686, nil, nil, nil, 3)
	timerAspectOfJeklik			= mod:NewBuffActiveTimer(5, 24687, nil, false, 2, 2)--Could be spammy so off by default. Users can turn it on who want to see this
	timerAspectOfJeklikCD		= mod:NewVarTimer("v21-32.4", 24687, nil, nil, nil, 2)
	timerAspectOfVenoxisCD		= mod:NewVarTimer("v16.2-24.3", 24688, nil, nil, nil, 2)
	timerAspectOfThekal			= mod:NewBuffActiveTimer(8, 24689, nil, "Tank|RemoveEnrage|Healer", 3, 5, nil, DBM_COMMON_L.TANK_ICON..DBM_COMMON_L.ENRAGE_ICON)
	timerAspectOfThekalCD		= mod:NewCDTimer(16.2, 24689, nil, nil, nil, 5)
	timerAspectOfArlokk			= mod:NewTargetTimer(2, 24690, nil, nil, nil, 3)
	timerAspectOfArlokkCD		= mod:NewCDTimer(30.8, 24690, nil, nil, nil, 3)
end
local timerInsanity				= mod:NewTargetTimer(10, 24327, nil, nil, nil, 3)
local timerInsanityCD			= mod:NewCDTimer(21, 24327, nil, nil, nil, 3)

local enrageTimer				= mod:NewBerserkTimer(585)

mod:AddInfoFrameOption(24687, "SpellCaster")

-- Aspects in SoD: Cast exactly every 20 seconds, order seems to be random, but he casts them all before repeating one as far as I can tell
-- The second cycle is random again
-- Spawn of Mar'li just randomly show up with no SPELL_SUMMON or anything, there's an emote 20 seconds later but that's too late
-- One other aspect is also somehow missing entirely from the log, so just repeating the timer on a 20 second loop as a fallback

local lines, sortedLines = {}, {}
local silenceTargets = {}
local hasVenoxis = false
local function updateInfoFrame()
	table.wipe(lines)
	table.wipe(sortedLines)

	local i = 0

	for name in pairs(silenceTargets) do
		i = i + 1
		sortedLines[i] = name
		lines[name] = ""
	end

	return lines, sortedLines
end

local function IsHardMode(self)
	-- SoD: 1832497 hp
	local hpThreshold = DBM:IsSeasonal("SeasonOfDiscovery") and 1500000 or 1079325
	if IsInRaid() then
		for i = 1, GetNumGroupMembers() do
			local UnitID = "raid"..i.."target"
			local guid = UnitGUID(UnitID)
			if guid then
				local cid = self:GetCIDFromGUID(guid)
				if cid == 14834 then
					if UnitHealthMax(UnitID) >= hpThreshold then
						return true
					end
				end
			end
		end
	elseif IsInGroup() then
		for i = 1, GetNumSubgroupMembers() do
			local UnitID = "party"..i.."target"
			local guid = UnitGUID(UnitID)
			if guid then
				local cid = self:GetCIDFromGUID(guid)
				if cid == 14834 then
					if UnitHealthMax(UnitID) >= hpThreshold then
						return true
					end
				end
			end
		end
	else--Solo Raid?, maybe in classic TBC or classic WRATH. Future proofing the mod
		local guid = UnitGUID("target")
		if guid then
			local cid = self:GetCIDFromGUID(guid)
			if cid == 14834 then
				if UnitHealthMax("target") >= hpThreshold then
					return true
				end
			end
		end
	end
	return false
end

function mod:AspectTimer()
	if not timerNextAspect then return end
	timerNextAspect:Start(20)
	self:UnscheduleMethod("AspectTimer")
	self:ScheduleMethod(22, "AspectTimer", 2)
end

function mod:OnCombatStart()
	table.wipe(silenceTargets)
	hasVenoxis = false
	enrageTimer:Start(585)
	warnSiphonSoon:Schedule(80)
	timerSiphon:Start(90)
	timerInsanityCD:Start("v20.7-22.7")
	--Hard Mode Timers
	--This just checks for Hakkar's health which is higher on hard mode
	--Can't just start these on all normal mode pulls
	if IsHardMode(self) then
		if timerNextAspect then
			self:AspectTimer()
		else
			timerAspectOfMarliCD:Start("v10.4-13")
			timerAspectOfJeklikCD:Start("v22.5-25.7")
			timerAspectOfVenoxisCD:Start("v11.4-16.4")
			timerAspectOfThekalCD:Start("v11-11.6")
			timerAspectOfArlokkCD:Start("v30.5-32.4")
		end
	end
end

function mod:OnCombatEnd()
	self:UnscheduleMethod("AspectTimer")
	DBM.InfoFrame:Hide()
	table.wipe(silenceTargets)
end

local function UpdateSilenceFrame()
	if not mod.Options.InfoFrame then return end
	if next(silenceTargets) then
		if not DBM.InfoFrame:IsShown() then
			DBM.InfoFrame:SetHeader(DBM:GetSpellInfo(24687))
			DBM.InfoFrame:Show(10, "function", updateInfoFrame)
		else
			DBM.InfoFrame:UpdateTable(updateInfoFrame)
		end
	else
		DBM.InfoFrame:Hide()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(24324) then
		warnSiphonSoon:Cancel()
		warnSiphonSoon:Schedule(80)
		timerSiphon:Start()
	elseif args:IsSpell(24686) then
		timerAspectOfMarliCD:Start()
	elseif args:IsSpell(24687) then
		warnAspectOfJeklik:Show()
		timerAspectOfJeklik:Start()
		timerAspectOfJeklikCD:Start()
	elseif args:IsSpell(24688) then
		warnAspectOfVenoxis:Show()
		timerAspectOfVenoxisCD:Start()
	elseif args:IsSpell(24689) then
		timerAspectOfThekalCD:Start()
	elseif args:IsSpell(24690) then
		timerAspectOfArlokkCD:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(24327) then
		warnInsanity:Show(args.destName)
		timerInsanity:Start(args.destName)
		timerInsanityCD:Start()
	elseif args:IsSpell(24328) then
		warnBlood:Show(args.destName)
		if hasVenoxis and args:IsPlayer() then
			specWarnBlood:Show()
			specWarnBlood:Play("runout")
			yellBlood:Yell()
		end
	elseif args:IsSpell(24686) then
		warnAspectOfMarli:Show(args.destName)
		timerAspectOfMarli:Start(args.destName)
	elseif args:IsSpell(24687) then
		silenceTargets[args.destName] = true
		UpdateSilenceFrame()
	elseif args:IsSpell(24688) and args:IsPlayer() then
		hasVenoxis = true
	elseif (args:IsSpell(24689) or args:IsSpell(468408)) and args:IsDestTypeHostile() then
		if self.Options.SpecWarn24689dispel then
			specWarnAspectOfThekal:Show(args.destName)
			specWarnAspectOfThekal:Play("enrage")
		else
			warnAspectOfThekal:Show()
		end
		timerAspectOfThekal:Start()
		self:AspectTimer()
	elseif args:IsSpell(24690) then
		warnAspectOfArlokk:Show(args.destName)
		timerAspectOfArlokk:Start(args.destName)
	elseif args:IsSpell(468012) and self:AntiSpam(3, "Silence") then
		timerSilenced:Start()
		self:AspectTimer()
	elseif args:IsSpell(468491) and self:AntiSpam(3, "Aoe") then
		self:AspectTimer()
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(24687) then
		silenceTargets[args.destName] = nil
		UpdateSilenceFrame()
	elseif args:IsSpell(24688) and args:IsPlayer() then
		hasVenoxis = false
	elseif args:IsSpell(24689) and args:IsDestTypeHostile() then
		timerAspectOfThekal:Stop()
	end
end
