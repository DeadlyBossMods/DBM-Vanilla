local isClassic = WOW_PROJECT_ID == (WOW_PROJECT_CLASSIC or 2)
local isBCC = WOW_PROJECT_ID == (WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5)
local isWrath = WOW_PROJECT_ID == (WOW_PROJECT_WRATH_CLASSIC or 11)
local catID
if isWrath then
	catID = 5
elseif isBCC or isClassic then
	catID = 6
else--retail or cataclysm classic and later
	catID = 4
end
local mod	= DBM:NewMod("Lucifron", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:DisableHardcodedOptions()
mod:SetCreatureID(DBM:IsSeasonal("SeasonOfDiscovery") and 228429 or 12118)--, 12119
mod:SetEncounterID(663)
mod:SetModelID(13031)
mod:SetHotfixNoticeRev(20240724000000)
mod:SetUsedIcons(1, 2)
mod:SetZone(409)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 20604",
	"SPELL_CAST_SUCCESS 19702 19703 460931 460932",
	"SPELL_AURA_APPLIED 19702 19703 20604 460931 460932",
	"SPELL_AURA_REMOVED 19702 19703 20604 460931 460932",
	"UNIT_DIED"
)

--[[
(ability.id = 19702 or ability.id = 19703 or ability.id = 20604 or ability.id = 460931 or ability.id = 460932) and type = "cast"
--]]
local warnDoom		= mod:NewSpellAnnounce(19702, 2)
local warnCurse		= mod:NewSpellAnnounce(19703, 3)
local warnMC		= mod:NewTargetNoFilterAnnounce(20604, 4)
local warnGuardDied	= mod:NewAnnounce("WarnGuardDied", 1, "132093")

local specWarnMC	= mod:NewSpecialWarningYou(20604, nil, nil, nil, 1, 2, nil, nil, "targetyou")
local specWarnDoom	= mod:NewSpecialWarningDispel(19702, "RemoveMagic", nil, nil, 1, 2, nil, nil, "dispelnow")
local specWarnCurse	= mod:NewSpecialWarningDispel(19703, "RemoveCurse", nil, nil, 1, 2, nil, nil, "dispelnow")
local yellMC		= mod:NewYell(20604)

local timerDoom		= mod:NewBuffFadesTimer(10, 19702, nil, "RemoveMagic", nil, 3, nil, DBM_COMMON_L.MAGIC_ICON)
local timerDoomCD	= mod:NewVarTimer("v21-27", 19702, nil, "RemoveMagic", nil, 3, nil, DBM_COMMON_L.MAGIC_ICON)
local timerCurseCD	= mod:NewVarTimer("v21-25.9", 19703, nil, "RemoveCurse", nil, 3, nil, DBM_COMMON_L.CURSE_ICON)
local timerMC		= mod:NewTargetTimer(15, 20604, nil, false, nil, 3)

mod:AddInfoFrameOption(19702, "RemoveMagic")

mod:AddSetIconOption("SetIconOnMC", 20604, true, 0, {1, 2})

local twipe = table.wipe
local lines, sortedLines = {}, {}
local doomTargets = {}
local guardsGuidCheck = {}
local function updateInfoFrame()
	twipe(lines)
	twipe(sortedLines)

	for name in pairs(doomTargets) do
		sortedLines[#sortedLines + 1] = name
		lines[name] = ""
	end

	return lines, sortedLines
end

mod.vb.lastIcon = 1
mod.vb.guardsRemaining = 2

function mod:OnCombatStart()
	self.vb.lastIcon = 1
	self.vb.guardsRemaining = 2
	table.wipe(doomTargets)
	table.wipe(guardsGuidCheck)
	timerDoomCD:Start("v5.7-11.8")
	timerCurseCD:Start("v11.2-16.3")
end

function mod:OnCombatEnd()
	table.wipe(doomTargets)
	table.wipe(guardsGuidCheck)
end

function mod:MCTarget(targetname)
	if not targetname or not DBM:GetRaidRoster(targetname) then return end--Ignore junk target scans that include pets
	if not self:AntiSpam(1.5, "MC", targetname) then -- gets called for both SPELL_CAST_START and AURA_APPLIED because the former doesn't seem to exist at least on SoD
		return
	end
	if self.Options.SetIconOnMC then
		self:SetIcon(targetname, self.vb.lastIcon)
	end
	warnMC:CombinedShow(0.3, targetname)
	if targetname == UnitName("player") then
		specWarnMC:Show()
		specWarnMC:Play("targetyou")
		yellMC:Yell()
	end
	-- Up to 4 targets can be active in SoD if you mess up
	self.vb.lastIcon = self.vb.lastIcon % 4 + 1
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(20604) and args:IsSrcTypeHostile() then
		self:BossTargetScanner(args.sourceGUID, "MCTarget", 0.2, 5)
	end
end

local function UpdateDoomFrame()
	if not mod.Options.InfoFrame then return end
	if next(doomTargets) then
		if not DBM.InfoFrame:IsShown() then
			DBM.InfoFrame:SetHeader(DBM:GetSpellInfo(19702))
			DBM.InfoFrame:Show(20, "function", updateInfoFrame)
		else
			DBM.InfoFrame:UpdateTable(updateInfoFrame)
		end
	else
		DBM.InfoFrame:Hide()
		timerDoom:Stop()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(19702, 460931) and args:IsDestTypePlayer() then
		doomTargets[args.destName] = true
		UpdateDoomFrame()
		if self.Options.SpecWarn19702dispel and self:AntiSpam(3, 1) then
			specWarnDoom:CombinedShow(0.5, args.destName)
			specWarnDoom:ScheduleVoice(0.5, "dispelnow")
		end
	elseif args:IsSpell(19703, 460932) and args:IsDestTypePlayer() then
		if self.Options.SpecWarn19703dispel and self:AntiSpam(3, 2) then
			specWarnCurse:CombinedShow(0.5, args.destName)
			specWarnCurse:ScheduleVoice(0.5, "dispelnow")
		end
	elseif args:IsSpell(20604) then
		self:MCTarget(args.destName)
		timerMC:Start(args.destName)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(19702, 460931) and args:IsDestTypePlayer() then
		doomTargets[args.destName] = nil
		UpdateDoomFrame()
	elseif args:IsSpell(20604) and args:IsDestTypePlayer() then
		timerMC:Stop(args.destName)
		if self.Options.SetIconOnMC then
			self:SetIcon(args.destName, 0)
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(19702, 460931) then
		timerDoom:Start()
		if not self.Options.SpecWarn19702dispel then
			warnDoom:Show()
		end
		if DBM:IsSeasonal("SeasonOfDiscovery") then
			timerDoomCD:Start("v16-21")
		else
			timerDoomCD:Start()
		end
	elseif args:IsSpell(19703, 460932) then
		if not self.Options.SpecWarn19703dispel then
			warnCurse:Show()
		end
		timerCurseCD:Start()
	end
end

function mod:UNIT_DIED(args)
	local guid = args.destGUID
	local cid = self:GetCIDFromGUID(guid)
	if cid == 12119 or (DBM:IsSeasonal("SeasonOfDiscovery") and cid == 228441) then -- Flamewaker Protector
		if not guardsGuidCheck[guid] then
			guardsGuidCheck[guid] = true
			self.vb.guardsRemaining = self.vb.guardsRemaining - 1
			warnGuardDied:Show(self.vb.guardsRemaining, 2)
		end
	end
end