local mod	= DBM:NewMod("Nightbane", "Karazhan")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(17225)
mod:RegisterCombat("yell", DBM_NB_YELL_PULL)

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED",
	"CHAT_MSG_MONSTER_YELL",
	"CHAT_MSG_MONSTER_EMOTE",
)

Nightbane.Version			= "1.2";
Nightbane.Author			= "Tandanu";
Nightbane.BoneRain			= 0;
Nightbane.LastYell			= 0;

local warningBone			= mod:NewSpellAnnounce(30130, 3)
local warningFearSoon		= mod:NewSoonAnnounce(36922, 2)
local warningFear			= mod:NewSpellAnnounce(36922, 3)
local warningAsh			= mod:NewTargetAnnounce(30130, 2, nil, false)
local WarnAir				= mod:NewAnnounce("DBM_NB_AIR_WARN", 2, "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendBurrow.blp")
local WarnNBDown1			= mod:NewAnnounce("DBM_NB_DOWN_WARN", 2, nil, nil, false)
local WarnNBDown2			= mod:NewAnnounce("DBM_NB_DOWN_WARN2", 3, nil, nil, false)

local specWarnCharred		= mod:NewSpecialWarningMove(30129)

local timerNightbane		= mod:NewTimer(34, "timerNightbane", "Interface\\Icons\\Ability_Mount_Undeadhorse")
local timerAirPhase			= mod:NewTimer(57, "timerAirPhase", "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendBurrow.blp")
local timerFearCD			= mod:NewNextTimer(31.5, 36922)
local timerFear				= mod:NewCastTimer(1.5, 36922)

mod:AddBoolOption("PrewarnGroundPhase", true, "announce")

local BoneRain = 0

function mod:CHAT_MSG_RAID_BOSS_EMOTE(msg)
	if msg == DBM_NB_EMOTE_PULL then
		timerNightbane:Start()
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(36922) then
		warningFearSoon:Cancel()
		warningFear:Show()
		timerFear:Start()
		timerFearCD:Start()
		warningFearSoon:Schedule(29)
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(30129) and args:IsPlayer() then
		specWarnCharred:Show()
	elseif args:IsSpellID(37098) and GetTime() - BoneRain > 60 then
		warningBone:Show()
		BoneRain = GetTime()
	elseif args:IsSpellID(30130) then
		warningAsh:Show(args.destName)
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == DBM_NB_YELL_AIR then
		WarnAir:Show()
		timerAirPhase:Start()
		if self.Options.PrewarnGroundPhase then
			WarnNBDown1:Schedule(42)
			WarnNBDown2:Schedule(52)
		end
	elseif msg == DBM_NB_YELL_GROUND or msg == DBM_NB_YELL_GROUND2 then
		timerAirPhase:Update("timerAirPhase", 43, 57)--this may not be needed, or even work for that matter. More so for testing purposes to see if i understood code right :)
	end
end
