local Vex = DBM:NewBossMod("Vex", DBM_VEXALLUS_NAME, DBM_VEXALLUS_DESCRIPTION, DBM_TERRACE, DBM_TERRACE_TAB, 2)

Vex.Version		= "1.0"
Vex.Author		= "Arta"

Vex:SetCreatureID(24744)
Vex:RegisterCombat("combat")

Vex:RegisterEvents(
	"CHAT_MSG_MONSTER_EMOTE" 
)

Vex:AddOption("WarnEnergy", true, DBM_VEXALLUS_OPTION_ENERGY)

function Vex:OnEvent(event, args)
	if event == "CHAT_MSG_MONSTER_EMOTE" then
		if args == DBM_VEXALLUS_CHECK_ENERGY then
			self:SendSync("Energy")
		end
	end
end

function Vex:OnSync(msg)
	if msg == "Energy" then
		if self.Options.WarnEnergy then
			self:Announce(DBM_VEXALLUS_WARN_ENERGY, 3)
		end
	end
end
