local Pand = DBM:NewBossMod("Pand", DBM_PAND_NAME, DBM_PAND_DESCRIPTION, DBM_TOMBS, DBM_AUCH_TAB, 1);

Pand.Version	= "1.0";
Pand.Author	= "Arta";

Pand:RegisterCombat("COMBAT");

Pand:RegisterEvents(
	"SPELL_AURA_APPLIED"
);

Pand:AddOption("WarnShell", true, DBM_PAND_OPTION_SHELL);

function Pand:OnEvent(event, args)
	if args.spellId == 32358 or args.spellId == 38759 then
		self:SendSync("Shell")
	end
end

function Pand:OnSync(msg)
	if msg == "Shell"  and self.Options.WarnShell then
		self:Announce(DBM_PAND_WARN_SHELL, 4)
	end
end