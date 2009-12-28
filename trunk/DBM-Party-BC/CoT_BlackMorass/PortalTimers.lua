local mod	= DBM:NewMod("PT", "DBM-Party-BC", 12)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 1 $"):sub(12, -3))

mod:RegisterEvents(
	"UPDATE_WORLD_STATES",
	"UNIT_DIED",
	"CHAT_MSG_MONSTER_YELL"
)

mod:RemoveOption("HealthFrame")

-- Portals
local warnWavePortalSoon	= mod:NewAnnounce("WarnWavePortalSoon", 2)
local warnWavePortal		= mod:NewAnnounce("WarnWavePortal", 3)
--local warnBossPortalSoon	= mod:NewAnnounce("WarnBossPortalSoon", 3)
local warnBossPortal		= mod:NewAnnounce("WarnBossPortal", 4)
local timerNextPortal		= mod:NewTimer(120, "TimerNextPortal")


local lastPortal = 0

function mod:PortalSoon()
	if lastPortal == 5 or lastPortal == 11 or lastPortal == 17 then	
--		warnBossPortalSoon:Show()
	else
		warnWavePortalSoon:Show()
	end
end

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 17879 then
		timerNextPortal:Start(127, lastPortal + 1)
		self:ScheduleMethod(117, "PortalSoon")
	elseif cid == 17880 then
		timerNextPortal:Start(123, lastPortal + 1)
		self:ScheduleMethod(113, "PortalSoon")
	end
end

function mod:UPDATE_WORLD_STATES()
	local text = select(3, GetWorldStateUIInfo(2))
	if not text then return end
	local _, _, currentPortal = string.find(text, L.PortalCheck)
	if not currentPortal then 
		currentPortal = 0 
	end
	currentPortal = tonumber(currentPortal)
	lastPortal = tonumber(lastPortal)
	if currentPortal > lastPortal then
		self:UnscheduleMethod("PortalSoon")
		timerNextPortal:Cancel()
		if currentPortal == 6 or currentPortal == 12 or currentPortal == 18 then
			warnBossPortal:Show()
		else
--			timerNextPortal:Start(122, currentPortal + 1)--requires complete overhaul I haven't patience to do.
--			self:ScheduleMethod(112, "PortalSoon")--because portals spawn faster and faster each time.
			warnWavePortal:Show(currentPortal)
		end
		lastPortal = currentPortal
	elseif currentPortal < lastPortal then
		lastPortal = 0
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.Shielddown or msg:find(L.Shielddown) then
		self:SendSync("Wipe")
	end
end

function mod:OnSync(msg, arg)
	if msg == "Wipe" then
		self:UnscheduleMethod("PortalSoon")
		timerNextPortal:Cancel()
	end
end