local Kalithresh = DBM:NewBossMod("Kalithresh", DBM_KALITHRESH_NAME, DBM_KALITHRESH_DESCRIPTION, DBM_STEAMVAULTS, DBM_COILFANG_TAB, 10)

Kalithresh.Version	= "1.0"
Kalithresh.Author	= "Arta"

Kalithresh:SetCreatureID(17798)
Kalithresh:RegisterCombat("combat")

Kalithresh:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_CAST_SUCCESS"	
)

Kalithresh:AddOption("WarnChannel", true, DBM_KALITHRESH_OPTION_CHANNEL)
Kalithresh:AddOption("WarnReflect", true, DBM_KALITHRESH_OPTION_REFLECT)

function Kalithresh:OnEvent(event, args)
	if event == "SPELL_AURA_APPLIED" then
		if args.spellId == 31534 then
			self:SendSync("Reflect")
		end
	elseif event == "SPELL_AURA_SUCCESS" then
		if args.spellId == 31543 then
			self:SendSync("Channel")
		end
	end
end

function Kalithresh:OnSync(msg)
	if msg == "Channel" and self.Options.WarnChannel then
		self:Announce(DBM_KALITHRESH_WARN_CHANNEL, 3)
	elseif msg == "Reflect" and self.Options.WarnReflect then
		self:Announce(DBM_KALITHRESH_WARN_REFLECT, 3)
	end

end