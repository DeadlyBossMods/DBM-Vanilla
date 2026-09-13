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
local mod	= DBM:NewMod("Majordomo", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:DisableHardcodedOptions()
if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod:SetCreatureID(228437, 228836, 228837)
else
	mod:SetCreatureID(12018, 11663, 11664)
end
mod:SetEncounterID(671)
mod:SetModelID(12029)
mod:SetHotfixNoticeRev(20240724000000)
mod:SetZone(409)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 461056 364908",
	"SPELL_CAST_SUCCESS 20619 21075 20534 461056",
	"SPELL_AURA_APPLIED 118 12824 12825 12826 5782 6213 6215 3355 14308 14309",
	"SPELL_AURA_REMOVED 118 12824 12825 12826 5782 6213 6215 3355 14308 14309",
	"NAME_PLATE_UNIT_ADDED",
	"UNIT_DIED"
)

local warnTeleport			= mod:NewTargetNoFilterAnnounce(20534)
local warnDamageShield		= mod:NewSpellAnnounce(21075, 2, nil, "Melee")

local specWarnMagicReflect	= mod:NewSpecialWarningReflect(20619, "-Melee", nil, nil, 1, 2, nil, nil, "stopattack")
local specWarnDamageShield	= mod:NewSpecialWarningReflect(21075, "Melee", nil, nil, 1, 2, nil, nil, "stopattack")
local specWarnTeleport		= mod:NewSpecialWarningYou(20534, nil, nil, nil, 2, 5, nil, nil, "teleyou")

local timerTeleportCD      = mod:NewVarTimer("v25.9-30.8", 20534, nil, nil, nil, 5, nil, DBM_COMMON_L.TANK_ICON)
local timerMagicReflect    = mod:NewBuffActiveTimer(10, 20619, nil, "-Melee", nil, 5, nil, DBM_COMMON_L.DAMAGE_ICON)
local timerDamageShield    = mod:NewBuffActiveTimer(10, 21075, nil, "Melee", nil, 5, nil, DBM_COMMON_L.DAMAGE_ICON)
local timerShieldCD        = mod:NewTimer(30.7, "timerShieldCD", nil, nil, nil, 6, DBM_COMMON_L.DAMAGE_ICON)

-- New in SoD
-- https://sod.warcraftlogs.com/reports/6RBYhaHdc17x94J8#fight=64&type=casts&by=ability&view=events&hostility=1
local specWarnFlare, specWarnDarkMending, timerNextFlare
if DBM:IsSeasonal("SeasonOfDiscovery") then
	specWarnFlare		= mod:NewSpecialWarningSpell(461056, nil, nil, nil, 2, 2, nil, nil, "findshelter")
	specWarnDarkMending	= mod:NewSpecialWarningInterrupt(364908, "HasInterrupt", nil, nil, 1, 2, nil, nil, "kickcast")
	timerNextFlare		= mod:NewNextTimer(30, 461056, nil, nil, nil, 2)
end

local addCIDs = {}
do
	local cids = DBM:IsSeasonal("SeasonOfDiscovery") and {228836, 228837} or {11663, 11664}
	for _, cid in ipairs(cids) do
		addCIDs[cid] = true
	end
end

local polymorphSpells = {118, 12824, 12825, 12826}
local fearSpells = {5782, 6213, 6215}
local freezingTrapSpells = {3355, 14308, 14309}
local polymorphIcon = "Interface\\Icons\\Spell_nature_polymorph"
local fearIcon = "Interface\\Icons\\Spell_shadow_possession"
local freezingTrapIcon = "Interface\\Icons\\Spell_frost_chainsofice"
local ccDurations = {
	[118] = 20, [12824] = 30, [12825] = 40, [12826] = 50,
	[5782] = 10, [6213] = 15, [6215] = 20,
	[3355] = 10, [14308] = 15, [14309] = 20
}
local ccSpellIcons = {}
do
	for _, spellId in ipairs(polymorphSpells) do
		ccSpellIcons[spellId] = polymorphIcon
	end
	for _, spellId in ipairs(fearSpells) do
		ccSpellIcons[spellId] = fearIcon
	end
	for _, spellId in ipairs(freezingTrapSpells) do
		ccSpellIcons[spellId] = freezingTrapIcon
	end
end

