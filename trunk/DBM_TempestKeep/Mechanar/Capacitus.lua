local Capacitus = DBM:NewBossMod("Capacitus", DBM_CAPACITUS_NAME, DBM_CAPACITUS_DESCRIPTION, DBM_MECHANAR, DBM_TK_TAB, 1)

Capacitus.Version	= "1.0"
Capacitus.Author	= "Arta"

Capacitus:SetCreatureID(19219)
Capacitus:RegisterCombat("combat")

Capacitus:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED"
)

Capacitus:AddOption("WarnEnrage", true, DBM_CAPACITUS_OPTION_ENRAGE)
Capacitus:AddOption("WarnPolarity", true, DBM_CAPACITUS_OPTION_POLARITY)
Capacitus:AddOption("WarnMagic", true, DBM_CAPACITUS_OPTION_MAGIC)
Capacitus:AddOption("WarnDamage", true, DBM_CAPACITUS_OPTION_DAMAGE)

function Capacitus:OnCombatStart(delay)
	if GetInstanceDificulty() == 2 then
		self:StartStatusTimerBar(180 - delay, "Enrage")
		self:ScheduleSelf(135 - delay, "Enrage", 45)
		self:ScheduleSelf(165 - delay, "Enrage", 15)
	end
end

function Capacitus:OnEvent(event, args)
	if event == "SPELL_CAST_START" then
		if args.spellId == 39096 then
			self:SendSync("Polarity")
		end
	elseif event == "SPELL_AURA_APPLIED" then
		if args.spellId == 35158 then
			self:SendSync("Magic")
		elseif args.spellId == 35159 then
			self:SendSync("Damage")
		end
	elseif event == "Enrage" and type(args) == "number" and self.Options.WarnEnrage then
		self:Announce(string.format(DBM_CAPACITUS_WARN_ENRAGE, args, DBM_SEC), 3)
	end
end

function Capacitus:OnSync(msg)
	if msg == "Polarity" and self.Options.WarnPolarity then
		self:Announce(DBM_CAPACITUS_WARN_POLARITY, 3)
	elseif msg == "Magic" and self.Options.WarnMagic then
		self:Announce(DBM_CAPACITUS_WARN_MAGIC, 3)
	elseif msg == "Damage" and self.Options.WarnDamage then
		self:Announce(DBM_CAPACITUS_WARN_DAMAGE, 3)
	end
end