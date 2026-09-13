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
local mod	= DBM:NewMod("Garr-Classic", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:DisableHardcodedOptions()
if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod:SetCreatureID(228432, 228834)
else
	mod:SetCreatureID(12057, 12099)
end
mod:SetEncounterID(666)
mod:SetModelID(12110)
mod:SetHotfixNoticeRev(20240724000000)
mod:SetZone(409)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 15732 710 18647",
	"SPELL_AURA_REMOVED 710 18647",
	"SPELL_CAST_SUCCESS 19492 19496 20506",
	"NAME_PLATE_UNIT_ADDED",
	"UNIT_DIED"
)

local warnImmolate			= mod:NewTargetNoFilterAnnounce(15732, 2, nil, false, 3)
local warnAntiMagicPulse	= mod:NewSpellAnnounce(19492, 2)
local warnMagmaShackles		= mod:NewSpellAnnounce(19496, 2)

local timerAntiMagicPulse	= mod:NewVarTimer("v16.2-21.1", 19492, nil, nil, nil, 2)
local timerMagmaShackles	= mod:NewVarTimer("v11.3-16.2", 19496, nil, nil, nil, 2)

local warnMagmakin, timerMagmakinCD
if DBM:IsSeasonal("SeasonOfDiscovery") then
	warnMagmakin 		= mod:NewSpellAnnounce(20506, 2)
	timerMagmakinCD 	= mod:NewCDTimer(4.8, 20506, nil, nil, nil, 1)--5-6.5 variation, SoD: 4.8-5.0
end

local addCIDs = {}
do
	local cids = DBM:IsSeasonal("SeasonOfDiscovery") and {228834} or {12099}
	for _, cid in ipairs(cids) do
		addCIDs[cid] = true
	end
end

local banishDurations = {
	[710] = 20, [18647] = 30
}
local banishIcon = "Interface\\Icons\\Spell_shadow_cripple"

mod:AddInfoFrameOption(nil, true)

local addNames = {}
local addIcons = {}
local addDead = {}
local banishExpires = {}

local updateInfoFrame
do
	local twipe = table.wipe
	local GetTime = GetTime
	local lines, sortedLines = {}, {}
	updateInfoFrame = function()
		twipe(lines)
		twipe(sortedLines)
		local t = GetTime()
		for guid, name in pairs(addNames) do
			local icon = addIcons[guid]
			local banishTimeLeft = banishExpires[guid] and (banishExpires[guid] - t) or 0
			local displayName = icon and ("|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_%d:0|t%s"):format(icon, name) or name
			local key = guid .. "*" .. displayName
			sortedLines[#sortedLines + 1] = key
			if addDead[guid] then
				lines[key] = DEAD
			elseif banishTimeLeft > 0 then
				lines[key] = ("|cffff0000%.0f|r|T%s:0|t"):format(banishTimeLeft, banishIcon)
			else
				local hp = DBM:GetBossHP(guid)
				if hp and hp > 0 then
					lines[key] = ("%.0f%%"):format(hp)
				else
					lines[key] = ("%d%%"):format(0)
				end
			end
		end
		return lines, sortedLines
	end
end

local function ShowInfoFrame()
	if not DBM.InfoFrame:IsShown() and mod.Options.InfoFrame then
		DBM.InfoFrame:SetHeader(DBM_COMMON_L.ADDS)
		DBM.InfoFrame:Show(8, "function", updateInfoFrame)
	end
end

function mod:OnCombatStart()
	table.wipe(addNames)
	table.wipe(addIcons)
	table.wipe(addDead)
	table.wipe(banishExpires)
	if DBM:IsSeasonal("SeasonOfDiscovery") then
		timerMagmakinCD:Start(4.9)
	end
	timerAntiMagicPulse:Start("v11.2-16.2")
	timerMagmaShackles:Start("v5.9-11.3")
end

function mod:OnCombatEnd()
	table.wipe(addNames)
	table.wipe(addIcons)
	table.wipe(addDead)
	table.wipe(banishExpires)
end

function mod:NAME_PLATE_UNIT_ADDED(unitId)
	local guid = UnitGUID(unitId)
	if not guid or not addCIDs[self:GetCIDFromGUID(guid)] then return end
	self:SendSync("AddFound", guid, GetRaidTargetIndex(unitId) or 0)
end

function mod:OnSync(event, guid, icon)
	if not self:IsInCombat() then return end
	if event == "AddFound" then
		if not addNames[guid] then
			addNames[guid] = L.Firesworn
			local iconNum = tonumber(icon)
			if iconNum and iconNum > 0 then
				addIcons[guid] = iconNum
			end
			ShowInfoFrame()
		end
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(710, 18647) and args:IsDestTypeHostile() then
		local guid = args.destGUID
		if guid and addCIDs[self:GetCIDFromGUID(guid)] then
			banishExpires[guid] = GetTime() + banishDurations[args.spellId]
			ShowInfoFrame()
		end
	elseif args:IsSpell(15732) and args:IsDestTypePlayer() then
		warnImmolate:CombinedShow(1, args.destName)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(710, 18647) and args:IsDestTypeHostile() then
		local guid = args.destGUID
		if guid and addCIDs[self:GetCIDFromGUID(guid)] then
			banishExpires[guid] = nil
		end
	end
end

function mod:UNIT_DIED(args)
	if args.destGUID and addCIDs[self:GetCIDFromGUID(args.destGUID)] then
		addDead[args.destGUID] = true
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(19492) then
		warnAntiMagicPulse:Show()
		timerAntiMagicPulse:Start()
	elseif args:IsSpell(19496) then
		warnMagmaShackles:Show()
		timerMagmaShackles:Start()
	elseif args:IsSpell(20506) then
		warnMagmakin:Show()
		timerMagmakinCD:Start()
	end
end