mod:AddInfoFrameOption(nil, true)

local addNames = {}
local addIcons = {}
local addDead = {}
local ccExpires = {}
local ccIcons = {}

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
			local ccTimeLeft = ccExpires[guid] and (ccExpires[guid] or 0) - t
			local displayName = icon and ("|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_%d:0|t%s"):format(icon, name) or name
			local key = guid .. "*" .. displayName
			sortedLines[#sortedLines + 1] = key
			if addDead[guid] then
				lines[key] = DEAD
			elseif ccTimeLeft > 0 then
				lines[key] = ("|cffff0000%.0f|r|T%s:0|t"):format(ccTimeLeft, ccIcons[guid])
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

function mod:OnCombatStart()
	table.wipe(addNames)
	table.wipe(addIcons)
	table.wipe(addDead)
	table.wipe(ccExpires)
	table.wipe(ccIcons)
	timerTeleportCD:Start("v15.8-21.1")
	timerShieldCD:Start(string.format("v%s-%s", 25.6, 30.7))
	if DBM:IsSeasonal("SeasonOfDiscovery") then
		timerNextFlare:Start(16)
	end
end

local function ShowInfoFrame()
	if not DBM.InfoFrame:IsShown() and mod.Options.InfoFrame then
		DBM.InfoFrame:SetHeader(DBM_COMMON_L.ADDS)
		DBM.InfoFrame:Show(8, "function", updateInfoFrame)
	end
end

function mod:OnCombatEnd()
	table.wipe(addNames)
	table.wipe(addIcons)
	table.wipe(addDead)
	table.wipe(ccExpires)
	table.wipe(ccIcons)
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
			local cid = self:GetCIDFromGUID(guid)
			addNames[guid] = (cid == 11663 or cid == 228837) and L.FlamewakerHealer or L.FlamewakerElite
			local iconNum = tonumber(icon)
			if iconNum and iconNum > 0 then
				addIcons[guid] = iconNum
			end
			ShowInfoFrame()
		end
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(118, 12824, 12825, 12826, 5782, 6213, 6215, 3355, 14308, 14309) and args:IsDestTypeHostile() then
		local guid = args.destGUID
		if guid and addCIDs[self:GetCIDFromGUID(guid)] then
			ccExpires[guid] = GetTime() + ccDurations[args.spellId]
			ccIcons[guid] = ccSpellIcons[args.spellId]
			ShowInfoFrame()
		end
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(118, 12824, 12825, 12826, 5782, 6213, 6215, 3355, 14308, 14309) and args:IsDestTypeHostile() then
		local guid = args.destGUID
		if guid and addCIDs[self:GetCIDFromGUID(guid)] then
			ccExpires[guid] = nil
			ccIcons[guid] = nil
		end
	end
end

function mod:UNIT_DIED(args)
	if addCIDs[self:GetCIDFromGUID(args.destGUID)] then
		addDead[args.destGUID] = true
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(461056) then
		specWarnFlare:Show()
		specWarnFlare:Play("findshelter")
	elseif args:IsSpell(364908) and self:CheckInterruptFilter(args.sourceGUID, nil, true) then
		specWarnDarkMending:Show(args.sourceName)
		specWarnDarkMending:Play("kickcast")
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(20619) then
		specWarnMagicReflect:Show(BOSS)--Always a threat to casters
		specWarnMagicReflect:Play("stopattack")
		timerMagicReflect:Start()
		timerShieldCD:Start()
	elseif args:IsSpell(21075) then
		if self.Options.SpecWarn21075reflect and (self:IsEvent() or not self:IsTrivial()) then--Not a threat to high level melee
			specWarnDamageShield:Show(BOSS)
			specWarnDamageShield:Play("stopattack")
		else
			warnDamageShield:Show()
		end
		timerDamageShield:Start()
		timerShieldCD:Start()
	elseif args:IsSpell(20534) then
		if args:IsPlayer() then
			specWarnTeleport:Show()
			specWarnTeleport:Play("teleyou")
		else
			warnTeleport:Show(args.destName)
		end
		timerTeleportCD:Start()
	elseif args:IsSpell(461056) then
		-- Next cast is always 30 seconds after *success*, if the cast fails (e.g., mage ice block) then it just tries again ~immediately
		timerNextFlare:Start()
	end
end
