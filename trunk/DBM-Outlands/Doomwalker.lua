local mod	= DBM:NewMod("Doomwalker", "DBM-Outlands")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 183 $"):sub(12, -3))
mod:SetCreatureID(17711)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED"
)

local warningChargeSoon		= mod:NewSoonAnnounce(32637, 2)
local warnCharge			= mod:NewSpellAnnounce(32637, 3)
local warningQuakeSoon		= mod:NewSoonAnnounce(32686, 2)
local warnQuake				= mod:NewSpellAnnounce(32686, 3)

local timerChargeCD			= mod:NewCDTimer(42, 32637)
local timerQuakeCD			= mod:NewCDTimer(52, 32686)
local timerQuake			= mod:NewBuffActiveTimer(8, 32686)

mod:AddBoolOption("RangeFrame", true)

local lastQuake = 0
local lastCharge = 0

function mod:OnCombatStart(delay)
	lastQuake = 0
	lastCharge = 0
	if self.Options.RangeFrame then
		DBM.RangeCheck:Show(10)
	end
end

function mod:OnCombatEnd()
	if self.Options.RangeFrame then
		DBM.RangeCheck:Hide()
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(32637) and GetTime() - lastCharge > 10 then
		warnCharge:Show()
		timerChargeCD:Show()
		warningChargeeSoon:Cancel()
		warningChargeSoon:Schedule(36)
		lastCharge = GetTime()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(32686) and GetTime() - lastQuake > 30 then
		warnQuake:Show()
		timerQuake:Start()
		timerQuakeCD:Show()
		warningQuakeSoon:Cancel()
		warningQuakeSoon:Schedule(47)
		lastQuake = GetTime()
	end
end

--[[
function mod:CHAT_MSG_MONSTER_EMOTE(msg)
	if msg == L.DBM_DOOMW_EMOTE_ENRAGE then
--Would prefer to use spell aura for this instead of locals that aren't needed, disabled function
	end
end--]]