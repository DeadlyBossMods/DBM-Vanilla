local Aeonus = DBM:NewBossMod("Aeonus", DBM_AEONUS_NAME, DBM_AEONUS_DESCRIPTION, DBM_BLACK_MORASS, DBM_COT_TAB, 6)

Aeonus.Version	= "1.0"
Aeonus.Author	= "Arta"

Aeonus:SetCreatureID(17881)
Aeonus:RegisterCombat("combat")

Aeonus:RegisterEvents(
	"CHAT_MSG_MONSTER_EMOTE"
)
Aeonus:AddOption("WarnFrenzy", true, DBM_AEONUS_OPTION_FENZY)

function Aeonus:OnEvent(event, args)
	if event == "CHAT_MSG_MONSTER_EMOTE" then
		if args == DBM_AEONUS_CHECK_FRENZY then
			self:SendSync("Frenzy")
		end
	end
end

function Aeonus:OnSync(msg)
	if msg == "Frenzy" and self.Options.WarnFrenzy then
		self:Announce(DBM_AEONUS_WARN_FRENZY, 3)
	end
end