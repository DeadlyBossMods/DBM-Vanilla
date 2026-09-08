local mod	= DBM:NewMod("NothVanilla", "DBM-Raids-Vanilla", 1)
local L		= mod:GetLocalizedStrings()

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod.statTypes = "normal,heroic,mythic"
else
	mod.statTypes = "normal"
end

mod:SetRevision("@file-date-integer@")
mod:SetMinSyncRevision(20260828000000) -- 2026, August 28th
mod:DisableHardcodedOptions()
mod:SetCreatureID(15954)
mod:SetEncounterID(1117)
mod:SetModelID(16590)
mod:SetZone(533)

mod:RegisterCombat("combat_yell", L.Pull1, L.Pull2, L.Pull3)

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 29213 29212 29208",
	"SPELL_AURA_APPLIED 29213",
	"SPELL_AURA_REMOVED 29213",
	"UNIT_TARGETABLE_CHANGED",
	"CHAT_MSG_MONSTER_YELL"
)

--[[
source.id = 15954 and (type = "begincast" or type = "cast")
 or (source.type = "NPC" and source.firstSeen = timestamp) or (target.type = "NPC" and target.firstSeen = timestamp)
--]]
local warnTeleportNow	= mod:NewAnnounce("WarningTeleportNow", 3, "135736")
local warnTeleportSoon	= mod:NewAnnounce("WarningTeleportSoon", 2, "135736")
local warnBlink			= mod:NewSpellAnnounce(29208, 3)
local warnCurse			= mod:NewSpellAnnounce(29213, 2)

local specWarnAdds		= mod:NewSpecialWarningAdds(29252, "-Healer", nil, nil, 1, 2, nil, "136187", "killmob")
local specWarnCurse 	= mod:NewSpecialWarningDispel(29213, "RemoveCurse", nil, nil, 1, 2, nil, nil, "dispelnow")

local timerTeleport		= mod:NewTimer(90, "TimerTeleport", "135736", nil, nil, 6)
local timerTeleportBack	= mod:NewTimer(70, "TimerTeleportBack", "135736", nil, nil, 6)
local timerCurse       	= mod:NewBuffFadesTimer(10, 29213, nil, "RemoveCurse", nil, 3, nil, DBM_COMMON_L.CURSE_ICON)
local timerCurseCD		= mod:NewVarTimer("v51.8-66.8", 29213, nil, "RemoveCurse", nil, 3, nil, DBM_COMMON_L.CURSE_ICON)
local timerAddsCD		= mod:NewAddsCountTimer(30, 29252, nil, "-Healer", nil, 1, "136187")

mod:AddInfoFrameOption(29213, "RemoveCurse")

