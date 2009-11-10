local PT = DBM:NewBossMod("PT", DBM_PORTAL_NAME, DBM_PORTAL_DESCRIPTION, DBM_BLACK_MORASS, DBM_COT_TAB, 7)

local lastportal = 0

PT.Version 	= "1.5"
PT.Author 	= "Arta"

PT:RegisterEvents(
	"UPDATE_WORLD_STATES",
	"UNIT_DIED"
)

PT:AddOption("WarnPortal", true, DBM_PORTAL_OPTION1)

PT:AddBarOption("Next Portal")

function PT:OnEvent(event, arg1)
	if event == "UPDATE_WORLD_STATES" then
		local text = select(3, GetWorldStateUIInfo(2))
		if not text then return	end
		local _, _, currentportal = string.find(text, DBM_PORTAL_CHECK)
		if not currentportal then
			currentportal = 0
		end
		self:SendSync("NewWave"..currentportal)
	elseif event == "PortalSoon" then
		if (lastportal == 5 or lastportal == 11 or lastportal == 17) and 
		   (currentportal == 6 or currentportal == 12 or currentportal == 18) then
			self:Announce(DBM_PORTAL_BOSS_SOON, 3)
		else
			self:Announce(DBM_PORTAL_PORTAL_SOON, 3)
		end
--	elseif event == "UNIT_DIED" then
--		if args.destName == DBM_AEONUS_NAME or args.destName == DBM_DEJA_NAME then
--			self:SendSync("Down")
--		end
	end
		
end

function PT:OnSync(msg)
	if msg:sub(0, 7) == "NewWave" then
		local timer = 0
		local portal = string.sub(msg, 8, 9)
		portal = tonumber(portal)
		if not portal then return end
		lastportal = tonumber(lastportal)
		if portal > lastportal then
			self:UnScheduleSelf("PortalSoon")
			timer = 120
			if portal == 6 or portal == 12 or portal == 18 then
				timer = 0.1
			end
			self:StartStatusBarTimer(timer, "Next Portal")
			self:ScheduleSelf(timer-10, "PortalSoon")
			lastportal = portal
			if portal == 6 or portal == 12 or portal == 18 then
				self:Announce(DBM_PORTAL_BOSS_NOW, 4)
			else
				self:Announce(DBM_PORTAL_PORTAL_NOW, 4)
			end
		elseif portal < lastportal then
			lastportal = 0
		end
	elseif msg == "Down" then
		timer = 140
		self:StartStatusBarTimer(timer, "Next Portal")
		self:ScheduleSelf(timer-10, "PortalSoon")
	end
end