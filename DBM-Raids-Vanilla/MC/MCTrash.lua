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
local mod	= DBM:NewMod("MCTrash", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
--mod:SetModelID(47785)
mod:SetMinSyncRevision(20200710000000)--2020, 7, 10
mod.isTrashMod = true
mod:SetZone(409)
mod:RegisterZoneCombat(409)

mod:RegisterEvents(
--	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS 19392 19196 19272 18945 20276 19129 19641 19636 19635 18944 19630",
--	"SPELL_AURA_APPLIED",
--	"SPELL_AURA_APPLIED_DOSE",
--	"SPELL_AURA_REMOVED",
	"UNIT_DIED"
--	"GOSSIP_SHOW"
)

local warnKnockAway					= mod:NewSpellAnnounce(18945, 2, nil, "Tank|Healer")
local warnSmash						= mod:NewSpellAnnounce(18944, 2)
local warnSummonLavaSpawn			= mod:NewSpellAnnounce(19392, 3)
local warnSurge						= mod:NewSpellAnnounce(19196, 2)
local warnLavaBreath				= mod:NewSpellAnnounce(19272, 2)
local warnKnockDown					= mod:NewSpellAnnounce(20276, 2, nil, "Tank|Healer")
local warnMassiveTremor				= mod:NewSpellAnnounce(19129, 3)
local warnPyroclastBarrage			= mod:NewSpellAnnounce(19641, 2)
local warnFireBlossom				= mod:NewSpellAnnounce(19636, 2)
local warnInciteFlames				= mod:NewSpellAnnounce(19635, 2, nil, "RemoveMagic")
local warnConeofFire				= mod:NewSpellAnnounce(19630, 3)

local timerKnockAwayCD				= mod:NewCDNPTimer(10.7, 18945, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK_ICON)--10.7-14.8
local timerSmashCD					= mod:NewCDNPTimer(7.2, 18944, nil, nil, nil, 2)--7.2-9.9
local timerSummonLavaSpawnCD		= mod:NewCDNPTimer(16.8, 19392, nil, nil, nil, 1)--16.8-19.5
local timerSurgeCD					= mod:NewCDNPTimer(7.1, 19196, nil, nil, nil, 3)--7.1-14.5
local timerLavaBreathCD				= mod:NewCDNPTimer(10.9, 19272, nil, nil, nil, 3)--10.9-19.4
local timerKnockDownCD				= mod:NewCDNPTimer(7.2, 20276, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK_ICON)--7.2+
local timerMassiveTremorCD			= mod:NewCDNPTimer(13.3, 19129, nil, nil, nil, 2)--13.3-17.0
local timerPyroclastBarrageCD		= mod:NewCDNPTimer(8.6, 19641, nil, nil, nil, 5, nil, DBM_COMMON_L.TANK_ICON)--8.6-20.7
local timerFireBlossomCD			= mod:NewCDNPTimer(13.2, 19636, nil, nil, nil, 2)--13.2-19.6
local timerInciteFlamesCD			= mod:NewCDNPTimer(12.1, 19635, nil, nil, nil, 5, nil, DBM_COMMON_L.MAGIC_ICON)--12.1-18.2
local timerConeofFireCD				= mod:NewCDNPTimer(13.5, 19630, nil, nil, nil, 3)--13.5-15.9

mod:AddSpeedClearOption("MC", true)

--Speed Clear variables
mod.vb.firstEngageTime = nil

--Request speed clear variables, in case it was already started before mod loaded
mod:SendSync("IsMCStarted")

function mod:SPELL_CAST_SUCCESS(args)
	local spellId = args.spellId
	if spellId == 19392 then
		--"Summon Lava Spawn-19392-npc:11668-0001BC078A = pull:228.2, 18.1, 18.4, 18.1",
		--"Summon Lava Spawn-19392-npc:11668-00033C078A = pull:123.5, 16.8, 17.1, 19.5, 18.2",
		if self:AntiSpam(3, 1) then
			warnSummonLavaSpawn:Show()
		end
		timerSummonLavaSpawnCD:Start(nil, args.sourceGUID)
	elseif spellId == 19196 then
		--"Surge-19196-npc:12101-0000BC078A = pull:331.7, 9.7, 7.2, 7.4, 14.5, 7.5, 11.9, 13.5, 7.5, 5.9, 11.0",
		if self:AntiSpam(3, 2) then
			warnSurge:Show()
		end
		timerSurgeCD:Start(nil, args.sourceGUID)
	elseif spellId == 19272 then
		--"Lava Breath-19272-npc:11673-0006BC078A = pull:476.2, 16.0, 13.8, 18.3, 12.1",
		--"Lava Breath-19272-npc:11673-00073C078A = pull:370.5, 19.4, 12.4, 15.7",
		if self:AntiSpam(3, 3) then
			warnLavaBreath:Show()
		end
		timerLavaBreathCD:Start(nil, args.sourceGUID)
	elseif spellId == 18945 then
		--"Knock Away-18945-npc:11658-0003BC078A = pull:117.1, 12.1",
		--"Knock Away-18945-npc:11658-0006BC078A = pull:74.2, 14.8",
		--"Knock Away-18945-npc:11658-00073C078A = pull:70.6, 13.3, 11.1",
		if self:AntiSpam(3, 4) then
			warnKnockAway:Show()
		end
		timerKnockAwayCD:Start(nil, args.sourceGUID)
	elseif spellId == 20276 then
		--"Knockdown-20276-npc:11659-0000BC078A = pull:112.2, 8.3, 8.6",
		if self:AntiSpam(3, 5) then
			warnKnockDown:Show()
		end
		timerKnockDownCD:Start(nil, args.sourceGUID)
	elseif spellId == 19129 then
		--"Massive Tremor-19129-npc:11659-0000BC078A = pull:114.6, 17.0",
		if self:AntiSpam(3, 6) then
			warnMassiveTremor:Show()
		end
		timerMassiveTremorCD:Start(nil, args.sourceGUID)
	elseif spellId == 19641 then
		--"Pyroclast Barrage-19641-npc:12076-00013C078B = pull:28.9, 9.8, 10.8, 12.3, 18.3, 12.1",
		--"Pyroclast Barrage-19641-npc:12076-0001BC078B = pull:33.7, 18.3, 11.0, 20.7, 10.9",
		if self:AntiSpam(3, 7) then
			warnPyroclastBarrage:Show()
		end
		timerPyroclastBarrageCD:Start(nil, args.sourceGUID)
	elseif spellId == 19636 then
		--"Fire Blossom-19636-npc:11666-00003C078B = pull:145.8, 19.5",
		--"Fire Blossom-19636-npc:11666-00013C078B = pull:37.5, 19.6, 13.2, 13.4",
		if self:AntiSpam(3, 8) then
			warnFireBlossom:Show()
		end
		timerFireBlossomCD:Start(nil, args.sourceGUID)
	elseif spellId == 19635 then
		--"Incite Flames-19635-npc:11666-00013C078B = pull:32.5, 18.2, 17.1, 17.0",
		if self:AntiSpam(3, 9) then
			warnInciteFlames:Show()
		end
		timerInciteFlamesCD:Start(nil, args.sourceGUID)
	elseif spellId == 18944 then
		--"Smash-18944-npc:11658-0003BC078A = pull:113.3, 9.9, 7.2",
		--"Smash-18944-npc:11658-0006BC078A = pull:67.0, 9.6, 8.7, 9.7, 7.4",
		--"Smash-18944-npc:11658-00073C078A = pull:68.1, 7.5, 9.7, 8.4, 8.7",
		if self:AntiSpam(3, 10) then
			warnSmash:Show()
		end
		timerSmashCD:Start(nil, args.sourceGUID)
	elseif spellId == 19630 then
		--"Cone of Fire-19630-npc:11667-00013C078B = pull:32.5, 15.9, 13.5, 15.8",
		if self:AntiSpam(3, 11) then
			warnConeofFire:Show()
		end
		timerConeofFireCD:Start(nil, args.sourceGUID)
	end
end

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 11658 then--Molten Giant
		timerKnockAwayCD:Stop(args.destGUID)
		timerSmashCD:Stop(args.destGUID)
	elseif cid == 11668 then--Firelord
		timerSummonLavaSpawnCD:Stop(args.destGUID)
	elseif cid == 12101 then--Lava Surger
		timerSurgeCD:Stop(args.destGUID)
	elseif cid == 11673 then--Ancient Core Hound
		timerLavaBreathCD:Stop(args.destGUID)
	elseif cid == 11659 then--Molten Destroyer
		timerKnockDownCD:Stop(args.destGUID)
		timerMassiveTremorCD:Stop(args.destGUID)
	elseif cid == 12076 then--Lava Elemental
		timerPyroclastBarrageCD:Stop(args.destGUID)
	elseif cid == 11666 then--Firewalker
		timerFireBlossomCD:Stop(args.destGUID)
		timerInciteFlamesCD:Stop(args.destGUID)
	elseif cid == 11667 then--Flameguard
		timerConeofFireCD:Stop(args.destGUID)
	end
end

--TODO, maybe check if any bosses killed, in case group pulls Molten Giant after killing ragnaros
--Right now, it'd start a speed run timer if you pull a molten giant after ragnaros killedd
function mod:StartEngageTimers(guid, cid)
	if cid == 11658 then--Molten Giants
		timerSmashCD:Start(3.3, guid)
		timerKnockAwayCD:Start(5.3, guid)--5.3-10.5
		if not self.vb.firstEngageTime then
			self.vb.firstEngageTime = GetServerTime()
			if self.Options.FastestClear2 and self.Options.SpeedClearTimer then
				--Custom bar creation that's bound to core, not mod, so timer doesn't stop when mod stops it's own timers
				DBT:CreateBar(self.Options.FastestClear2, DBM_CORE_L.SPEED_CLEAR_TIMER_TEXT, 136106)
			end
			self:SendSync("MCStarted", self.vb.firstEngageTime)--Also sync engage time
		end
	elseif cid == 11668 then--Firelord
		timerSummonLavaSpawnCD:Start(10, guid)--10-14
--	elseif cid == 12101 then--Lava Surger
--		timerSurgeCD:Start(3.7, guid)--Near instantly on some pulls, if pulled from range
	elseif cid == 11673 then--Ancient Core Hound
		timerLavaBreathCD:Start(4.4, guid)--4.4-24.3
	elseif cid == 11659 then--Molten Destroyer
		timerKnockDownCD:Start(4.2, guid)
		timerMassiveTremorCD:Start(6.9, guid)
	elseif cid == 12076 then--Lava Elemental
		timerPyroclastBarrageCD:Start(6.5, guid)--6.5-13.5
	elseif cid == 11666 then--Firewalker
		timerFireBlossomCD:Start(6.4, guid)--6.4-17.4
		timerInciteFlamesCD:Start(10.6, guid)--10.6-12.4
	elseif cid == 11667 then--Flameguard
		timerConeofFireCD:Start(7, guid)--7-13
	end
end

--Abort timers when all players out of combat, so NP timers clear on a wipe
--Caveat, it won't calls top with GUIDs, so while it might terminate bar objects, it may leave lingering nameplate icons
function mod:LeavingZoneCombat()
	self:Stop()
end


function mod:OnSync(msg, startTime, sender)
	--Sync recieved with start time and ours is currently not started
	if msg == "MCStarted" and startTime and not self.vb.firstEngageTime then
		self.vb.firstEngageTime = tonumber(startTime)
		if self.Options.FastestClear2 and self.Options.SpeedClearTimer then
			--Custom bar creation that's bound to core, not mod, so timer doesn't stop when mod stops it's own timers
			local adjustment = GetServerTime() - self.vb.firstEngageTime
			DBT:CreateBar(self.Options.FastestClear2 - adjustment, DBM_CORE_L.SPEED_CLEAR_TIMER_TEXT)
		end
	elseif msg == "IsMCStarted" and self.vb.firstEngageTime then
		--Sadly this has to be done with two syncs, one for variables for bosses that have been killed and one to instruct starting of timer
		self:SendSync("MCStarted", self.vb.firstEngageTime)
	end
end
