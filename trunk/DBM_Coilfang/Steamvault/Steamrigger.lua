local Steamrigger = DBM:NewBossMod("Steamrigger", DBM_STEAMRIGGER_NAME, DBM_STEAMRIGGER_DESCRIPTION, DBM_STEAMVAULTS, DBM_COILFANG_TAB, 9);

Steamrigger.Version	= "1.0";
Steamrigger.Author	= "Arta";

Steamrigger:RegisterCombat("COMBAT");

Steamrigger:RegisterEvents(
	"CHAT_MSG_MONSTER_YELL"
);

Steamrigger:AddOption("WarnSummon", true, DBM_STEAMRIGGER_OPTION_SUMMON)

function Steamrigger:OnEvent(event, args)
	if event == "CHAT_MSG_MONSTER_YELL"then
		if args == "DBM_STEAMRIGGER_CHECK_SUMMON" then
			self:SendSync("Summon")
		end
	end
end

function Steamrigger:OnSync(msg)
	if msg == "Summon" and self.Options.WarnSummon then
		self:Announce(DBM_STEAMRIGGER_WARN_SUMMON, 3)
	end
end