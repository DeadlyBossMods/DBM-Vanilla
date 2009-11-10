local Hellmaw = DBM:NewBossMod("Hellmaw", DBM_HELLMAW_NAME, DBM_HELLMAW_DESCRIPTION, DBM_LABYRINTH, DBM_AUCH_TAB, 9)

Hellmaw.Version	= "1.0"
Hellmaw.Author	= "Arta"

Hellmaw:SetCreatureID(18731)
Hellmaw:RegisterCombat("combat")

Hellmaw:RegisterEvents(
	"SPELL_CAST_SUCCESS"
)

Hellmaw:AddOption("WarnEnrage", true, DBM_HELLMAW_OPTION_ENRAGE)
Hellmaw:AddOption("WarnFear", true, DBM_HELLMAW_OPTION_FEAR)
Hellmaw:AddBarOption("Enrage")
Hellmaw:AddBarOption("Next Fear")

function Hellmaw:OnCombatStart(delay)
	if GetInstanceDifficulty() == 2 then
		self:StartStatusBarTimer(180 - delay, "Enrage")
		self:ScheduleSelf(120 - delay, "EnrageWarn", 60)
		self:ScheduleSelf(150 - delay, "EnrageWarn", 30)
		self:ScheduleSelf(170 - delay, "EnrageWarn", 10)
	end
end

function Hellmaw:OnEvent(event, args)
	if event == "EnrageWarn" and type(args) == "number" and self.Options.WarnEnrage then
		self:Announce(string.format(DBM_HELLMAW_WARN_ENRAGE, args, DBM_SEC), 3)
	elseif event == "SPELL_CAST_SUCCESS" then
		if args.spellId == "33547" then
			self:SendSync("Fear")			
		end
	elseif event == "NextFear" and self.Options.WarnFear then
		self:Announce(DBM_HELLMAW_WARN_FEAR, 3)
	end
end

function Hellmaw:OnSync(msg)
	if msg == "Fear" then
		self:StartStatusTimerBar(25, "Next Fear")
		self:ScheduleSelf(24, "NextFear")
	end
end