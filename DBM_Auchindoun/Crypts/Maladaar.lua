local Maladaar = DBM:NewBossMod("Maladaar", DBM_MALADAAR_NAME, DBM_MALADAAR_DESCRIPTION, DBM_CRYPTS, DBM_AUCH_TAB, 6)

Maladaar.Version	= "1.1"
Maladaar.Author		= "Arta"

Maladaar:SetCreatureID(18373)
Maladaar:RegisterCombat("combat")

Maladaar:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED"
)

Maladaar:AddOption("WarnSoul", true, DBM_MALADAAR_OPTION_SOUL)
Maladaar:AddOption("WarnAvatar", false, DBM_MALADAAR_OPTION_AVATAR)

function Maladaar:OnEvent(event, args)
	if event == "SPELL_AURA_APPLIED" then
		if args.spellId == 32346 and args.destName then
			self:SendSync("Soul"..tostring(args.destName))
		end
	elseif event == "SPELL_CAST_START" then
		if args.spellId == 32424 then
			self:SendSync("Avatar")
		end
	end
end

function Maladaar:OnSync(msg)
	if msg:sub(0,4) == "Soul" and self.Options.WarnSoul then
		msg = msg:sub(5)
		self:Announce(DBM_MALADAAR_WARN_SOUL:format(msg))
	elseif msg == "Avatar" and self.Options.WarnAvatar then
		self:Announce(DBM_MALADAAR_WARN_AVATAR)
	end
end