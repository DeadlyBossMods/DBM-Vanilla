local Freywinn = DBM:NewBossMod("Freywinn", DBM_FREYWINN_NAME, DBM_FREYWINN_DESCRIPTION, DBM_BOTANICA, DBM_TK_TAB, 5);

Freywinn.Version	= "1.1";
Freywinn.Author		= "Arta";

Freywinn:RegisterCombat("COMBAT");

Freywinn:RegisterEvents(
	"SPELL_CAST_SUCCESS"
);

Freywinn:AddOption("WarnTranq", true, DBM_FREYWINN_OPTION_TRANQ)
Freywinn:AddBarOption("Tranquility")

function Freywinn:OnEvent(event, args)
	if event == "SPELL_CAST_SUCCESS" then
		if args.spellId == 34557 then
			self:SendSync("Tranq")
		end
	end
end

function Freywinn:OnSync(msg)
	if msg == "Tranq" and self.Options.WarnTranq then
		self:Announce(DBM_FREYWINN_WARN_TRANQ);
		self:StartStatusBarTimer(15, "Tranquility", 34557)
	end
end