local mod	= DBM:NewMod("NaxxTrash", "DBM-Raids-Vanilla", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod.isTrashMod = true
mod:SetZone(533)

mod:RegisterEvents(
	"SPELL_SUMMON 28294"
)

local specWarnLightningTotem		= mod:NewSpecialWarningSwitch(28294, nil, nil, nil, 1, 2)

function mod:SPELL_SUMMON(args)
	if args:IsSpell(28294) then -- Happens ~1 time per trash pack, no antispam in case you pull two packs and both summon shortly after each other
		specWarnLightningTotem:Show()
		specWarnLightningTotem:Play("attacktotem")
	end
end
