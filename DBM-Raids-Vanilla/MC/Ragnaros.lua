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
local mod	= DBM:NewMod("Ragnaros-Classic", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(DBM:IsSeasonal("SeasonOfDiscovery") and 228438 or 11502)
mod:SetEncounterID(672)
if not mod:IsClassic() then
	mod:SetModelID(11121)--Totally fucked on classic
end
mod:SetHotfixNoticeRev(20240724000000)
mod:SetMinSyncRevision(20200218000000)

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_CAST_START 19774",
	"SPELL_CAST_SUCCESS 20566 19773",
	"SPELL_AURA_APPLIED 461062",
	"SPELL_DAMAGE 461062",
	"SPELL_MISSED 461062",
	"CHAT_MSG_MONSTER_YELL",
	"UNIT_HEALTH"
)
mod:RegisterEventsInCombat(
	"UNIT_DIED",
	"UNIT_SPELLCAST_SUCCEEDED"--TBC and later, no good in vanilla
)

-- TODO: need a better log of this UCS event, was standing too far away not rarely targeting him, so only got one. wonder if this is useful
-- "<820.13 22:13:49> [UNIT_SPELLCAST_SUCCEEDED] Ragnaros(25.1%-0.0%){Target:Mafakacoil} -Call Meteor- [[target:Cast-3-5210-409-10629-365123-001133D57E:365123]]",

--[[
ability.id = 20566 and type = "cast" or target.id = 12143 and type = "death"
--]]
local warnWrathRag		= mod:NewSpellAnnounce(20566, 3)
local warnSubmerge		= mod:NewAnnounce("WarnSubmerge", 2, "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendBurrow.blp")
local warnEmerge		= mod:NewAnnounce("WarnEmerge", 2, "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendUnBurrow.blp")
local warnPhase2Soon
if DBM:IsSeasonal("SeasonOfDiscovery") then
	warnPhase2Soon		= mod:NewPrePhaseAnnounce(2)
end
-- "Wrath of Ragnaros-20566-npc:228438-000024194D = pull:30.6, 27.5, 27.5, 35.6, 139.2, 27.5, 34.0, 30.8, 27.5, 31.3",
-- "Wrath of Ragnaros-20566-npc:228438-0000241D6F = pull:26.0, 27.5, 27.5, 30.8, 32.4, 34.2, 127.8, 27.5, 25.9, 29.1, 30.9, 26.6",
-- "Wrath of Ragnaros-20566-npc:228438-00002421C6 = pull:27.6, 29.2, 32.3, 102.0, 29.1, 25.9, 34.0",
local timerWrathRag		= mod:NewCDTimer(DBM:IsSeasonal("SeasonOfDiscovery") and 26 or 25, 20566, nil, nil, nil, 2)--25-30 (26-34 in SoD?)
local timerSubmerge		= mod:NewTimer(180, "TimerSubmerge", "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendBurrow.blp", nil, nil, 6)
local timerEmerge		= mod:NewTimer(90, "TimerEmerge", "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendUnBurrow.blp", nil, nil, 6)
local timerCombatStart	= mod:NewTimer(83, "timerCombatStart", "132349", nil, nil, nil, nil, nil, 1, 3)--Custom for now, so it can use 3 sec count instead of 5

local specWarnGTFO
if DBM:IsSeasonal("SeasonOfDiscovery") then
	specWarnGTFO		= mod:NewSpecialWarningGTFO(461062, nil, nil, nil, 1, 8)
end

mod.vb.addLeft = 8
mod.vb.ragnarosEmerged = true
mod.vb.submergeHealthPrewarnShown = false
local addsGuidCheck = {}
local firstBossMod = DBM:GetModByName("MCTrash")

mod:AddRangeFrameOption("18", nil, "-Melee")

function mod:OnCombatStart(delay)
	self:SetStage(1)
	table.wipe(addsGuidCheck)
	self.vb.addLeft = 0
	self.vb.ragnarosEmerged = true
	self.vb.submergeHealthPrewarnShown = false
	timerWrathRag:Start((DBM:IsSeasonal("SeasonOfDiscovery") and 26 or 26.7) - delay)
	timerSubmerge:Start(180-delay)
	if self.Options.RangeFrame then
		DBM.RangeCheck:Show(18)
	end
end

