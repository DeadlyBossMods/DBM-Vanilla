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
		local isComplete = false
		if C_QuestLog then -- Retail
			local questIndex = C_QuestLog.GetLogIndexForQuestID(questID)
			if questIndex then
				local info = C_QuestLog.GetInfo(questIndex)
				isComplete = info and info.questID and C_QuestLog.IsQuestFlaggedCompleted(questID)
			end
		else -- Classic
			local questIndex = GetQuestLogIndexByID(questID)
			if questIndex then
				isComplete = select(6, GetQuestLogTitle(questIndex))
			end
		end
		if bar and not isComplete then
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
