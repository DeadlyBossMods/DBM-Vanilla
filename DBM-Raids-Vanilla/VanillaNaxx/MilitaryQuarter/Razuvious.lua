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

local understudyME = {}
local understudyDeaths = 0

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

local updateInfoFrame
do
	local lines, sortedLines = {}, {}
	updateInfoFrame = function()
		table.wipe(lines)
		table.wipe(sortedLines)
		local index = 0
		local hasActive = false
		for i = 1, 40 do
			local unitId = "nameplate" .. i
			local guid = UnitGUID(unitId)
			if guid then
				local cid = DBM:GetCIDFromGUID(guid)
				if cid == 16803 then
					local marker = GetRaidTargetIndex(unitId)
					if marker and marker > 0 then
						local name = UnitName(unitId)
						local timeLeft = math.max(0, (understudyME[guid] or 0) - GetTime())
						if timeLeft > 0 then
							hasActive = true
						end
						index = index + 1
						local label = RAID_ICONS[marker] .. " " .. name
						sortedLines[index] = label
						if timeLeft > 0 then
							lines[label] = ("|cffff0000%.0f|r"):format(timeLeft)
						else
							lines[label] = "|cff00ff000|r"
						end
					end
				end
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
	table.wipe(understudyME)
	understudyDeaths = 0
end

local function ShowInfoFrame()
	if not DBM.InfoFrame:IsShown() and mod.Options.InfoFrame then
		DBM.InfoFrame:SetHeader(DBM:GetSpellName(29051))
		DBM.InfoFrame:Show(4, "function", updateInfoFrame)
	end
end

function mod:OnCombatEnd()
	DBM.InfoFrame:Hide()
	table.wipe(understudyME)
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
        understudyME[guid] = GetTime() + 60
        ShowInfoFrame()
        timerMindExhaustionCD:Start(guid)
    end
end

function mod:UNIT_DIED(args)
	if self:GetCIDFromGUID(args.destGUID) == 16803 then
		timerTaunt:Stop(args.destGUID)
		timerShieldWall:Stop(args.destGUID)
		timerMindExhaustionCD:Stop(args.destGUID)
		understudyME[args.destGUID] = nil
		understudyDeaths = understudyDeaths + 1
		if understudyDeaths == 4 then
			DBM.InfoFrame:Hide()
		end
	end
end
