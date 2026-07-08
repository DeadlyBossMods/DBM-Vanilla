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
	"UNIT_SPELLCAST_SUCCEEDED",
	"UNIT_DIED"
)

-- New spell ID found in logs on SoD
-- 1225423 (Disarm) cast by Understudies, TBD if we want to do something with that
local isPriest 				= select(2, UnitClass("player")) == "PRIEST"
local warnShoutNow			= mod:NewSpellAnnounce(29107, 4, 6673)
local warnShoutSoon			= mod:NewSoonAnnounce(29107, 3, 6673, "ManaUser")
local warnShieldWall		= mod:NewTargetNoFilterAnnounce(29061, 2, nil, "Dps")

local timerShout			= mod:NewCDTimer(25.9, 29107, nil, "ManaUser", nil, 2, 6673, DBM_COMMON_L.DEADLY_ICON, nil, 1, 5)
local timerTaunt			= mod:NewCDTimer(60, 29060, nil, isPriest, nil, 5, nil, DBM_COMMON_L.TANK_ICON)
local timerShieldWall		= mod:NewBuffActiveTimer(20, 29061, nil, "Dps", nil, 5, nil, DBM_COMMON_L.DAMAGE_ICON)
local timerMindExhaustionCD	= mod:NewCDNPTimer(60, 29051, nil, isPriest, nil, 5)

mod:AddInfoFrameOption(29051, isPriest)

local mindExhaustionTimers = {}
local mindExhaustionList = {}
local mindExhaustionIcons = {}
local mindExhaustionNames = {}

local RAID_TARGET_FLAGS = {
	[0x00000001] = 1,
	[0x00000002] = 2,
	[0x00000004] = 3,
	[0x00000008] = 4,
	[0x00000010] = 5,
	[0x00000020] = 6,
	[0x00000040] = 7,
	[0x00000080] = 8,
}

local function GetIconFromFlags(flags)
	local flag = bit.band(flags, 255)
	local marker = RAID_TARGET_FLAGS[flag]
	if not marker and flag >= 1 and flag <= 8 then
		marker = flag
	end
	return marker
end

local RAID_ICONS = {
	[1] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcons:16:16:0:0:64:64:0:0.5:0:0.25|t",
	[2] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcons:16:16:0:0:64:64:0.5:1:0:0.25|t",
	[3] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcons:16:16:0:0:64:64:0:0.5:0.25:0.5|t",
	[4] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcons:16:16:0:0:64:64:0.5:1:0.25:0.5|t",
	[5] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcons:16:16:0:0:64:64:0:0.5:0.5:0.75|t",
	[6] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcons:16:16:0:0:64:64:0.5:1:0.5:0.75|t",
	[7] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcons:16:16:0:0:64:64:0:0.5:0.75:1|t",
	[8] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcons:16:16:0:0:64:64:0.5:1:0.75:1|t",
}

local function DeleteFromTable(t, value)
	for i = #t, 1, -1 do
		if t[i] == value then
			table.remove(t, i)
			return
		end
	end
end

local function TrackUnderstudy(guid, name, flags)
	local marker = GetIconFromFlags(flags)
	if marker and name then
		DeleteFromTable(mindExhaustionList, guid)
		mindExhaustionList[#mindExhaustionList + 1] = guid
		mindExhaustionIcons[guid] = RAID_ICONS[marker]
		mindExhaustionNames[guid] = name
	end
end

local updateInfoFrame
do
	local lines, sortedLines = {}, {}
	updateInfoFrame = function()
		table.wipe(lines)
		table.wipe(sortedLines)
		local index = 0
		local hasActive = false
		local t = GetTime()
		local items = {}
		local seen = {}
		for i = 1, 5 do
			local unitId = "nameplate" .. i
			local guid = UnitGUID(unitId)
			if guid then
				local cid = DBM:GetCIDFromGUID(guid)
				if cid == 16803 then
					local marker = GetRaidTargetIndex(unitId)
					if marker and marker > 0 then
						seen[guid] = true
						index = index + 1
						items[index] = {
							guid = guid,
							label = RAID_ICONS[marker] .. " " .. UnitName(unitId),
						}
					end
				end
			end
		end
		for i = 1, #mindExhaustionList do
			local guid = mindExhaustionList[i]
			if not seen[guid] then
				local name = mindExhaustionNames[guid]
				local icon = mindExhaustionIcons[guid]
				if name and icon then
					index = index + 1
					items[index] = {
						guid = guid,
						label = icon .. " " .. name,
					}
				end
			end
		end
		for i = 1, index do
			local item = items[i]
			local timeLeft = math.max(0, (mindExhaustionTimers[item.guid] or 0) - t)
			sortedLines[i] = item.label
			if mindExhaustionTimers[item.guid] == -1 then
				lines[item.label] = ("|cffff0000%s|r"):format(DEAD)
			elseif timeLeft > 0 then
				lines[item.label] = ("|cffff0000%.0f|r"):format(timeLeft)
				hasActive = true
			else
				lines[item.label] = ("|cff00ff00%d|r"):format(0)
			end
		end
		if not hasActive then
			DBM.InfoFrame:Hide()
		end
		return lines, sortedLines
	end
end

function mod:OnCombatStart()
	timerShout:Start()
	warnShoutSoon:Schedule(19)
	table.wipe(mindExhaustionTimers)
	table.wipe(mindExhaustionList)
	table.wipe(mindExhaustionIcons)
	table.wipe(mindExhaustionNames)
end

local function ShowInfoFrame()
	if not DBM.InfoFrame:IsShown() and mod.Options.InfoFrame then
		DBM.InfoFrame:SetHeader(DBM:GetSpellName(29051))
		DBM.InfoFrame:Show(4, "function", updateInfoFrame)
	end
end

function mod:OnCombatEnd()
	DBM.InfoFrame:Hide()
	table.wipe(mindExhaustionTimers)
	table.wipe(mindExhaustionList)
	table.wipe(mindExhaustionIcons)
	table.wipe(mindExhaustionNames)
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(10912) then
		local cid = self:GetCIDFromGUID(args.destGUID)
		if cid == 16803 then
			TrackUnderstudy(args.destGUID, args.destName, args.destRaidFlags)
		end
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
		if guid then
			local cid = self:GetCIDFromGUID(guid)
			if cid == 16803 then
				self:SendSync("MindExhaustion", guid)
			end
		end
	end
end

function mod:OnSync(event, guid)
    if event == "MindExhaustion" and guid then
        mindExhaustionTimers[guid] = GetTime() + 60
        ShowInfoFrame()
        timerMindExhaustionCD:Start(guid)
    end
end

function mod:UNIT_DIED(args)
	if self:GetCIDFromGUID(args.destGUID) == 16803 then
		timerTaunt:Stop(args.destGUID)
		timerShieldWall:Stop(args.destGUID)
		timerMindExhaustionCD:Stop(args.destGUID)
		if mindExhaustionIcons[args.destGUID] then
			mindExhaustionTimers[args.destGUID] = -1
		else
			mindExhaustionTimers[args.destGUID] = nil
		end
	end
end
