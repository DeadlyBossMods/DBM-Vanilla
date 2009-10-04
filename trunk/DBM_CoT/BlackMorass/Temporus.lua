local Temporus = DBM:NewBossMod("Temporus", DBM_TEMPORUS_NAME, DBM_TEMPORUS_DESCRIPTION, DBM_BLACK_MORASS, DBM_COT_TAB, 5);

Temporus.Version	= "1.0";
Temporus.Author		= "Arta";

Temporus:RegisterCombat("COMBAT");

Temporus:RegisterEvents(
	"SPELL_AURA_APPLIED"
);

Temporus:AddOption("WarnHasten", true, DBM_TEMPORUS_OPTION_HASTEN)

function Temporus:OnEvent(event, args)
	if event == "SPELL_AURA_APPLIED" then
		if args.spellId == 31458 then
			self:SendSync("Hasten")
		end
	end
end

function Temporus:OnSync(msg)
	if msg == "Hasten" and self.Options.WarnHasten then
		self:Announce(DBM_TEMPORUS_WARN_HASTEN, 3)
	end
end