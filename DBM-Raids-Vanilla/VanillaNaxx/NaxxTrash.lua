local mod	= DBM:NewMod("NaxxTrash", "DBM-Raids-Vanilla", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:DisableHardcodedOptions()
mod.isTrashMod = true
mod:SetZone(533)
mod:RegisterZoneCombat(533)

mod:RegisterEvents(
	"SPELL_CAST_SUCCESS 19134 27990 28431 28440",
	"SPELL_SUMMON 28294"
)

local warnIntimidatingShout		= mod:NewSpellAnnounce(19134, 2)
local warnFear					= mod:NewSpellAnnounce(27990, 2)
local specWarnLightningTotem	= mod:NewSpecialWarningSwitch(28294, "Dps", nil, nil, 3, 2, nil, nil, "attacktotem")
local warnPoisonCharge			= mod:NewSpellAnnounce(28431, 2)
local warnVeilofShadow			= mod:NewSpellAnnounce(28440, 2, nil, "RemoveCurse|Healer")

mod:AddSpeedClearOption("Naxx", true)

--Speed Clear variables
mod.vb.firstEngageTime = nil

--Request speed clear variables, in case it was already started before mod loaded
mod:SendSync("IsNaxxStarted")

function mod:SPELL_SUMMON(args)
	if args:IsSpell(28294) then -- Happens ~1 time per trash pack, no antispam in case you pull two packs and both summon shortly after each other
		specWarnLightningTotem:Show()
		specWarnLightningTotem:Play("attacktotem")
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(19134) and self:AntiSpam(3) then
		warnIntimidatingShout:Show()
	elseif args:IsSpell(27990) and self:AntiSpam(5) then
		warnFear:Show()
	elseif args:IsSpell(28431) and self:AntiSpam(3, 1) then
		warnPoisonCharge:Show()
	elseif args:IsSpell(28440) and self:AntiSpam(6, 2) then
		warnVeilofShadow:Show()
	end
end

function mod:StartEngageTimers(guid, cid, delay)
	if cid == 15977 or cid == 16244 or cid == 16243 or cid == 16146 or cid == 16154 or cid == 15974 or cid == 15975 or cid == 15976 or cid == 16017 then
		if not self.vb.firstEngageTime then
			self.vb.firstEngageTime = GetServerTime()
			if self.Options.FastestClear4 and self.Options.SpeedClearTimer then
				--Custom bar creation that's bound to core, not mod, so timer doesn't stop when mod stops it's own timers
				DBT:CreateBar(self.Options.FastestClear4, DBM_CORE_L.SPEED_CLEAR_TIMER_TEXT, 136106)
			end
			self:SendSync("NaxxStarted", self.vb.firstEngageTime)--Also sync engage time
		end
	end
end

--Abort timers when all players out of combat, so NP timers clear on a wipe
--Caveat, it won't call stop with GUIDs, so while it might terminate bar objects, it may leave lingering nameplate icons
function mod:LeavingZoneCombat()
	self:Stop(true)
end

function mod:OnSync(msg, startTime)
	--Sync recieved with start time and ours is currently not started
	if msg == "NaxxStarted" and startTime and not self.vb.firstEngageTime then
		self.vb.firstEngageTime = tonumber(startTime)
		if self.Options.FastestClear4 and self.Options.SpeedClearTimer then
			--Custom bar creation that's bound to core, not mod, so timer doesn't stop when mod stops it's own timers
			local adjustment = GetServerTime() - self.vb.firstEngageTime
			DBT:CreateBar(self.Options.FastestClear4 - adjustment, DBM_CORE_L.SPEED_CLEAR_TIMER_TEXT, 136106)
		end
	elseif msg == "IsNaxxStarted" and self.vb.firstEngageTime then
		--Sadly this has to be done with two syncs, one for variables for bosses that have been killed and one to instruct starting of timer
		self:SendSync("NaxxStarted", self.vb.firstEngageTime)
	end
end
