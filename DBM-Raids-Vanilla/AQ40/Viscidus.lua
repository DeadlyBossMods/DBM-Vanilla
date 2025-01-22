local isClassic = WOW_PROJECT_ID == (WOW_PROJECT_CLASSIC or 2)
local isBCC = WOW_PROJECT_ID == (WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5)
local catID
if isBCC or isClassic then
	catID = 2
else--retail or wrath classic and later
	catID = 1
end
local mod	= DBM:NewMod("Viscidus", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(15299)
mod:SetEncounterID(713)
mod:SetModelID(15686)
mod:SetHotfixNoticeRev(20200828000000)--2020, 8, 28
mod:SetMinSyncRevision(20200828000000)--2020, 8, 28
mod:SetZone(531)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 25991 25896 25896",
	"SPELL_AURA_APPLIED 25989",
	"CHAT_MSG_MONSTER_EMOTE",
	"SPELL_DAMAGE",
	"SPELL_PERIODIC_DAMAGE",
	"SWING_DAMAGE",
	"SWING_MISSED",
	"UNIT_SPELLCAST_SUCCEEDED"
)

local warnPoisonBoltVolley		= mod:NewCountAnnounce(25991, 3)
local warnFreeze				= mod:NewAnnounce("WarnFreeze", 2, 16350)
local warnShatter				= mod:NewAnnounce("WarnShatter", 2, 12982)

local specWarnGTFO				= mod:NewSpecialWarningGTFO(25989, nil, nil, nil, 1, 8)

local timerPoisonBoltVolleyCD	= mod:NewCDCountTimer(11, 25991, nil, nil, nil, 2, nil, DBM_COMMON_L.POISON_ICON)

mod.vb.volleyCount = 0
mod.vb.freezeState = 0

mod:AddInfoFrameOption(nil, true)

-- Failure case for not getting enough melee hits, only 11.7 seconds? Doesn't seem like a lot?
-- This does not seem to be consistent across attempts, so no timer for now
-- "<238.72 21:44:46> [CHAT_MSG_MONSTER_EMOTE] %s is frozen solid!#Viscidus###Viscidus##0#0##0#5362#nil#0#false#false#false#false",
-- "<243.88 21:44:51> [CHAT_MSG_MONSTER_EMOTE] %s begins to crack!#Viscidus###Viscidus##0#0##0#5364#nil#0#false#false#false#false",
-- "<247.55 21:44:55> [CHAT_MSG_MONSTER_EMOTE] %s looks ready to shatter!#Viscidus###Viscidus##0#0##0#5365#nil#0#false#false#false#false",
-- "<250.46 21:44:58> [CLEU] SWING_MISSED#Creature-0-5251-531-20035-15299-000059DDD3#Viscidus#Player-5827-027104E6#Paszeko#DODGE#false#nil#nil#nil#nil#nil#nil",

-- TODO: "Viscidus Frost Weakness" (25926 and 1215736), seems to happen after he respawns (only UCS events), but well after he is targetable.
-- It might be useless or it might be the relevant trigger for counting frost attacks? Let's see how wrong our count is

local meleeHits = 0
local frostHits = 0
local meleeHitTimes = {}
local frostHitTimes = {}
local lastFreeze = 0

