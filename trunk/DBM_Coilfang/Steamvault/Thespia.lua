local Thespia = DBM:NewBossMod("Thespia", DBM_THESPIA_NAME, DBM_THESPIA_DESCRIPTION, DBM_STEAMVAULTS, DBM_COILFANG_TAB, 8)

Thespia.Version	= "1.0"
Thespia.Author	= "Arta"

Thespia:SetCreatureID(17797)
Thespia:RegisterCombat("combat")

Thespia:RegisterEvents(
	"SPELL_CAST_SUCCESS"
)

Thespia:AddOption("WarnCloud", true, DBM_THESPIA_OPTION_CLOUD)

function Thespia:OnEvent(event, args)
	if event == "SPELL_CAST_SUCCESS" then
		if args.spellId == 25033 then
			self:SendSync("Cloud")
		end
	end
end

function Thespia:OnSync(msg)
	if msg == "Cloud" and self.Options.WarnCloud then
		self:Announce(DBM_THESPIA_WARN_CLOUD, 3)
	end
end