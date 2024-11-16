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
mod:SetZone(409)
mod:RegisterZoneCombat(409)

mod.isTrashMod = true

mod:AddSpeedClearOption("MC", true)

--Speed Clear variables
mod.vb.firstEngageTime = nil

--Request speed clear variables, in case it was already started before mod loaded
mod:SendSync("IsMCStarted")

--TODO, maybe check if any bosses killed, in case group pulls Molten Giant after killing ragnaros
--Right now, it'd start a speed run timer if you pull a molten giant after ragnaros killedd
function mod:StartNameplateTimers(guid, cid)
	if cid == 11658 then--Molten Giants
		if not self.vb.firstEngageTime then
			self.vb.firstEngageTime = GetServerTime()
			if self.Options.FastestClear2 and self.Options.SpeedClearTimer then
				--Custom bar creation that's bound to core, not mod, so timer doesn't stop when mod stops it's own timers
				DBT:CreateBar(self.Options.FastestClear2, DBM_CORE_L.SPEED_CLEAR_TIMER_TEXT, 136106)
			end
			self:SendSync("MCStarted", self.vb.firstEngageTime)--Also sync engage time
		end
	end
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
