local mod = DBM:NewMod("Delrissa", "DBM-Party-BC", 16)
local L = mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))

mod:SetCreatureID(24560, 24557, 24558, 24554, 24561, 24559, 24555, 24553, 24556)--24560 is main boss.
mod:SetModelID(22596)
--"combat" only fails if you were already in combat before pulling her (ie, you out level the zone and just chain pulled her with trash).
mod:RegisterCombat("yell", L.DelrissaPull)
mod:RegisterKill("yell", L.DelrissaEnd)
--Pretty sure she dies, so probably can just register kill using UNIT_DIED 24560

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS",
	"SPELL_AURA_APPLIED"
)

local warnFlashHeal		= mod:NewSpellAnnounce(17843, 3)
local warnLHW           = mod:NewSpellAnnounce(46181, 3)
local warnWindFury		= mod:NewSpellAnnounce(27621, 2, nil, false)
local warnBlizzard		= mod:NewSpellAnnounce(46195, 2)
local warnRenew         = mod:NewSpellAnnounce(46192, 3)
local warnSoC           = mod:NewTargetAnnounce(44141, 2)
local warnPolymorph     = mod:NewTargetAnnounce(13323, 4)
local warnPWShield      = mod:NewTargetAnnounce(44175, 2, nil, false)

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(17843) and self:IsInCombat() then                                -- Delrissa's Flash Heal
		warnFlashHeal:Show()
	elseif args:IsSpellID(44256, 46181) then                                           -- Apoko's LHW
		warnLHW:Show()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(27621) and self:IsInCombat() then                                -- Apoko's Windfury Totem
		warnWindFury:Show()
	elseif args:IsSpellID(44178, 46195) then                                           -- Yazzai's Blizzard
		warnBlizzard:Show()
	elseif args:IsSpellID(44174, 46192) and not args:IsDestTypePlayer() then           -- Delrissa's Renew
		warnRenew:Show(args.destName)
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(13323) and self:IsInCombat() then                                -- Yazzai's Polymorph
		warnPolymorph:Show(args.destName)
	elseif args:IsSpellID(44141) then                                                  -- Ellrys SoC
		warnSoC:Show(args.destName)
	elseif args:IsSpellID(44175, 44291, 46193) and not args:IsDestTypePlayer() then    -- Delrissa's PWShield
		warnPWShield:Show(args.destName)
	end
end