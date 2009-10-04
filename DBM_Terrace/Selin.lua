local Selin = DBM:NewBossMod("Selin", DBM_SELIN_NAME, DBM_SELIN_DESCRIPTION, DBM_TERRACE, DBM_TERRACE_TAB, 1)

Selin.Version		= "1.0"
Selin.Author		= "Arta"

Selin:RegisterCombat("YELL", DBM_SELIN_PULL)

Selin:RegisterEvents(
	"CHAT_MSG_MONSTER_EMOTE" 
)

Selin:AddOption("WarnCrystal", true, DBM_SELIN_OPTION_CRYSTAL)

function Selin:OnEvent(event, args)
	if event == "CHAT_MSG_MONSTER_EMOTE" then
		if args == DBM_SELIN_CHECK_CRYSTAL then
			self:SendSync("Crystal")
		end
	end
end

function Selin:OnSync(msg)
	if msg == "Crystal" and self.Options.WarnCrystal then
		self:Announce(DBM_SELIN_WARN_CRYSTAL, 3)
	end
end