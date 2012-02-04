local mod	= DBM:NewMod("BlackKnight", "DBM-Party-WotLK", 13)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 4499 $"):sub(12, -3))
mod:SetCreatureID(35451, 10000)		-- work around, DBM API failes to handle a Boss to die, rebirth, die again, rebirth again and die to loot...
mod:SetModelID(29837)
mod:SetUsedIcons(8)

mod:RegisterCombat("combat")
mod:RegisterKill("yell", L.YellCombatEnd)

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED",
	"SPELL_DAMAGE",
	"SPELL_MISSED",
	"CHAT_MSG_MONSTER_YELL"
)

local warnExplode			= mod:NewAnnounce("warnExplode", 4, 67886)
local warnGhoulExplode		= mod:NewTargetAnnounce(67751, 4)
local warnMarked			= mod:NewTargetAnnounce(67823, 3)

local specWarnDesecration	= mod:NewSpecialWarningMove(67876)
local specWarnExplode		= mod:NewSpecialWarningRun(67751, mod:IsMelee())

local timerCombatStart		= mod:NewTimer(55.5, "TimerCombatStart", 2457)
local timerMarked			= mod:NewTargetTimer(10, 67823)
local timerExplode			= mod:NewCastTimer(4, 67886)

local soundExplode	 		= mod:NewSound(67751, nil, mod:IsMelee())
mod:AddBoolOption("SetIconOnMarkedTarget", true)
mod:AddBoolOption("AchievementCheck", false, "announce")

local warnedfailed = false
local lastexplode = 0

function mod:OnCombatStart(delay)
	warnedfailed = false
	lastexplode = 0
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(67729, 67886) and GetTime() - lastexplode > 2 then
		warnExplode:Show()
		specWarnExplode:Show()
		soundExplode:Play()
		timerExplode:Start()
		lastexplode = GetTime()
	end
end

do 
	local lastdesecration = 0
	function mod:SPELL_DAMAGE(sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellId)
		if (spellId == 67781 or spellId == 67876) and destGUID == UnitGUID("player") and GetTime() - lastdesecration > 3 then
			specWarnDesecration:Show()
			lastdesecration = GetTime()
		elseif spellId == 67886 then
			if self.Options.AchievementCheck and not warnedfailed then
				SendChatMessage(L.AchievementFailed:format(destName), "PARTY")
				warnedfailed = true
			end
		end
	end
	mod.SPELL_MISSED = mod.SPELL_DAMAGE
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(67823, 67882) and args:IsDestTypePlayer() then
		if self.Options.SetIconOnMarkedTarget then
			self:SetIcon(args.destName, 8, 10)
		end
		warnMarked:Show(args.destName)
		timerMarked:Show(args.destName)
	elseif args:IsSpellID(67751) and GetTime() - lastexplode > 2 then	-- Ghoul Explode (BK exlodes Army of the dead. Phase 3)
		warnGhoulExplode:Show(args.destName)
		specWarnExplode:Show()
		soundExplode:Play()
		lastexplode = GetTime()
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.Pull or msg:find(L.Pull) then
		timerCombatStart:Start()
	end
end