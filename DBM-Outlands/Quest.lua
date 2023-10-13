local mod	= DBM:NewMod("Quest", "DBM-Outlands")

mod:SetRevision("@file-date-integer@")
mod:SetModelID(18921)
mod:RegisterEvents(
	"QUEST_ACCEPTED"
)
mod:AddBoolOption("Timers", true)

--------------
--  Locals  --
--------------
-- TODO: Convert these to mod:NewTimer objects
local questTimers = {
	[10277] = 427,-- The Caverns of Time -- 425 425 419.9 427.7 426.5
	[10211] = 533,-- City of Light (shattrath) -- 528 528 532 533
}
local bars = {}

function mod:QUEST_ACCEPTED(questID)
	if not mod.Options.Timers then
		return
	end
	if questTimers[questID] then
		if bars[questID] then
			bars[questID]:Cancel()
		end
		local title =
			C_QuestLog and -- Retail
				C_QuestLog.GetInfo(C_QuestLog.GetLogIndexForQuestID(questID)).title
			or -- Classic
				GetQuestLogTitle(questID)
		bars[questID] = DBT:CreateBar(questTimers[questID], tostring(title) or tostring(questID), 136106)
		mod:RegisterShortTermEvents("QUEST_LOG_UPDATE")
	end
end

function mod:QUEST_LOG_UPDATE()
	local hasBars = false
	for questID, bar in pairs(bars) do
		local isInProgress = false
		if C_QuestLog then -- Retail
			-- Is in quest log, and not complete
			isInProgress = C_QuestLog.GetLogIndexForQuestID(questID) and not C_QuestLog.IsComplete(questID)
		else -- Classic
			local questIndex = GetQuestLogIndexByID(questID)
			if questIndex then -- Is in quest log
				isInProgress = not select(6, GetQuestLogTitle(questIndex)) -- And not complete
			end
		end
		if bar and not isInProgress then
			bar:Cancel()
			bars[questID] = nil
		elseif bar ~= nil then
			hasBars = true
		end
	end
	if not hasBars then
		self:UnregisterShortTermEvents("QUEST_LOG_UPDATE")
	end
end
