local Thorngrin = DBM:NewBossMod("Thorngrin", DBM_THORNGRIN_NAME, DBM_THORNGRIN_DESCRIPTION, DBM_BOTANICA, DBM_TK_TAB, 6)

Thorngrin.Version	= "1.0"
Thorngrin.Author	= "Arta"

Thorngrin:SetCreatureID(17978)
Thorngrin:RegisterCombat("combat")

Thorngrin:RegisterEvents(
	"SPELL_AURA_APPLIED"
)

Thorngrin:AddOption("WarnSacrifice", true, DBM_THORNGRIN_OPTION_SACRIFICE)
Thorngrin:AddBarOption("Next sacrifice")

function Thorngrin:OnEvent(event, args)
	if event == "SPELL_AURA_APPLIED" then
		if args.spellId == 34661 and args.destName then
			self:SendSync("Sacrifice"..tostring(args.destName))
		end
	end
end

function Thorngrin:OnSync(msg)
	if msg:sub(0,9) == "Sacrifice" then
		msg = msg:sub(10)
		self:StartStatusBarTimer(8, "Sacrificing: "..msg, 34661)
		self:StartStatusBartimer(22, "Next sacrifice", 34661)
		if self.Options.WarnSacrifice then
			self:Announce(DBM_THORNGRIN_WARN_SACRIFICE:format(msg), 3)
		end
	end
end 