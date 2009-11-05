local Kael = DBM:NewBossMod("Kael", DBM_KAEL_NAME, DBM_KAEL_DESCRIPTION, DBM_TERRACE, DBM_TERRACE_TAB, 4)

Kael.Version		= "1.0"
Kael.Author		= "Arta"

Kael:RegisterCombat("COMBAT")

Kael:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS",
	"CHAT_MSG_MONSTER_YELL",
	"SPELL_AURA_APPLIED" 
)

Kael:AddOption("WarnBarrier", true, DBM_KAEL_OPTION_BARRIER)
Kael:AddOption("WarnFlamestrike", true, DBM_KAEL_OPTION_FLAMESTRIKE)
Kael:AddOption("WarnPhase2", true, DBM_KAEL_OPTION_PHASE2)
Kael:AddOption("WarnGravity", true, DBM_KAEL_OPTION_GRAVITY)
Kael:AddOption("WarnPhoenix", true, DBM_KAEL_OPTION_PHOENIX)

Kael:AddBarOption("Next Flame Strike")
Kael:AddBarOption("Next Phoenix")
Kael:AddBarOption("Gravity Lapse")
Kael:AddBarOption("Next Gravity Lapse")
Kael:AddBarOption("Next Shock Barrier")

function Kael:OnCombatStart(delay)
	if GetInstanceDifficulty() == 2 then
		self:StartStatusBarTimer(60, "Next Shock Barrier", 46165)
		self:ScheduleSelf(50, "NextBarrier")
	end
end

function Kael:OnEvent(event, args)
	if event == SPELL_CAST_START then
		if args.spellId == 44224 then
			self:SendSync("Gravity")
		end
	elseif event == "SPELL_CAST_SUCCESS" then
		if args.spellId == 44192 then
			self:SendSync("Flamestrike")
		elseif args.spellId == 44194 then
			self:SendSync("Phoenix")
		end
	elseif event == "CHAT_MSG_MONSTER_YELL" then
		if args == DBM_KAEL_CHECK_PHASE2 and self.Options.WarnPhase2 then
			self:SendSync("Phase2")
		end
	elseif event == "SPELL_AURA_APPLIED" then
		if args.spellId == 44165 then
			self:SendSync("Barrier")
		end
	elseif event == "NextBarrier" then
		if self.Option.WarnBarrier then
			self:Announce(DBM_KAEL_WARN_BARRIER2, 3)
		end
	end			
end

function Kael:OnSync(msg)	
	if msg == "Gravity" then
		self:StartStatusBarTimer(35, "Gravity Lapse", 44224);
		self:StartStatusBarTimer(45, "Next Gravity Lapse", 44224);
		if self.Options.WarnGravity then
			self:Announce(DBM_KAEL_WARN_GRAVITY, 3)
		end
	elseif msg == "Phoenix" then
		self:StartStatusBarTimer(60, "Next Phoenix", 44194)
		if self.Options.WarnPhoenix then
			self:Announce(DBM_KAEL_WARN_PHOENIX, 3)
		end
	elseif msg == "Flamestrike" then
		self:StartStatusBarTimer(30, "Next Flame Strike", 44192);
		if self.Options.WarnFlamestrike then
			self:Announce(DBM_KAEL_WARN_FLAMESTRIKE, 3)
		end
	elseif msg == "Phase2" and self.Options.WarnPhase2 then
		self:Announce(DBM_KAEL_WARN_PHASE2, 3);
		self:EndStatusBarTimer("Next Flame Strike");
		self:EndStatusBarTimer("Next Phoenix");
	elseif msg == "Barrier" and self.Options.WarnBarrier then
		self:Announce(DBM_KAEL_WARN_BARRIER, 3)
		self:StartStatusTimerBar(60, "Next Shock Barrier", 46165)
		self:ScheduleSelf(50, "NextBarrier")
	end
end
