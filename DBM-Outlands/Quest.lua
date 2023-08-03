if not C_QuestLog then return end--Not 100% sure if wrath and classic era have synced these changes or not
local mod	= DBM:NewMod("Quest", "DBM-Outlands")
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:AddBoolOption("Timers", true)
mod:SetModelID(18921)

--------------
--  Locals  --
--------------
local maxQuests = mod:IsClassic() and 25 or 35
local frame
local bar
local questTimers = {
	[10277] = 427,-- The Caverns of Time -- 425 425 419.9 427.7 426.5
	[10211] = 533,-- City of Light (shattrath) -- 528 528 532 533
}
local bars = {}

--------------------
--  Create Frame  --
--------------------
frame = CreateFrame("Frame")
frame:RegisterEvent("QUEST_ACCEPTED")

frame:SetScript("OnEvent", function(self, e, qid)
	if not mod.Options.Timers then
		frame:UnregisterAllEvents()
		frame = nil
		return
	end
	if e == "QUEST_ACCEPTED" then
		local questIndex = C_QuestLog.GetLogIndexForQuestID(qid)
		local info = C_QuestLog.GetInfo(questIndex)
		if questTimers[z] then
			if bars[qid] then
				bars[qid]:Cancel()
			end
			bars[qid] = DBT:CreateBar(questTimers[qid], tostring(info.title) or tostring(qid), 136106)
			frame:RegisterEvent("QUEST_LOG_UPDATE")
		end
	elseif e == "QUEST_LOG_UPDATE" then
		-- check for the user abandoning the quest
		local quests = {}
		for i = 1, maxQuests do
			local info = C_QuestLog.GetInfo(i)
			-- check for completion as the shat escort can complete early if someone elses npc finishes next to you
			if info and info.questID and not C_QuestLog.IsQuestFlaggedCompleted(info.questID) then
				quests[qid] = true
			end
		end
		local nbars = 0
		for qid, bar in pairs(bars) do
			if bar and not quests[qid] then
				bar:Cancel()
				bars[qid] = nil
			elseif bar ~= nil then
				nbars = nbars + 1
			end
		end
		if nbars == 0 then
			frame:UnregisterEvent("QUEST_LOG_UPDATE")
		end
	end
end)
