local Ikiss = DBM:NewBossMod("Ikiss", DBM_IKISS_NAME, DBM_IKISS_DESCRIPTION, DBM_SETHEKK, DBM_AUCH_TAB, 8);

Ikiss.Version		= "1.0";
Ikiss.Author		= "Arta";

Ikiss:RegisterCombat("COMBAT");

Ikiss:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS",
	"SPELL_AURA_APPLIED"
);

Ikiss:AddOption("WarnAE", true, DBM_IKISS_OPTION_AE)
Ikiss:AddOption("WarnPoly", true, DBM_IKISS_OPTION_POLY)

function Ikiss:OnEvent(event, args)
	if event == "SPELL_CAST_START" or "SPELL_CAST_SUCCESS" then
		if args.spellId == 1953 then
			self:SendSync("Blink")
		end
	elseif event == "SPELL_AURA_APPLIED" then
		if args.spellId == 12826 and args.destName then
			self:SendSync("Poly"..tostring(args.destName))
		end
	end
end

function Ikiss:OnSync(msg)
	if msg == "Blink" and self.Options.WarnAE then
		self:Announce(DBM_IKISS_WARN_AE, 3)
	elseif msg:sub(0,4) == "Poly" and self.Options.WarnPoly then
		msg = msg:sub(5)
		self:Announce(DBM_IKISS_WARN_POLY:format(msg), 3)
	end
end