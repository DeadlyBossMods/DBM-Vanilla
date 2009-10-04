local Laj = DBM:NewBossMod("Laj", DBM_LAJ_NAME, DBM_LAJ_DESCRIPTION, DBM_BOTANICA, DBM_TK_TAB, 7);

Laj.Version	= "1.0";
Laj.Author	= "Arta";

Laj:RegisterCombat("COMBAT");

Laj:RegisterEvents(
	"SPELL_AURA_APPLIED"
);

Laj:AddOption("WarnAllergic", true, DBM_LAJ_OPTION_ALLERGIC)

function Laj:OnEvent(event, args)
	if event == "SPELL_AURA_APPLIED" then
		if args.spellId == 34697 and args.destName then
			self:SendSync("Allergic"..tostring(args.destName))
		end
	end
end

function Laj:OnSync(msg)
	if msg:sub(0,8) == "Allergic" and self.Options.WarnAllergic then
		target = msg:sub(9);
		self:Announce(DBM_LAJ_WARN_ALLERGIC:format(target), 3)
	end
end