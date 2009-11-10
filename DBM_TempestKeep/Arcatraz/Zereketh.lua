local Zereketh = DBM:NewBossMod("Zereketh", DBM_ZEREKETH_NAME, DBM_ZEREKETH_DESCRIPTION, DBM_ARCATRAZ, DBM_TK_TAB, 9)

Zereketh.Version	= "1.0"
Zereketh.Author		= "Arta"

Zereketh:SetCreatureID(20870)
Zereketh:RegisterCombat("combat")

Zereketh:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED"
)

Zereketh:AddOption("WarnNova", true, DBM_ZEREKETH_OPTION_NOVA)
Zereketh:AddOption("WarnVoid", true, DBM_ZEREKETH_OPTION_VOID)
Zereketh:AddOption("WarnSOC", true, DBM_ZEREKETH_OPTION_SOC)
Zereketh:AddOption("IconSOC", true, DBM_ZEREKETH_OPTION_ICON)

function Zereketh:OnEvent(event, args)
	if event == "SPELL_CAST_START" then
		if args.spellId == 39005 then
			self:SendSync("Nova")
		elseif args.spellId == 36119 or args.spellId == 30533 then
			self:SendSync("Void")
		end
	elseif event == "SPELL_AURA_APPLIED" then
		if (args.spellId == 39367 or args.spellId == 32863) and args.destName then
			self:SendSync("SOC"..tostring(args.destName))
		end
	end
end

function Zereketh:OnSync(msg)
	if msg == "Nova" and self.Options.WarnNova then
		self:Announce(DBM_ZEREKETH_WARN_NOVA, 3)
	elseif msg == "Void" and self.Options.WarnVoid then
		self:Announce(DBM_ZEREKETH_WARN_VOID, 3)
	elseif msg:sub(0,3) == "SOC" then
		target = msg:sub(4)
		if self.Options.WarnSOC then
			self:Announce(DBM_ZEREKETH_WARN_SOC:format(target), 3)
		end
		if self.Options.IconSOC then
			self:SetIcon(target, 15)
		end
	end
end