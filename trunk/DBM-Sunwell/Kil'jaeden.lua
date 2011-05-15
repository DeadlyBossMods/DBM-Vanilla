local mod	= DBM:NewMod("Kil", "DBM-Sunwell")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(25315)
mod:SetModelID(23200)
mod:SetZone()
mod:SetUsedIcons(4, 5, 6, 7, 8)

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS",
	"SPELL_DAMAGE",
	"SPELL_MISSED",
	"CHAT_MSG_MONSTER_YELL",
	"UNIT_HEALTH"
)

local warnBloom			= mod:NewTargetAnnounce(45641, 3)
local warnDarkOrb		= mod:NewAnnounce("WarnDarkOrb", 3, 45109)
local warnDart			= mod:NewSpellAnnounce(45740, 3)
local warnBomb			= mod:NewCastAnnounce(46605, 4)
local warnBombSoon		= mod:NewPreWarnAnnounce(46605, 5, 3)
local warnShield		= mod:NewSpellAnnounce(45848, 3)
local warnBlueOrb		= mod:NewAnnounce("WarnBlueOrb", 3, 45109)
local warnPhase2		= mod:NewPhaseAnnounce(2)
local warnPhase3		= mod:NewPhaseAnnounce(3)
local warnPhase4		= mod:NewPhaseAnnounce(4)

local specWarnBloom		= mod:NewSpecialWarningYou(45641)
local specWarnBomb		= mod:NewSpecialWarningSpell(46605)
local specWarnDarkOrb	= mod:NewSpecialWarning("SpecWarnDarkOrb", false)
local specWarnBlueOrb	= mod:NewSpecialWarning("SpecWarnBlueOrb", false)

local timerBloomCD		= mod:NewCDTimer(20, 45641)
local timerDartCD		= mod:NewCDTimer(20, 45740)
local timerBombCD		= mod:NewCDTimer(45, 46605)
local timerSpike		= mod:NewCastTimer(28, 46680)
local timerBlueOrb		= mod:NewTimer(37, "TimerBlueOrb", 45109)

local berserkTimer		= mod:NewBerserkTimer(600)

mod:AddBoolOption("RangeFrame", true)
mod:AddBoolOption("BloomIcon", true)
mod:AddBoolOption("YellOnBloom", true, "announce")
mod:AddBoolOption("BloomWhisper", false, "announce")

local warnBloomTargets = {}
local bloomIcon = 8
local lastOrb = 0
local phase = 1
local p2_check = false
local p3_check = false
local p4_check = false

local function showBloomTargets()
	warnBloom:Show(table.concat(warnBloomTargets, "<, >"))
	table.wipe(warnBloomTargets)
	bloomIcon = 8
	timerBloomCD:Start()
end

function mod:OnCombatStart(delay)
	table.wipe(warnBloomTargets)
	warnBloomTargets = {}
	bloomIcon = 8
	lastOrb = 0
	phase = 1
	p2_check = false
	p3_check = false
	p4_check = false
	if self.Options.RangeFrame then
		DBM.RangeCheck:Show()
	end
end

function mod:OnCombatEnd()
	DBM.RangeCheck:Hide()
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(45641) then
		warnBloomTargets[#warnBloomTargets + 1] = args.destName
		self:Unschedule(showBloomTargets)
		if self.Options.BloomIcon then
			self:SetIcon(args.destName, bloomIcon)
			bloomIcon = bloomIcon - 1
		end
		if args:IsPlayer() then
			specWarnBloom:Show()
			if self.Options.YellOnBloom then
				SendChatMessage(L.YellBloom, "SAY")
			end
		end
		if IsRaidLeader() and self.Options.BloomWhisper then
			self:SendWhisper(L.BloomWhisper, args.destName)
		end
		if #warnBloomTargets >= 5 then
			showBloomTargets()
		else
			self:Schedule(0.3, showBloomTargets)
		end
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(46605) then
		warnBomb:Show()
		specWarnBomb:Show()
		if phase == 4 then
			timerBombCD:Start(25)
			warnBombSoon:Schedule(20)
		else
			timerBombCD:Start()
			warnBombSoon:Schedule(40)
		end
	elseif args:IsSpellID(45737) then
		warnDart:Show()
		timerDartCD:Start()
	elseif args:IsSpellID(46680) then
		timerSpike:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(45848) then
		warnShield:Show()
	elseif args:IsSpellID(45892) then
		if phase == 2 then
			warnPhase2:Show()
			warnBombSoon:Schedule(72)
			timerBlueOrb:Start()
			timerDartCD:Start(59)
			timerBombCD:Start(77)
		elseif phase == 3 then
			warnPhase3:Show()
			warnBombSoon:Cancel()
			timerBlueOrb:Cancel()
			timerDartCD:Cancel()
			timerBombCD:Cancel()
			warnBombSoon:Schedule(72)
			timerBlueOrb:Start()
			timerDartCD:Start(59)
			timerBombCD:Start(77)
		elseif phase == 4 then
			warnPhase4:Show()
			warnBombSoon:Cancel()
			timerBlueOrb:Cancel()
			timerDartCD:Cancel()
			timerBombCD:Cancel()
			warnBombSoon:Schedule(53)
			timerBlueOrb:Start(45)
			timerDartCD:Start(49)
			timerBombCD:Start(58)
		end
	end
end

function mod:SPELL_DAMAGE(args)
	if args:IsSpellID(45680) and GetTime() - lastOrb > 10 then
		warnDarkOrb:Show()
		specWarnDarkOrb:Show()
		lastOrb = GetTime()
	end
end

function mod:SPELL_MISSED(args)
	if args:IsSpellID(45680) and GetTime() - lastOrb > 10 then
		warnDarkOrb:Show()
		specWarnDarkOrb:Show()
		lastOrb = GetTime()
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.OrbYell1 or msg:find(L.OrbYell1) or msg == L.OrbYell2 or msg:find(L.OrbYell2) or msg == L.OrbYell3 or msg:find(L.OrbYell3) or msg == L.OrbYell4 or msg:find(L.OrbYell4) then
		warnBlueOrb:Show()
		specWarnBlueOrb:Show()
	end
end

function mod:UNIT_HEALTH(uId)
	local cid = self:GetUnitCreatureId(uId)
	if cid == 25315 and not p2_check and UnitHealth(uId)/UnitHealthMax(uId) <= 0.86 then
		phase = 2
		p2_check = true
	elseif cid == 25315 and not p3_check and UnitHealth(uId)/UnitHealthMax(uId) <= 0.56 then
		phase = 3
		p4_check = true
	elseif cid == 25315 and not p4_check and UnitHealth(uId)/UnitHealthMax(uId) <= 0.26 then
		phase = 4
		p4_check = true
	end
end