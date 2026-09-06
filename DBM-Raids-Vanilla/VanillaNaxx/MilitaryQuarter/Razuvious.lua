local mod	= DBM:NewMod("RazuviousVanilla", "DBM-Raids-Vanilla", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetMinSyncRevision(20260522000000) -- 2026, May 22nd
mod:DisableHardcodedOptions()
mod:SetCreatureID(16061)
mod:SetEncounterID(1113)
mod:SetModelID(16582)
mod:SetZone(533)

mod:RegisterCombat("combat_yell", L.Pull1, L.Pull2, L.Pull3, L.Pull4)

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod.statTypes = "normal,heroic,mythic"
else
	mod.statTypes = "normal"
end

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 29107 29060 29061",
	"SPELL_AURA_APPLIED 10912",
	"SPELL_AURA_REMOVED 10912",
	"NAME_PLATE_UNIT_ADDED",
	"UNIT_SPELLCAST_SUCCEEDED",
	"UNIT_DIED"
)

-- New spell ID found in logs on SoD
-- 1225423 (Disarm) cast by Understudies, TBD if we want to do something with that
local isPriest 				= select(2, UnitClass("player")) == "PRIEST"
local warnShoutNow			= mod:NewSpellAnnounce(29107, 4, "132352")
local warnShoutSoon			= mod:NewSoonAnnounce(29107, 3, "132352", "ManaUser")
local warnShieldWall		= mod:NewTargetNoFilterAnnounce(29061, 2, nil, "Dps")

local timerShout			= mod:NewCDTimer(25.9, 29107, nil, "ManaUser", nil, 2, "132352", DBM_COMMON_L.DEADLY_ICON, nil, 1, 5)
local timerTaunt			= mod:NewCDTimer(60, 29060, nil, isPriest, nil, 5, nil, DBM_COMMON_L.TANK_ICON)
local timerShieldWall		= mod:NewBuffActiveTimer(20, 29061, nil, "Dps", nil, 5, nil, DBM_COMMON_L.DAMAGE_ICON)
local timerMindExhaustionCD	= mod:NewCDNPTimer(60, 29051, nil, isPriest, nil, 5)

mod:AddInfoFrameOption(nil, true)

local mindExhaustionTimers = {}
local mindExhaustionNames = {}
local mindExhaustionIcons = {}
local mindControlOwners = {}
local mindControlTimers = {}

local MC_TEXTURE = "Spell_shadow_shadowworddominate"
local MIND_EXHAUST_TEXTURE = "Spell_shadow_teleport"

