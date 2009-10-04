local Vorpil = DBM:NewBossMod("Vorpil", DBM_VORPIL_NAME, DBM_VORPIL_DESCRIPTION, DBM_LABYRINTH, DBM_AUCH_TAB, 11);

Vorpil.Version	= "1.1";
Vorpil.Author	= "Arta";

Vorpil:RegisterCombat("YELL", {DBM_VORPIL_PULL1, DBM_VORPIL_PULL2});

Vorpil:RegisterEvents(
	"SPELL_CAST_SUCCESS"
);

Vorpil:AddOption("WarnTeleport", true, DBM_VORPIL_OPTION_TELEPORT)
Vorpil:AddBarOption("Next Teleport")

function Vorpil:OnEvent(event, args)
	if event == "SPELL_CAST_SUCCESS" then
		if args.spellId == 33563 then
			self:SendSync("Teleport")
		end	
	end
end

function Vorpil:OnSync(msg)
	if msg == "Teleport" then
		self:StartStatusBarTimer(37, "Next Teleport");
		if self.Options.WarnTeleport then
			self:ScheduleAnnounce(32, DBM_VORPIL_WARN_TELEPORT, 3);
		end
	end
end