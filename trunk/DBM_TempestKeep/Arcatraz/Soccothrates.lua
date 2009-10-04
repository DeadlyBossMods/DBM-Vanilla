local Socco = DBM:NewBossMod("Socco", DBM_SOCCO_NAME, DBM_SOCCO_DESCRIPTION, DBM_ARCATRAZ, DBM_TK_TAB, 10);

Socco.Version	= "1.0";
Socco.Author	= "Arta";

Socco:RegisterCombat("COMBAT");

Socco:RegisterEvents(
	"SPELL_CAST_START"
);

Socco:AddOption("WarnKnock", true, DBM_SOCCO_OPTION_KNOCK)

function Socco:OnEvent(event, args)
	if event == "SPELL_CAST_START" then
		if args.spellId == 36512 then
			self:SendSync("Knock")
		end
	end
end

function Socco:OnSync(msg)
	if msg == "Knock" and self.Options.WarnKnock then
		self:Announce(DBM_SOCCO_WARN_KNOCK, 3)
	end
end

