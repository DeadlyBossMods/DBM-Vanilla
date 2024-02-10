local mod	= DBM:NewMod("MechanicalMenagerieSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
--mod:SetCreatureID()--(no main boss ID?)
mod:SetEncounterID(2935)
mod:SetBossHPInfoToHighest()
--mod:SetHotfixNoticeRev(20231201000000)
--mod:SetMinSyncRevision(20231115000000)

--[[
STX-37/CN 218245 (Chicken add?)
STX-25/NB 218244 (Squirrel Add?)
STX-13/LL 218243 (sheep add?)
STX-04/BD 218242 (whelp add?)
--]]

mod:RegisterCombat("combat")

--mod:RegisterEventsInCombat(
--	"SPELL_CAST_START",
--	"SPELL_CAST_SUCCESS",
--	"SPELL_AURA_APPLIED",
--	"SPELL_AURA_APPLIED_DOSE",
--	"SPELL_AURA_REMOVED"
--)

--NOTE: Looks like fight is just with the adds and nothing else?
--I suspect just active Ids should be in mod and 4 inactives ignored
--local warnCorrosion				= mod:NewStackAnnounce(427625, 2, nil, "Tank|Healer")
--local warnDarkProtection		= mod:NewSpellAnnounce(429541, 3)

--local specWarnCorrosiveBlast	= mod:NewSpecialWarningDodge(429168, nil, nil, nil, 2, 2)
--local yellDepthCharge			= mod:NewYell(404806)

--local timerCorrosiveBlastCD		= mod:NewCDTimer(21, 429168, nil, nil, nil, 3)
--local timerCorrosiveBiteCD		= mod:NewCDTimer(6.5, 429207, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK_ICON)


--function mod:OnCombatStart(delay)

--end

--[[
function mod:SPELL_CAST_START(args)
	if args:IsSpell(429168) then

	end
end
--]]

--[[
function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(429207) then

	end
end
--]]

--[[
function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(427625) then

	end
end
--mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED
--]]

--[[
function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(429541) then

	end
end
--]]

--[[
function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 411583 then--Replace Stand with Swim
		self:SendSync("PhaseChange")
	end
end

function mod:OnSync(msg)
	if not self:IsInCombat() then return end
	if msg == "PhaseChange" and self:AntiSpam(30, 2) then

	end
end
--]]
