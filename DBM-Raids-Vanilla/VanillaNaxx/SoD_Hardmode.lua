if not DBM:IsSeasonal("SeasonOfDiscovery") then return end
local mod	= DBM:NewMod("SoD_NaxxHardmode", "DBM-Raids-Vanilla", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod.isTrashMod = true
mod.isTrashModBossFightAllowed = true
mod:SetZone(533)

mod:RegisterEvents(
	"CHAT_MSG_RAID_WARNING",
	"CHAT_MSG_RAID_BOSS_EMOTE",
	"RAID_BOSS_EMOTE",
	"CHAT_MSG_RAID_BOSS_WHISPER",
	"SPELL_AURA_APPLIED 1219234 1219235 1219058 1218198 1219229 1219060",
	"SPELL_AURA_REMOVED 1219235",
	"SPELL_CAST_SUCCESS 1218210 1219108 1219234",
	"UNIT_AURA player"
)

-- This looks broken as of latest PTR, the SPELL_CAST_SUCCESS are missing. Maybe needs similar logic to BWL, will need a bit more data first
local timerAffix		= mod:NewTimer(31.59, "AffixTimer")
timerAffix.simpType = "next"

local timerBomb			= mod:NewTargetTimer(10, 1219234)
local warnBomb			= mod:NewTargetNoFilterAnnounce(1219235, 4)
local warnEggs			= mod:NewAnnounce("WarnEggs", 1, "132832")

local specWarnAoe		= mod:NewSpecialWarningDodge(1219235, nil, nil, nil, 2, 2)
local specWarnBomb		= mod:NewSpecialWarningYou(1219235, nil, nil, nil, 3, 2)
local specWarnOrders	= mod:NewSpecialWarning("SpecWarnOrders", nil, nil, nil, 1, 2)

local yellBomb			= mod:NewYell(1219235)
local yellBombRepeat	= mod:NewIconFadesYell(1219235)

mod:AddBoolOption("AutomateEmotes", true)
mod:AddSetIconOption("SetIconOnBombs", 1219235, true, 0, {1, 2, 3})

-- Affixes are on a 31.59s global loop but only do something in combat.
-- "<259.93 02:27:27> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5528-533-738-237752-000065EF52#(DNT) Affix Manager Stalker##nil#1218210#(DNT) Force Cast Egg Summon#nil#nil#nil#nil#nil#nil",
-- "<259.94 02:27:27> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5528-533-738-237752-000065EF52#(DNT) Affix Manager Stalker##nil#1219108#Marching Orders#nil#nil#nil#nil#nil#nil",
-- "<259.94 02:27:27> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5528-533-738-237752-000065EF52#(DNT) Affix Manager Stalker##nil#1219234#Overcharged#nil#nil#nil#nil#nil#nil",
-- "<291.53 02:27:59> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5528-533-738-237752-000065EF52#(DNT) Affix Manager Stalker##nil#1218210#(DNT) Force Cast Egg Summon#nil#nil#nil#nil#nil#nil",
-- "<291.53 02:27:59> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5528-533-738-237752-000065EF52#(DNT) Affix Manager Stalker##nil#1219108#Marching Orders#nil#nil#nil#nil#nil#nil",
-- "<291.53 02:27:59> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5528-533-738-237752-000065EF52#(DNT) Affix Manager Stalker##nil#1219234#Overcharged#nil#nil#nil#nil#nil#nil",
-- "<323.12 02:28:30> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5528-533-738-237752-000065EF52#(DNT) Affix Manager Stalker##nil#1218210#(DNT) Force Cast Egg Summon#nil#nil#nil#nil#nil#nil",
-- "<323.12 02:28:30> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5528-533-738-237752-000065EF52#(DNT) Affix Manager Stalker##nil#1219108#Marching Orders#nil#nil#nil#nil#nil#nil",
-- "<323.12 02:28:30> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5528-533-738-237752-000065EF52#(DNT) Affix Manager Stalker##nil#1219194#Fungal Contagion#nil#nil#nil#nil#nil#nil",
-- "<323.12 02:28:30> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5528-533-738-237752-000065EF52#(DNT) Affix Manager Stalker##nil#1219234#Overcharged#nil#nil#nil#nil#nil#nil",

-- Plague Quarter affix happens every 5.27s (syncs up every 6 casts)
-- "<270.46 02:27:38> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5528-533-738-237752-000065EF52#(DNT) Affix Manager Stalker##nil#1219194#Fungal Contagion#nil#nil#nil#nil#nil#nil",
-- "<275.72 02:27:43> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5528-533-738-237752-000065EF52#(DNT) Affix Manager Stalker##nil#1219194#Fungal Contagion#nil#nil#nil#nil#nil#nil",
-- "<280.99 02:27:48> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5528-533-738-237752-000065EF52#(DNT) Affix Manager Stalker##nil#1219194#Fungal Contagion#nil#nil#nil#nil#nil#nil",


-- Military Quarter: Marching Orders (Debuff: 1219058, Stalker cast: 1219108)
-- Basically you have to do a given emote and you get a run speed buff if you do. Nothing really happened if you don't on PTR, probably bugged.
-- Sadly DoEmote() is not protected, so this will be automated, effectively removing the entire Affix.
-- While I honestly would prefer to not implement the automation, the sad truth is that users will be unhappy if we don't support this
-- since the implementation is trivial and everyone will be doing that. I hope they just make DoEmote protected or something :/

-- Arachnid Quarter: Abhorrent Infestation (Debuff: 1218198, Stalker cast: 1218210)
-- Exploding Eggs, can't really do anything cause you can't target them.
-- Eggs do a tiny amount of damage and knock back, unfortunately first thing you see in the logs is 0.1 seconds before they go boom.

-- Plague Quarter: Fungal Contagion (Debuff: 1219114, Stalker cast: 1219194)
-- Shrooms, very similar to the eggs, but they have a poison cloud that buffs you with +speed and +damage taken.
-- Can't really do anything except maybe a timer for when they explode.

-- Construct Quarter: Lightning (Debuff: 1219229, Stalker cast: 1219234)
-- Random players, usually 1-3 (? but in some instances everyone which seemed buggy) get a debuff (1219234) that is basically a 5 sec bomb.
-- When that debuff expires you and nearby players get another debuff (1219235) that increases your attack and casting speed,
-- but also causes AoE damage (physical) to everyone, last 30 sec. This can stack.

local emoteList = {} -- TODO: cut this down to the actual list of emotes once we're sure about it
for i = 1, 1000 do -- list is non-contiguous for some reason
	local emoteToken = _G["EMOTE" .. i .. "_TOKEN"]
	if type(emoteToken) == "string" then
		-- Important: don't use the emotes directly, the tokens aren't localized, we need the commands which have localized variants
		for cmd = 1, 4 do
			local emoteCmd = _G["EMOTE" .. i .. "_CMD" .. cmd]
			if type(emoteCmd) == "string" then
				emoteCmd = emoteCmd:match("^/(.*)")
				if emoteCmd then
					emoteCmd = emoteCmd:upper() or emoteCmd -- at least the translations seem to retain that the emotes are always uppercase (only checked for deDE)
					emoteList[emoteCmd] = emoteToken
				end
			end
		end
	end
end

-- "<113.80 01:10:37> [CLEU] SPELL_AURA_APPLIED#Player-5610-0037EB5F#Tandanu#Player-5610-0037EB5F#Tandanu#1219060#Marching Orders#DEBUFF#nil#nil#nil#nil#nil",
-- "<114.04 01:10:37> [CHAT_MSG_RAID_WARNING] Show me your best ROAR!#Tandanu###Tandanu##0#0##0#3009#Player-5610-0037EB5F#0#false#false#false#false",
-- "<118.85 01:10:42> [CLEU] SPELL_AURA_APPLIED#Player-5610-0037EB5F#Tandanu#Player-5610-0037EB5F#Tandanu#1219072#Orders complete!#BUFF#nil#nil#nil#nil#nil",
-- "<118.85 01:10:42> [CLEU] SPELL_AURA_REMOVED#Player-5610-0037EB5F#Tandanu#Player-5610-0037EB5F#Tandanu#1219060#Marching Orders#DEBUFF#nil#nil#nil#nil#nil",

local sentRaidWarnings = {}
hooksecurefunc("SendChatMessage", function(msg, channel)
	if channel == "RAID_WARNING" then
		sentRaidWarnings[msg] = GetTime()
	end
end)

function mod:DoEmote(emote, isGuess)
	self:AntiSpam(5, "MarchingOrders") -- This prevents the special warning fallback from triggering
	if DBM.Test.testRunning then
		self:TestTrace("DoEmote", emote)
	else
		DoEmote(emote)
		self:Schedule(0.2, DoEmote, emote)
	end
	self:UnscheduleMethod("OrderFallback")
	self:ScheduleMethod(0.5, "OrderFallback", emote)
	if isGuess then
		self:AddMsg(L.AutomatedEmoteGuess:format(emote))
	else
		self:AddMsg(L.AutomatedEmote:format(emote))
	end
end

function mod:TryHandleOrders(msg, event)
	if not DBM:UnitDebuff("player", 1219060) or not msg or msg == "" then
		return
	end
	if not self:AntiSpam(0.2, "TryHandleOrders") then
		return
	end
	if self.Options.AutomateEmotes then
		-- The easy case: we know the full string from localization, no filtering except on the debuff, we just do what the emote wants from us
		if msg == L.OrderDance then
			return self:DoEmote("DANCE")
		elseif msg == L.OrderRoar then
			return self:DoEmote("ROAR")
		elseif msg == L.OrderSalute then
			return self:DoEmote("SALUTE")
		elseif msg == L.OrderBow then
			return self:DoEmote("BOW")
		elseif msg == L.OrderPray then
			return self:DoEmote("PRAY")
		elseif msg == L.OrderKneel then
			return self:DoEmote("KNEEL")
		end
		-- Educated guess based on localization
		if L.GuessOrderDance and msg:match(L.GuessOrderDance) then
			return self:DoEmote("DANCE")
		elseif L.GuessOrderRoar and msg:match(L.GuessOrderRoar) then
			return self:DoEmote("ROAR")
		elseif L.GueesOrderSalute and msg:match(L.GueesOrderSalute) then
			return self:DoEmote("SALUTE")
		elseif L.GuessOrderBow and msg:match(L.GuessOrderBow) then
			return self:DoEmote("BOW")
		elseif L.GuessOrderPray and msg:match(L.GuessOrderPray) then
			return self:DoEmote("PRAY")
		elseif L.GuessOrderKneel and msg:match(L.GuessOrderKneel) then
			return self:DoEmote("KNEEL")
		end
		-- Make a wild guess, but let's filter on messages we ourselves actually sent
		if event == "CHAT_MSG_RAID_WARNING" and sentRaidWarnings[msg] and (GetTime() - sentRaidWarnings[msg]) < 1 then
			DBM:Debug("filtering raid warning sent by us")
			--return -- TODO: commented out right now, just to be safe. there is no reasonable way to hooksecurefunc above could trigger on the injected raid warning event, but you never know
		end
		-- This is unlikely to work for most localizations because the Blizz translators missed the subtlety of the exact emote command being in the message
		-- (At least they did in the deDE locale, but I suspect in most that is actually broken)
		for emote, emoteToken in pairs(emoteList) do
			if msg:find(emote, 1, true) then
				return self:DoEmote(emoteToken, true)
			end
		end
		-- We got something while the buff is active that we couldn't parse, inform the user about the failure
		self:AddMsg(("You got affected by Marching Orders %q on channel %s but DBM could not figure out which emote that corresponds to. Please share this message with us at discord.gg/deadlybossmods, thank you!"):format(tostring(msg), tostring(event)))
	end
	if self:AntiSpam(5, "MarchingOrders") then
		specWarnOrders:Show(msg)
		specWarnOrders:Play("targetyou")
	end
end

function mod:OrderFallback(msg)
	if not DBM:UnitDebuff("player", 1219060) then -- Already cleared
		return
	end
	-- Triggers 0.5 sec after an emote was detected with the emote as message or 1.5 sec after the debuff was applied without an emote
	-- This should not be necessary, but it looks like DoEmote got banned in combat from automation (which, I think, is a good thing because automating this was lame)
	specWarnOrders:Show(msg or UNKNOWN)
	specWarnOrders:Play("targetyou")
end

function mod:CHAT_MSG_RAID_WARNING(msg, playerName, ...)
	local senderGuid = select(10, ...)
	playerName = string.split("-", playerName or "") -- Do not use DBM:GetShortServerName() as it does option stuff and custom names, we never want that here
	-- On PTR UnitGUID was enough, but I've seen some evidence that this wasn't working reliably for people.
	--  Unfortunately it didn't trigger even once for me, so I don't have a log, but let's also check player name for now
	if senderGuid == UnitGUID("player") or playerName == UnitName("player") then
		-- The 0.2 delay was not necessary on PTR, but hard to test. Let's just make extra sure that the debuff is indeed there.
		self:ScheduleMethod(0.2, "TryHandleOrders", msg, "CHAT_MSG_RAID_WARNING")
	end
end

-- Just for safety: trigger on RAID_BOSS_EMOTE/WHISPER. On PTR it worked via CHAT_MSG_RAID_WARNING, but that seemed pretty odd honestly, I'm afraid they change that.
-- Note: doesn't cause spurious triggers for random other events because the method above checks if you have the debuff
function mod:CHAT_MSG_RAID_BOSS_EMOTE(msg)
	self:ScheduleMethod(0.2, "TryHandleOrders", msg, "CHAT_MSG_RAID_BOSS_EMOTE")
end

function mod:RAID_BOSS_EMOTE(msg)
	self:ScheduleMethod(0.2, "TryHandleOrders", msg, "RAID_BOSS_EMOTE")
end

function mod:CHAT_MSG_RAID_BOSS_WHISPER(msg)
	self:ScheduleMethod(0.2, "TryHandleOrders", msg, "CHAT_MSG_RAID_BOSS_WHISPER")
end

local icon = 1
local function resetIcon()
	icon = 1
end

function mod:BombPrewarn(name)
	if name and self:AntiSpam(11, "Bombprewarn", name) then
		warnBomb:CombinedShow(0.1, name)
	end
end

function mod:BombYou()
	if self:AntiSpam(11, "BombYou") then
		yellBomb:Yell()
		specWarnBomb:Play("bombyou")
		specWarnBomb:ScheduleVoice(5, "useitem") -- Use LIP 5 sec before the actual debuff happens
		timerBomb:Start(UnitName("player"))
		self:ScheduleMethod(7, "BombYouAgain")
	end
end

function mod:BombYouAgain()
	if DBM:UnitAura("player", 1219234) then
		specWarnBomb:Show()
		specWarnBomb:Play("useitem")
	end
end

function mod:UNIT_AURA(uId)
	if UnitIsUnit(uId, "player") and DBM:UnitAura(uId, 1219234) then
		self:BombYou()
	end
end

function mod:ScanBombTargets()
	for uId in DBM:GetGroupMembers() do
		if DBM:UnitDebuff(uId, 1219234) then
			self:BombPrewarn(UnitName(uId))
			if UnitIsUnit(uId, "player") then
				self:BombYou() -- Fallback, should always be antispam-filtered as UNIT_AURA should trigger for us
			end
		end
	end
	self:RescheduleBombLoop()
end

function mod:RescheduleBombLoop()
	if DBM:UnitDebuff("player", 1219229) then
		self:UnscheduleMethod("ScanBombTargets")
		self:ScheduleMethod(0.5, "ScanBombTargets")
	end
end

mod:ScheduleMethod(5, "RescheduleBombLoop")


function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(1219234) then
		if args:IsPlayer() then
			self:BombYou()
		end
	elseif args:IsSpell(1219235) then
		if args:IsPlayer() then
			yellBombRepeat:Schedule(25, 5, 8)
			yellBombRepeat:Schedule(20, 10, 8)
			yellBombRepeat:Schedule(15, 15, 8)
			yellBombRepeat:Schedule(10, 20, 8)
			yellBombRepeat:Schedule(5, 25, 8)
			yellBombRepeat:Show(30, 8)
			specWarnBomb:Show()
			-- No more voice, you should already have run out by now, there were 3 voice warnings: bombyou, useitem, and useitem again
		elseif self:AntiSpam(6, "Bombs") then -- Sometimes there's a seemingly random 5 sec delay between the targets of Overcharge?
			specWarnAoe:Show()
			specWarnAoe:Play("watchstep")
		end
		warnBomb:CombinedShow(0.1, args.destName) -- This may be redundant if 1219234 above is working correctly, but the logs are very confusing
		-- We had some cases on the PTR where this got cast onto every single player which seemed buggy
		-- Anyhow, haven't seen more than 3, but may depend on raid size?
		if self.Options.SetIconOnBombs then
			self:SetIcon(args.destName, icon, 30)
		end
		icon = icon + 1
		if icon == 4 then
			icon = 1
		end
		self:Unschedule(resetIcon)
		self:Schedule(15, resetIcon)
		-- TODO: timer seems too randomized for this to work
		--if self:AntiSpam(10, "AffixCast") then
		--	self:LoopAffixTimer(true)
		--end
	elseif args:IsSpell(1219058, 1218198, 1219229) then
		if args:IsSpell(1219229) and args:IsPlayer() then
			self:RescheduleBombLoop()
		end
		self:RecoverAffixTimer()
		if args:IsSpell(1219058) and self:AntiSpam(60 * 60, "WelcomeMilitaryHardmode") then -- Military Quarter
			if not DBM:GetModLocalization("SoD_NaxxHardmode").MarchingOrderTranslationComplete then
				self:AddMsg(L.UnsupportedLocale:format((GetLocale())))
			end
		end
	elseif args:IsSpell(1219060) and args:IsPlayer() then
		self:UnscheduleMethod("OrderFallback")
		self:ScheduleMethod(2, "OrderFallback")
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(1218210, 1219108, 1219234) and self:AntiSpam(1, "AffixCast") then
		self:LoopAffixTimer(true)
		if DBM:UnitDebuff("player", 1218198) then
			warnEggs:Show()
		end
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(1219235) then
		if args:IsPlayer() then
			yellBombRepeat:Cancel()
		end
	end
end

local lastAffixCastSeen
local nextAffixCast

local function boolToInt(b)
	return b and 1 or 0
end

function mod:RecoverAffixTimer()
	-- Prevent bad timers due to drift if you haven't seen a real cast in 15 minutes
	if not lastAffixCastSeen or not nextAffixCast or GetTime() - lastAffixCastSeen > 15 * 60 then
		return
	end
	local hasConstructAffix = DBM:UnitDebuff("player", 1219229)
	local hasMilitaryAffix = DBM:UnitDebuff("player", 1219058)
	local hasSpiderAffix = DBM:UnitDebuff("player", 1218198)
	local numAffixes = boolToInt(hasConstructAffix) + boolToInt(hasMilitaryAffix) + boolToInt(hasSpiderAffix)
	if numAffixes > 0 then
		timerAffix:Start()
		timerAffix:Update(31.59 - (nextAffixCast - GetTime()), 31.59)
		timerAffix:UpdateIcon("136116")
	end
	if numAffixes > 1 then
		timerAffix:UpdateName(L.Affixes)
		timerAffix:UpdateIcon("136048")
	elseif hasConstructAffix then
		timerAffix:UpdateName(L.ConstructAffix)
		timerAffix:UpdateIcon("134328")
	elseif hasMilitaryAffix then
		timerAffix:UpdateName(DBM:GetSpellName(1219058))
		timerAffix:UpdateIcon("134328")
	elseif hasSpiderAffix then
		timerAffix:UpdateName(L.SpiderAffix)
		timerAffix:UpdateIcon("132832")
	end
	-- Timer for plague affix is useless since it's only 5.5 seconds
end

function mod:LoopAffixTimer(sync, delay)
	delay = delay or 0
	if sync then
		lastAffixCastSeen = GetTime()
	end
	self:UnscheduleMethod("LoopAffixTimer")
	nextAffixCast = GetTime() + 31.5 - delay
	self:RecoverAffixTimer()
	self:ScheduleMethod(31.6, "LoopAffixTimer", false, 0.1)
end
