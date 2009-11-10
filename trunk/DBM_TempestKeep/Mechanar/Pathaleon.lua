local Pathaleon = DBM:NewBossMod("Pathaleon", DBM_PATHALEON_NAME, DBM_PATHALEON_DESCRIPTION, DBM_MECHANAR, DBM_TK_TAB, 3)

Pathaleon.Version	= "1.0"
Pathaleon.Author	= "Arta"

Pathaleon:SetCreatureID(19220)
Pathaleon:RegisterCombat("combat")

Pathaleon:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED"
)

Pathaleon:AddOption("WarnSummon", true, DBM_PATHALEON_OPTION_SUMMON)
Pathaleon:AddOption("WarnMC", true, DBM_PATHALEON_OPTION_MC)

function Pathaleon:OnEvent(event, args)
	if event == "SPELL_CAST_START" then
		if args.spellId == 35285 then
			self:SendSync("Summon")
		end
	elseif event == "SPELL_AURA_APPLIED" then
		if args.spellId == 35280 and args.destName then
			self:SendSync("MC"..tostring(args.destName))
		end
	end
end

function Pathaleon:OnSync(msg)
	if msg == "Summon" and self.Options.WarnSummon then
		self:Announce(DBM_PATHALEON_WARN_SUMMON, 3)
	elseif msg:sub(0,2) == "MC" and self.Options.WarnMC then
		msg = msg:sub(3)
		self:Announce(DBM_PATHALEON_WARN_MS:format(msg), 3)
	end
end