local twipe = table.wipe
local lines, sortedLines = {}, {}
local curseTargets = {}
local function updateInfoFrame()
	twipe(lines)
	twipe(sortedLines)

	for name in pairs(curseTargets) do
		sortedLines[#sortedLines + 1] = name
		lines[name] = ""
	end

	return lines, sortedLines
end

mod.vb.teleCount = 0
mod.vb.addsCount = 0

function mod:OnCombatStart()
	table.wipe(curseTargets)
	self.vb.teleCount = 0
	self.vb.addsCount = 0
	warnTeleportSoon:Schedule(70.6)
	timerAddsCD:Start("v6.5-22.7", self.vb.addsCount + 1)
	timerCurseCD:Start("v6.5-25.9")
	timerTeleport:Start(90.6)
end

function mod:OnCombatEnd()
	table.wipe(curseTargets)
end

function mod:UNIT_TARGETABLE_CHANGED()
	self:SendSync("TeleportBalcony")
end

function mod:BackInRoom()
	self.vb.addsCount = 0
	timerAddsCD:Stop()
	local timer
	if self.vb.teleCount == 1 then
		timer = 109--Unknown in Classic
		timerAddsCD:Start("v3.4-7.8", self.vb.addsCount + 1)
	elseif self.vb.teleCount == 2 then
		timer = 173--Unknown in Classic
		timerAddsCD:Start(17, self.vb.addsCount + 1)
	elseif self.vb.teleCount == 3 then
		timer = 93--Unknown in Classic
	else
		timer = 35--Unknown in Classic
	end
	timerTeleport:Start(timer)
	warnTeleportSoon:Schedule(timer - 20)
	warnTeleportNow:Show()
	if self.vb.teleCount == 4 then--11-12 except after 4th return it's 17
		timerCurseCD:Start(17)--verify consistency though
	else
		timerCurseCD:Start(10)--11 in wrath, 9 or 10 in classic, well based off numpty POV
	end
end

local function UpdateCurseFrame()
	if not mod.Options.InfoFrame then return end
	if next(curseTargets) then
		if not DBM.InfoFrame:IsShown() then
			DBM.InfoFrame:SetHeader(DBM:GetSpellInfo(29213))
			DBM.InfoFrame:Show(20, "function", updateInfoFrame)
		else
			DBM.InfoFrame:UpdateTable(updateInfoFrame)
		end
	else
		DBM.InfoFrame:Hide()
		timerCurse:Stop()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(29213) then
		curseTargets[args.destName] = true
		UpdateCurseFrame()
		if self.Options.SpecWarn29213dispel and self:AntiSpam(3, 1) then
			specWarnCurse:CombinedShow(0.5, args.destName)
			specWarnCurse:ScheduleVoice(0.5, "dispelnow")
		end
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(29213) then
		curseTargets[args.destName] = nil
		UpdateCurseFrame()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(29213) then
		if not self.Options.SpecWarn29213dispel then
			warnCurse:Show()
		end
		timerCurse:Start()
		timerCurseCD:Start()
	elseif args:IsSpell(29208) and args:IsSrcTypeHostile() then
		warnBlink:Show()
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.AddsYell or msg:find(L.AddsYell) then
		self:SendSync("Adds")
	end
end

function mod:OnSync(msg)
	if not self:IsInCombat() then return end
	if msg == "TeleportBalcony" then
		self.vb.teleCount = self.vb.teleCount + 1
		self.vb.addsCount = 0
		timerCurseCD:Stop()
		timerAddsCD:Stop()
		local timer
		if self.vb.teleCount == 1 then
			timer = 72.8 -- Variation 72.8-74.8, but cannot schedule a string
			timerAddsCD:Start(3, self.vb.addsCount + 1)
		elseif self.vb.teleCount == 2 then
			timer = 97--Unknown in Classic
			timerAddsCD:Start(3, self.vb.addsCount + 1)
		elseif self.vb.teleCount == 3 then
			timer = 126--Unknown in Classic
			timerAddsCD:Start(3, self.vb.addsCount + 1)
		else
			timer = 55--Unknown in Classic
		end
		timerTeleportBack:Start(timer)
		warnTeleportSoon:Schedule(timer - 20)
		warnTeleportNow:Show()
		self:ScheduleMethod(timer, "BackInRoom")
	elseif msg == "Adds" then
		self.vb.addsCount = self.vb.addsCount + 1
		specWarnAdds:Show()
		specWarnAdds:Play("killmob")
		if self.vb.teleCount == 0 then
			if self.vb.addsCount < 3 then
				timerAddsCD:Start("v25.9-42", self.vb.addsCount + 1)
			else
				timerAddsCD:Stop()
			end
		elseif self.vb.teleCount == 1 then
			if self.vb.addsCount == 1 then
				timerAddsCD:Start(33.9, self.vb.addsCount + 1)
			elseif self.vb.addsCount == 2 then
				timerAddsCD:Start(30, self.vb.addsCount + 1)
			end
		elseif self.vb.teleCount == 2 then--30, 32, 32, 30
			if self.vb.addsCount == 1 or self.vb.addsCount == 4 then
				timerAddsCD:Start(30, self.vb.addsCount + 1)
			elseif self.vb.addsCount == 2 or self.vb.addsCount == 3 then
				timerAddsCD:Start(32, self.vb.addsCount + 1)
			end
		end
	end
end