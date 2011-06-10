local mod	= DBM:NewMod("Ragnaros-Classic", "DBM-MC", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(11502)
mod:SetModelID(11121)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS",
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED",
	"CHAT_MSG_MONSTER_YELL",
	"UNIT_DIED"
)

local warnWrathRag		= mod:NewSpellAnnounce(20566)
local warnSubmergeSoon	= mod:NewAnnounce("WarnSubmergeSoon", "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendBurrow.blp")
local warnSubmerge		= mod:NewAnnounce("WarnSubmerge", "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendBurrow.blp")
local warnEmergeSoon	= mod:NewAnnounce("WarnEmergeSoon", "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendUnBurrow.blp")
local warnEmerge		= mod:NewAnnounce("WarnEmerge", "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendUnBurrow.blp")

local timerWrathRag		= mod:NewNextTimer(30, 20566)
local timerSubmerge		= mod:NewTimer(180, "TimerSubmerge", "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendBurrow.blp")
local timerEmerge		= mod:NewTimer(90, "TimerEmerge", "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendUnBurrow.blp")
local timerCombatStart	= mod:NewTimer(78, "TimerCombatStart", 2457)

local addDied = 0

function mod:OnCombatStart(delay)
	addDied = 0
	timerSubmerge:Start(-delay)
	warnSubmergeSoon:Schedule(170-delay)
	timerWrathRag:Start(27-delay)
end

local function emerged()
	timerEmerge:Cancel()
	warnEmerge:Show()
	timerSubmerge:Start()
--	timerWrathRag:Start()--need to find out what it is first.
	warnSubmergeSoon:Schedule(170)
	addDied = 0
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(20566) then
		warnWrathRag:Show()
		timerWrathRag:Start()
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.Submerge then
		self:SendSync("Submerge")
	elseif msg == L.Pull then
		timerCombatStart:Start()
	end
end

function mod:OnSync(msg)
	if msg == "Submerge" then
		self:Unschedule(emerged)
		warnEmergeSoon:Cancel()
		timerWrathRag:Cancel()
		warnSubmerge:Show()
		timerEmerge:Start()
		warnEmergeSoon:Schedule(80)
		self:Schedule(90, emerged)
	end
end

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 12143 then--Son of Flame
		addDied = addDied + 1
		if addDied == 8 then--After all 8 die he emerges immediately
			self:Unschedule(emerged)
			emerged()
		end
	end
end