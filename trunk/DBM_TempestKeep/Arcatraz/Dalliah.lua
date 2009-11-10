local Dalliah = DBM:NewBossMod("Dalliah", DBM_DALLIAH_NAME, DBM_DALLIAH_DESCRIPTION, DBM_ARCATRAZ, DBM_TK_TAB, 11)

Dalliah.Version	= "1.0"
Dalliah.Author	= "Arta"

Dalliah:SetCreatureID(20885)
Dalliah:RegisterCombat("combat")

Dalliah:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED"
)

Dalliah:AddOption("WarnHeal", true, DBM_DALLIAH_OPTION_HEAL)
Dalliah:AddOption("WarnWW", true, DBM_DALLIAH_OPTION_WW)
Dalliah:AddOption("WarmGift", trye, DBM_DALLIAH_OPTION_GIFT)

Dalliah:AddBarOption("Gift")

function Dalliah:OnEvent(event, args)
	if event == "SPELL_CAST_START" then
		if args.spellId == 39013 then
			self:SendSync("Heal")
		elseif args.spellId == 36142 then
			self:SendSync("WW")
		end
	elseif event == "SPELL_AURA_APPLIED" then
		if args.spellId == 39009 and args.destName then
			self:SendSync("Gift"..tostring(args.destName))
		end
	end
end

function Dalliah:OnSync(msg)
	if msg == "Heal" and self.Options.WarnHeal then
		self:Announce(DBM_DALLIAH_WARN_HEAL, 3)
	elseif msg == "WW" and self.Options.WarnWW then
		self:Announce(DBM_DALLIAH_WARN_WW, 3)
	elseif msg:sub(0,4) == "Gift" and self.Options.WarnGift then
		target = msg:sub(5)
		self:Announce(DBM_DALLIAH_WARN_GIFT:format(target), 3)
		self:StartStatusTimerBar(10, "Gift")
	end
end
