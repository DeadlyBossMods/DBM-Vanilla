local Syth = DBM:NewBossMod("Syth", DBM_SYTH_NAME, DBM_SYTH_DESCRIPTION, DBM_SETHEKK, DBM_AUCH_TAB, 7);

Syth.Version		= "1.0";
Syth.Author		= "Arta";

Syth:RegisterCombat("COMBAT");

Syth:RegisterEvents(
	"SPELL_CAST_START"
);

Syth:AddOption("WarnSummon", true, DBM_SYTH_OPTION_SUMMON)

function Syth:OnEvent(event, args)
	if event == "SPELL_CAST_START" then
		if args.spellId == 33537 or args.spellId == 33538 or args.spellId == 33539 or args.spellId == 33540 then
			self:SendSync("Summon")
		end
	end
end

function Syth:OnSync(msg)
	if msg == "Summon" and self.Options.WarnSummon then
		self:Announce(DBM_SYTH_WARN_SUMMON, 3)
	end
end