function mod:OnCombatEnd(wipe)
	if self.Options.RangeFrame then
		DBM.RangeCheck:Hide()
	end
	if not wipe then
		DBT:CancelBar(DBM_CORE_L.SPEED_CLEAR_TIMER_TEXT)
		if firstBossMod.vb.firstEngageTime then
			local thisTime = GetServerTime() - firstBossMod.vb.firstEngageTime
			if thisTime and thisTime > 0 then
				if not firstBossMod.Options.FastestClear2 then
					--First clear, just show current clear time
					DBM:AddMsg(DBM_CORE_L.RAID_DOWN:format("MC", DBM:strFromTime(thisTime)))
					firstBossMod.Options.FastestClear2 = thisTime
				elseif (firstBossMod.Options.FastestClear2 > thisTime) then
					--Update record time if this clear shorter than current saved record time and show users new time, compared to old time
					DBM:AddMsg(DBM_CORE_L.RAID_DOWN_NR:format("MC", DBM:strFromTime(thisTime), DBM:strFromTime(firstBossMod.Options.FastestClear2)))
					firstBossMod.Options.FastestClear2 = thisTime
				else
					--Just show this clear time, and current record time (that you did NOT beat)
					DBM:AddMsg(DBM_CORE_L.RAID_DOWN_L:format("MC", DBM:strFromTime(thisTime), DBM:strFromTime(firstBossMod.Options.FastestClear2)))
				end
			end
			firstBossMod.vb.firstEngageTime = nil
		end
	end
end

local function emerged(self)
	self:SetStage(1)
	self.vb.ragnarosEmerged = true
	timerEmerge:Cancel()
	warnEmerge:Show()
	timerWrathRag:Start(DBM:IsSeasonal("SeasonOfDiscovery") and 26 or 26.7)
	if DBM:GetModifierLevel() ~= 1 then -- No second submerge on SoD heat level 1 (non-SoD always returns 0 here)
		timerSubmerge:Start(180)
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(19774) and self:AntiSpam(5, 4) then
		--This is still going to use a sync event because someone might start this RP from REALLY REALLY far away
		self:SendSync("SummonRag")
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(20566) then
		warnWrathRag:Show()
		timerWrathRag:Start()
	elseif args:IsSpell(19773) then
		--This is still going to use a sync event because someone might start this RP from REALLY REALLY far away
		self:SendSync("DomoDeath")
	end
end

function mod:UNIT_DIED(args)
	local guid = args.destGUID
	if self:GetCIDFromGUID(guid) == 12143 then--Son of Flame
		if not addsGuidCheck[guid] then
			addsGuidCheck[guid] = true
			self.vb.addLeft = self.vb.addLeft - 1
			if not self.vb.ragnarosEmerged and self.vb.addLeft == 0 then--After all 8 die he emerges immediately
				self:Unschedule(emerged)
				emerged(self)
			end
		end
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.Submerge then
		self:SendSync("Submerge")
	elseif msg == L.Pull and self:AntiSpam(5, 4) then
		self:SendSync("SummonRag")
	end
end

--TBC+ only, no UNIT events in classic
function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 20567 then--Ragnaros Submerge Visual
		self:SendSync("Submerge")
	end
end

function mod:UNIT_HEALTH(uId)
	-- SoD Ragnaros has a health-based submerge at 50% (SoD check implicit via cid which is new in SoD)
	if self.vb.ragnarosEmerged and not self.vb.submergeHealthPrewarnShown and self:GetUnitCreatureId(uId) == 228438 and UnitHealth(uId) / UnitHealthMax(uId) <= 0.55 and warnPhase2Soon then
		self.vb.submergeHealthPrewarnShown = true
		warnPhase2Soon:Show()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(461062) and args:IsPlayer() and self:AntiSpam(3, "gtfo") and specWarnGTFO then
		specWarnGTFO:Show(args.spellName)
		specWarnGTFO:Play("watchfeet")
	end
end

function mod:SPELL_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId, spellName)
	if spellId == 461062 and destGUID == UnitGUID("player") and self:AntiSpam(3, "gtfo") and specWarnGTFO then
		specWarnGTFO:Show(spellName)
		specWarnGTFO:Play("watchfeet")
	end
end
mod.SPELL_MISSED = mod.SPELL_DAMAGE

function mod:OnSync(msg)
	if msg == "SummonRag" and self:AntiSpam(5, 2) then
		timerCombatStart:Start()
	elseif msg == "Submerge" and self:IsInCombat() then
		self:SetStage(2)
		self.vb.ragnarosEmerged = false
		self:Unschedule(emerged)
		timerSubmerge:Stop()
		timerWrathRag:Stop()
		warnSubmerge:Show()
		timerEmerge:Start(90)
		self:Schedule(90, emerged, self)
		self.vb.addLeft = self.vb.addLeft + 8
	elseif msg == "DomoDeath" and self:AntiSpam(5, 3) then
		--The timer between yell/summon start and ragnaros being attackable is variable, but time between domo death and him being attackable is not.
		--As such, we start with a reasonable guess on the RP start, but adjust timer to 10 seconds once domo dies.
		timerCombatStart:Update(73, 83)
	end
end