local function getHitsPerSecond(times, treshold1, treshold2)
	if #times >= treshold1 then
		return (treshold1 - 1) / (times[#times] - times[#times - treshold1 + 1])
	elseif #times >= treshold2 then
		return (treshold2 - 1) / (times[#times] - times[#times - treshold2 + 1])
	else
		return 0
	end
end

local lines, sortedLines = {}, {}
local function updateInfoFrame()
	table.wipe(lines)
	table.wipe(sortedLines)
	if mod.vb.freezeState == 0 then
		sortedLines[1] = L.FrostHitsPerSecond
		lines[L.FrostHitsPerSecond] = ("%.1f"):format(getHitsPerSecond(frostHitTimes, 7, 15))
	elseif mod.vb.freezeState == 1 then
		sortedLines[1] = L.MeleeHitsPerSecond
		lines[L.MeleeHitsPerSecond] = ("%.1f"):format(getHitsPerSecond(meleeHitTimes, 10, 20))
	end
	return lines, sortedLines
end


local function resetHitCounts()
	meleeHits = 0
	frostHits = 0
	table.wipe(meleeHitTimes)
	table.wipe(frostHitTimes)
end

function mod:OnCombatStart(delay)
	self.vb.volleyCount = 0
	timerPoisonBoltVolleyCD:Start(-delay, 1)
	self.vb.freezeState = 0
	resetHitCounts()
	if self.Options.InfoFrame then
		DBM.InfoFrame:Show(20, "function", updateInfoFrame)
	end
end

function mod:OnCombatEnd()
	if self.Options.InfoFrame then
		DBM.InfoFrame:Hide()
	end
	resetHitCounts()
end


function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(25991) then
		self.vb.volleyCount = self.vb.volleyCount + 1
		warnPoisonBoltVolley:Show(self.vb.volleyCount)
		timerPoisonBoltVolleyCD:Start(11, self.vb.volleyCount+1)
	elseif args:IsSpell(25896) and self:AntiSpam(8, "Respawn") then -- All surviging globs cast this, trigger only on the first one to avoid accidental late resets
		DBM:Debug("Viscidus respawned, frostHits=" .. tostring(frostHits) .. ", meleeHits=" .. tostring(meleeHits))
		resetHitCounts()
		self.vb.freezeState = 0
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(25989) and args:IsPlayer() and self:AntiSpam(3, 2) then
		specWarnGTFO:Show(args.spellName)
		specWarnGTFO:Play("watchfeet")
	end
end

function mod:CHAT_MSG_MONSTER_EMOTE(msg)
	if msg == L.Phase4 or msg:find(L.Phase4) then
		self:SendSync("Shatter", 1)
	elseif msg == L.Phase5 or msg:find(L.Phase5) then
		self:SendSync("Shatter", 2)
	elseif msg == L.Phase6 or msg:find(L.Phase6) then -- Missing in Classic :(
		self:SendSync("Shatter", 3)
	elseif msg == L.Slow or msg:find(L.Slow) then
		self:SendSync("Freeze", 1)
	elseif msg == L.Freezing or msg:find(L.Freezing) then
		self:SendSync("Freeze", 2)
	elseif msg == L.Frozen or msg:find(L.Frozen) then
		self:SendSync("Freeze", 3)
	end
end

function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 25926 or spellId == 1215736 then
		self:SendSync("FrostWeakness", spellId)
	end
end

function mod:SPELL_DAMAGE(_, _, _, _, destGuid, _, _, _, _, _, _, _, _, school)
	school = school or 0
	if DBM:GetCIDFromGUID(destGuid) == 15299 and bit.band(school, 0x10) ~= 0 then
		frostHits = frostHits + 1
		DBM:Debug("frostHits=" .. frostHits)
		frostHitTimes[#frostHitTimes + 1] = GetTime()
	end
end
mod.SPELL_PERIODIC_DAMAGE = mod.SPELL_DAMAGE

-- Failure case of not shattering him in time
function mod:Unfreeze()
	if GetTime() - lastFreeze > 5 then
		DBM:Debug("Viscidus unfroze (failed shatter), frostHits=" .. tostring(frostHits) .. ", meleeHits=" .. tostring(meleeHits))
		resetHitCounts()
		self.vb.freezeState = 0
	end
end

function mod:SWING_DAMAGE(srcGuid, _, _, _, destGuid)
	if DBM:GetCIDFromGUID(destGuid) == 15299 then
		meleeHits = meleeHits + 1
		DBM:Debug("meleeHits=" .. meleeHits)
		meleeHitTimes[#meleeHitTimes + 1] = GetTime()
	elseif DBM:GetCIDFromGUID(srcGuid) == 15299 then
		if self.vb.freezeState == 1 then
			self:Unfreeze()
		end
	end
end

function mod:SWING_MISSED(srcGuid)
	if DBM:GetCIDFromGUID(srcGuid) == 15299 then
		if self.vb.freezeState == 1 then
			self:Unfreeze()
		end
	end
end

function mod:OnSync(msg, count, sender)
	if msg == "Shatter" and sender then
		count = tonumber(count)
		warnShatter:Show(count)
	elseif msg == "Freeze" and sender then
		count = tonumber(count)
		warnFreeze:Show(count)
		if count == 3 then
			timerPoisonBoltVolleyCD:Stop()
			DBM:Debug("Viscidus frozen, frostHits=" .. tostring(frostHits) .. ", meleeHits=" .. tostring(meleeHits))
			resetHitCounts()
			lastFreeze = GetTime()
			self.vb.freezeState = 1
		end
	elseif msg == "FrostWeakness" and self:AntiSpam(3, "FrostWeaknessSync") then
		-- Just to gather logs because there are two different Frost Weakness spells he uses, maybe they differ in required hits/time or something
		DBM:Debug("USC for viscidus frost weakness " .. tostring(count))
	end
end