local updateInfoFrame
do
	local RAID_CLASS_COLORS = _G["CUSTOM_CLASS_COLORS"] or RAID_CLASS_COLORS
	local twipe = table.wipe
	local lines, sortedLines = {}, {}
	updateInfoFrame = function()
		twipe(lines)
		twipe(sortedLines)
		local t = GetTime()
		for guid, name in pairs(mindExhaustionNames) do
			local mcOwner = mindControlOwners[guid]
			local mcTimeLeft = (mindControlTimers[guid] or 0) - t
			local exhaustionTimeLeft = (mindExhaustionTimers[guid] or 0) - t
			local icon = mindExhaustionIcons[guid]
			local displayName = name
			if mcOwner then
				local color = RAID_CLASS_COLORS[DBM:GetRaidClass(mcOwner)]
				displayName = ("|c%s%s|r"):format(color and color.colorStr or "ffffff", mcOwner)
			end
			displayName = icon and ("|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_%d:0|t%s"):format(icon, displayName) or displayName
			local key = guid .. "*" .. displayName
			sortedLines[#sortedLines + 1] = key
			if mindExhaustionTimers[guid] == -1 then
				lines[key] = DEAD
			elseif mcOwner and mcTimeLeft >= 0 then
				lines[key] = ("|T%s:0|t|cffff7f00%.0f|r"):format(MC_TEXTURE, mcTimeLeft)
			elseif exhaustionTimeLeft > 0 then
				lines[key] = ("|T%s:0|t|cffff0000%.0f|r"):format(MIND_EXHAUST_TEXTURE, exhaustionTimeLeft)
			else
				lines[key] = ("|cff00ff00%d|r"):format(0)
			end
		end
		return lines, sortedLines
	end
end

function mod:OnCombatStart()
	timerShout:Start()
	warnShoutSoon:Schedule(19)
	table.wipe(mindExhaustionTimers)
	table.wipe(mindExhaustionNames)
	table.wipe(mindExhaustionIcons)
	table.wipe(mindControlOwners)
	table.wipe(mindControlTimers)
end

local function ShowInfoFrame()
	if not DBM.InfoFrame:IsShown() and mod.Options.InfoFrame then
		DBM.InfoFrame:SetHeader(DBM:GetSpellName(29051))
		DBM.InfoFrame:Show(4, "function", updateInfoFrame)
	end
end

function mod:OnCombatEnd()
	table.wipe(mindExhaustionTimers)
	table.wipe(mindExhaustionNames)
	table.wipe(mindExhaustionIcons)
	table.wipe(mindControlOwners)
	table.wipe(mindControlTimers)
end

function mod:NAME_PLATE_UNIT_ADDED(unitId)
	local guid = UnitGUID(unitId)
	if not guid or self:GetCIDFromGUID(guid) ~= 16803 then return end
	self:SendSync("UnderstudyFound", guid, GetRaidTargetIndex(unitId) or 0)
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(10912) and self:GetCIDFromGUID(args.destGUID) == 16803 and args:IsSrcTypePlayer() then
		self:SendSync("UnderstudyMC", args.destGUID, args.sourceName)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(10912) and self:GetCIDFromGUID(args.destGUID) == 16803 then
		self:SendSync("UnderstudyMCBreak", args.destGUID)
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(29107) then
		if DBM:IsSeasonal("SeasonOfDiscovery") then
			-- Might be the same as the initial pull on SoD
			timerShout:Start("v25.4-27.3")
		else
			timerShout:Start()
		end
		warnShoutNow:Show()
		warnShoutSoon:Schedule(20)
	elseif args:IsSpell(29060) and args:IsPetSource() then -- Taunt
		timerTaunt:Start(60, args.sourceGUID)
	elseif args:IsSpell(29061) and args:IsPetSource() then -- ShieldWall
		timerShieldWall:Start(20, args.sourceGUID)
		warnShieldWall:Schedule(15)
	end
end

function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 29051 then
		local guid = UnitGUID(uId)
		if guid and self:GetCIDFromGUID(guid) == 16803 then
			self:SendSync("MindExhaustion", guid)
		end
	end
end

function mod:OnSync(event, guid, value)
	if not self:IsInCombat() then return end
    if event == "MindExhaustion" then
        mindExhaustionTimers[guid] = GetTime() + 60
        timerMindExhaustionCD:Start(guid)
    elseif event == "UnderstudyFound" then
        if not mindExhaustionNames[guid] then
            mindExhaustionNames[guid] = L.Understudy
            local iconNum = tonumber(value)
            if iconNum and iconNum > 0 then
                mindExhaustionIcons[guid] = iconNum
            end
            ShowInfoFrame()
        end
    elseif event == "UnderstudyMC" then
        if mindExhaustionTimers[guid] ~= -1 then
            mindControlOwners[guid] = value
            mindControlTimers[guid] = GetTime() + 60
            if not mindExhaustionNames[guid] then
                mindExhaustionNames[guid] = L.Understudy
            end
            ShowInfoFrame()
        end
    elseif event == "UnderstudyMCBreak" then
        mindControlOwners[guid] = nil
        mindControlTimers[guid] = nil
        if mindExhaustionNames[guid] and mindExhaustionTimers[guid] ~= -1 then
            mindExhaustionTimers[guid] = GetTime() + 60
            timerMindExhaustionCD:Start(guid)
        end
    end
end

function mod:UNIT_DIED(args)
	if self:GetCIDFromGUID(args.destGUID) == 16803 then
		timerTaunt:Stop(args.destGUID)
		timerShieldWall:Stop(args.destGUID)
		timerMindExhaustionCD:Stop(args.destGUID)
		if mindExhaustionNames[args.destGUID] then
			mindExhaustionTimers[args.destGUID] = -1
		else
			mindExhaustionTimers[args.destGUID] = nil
		end
		mindControlOwners[args.destGUID] = nil
		mindControlTimers[args.destGUID] = nil
	end
end
