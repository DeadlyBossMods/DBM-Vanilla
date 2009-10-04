local Gyrokill = DBM:NewBossMod("Gyrokill", DBM_GYROKILL_NAME, DBM_GYROKILL_DESCRIPTION, DBM_MECHANAR, DBM_TK_TAB, 0);

Gyrokill.Version	= "1.0";
Gyrokill.Author	= "Arta";

Gyrokill:RegisterCombat("COMBAT");

Gyrokill:AddOption("WarnShadow", true, DBM_GYROKILL_OPTION_SHADOW)
Gyrokill:AddBarOption("Shadow Power")

Gyrokill:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED"
);

function Gyrokill:OnEvent(event, args)
	if event == "SPELL_CAST_START" then
		if args.spellId == 39193 then
			self:SendSync("Shadow")
		end
	elseif event == "SPELL_AURA_APPLIED" then
		if args.spellId == 39193 then
			self:SendSync("ShadowApplied")
		end
	elseif event == "SPELL_AURA_REMOVED" then
		if args.spellId == 39193 then
			self:SendSync("ShadowRemoved")
		end
	end
end

function Gyrokill:OnSync(msg)
	if msg == "Shadow" and self.Options.WarnShadow then
		self:Announce(DBM_GYROKILL_WARN_SHADOW, 3)
	elseif msg == "ShadowApplied" and self.Options.WarnShadow then
		self:Announce(DBM_GYROKILL_WARN_SHADOWAURA, 3)
		self:StartStatusBarTimer(15, "Shadow Power", 39193)
	elseif msg == "ShadowRemoved" then
		self:EndStatusBarTimer("Shadow Power")
	end
end