local mod	= DBM:NewMod("STTrashSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")

mod.isTrashMod = true

mod:RegisterEvents(
	"SPELL_SUMMON"
)

mod:AddNamePlateOption("GhostNameplates", 12095)

function mod:SPELL_SUMMON(args)
	if args:IsSpell(12095) and self.Options.GhostNameplates then
		DBM:FireEvent("BossMod_EnableHostileNameplates")
		DBM.Nameplate:Show(true, args.destGUID, 12095, 132094, 15.7) -- Texture: Ability_creature_cursed_02
		self:Unschedule(DBM.FireEvent)
		self:Schedule(20, DBM.FireEvent, DBM, "BossMod_DisableHostileNameplates")
	end
end
