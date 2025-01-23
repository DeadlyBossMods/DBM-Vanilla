local isClassic = WOW_PROJECT_ID == (WOW_PROJECT_CLASSIC or 2)
local isBCC = WOW_PROJECT_ID == (WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5)
local catID
if isBCC or isClassic then
	catID = 2
else--retail or wrath classic and later
	catID = 1
end
local mod	= DBM:NewMod("AQ40Trash", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
--mod:SetModelID(47785)
mod:SetMinSyncRevision(20200710000000)--2020, 7, 10
mod:SetZone(531) -- Important to keep to not double trigger shared IDs with AQ20
mod:RegisterZoneCombat(531)

mod.isTrashMod = true
mod.isTrashModBossFightAllowed = true

mod:RegisterEvents(
	"ENCOUNTER_END",
	"SPELL_AURA_APPLIED 26556 25698 26079 1215202 1215421 24573 2855",
	"SPELL_AURA_REMOVED 26556",
	"SPELL_CAST_SUCCESS 26586 26073",
	"SPELL_CAST_START 26069 26070 26071 26072",
	"SPELL_DAMAGE 26555 26558 26554 25779 26546 24340 8732",
	"SPELL_PERIODIC_DAMAGE 1215421",
	"SPELL_SUMMON 17430 17431",
	"SPELL_MISSED", -- Unfiltered to catch Reflect from Trash
	"UNIT_DIED",
	"PLAYER_TARGET_CHANGED",
	"NAME_PLATE_UNIT_ADDED"
)


-- Toxic Pool, not using the new NewGtfo() thing because it uses the new event handler type that currently only supports combat-only events
-- This is a problem out of combat often enough
local specWarnGTFO = mod:NewSpecialWarningGTFO(1215421, nil, nil, nil, 1, 8)

--TODO, meteor those big guys use, maybe some other stuff
--local specWarnPrimalRampage			= mod:NewSpecialWarningDodge(198379, "Melee", nil, nil, 1, 2)

-- Anubisath Plague/Explode - keep in sync - AQ40/AQ40Trash.lua AQ20/AQ20Trash.lua
local warnPlague                    = mod:NewTargetNoFilterAnnounce(26556, 2)
local warnCauseInsanity             = mod:NewTargetNoFilterAnnounce(26079, 2)
local warnExplosion					= mod:NewAnnounce("WarnExplosion", 3, nil, false)
-- Not sure if both can happen in AQ40
local warnAdd1						= mod:NewSpellAnnounce(17430, 1, 802)
local warnAdd2						= mod:NewSpellAnnounce(17431, 1, 802)

local specWarnExplosion				= mod:NewSpecialWarning("SpecWarnExplosion", nil, nil, nil, 1, 8)
-- Anubisath Reflect - keep in sync - AQ40/AQ40Trash.lua AQ20/AQ20Trash.lua
local specWarnShadowFrostReflect	= mod:NewSpecialWarningReflect(19595, nil, nil, nil, 1, 2)
local specWarnFireArcaneReflect		= mod:NewSpecialWarningReflect(13022, nil, nil, nil, 1, 2)
local specWarnShadowStorm			= mod:NewSpecialWarningMoveTo(26555, nil, nil, nil, 1, 2)
local specWarnPlague                = mod:NewSpecialWarningMoveAway(26556, nil, nil, nil, 1, 2)
local specWarnExplode               = mod:NewSpecialWarningRun(25698, "Melee", nil, 3, 4, 2)
local specWarnBurst					= mod:NewSpecialWarningDodge(1215202, nil, nil, nil, 2, 2)

local timerExplosion				= mod:NewTimer(30, "TimerExplosion") -- Default icon looks good cause they cast Arcane Explosion
local timerBurst					= mod:NewNextTimer(30, 1215202)
local timerThunderClapCD			= mod:NewNextNPTimer(7, 26554, nil, nil, nil, 2)

local yellPlague                    = mod:NewYell(26556)
local yellBurst						= mod:NewIconTargetYell(1215202)

mod:AddRangeFrameOption(10, 22997)
mod:AddSpeedClearOption("AQ40", true)
mod:AddInfoFrameOption(nil, true)

--Speed Clear variables
mod.vb.firstEngageTime = nil
mod.vb.requiredBosses = 0

--Request speed clear variables, in case it was already started before mod loaded
mod:SendSync("IsAQ40Started")

local trashAbilitiesLocalized = {
	FireArcaneReflect	= DBM:GetSpellName(13022),
	ShadowFrostReflect	= DBM:GetSpellName(19595),
	Meteor				= DBM:GetSpellName(26558),
	Thunderclap			= DBM:GetSpellName(15548),
	ShadowStorm			= DBM:GetSpellName(26546),
	MortalStrike		= DBM:GetSpellName(24573),
	Mending				= DBM:GetSpellName(2147),
	KnockAway			= DBM:GetSpellName(18670),
	Thorns				= DBM:GetSpellName(22351),
	Plague				= DBM:GetSpellName(26556),
	Summon1				= DBM:GetSpellName(17430),
	Summon2				= DBM:GetSpellName(17431),
	ManaBurn			= DBM:GetSpellName(25779),
	Fear				= DBM:GetSpellName(26070),
	Roots				= DBM:GetSpellName(26071),
	DustCloud			= DBM:GetSpellName(26072),
	Silence				= DBM:GetSpellName(26069),
	FireNova			= DBM:GetSpellName(26073),
}

-- aura applied didn't seem to catch the reflects and other buffs
function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(26556) and not self:IsTrivial() then
		if args:IsPlayer() then
			specWarnPlague:Show()
			specWarnPlague:Play("runout")
			yellPlague:Yell()
			if self.Options.RangeFrame then
				DBM.RangeCheck:Show(10)
			end
		elseif UnitGUID("pet") and UnitGUID("pet") == args.destGUID then
			specWarnPlague:Show()
			specWarnPlague:Play("runout")
		elseif args.destName then -- I've seen events without a target for some reason, avoid the "on unknown" warning in this case
			warnPlague:Show(args.destName)
		end
		self:TrackTrashAbility(args.sourceGUID, "Plague", args.sourceRaidFlags, args.sourceName)
	elseif args:IsSpell(25698) and not self:IsTrivial() then
		specWarnExplode:Show()
		specWarnExplode:Play("justrun")
	elseif args:IsSpell(26079) then
		warnCauseInsanity:CombinedShow(0.75, args.destName)
	elseif args:IsSpell(1215202) then
		self:NoxiousBurst(args, specWarnBurst, yellBurst, timerBurst)
	elseif args:IsSpell(1215421) and args:IsPlayer() and self:AntiSpam(4, "ToxicPool") then
		specWarnGTFO:Show(args.spellName)
		specWarnGTFO:Play("watchfeet")
	elseif args:IsSpell(24573) and args:IsDestTypePlayer() then
		self:TrackTrashAbility(args.sourceGUID, "MortalStrike", args.sourceRaidFlags, args.sourceName)
	elseif args:IsSpell(2855) and not args:IsDestTypePlayer() then
		local caster = DBM:GetRaidUnitIdByGuid(args.sourceGUID)
		if caster and UnitExists(caster .. "target") then
			self:ScheduleMethod(0.01, "ScanTrashAbilities", caster .. "target")
			-- TODO: check if the schedule/delay is necessary
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	-- 26586 (Birth) is used by a lot, here it indicates that Eye Tentacles (ghosts that don't look like Eye Tentacles at all) spawned that explode if they walk into you
	if args:IsSpell(26586) and (DBM:GetCIDFromGUID(args.sourceGUID) == 235668 or DBM:GetCIDFromGUID(args.sourceGUID) == 235528) then
		self:ExplodingGhost(warnExplosion, specWarnExplosion, timerExplosion)
	elseif args:IsSpell(26073) then
		self:TrackTrashAbility(args.sourceGUID, "FireNova", args.sourceRaidFlags, args.sourceName)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(26556) then
		if args:IsPlayer() and self.Options.RangeFrame then
			DBM.RangeCheck:Hide()
		end
	end
end

-- todo: thorns
local playerGUID = UnitGUID("player")
function mod:SPELL_DAMAGE(sourceGUID, sourceName, _, sourceRaidFlags, destGUID, _, _, _, spellId, spellName)
	if spellId == 26555 or spellId == 26546 then
		if destGUID == playerGUID and self:AntiSpam(3, 3) then
			specWarnShadowStorm:Show(sourceName)
			specWarnShadowStorm:Play("findshelter")
		end
		self:TrackTrashAbility(sourceGUID, "ShadowStorm", sourceRaidFlags, sourceName)
	elseif spellId == 26558 or spellId == 24340 then
		self:TrackTrashAbility(sourceGUID, "Meteor", sourceRaidFlags, sourceName)
	elseif spellId == 26554 or spellId == 8732 then
		self:TrackTrashAbility(sourceGUID, "Thunderclap", sourceRaidFlags, sourceName)
		if self:AntiSpam(1, "Thunderclap", sourceGUID) then
			timerThunderClapCD:Start(7, sourceGUID)
		end
	elseif spellId == 25779 then
		self:TrackTrashAbility(sourceGUID, "ManaBurn", sourceRaidFlags, sourceName)
	end
end
function mod:SPELL_MISSED(sourceGUID, _, _, _, destGUID, destName, _, destRaidFlags, _, _, spellSchool, missType)
	if missType == "REFLECT" or missType == "DEFLECT" then
		if spellSchool == 32 or spellSchool == 16 then
			if sourceGUID == playerGUID and self:AntiSpam(3, 1) then
				specWarnShadowFrostReflect:Show(destName)
				specWarnShadowFrostReflect:Play("stopattack")
			end
			self:TrackTrashAbility(destGUID, "ShadowFrostReflect", destRaidFlags, destName)
		elseif spellSchool == 4 or spellSchool == 64 then
			if sourceGUID == playerGUID and self:AntiSpam(3, 2) then
				specWarnFireArcaneReflect:Show(destName)
				specWarnFireArcaneReflect:Play("stopattack")
			end
			self:TrackTrashAbility(destGUID, "FireArcaneReflect", destRaidFlags, destName)
		end
	end
end

function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId, spellName)
	if spellId == 1215421 and destGUID == UnitGUID("player") and self:AntiSpam(4, "ToxicPool") then
		specWarnGTFO:Show(spellName)
		specWarnGTFO:Play("watchfeet")
	end
end

function mod:UNIT_DIED(args)
	self:RemoveTrackTrashAbilityMob(args.destGUID)
end

do
	--Speed Run Handling
	--(and bonus nameplate timer if added later)
	local function checkFirstPull(self)
		if not self.vb.firstEngageTime then
			self.vb.firstEngageTime = GetServerTime()
			if self.Options.FastestClear3 and self.Options.SpeedClearTimer then
				--Custom bar creation that's bound to core, not mod, so timer doesn't stop when mod stops it's own timers
				DBT:CreateBar(self.Options.FastestClear3, DBM_CORE_L.SPEED_CLEAR_TIMER_TEXT, 136106)
			end
			self:SendSync("AQ40Started", self.vb.firstEngageTime)--Also sync engage time
		end
	end

	--TODO, maybe check if any bosses killed in saved lockout, in case group pulls trash after killing all required bosses
	--Right now, it'd start a new speed run timer if you pull trash after
	function mod:StartEngageTimers(guid, cid, delay)
		if cid == 15264 or cid == 234830 then -- Anubisath Sentinel Era/SoD
			checkFirstPull(self)
		elseif cid == 15262 then--Obsidian Eradicator
			checkFirstPull(self)
		end
	end

	local function updateDefeatedBosses(self, encounterId)
		if self:AntiSpam(10, encounterId) then
			if encounterId == 710 or encounterId == 713 or encounterId == 716 or encounterId == 717 or encounterId == 714 then
				self.vb.requiredBosses = self.vb.requiredBosses + 1
				if self.vb.requiredBosses == 5 then
					DBT:CancelBar(DBM_CORE_L.SPEED_CLEAR_TIMER_TEXT)
					if self.vb.firstEngageTime then
						local thisTime = GetServerTime() - self.vb.firstEngageTime
						if thisTime and thisTime > 0 then
							if not self.Options.FastestClear3 then
								--First clear, just show current clear time
								DBM:AddMsg(DBM_CORE_L.RAID_DOWN:format("AQ40", DBM:strFromTime(thisTime)))
								self.Options.FastestClear3 = thisTime
							elseif (self.Options.FastestClear3 > thisTime) then
								--Update record time if this clear shorter than current saved record time and show users new time, compared to old time
								DBM:AddMsg(DBM_CORE_L.RAID_DOWN_NR:format("AQ40", DBM:strFromTime(thisTime), DBM:strFromTime(self.Options.FastestClear3)))
								self.Options.FastestClear3 = thisTime
							else
								--Just show this clear time, and current record time (that you did NOT beat)
								DBM:AddMsg(DBM_CORE_L.RAID_DOWN_L:format("AQ40", DBM:strFromTime(thisTime), DBM:strFromTime(self.Options.FastestClear3)))
							end
						end
						self.vb.firstEngageTime = nil
					end
				end
			end
		end
	end

	function mod:OnSync(msg, timeOrEncounter, sender)
		--Sync recieved with start time and ours is currently not started
		--The reason this doesn't just check self.vb.firstEngageTime is nil, because it might not be if SendVariableInfo send it first
		if msg == "AQ40Started" and sender and not DBT:GetBar(DBM_CORE_L.SPEED_CLEAR_TIMER_TEXT) then
			if not self.vb.firstEngageTime then
				self.vb.firstEngageTime = tonumber(timeOrEncounter)
			end
			if self.Options.FastestClear3 and self.Options.SpeedClearTimer then
				--Custom bar creation that's bound to core, not mod, so timer doesn't stop when mod stops it's own timers
				local adjustment = GetServerTime() - self.vb.firstEngageTime
				DBT:CreateBar(self.Options.FastestClear3 - adjustment, DBM_CORE_L.SPEED_CLEAR_TIMER_TEXT, 136106)
			end
			--Unregister high CPU combat log events
			self:UnregisterShortTermEvents()
		elseif msg == "IsAQ40Started" and self.vb.firstEngageTime then
			--Sadly this has to be done with two syncs, one for variables for bosses that have been killed and one to instruct starting of timer
			self:SendSync("AQ40Started", self.vb.firstEngageTime)
			--Send all variables from the mod.vb table in whisper comm to requester (and not sent to whole raid)
			--This is sadly still going to generate a LOT of comm traffic on zone in. upwards of 4-117 syncs, per player zone in
			--Reviewing code, it's hard to do this in less comms, it's either don't support recovering the speed clear timer in all situations (disconnect, reloadui, zoning in late) or cause a burst of syncs :\
			DBM:SendVariableInfo(self, sender)
		elseif msg == "EncounterEnd" and timeOrEncounter then
			updateDefeatedBosses(self, timeOrEncounter)--In case player misses event (ie they released or are outside the raid for that particular boss
		end
	end

	function mod:ENCOUNTER_END(encounterId, _, _, _, success)
		if success == 0 then return end--wipe
		--All the required bosses for the raid to be full cleared.
		if encounterId == 710 or encounterId == 713 or encounterId == 716 or encounterId == 717 or encounterId == 714 then
			updateDefeatedBosses(self, encounterId)--Still want to fire this on event because the event will always be faster than sync
			self:SendSync("EncounterEnd", encounterId)
		end
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(26070) then
		self:TrackTrashAbility(args.sourceGUID, "Fear", args.sourceRaidFlags, args.sourceName)
	elseif args:IsSpell(26071) then
		self:TrackTrashAbility(args.sourceGUID, "Roots", args.sourceRaidFlags, args.sourceName)
	elseif args:IsSpell(26072) then
		self:TrackTrashAbility(args.sourceGUID, "DustCloud", args.sourceRaidFlags, args.sourceName)
	elseif args:IsSpell(26069) then
		self:TrackTrashAbility(args.sourceGUID, "Silence", args.sourceRaidFlags, args.sourceName)
	end
end

function mod:SPELL_SUMMON(args)
	if args:IsSpell(17430) then
		warnAdd1:Show()
		self:TrackTrashAbility(args.sourceGUID, "Summon1", args.sourceRaidFlags, args.sourceName)
	elseif args:IsSpell(17431) then
		warnAdd2:Show()
		self:TrackTrashAbility(args.sourceGUID, "Summon2", args.sourceRaidFlags, args.sourceName)
	end
end

function mod:PLAYER_TARGET_CHANGED()
	self:ScanTrashAbilities("target")
end

function mod:NAME_PLATE_UNIT_ADDED(uid)
	self:ScanTrashAbilities(uid)
end

function mod:NameplateScanningLoop()
	self:UnscheduleMethod("NameplateScanningLoop")
	self:ScheduleMethod(1, "NameplateScanningLoop")
	for i = 1, 10 do
		self:ScanTrashAbilities("nameplate" .. i)
	end
end

function mod:OnCombatStart()
	self:NameplateScanningLoop()
end

function mod:OnCombatEnd()
	self:UnscheduleMethod("NameplateScanningLoop")
end

-- Shared between AQ20 and AQ40
-- The timers likely also repeat while out of combat (similar to BWL trial bombs), might want to support that eventually, but these seem less important than bombs

-- Noxious Burst works differently depending on whether it triggers in a boss fight or during trash
-- During trash it targets a few players (some cases indicate a single target, some have 3?) and it spreads immediately to adjacent players. The explosion itself also spreads it
-- During boss fights it always hits everyone at the same time.
-- This is kinda annoying because it means we need different types of warnings as the spreading during trash just triggers too often.
-- The idea is that we track the number of affected people and then show the appropriate warning based on this
local burstTargets = {}
local targetCount = 0

function mod:NoxiousBurst(args, specWarn, yell, timer)
	-- It can target a single player multiple times even during one cast
	if burstTargets[args.destName] then
		return
	end
	burstTargets[args.destName] = true
	targetCount = targetCount + 1
	self:UnscheduleMethod("NoxiousBurstDelayed")
	self:ScheduleMethod(0.1, "NoxiousBurstDelayed", specWarn, yell, timer)
end

function mod:NoxiousBurstDelayed(specWarn, yell, timer)
	if targetCount >= 5 then
		if self:AntiSpam(5, "NoxiousBurst") then
			specWarn:Show()
			specWarn:Play("scatter")
			local remaining = timer:GetRemaining()
			-- Isn't 100% correct because we technically would need to distinguish between it being cast on everyone and it spreading, but close enough
			-- Just making sure to not re-start immediately if it's spreading across the raid
			if remaining <= 15 then
				timer:Start()
			end
		end
	else
		if burstTargets[UnitName("player")] and self:AntiSpam(5, "NoxiousBurst") then
			yell:Show()
			specWarn:Show()
			specWarn:Play("scatter")
		end
		-- else: few players and not yet including you, the special warning will trigger if it spreads further
	end
	table.wipe(burstTargets)
	targetCount = 0
end


-- Illusionary Shatter by ghostly mobs that are named Eye Tentacles (but don't look like Eye Tentacles at all).
-- Every 30 seconds a lot of them spawn, and sometimes only a single one spawns, only the 30 second one seems to be on a timer
local explodingGhostCount = 0

function mod:ExplodingGhost(warn, specWarn, timer)
	explodingGhostCount = explodingGhostCount + 1
	self:UnscheduleMethod("ExplodingGhostDelayed")
	self:ScheduleMethod(0.15, "ExplodingGhostDelayed", warn, specWarn, timer) -- Sometimes there is a small delay between spawns
end

function mod:ExplodingGhostDelayed(warn, specWarn, timer)
	if explodingGhostCount >= 3 then
		specWarn:Show()
		specWarn:Play("ghostsoon")
		if IsEncounterInProgress() then
			timer:Start()
		end
	else
		warn:Show()
	end
	explodingGhostCount = 0
end


-- Trash InfoFrame
local mobs, deadMobs = {}, {}

-- TODO: Grab spell info frame Detect Magic as well, unfortunately these don't show up in logs :/
function mod:TrackTrashAbility(guid, ability, raidFlags, name)
	if deadMobs[guid] and GetTime() - deadMobs[guid] < 20 then
		-- Their abilities can hit after they die, we don't want to add them again in this case
		-- Except if it's longer than 20 seconds ago that we saw them die in case of mysterious resurrections (or, well, tests running multiple times)
		return
	end
	local mobInfo = mobs[guid] or {abilities = {}, sortedAbilities = {}}
	mobs[guid] = mobInfo
	mobInfo.name = name
	mobInfo.lastSeen = GetTime()
	mobInfo.icon = math.log(raidFlags) / math.log(2) + 1
	if not mobInfo.abilities[ability] then
		mobInfo.abilities[ability] = true
		mobInfo.sortedAbilities[#mobInfo.sortedAbilities + 1] = trashAbilitiesLocalized[ability] or ability
		self:TestTrace("DetectAbility", guid, name, ability)
		DBM:Debug(("TrackTrashAbility %s %s %s"):format(guid, name, ability), 1)
	end
	self:ShowInfoFrame()
end

function mod:RemoveTrackTrashAbilityMob(guid)
	if mobs[guid] then
		deadMobs[guid] = GetTime()
		self:TestTrace("StopTracking", guid)
	end
	mobs[guid] = nil
end

function mod:ScanTrashAbilities(uid)
	local guid = UnitGUID(uid)
	local cid = DBM:GetCIDFromGUID(guid)
	if cid ~= 15264 and cid ~= 15355 and cid ~= 15277 and cid ~= 15311 and cid ~= 234830 then
		return
	end
	local name = UnitName(uid)
	if not name then return end
	local icon = GetRaidTargetIndex(uid)
	local raidFlags = icon and icon > 0 and 2^(icon - 1) or 0
	if DBM:UnitBuff(uid, 19595) then
		self:TrackTrashAbility(guid, "ShadowFrostReflect", raidFlags, name)
	end
	if DBM:UnitBuff(uid, 474564, 2834) then
		self:TrackTrashAbility(guid, "Thunderclap", raidFlags, name)
	end
	if DBM:UnitBuff(uid, 474565, 2148) then
		self:TrackTrashAbility(guid, "ShadowStorm", raidFlags, name)
	end
	if DBM:UnitBuff(uid, 474570) then
		self:TrackTrashAbility(guid, "Meteor", raidFlags, name)
	end
	if DBM:UnitBuff(uid, 474571) then
		self:TrackTrashAbility(guid, "Plague", raidFlags, name)
	end
	if DBM:UnitBuff(uid, 2147) then
		self:TrackTrashAbility(guid, "Mending", raidFlags, name)
	end
	if DBM:UnitBuff(uid, 21737) then
		self:TrackTrashAbility(guid, "KnockAway", raidFlags, name)
	end
	if DBM:UnitBuff(uid, 812) then
		self:TrackTrashAbility(guid, "ManaBurn", raidFlags, name)
	end
	if DBM:UnitBuff(uid, 25777) then
		self:TrackTrashAbility(guid, "Thorns", raidFlags, name)
	end
	-- Fire/Arcane reflect is impossible to detect like this because detect magic gets reflected (but that reflection itself is detected!)
	-- I also don't have a log for AQ20 because no one bothers with detect magic
end

local lines = {}
local sortedLines = {}

local function addLine(key, value)
	value = value or ""
	-- sort by insertion order
	lines[key] = tostring(value)
	sortedLines[#sortedLines + 1] = key
end

local function updateInfoFrame()
	for k, mob in pairs(mobs) do
		if GetTime() - mob.lastSeen > 30 then
			mobs[k] = nil
		end
	end
	if next(mobs) == nil then
		-- Calling hide directly from the updater doesn't work because as part of updating it makes sure that it is visible
		DBM:Schedule(0.1, DBM.InfoFrame.Hide, DBM.InfoFrame)
		return lines, sortedLines
	end
	table.wipe(lines)
	table.wipe(sortedLines)
	local mobId = 0
	for guid, mob in pairs(mobs) do
		local hp = DBM:GetBossHP(guid)
		mob.hp = hp or mob.hp
		local name = HIGHLIGHT_FONT_COLOR:WrapTextInColorCode(mob.name)
		if mob.icon > 0 then
			name = DBM:IconNumToTexture(mob.icon) .. " " .. name
		end
		addLine(name .. (" "):rep(mobId), mob.hp and ("%d%%"):format(mob.hp))
		mobId = mobId + 1 -- ugly hack to make health tracking work if you have multiple mobs of the same name without raid target icons
		for _, ability in ipairs(mob.sortedAbilities) do
			addLine(NORMAL_FONT_COLOR:WrapTextInColorCode((" "):rep(6) .. ability))
		end
		if next(mobs, guid) then
			addLine(" ")
		end
	end
	return lines, sortedLines
end

-- FIXME: InfoFrame option is shared between AQ20 and AQ40, each mod should have their own
function mod:ShowInfoFrame()
	if self.Options.InfoFrame and not DBM.InfoFrame:IsShown() then
		DBM.InfoFrame:Show(42, "function", updateInfoFrame, false, false)
		DBM.InfoFrame:SetColumns(1)
	end
end
