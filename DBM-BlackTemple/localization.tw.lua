if GetLocale() ~= "zhTW" then return end
local L

-----------------
--  Najentus  --
-----------------
L = DBM:GetModLocalization("Najentus")

L:SetGeneralLocalization{
	name = "高階督軍納珍塔斯"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	SpineIcon	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(39837),
	RangeFrame	= "Show range frame (10)"--Translate
}

L:SetMiscLocalization{
}

----------------
-- Supremus --
----------------
L = DBM:GetModLocalization("Supremus")

L:SetGeneralLocalization{
	name = "瑟普莫斯"
}

L:SetWarningLocalization{
	WarnPhase		= "%s Phase",--Translate
	WarnPhaseSoon	= "%s Phase in 10",--Translate
	WarnKite		= "Gaze on >%s<"--Translate
}

L:SetTimerLocalization{
	TimerPhase		= "Next %s phase"--Translate
}

L:SetOptionLocalization{
	WarnPhase		= "Show warning for next phase",--Translate
	WarnPhaseSoon	= "Show pre-warning for next phase",--Translate
	WarnKite		= "Announce Kite targets",--Translate
	TimerPhase		= "Show time for next phase",--Translate
	KiteIcon		= "Set icon on Kite target",--Translate
	KiteWhisper		= "Send whisper to Kite target (requires Raid Leader)"--Translate
}

L:SetMiscLocalization{
	PhaseKite		= "瑟普莫斯憤怒的捶擊地面!",
	PhaseTank		= "地上開始裂開!",
	ChangeTarget	= "瑟普莫斯需要一個新目標!",
	KiteWhisper		= "瑟普莫斯正在注視你！快逃！",
	Kite			= "Kite",--Translate
	Tank			= "Tank"--Translate
}

-------------------------
--  Shape of Akama  --
-------------------------
L = DBM:GetModLocalization("Akama")

L:SetGeneralLocalization{
	name = "阿卡瑪的黑暗面"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
}

L:SetMiscLocalization{
}

-------------------------
--  Teron Gorefiend  --
-------------------------
L = DBM:GetModLocalization("TeronGorefiend")

L:SetGeneralLocalization{
	name = "泰朗·血魔"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
	TimerVengefulSpirit		= "Ghost : %s"--Translate
}

L:SetOptionLocalization{
	TimerVengefulSpirit		= "Show timer for Ghost durations",--Translate
	CrushIcon				= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(40243)
}

L:SetMiscLocalization{
}

----------------------------
--  Gurtogg Bloodboil  --
----------------------------
L = DBM:GetModLocalization("Bloodboil")

L:SetGeneralLocalization{
	name = "葛塔格·血沸"
}

L:SetWarningLocalization{
	WarnRageEnd		= "Fel Rage End",--Translate
}

L:SetTimerLocalization{
	TimerRageEnd	= "Fel Rage End"--Translate
}

L:SetOptionLocalization{
	WarnRageEnd		= "Show warning for $spell:40604 ends",--Translate
	TimerRageEnd	= "Show timer for $spell:40604 ends"--Translate
}

L:SetMiscLocalization{
}

--------------------------
--  Essence Of Souls  --
--------------------------
L = DBM:GetModLocalization("Souls")

L:SetGeneralLocalization{
	name = "靈魂精華"
}

L:SetWarningLocalization{
	WarnEnrage		= "狂怒",
	WarnEnrageSoon	= "即將狂怒",
	WarnEnrageEnd	= "狂怒結束",
	WarnMana		= "30秒後 沒人有藍了"
}

L:SetTimerLocalization{
	TimerEnrage		= "狂怒",
	TimerNextEnrage	= "下一次狂怒",
	TimerMana		= "法力消耗"
}

L:SetOptionLocalization{
	WarnEnrage		= "Show warning for Enrage",--Translate
	WarnEnrageSoon	= "Show pre-warning for Enrage",--Translate
	WarnEnrageEnd	= "Show warning when Enrage ends",--Translate
	WarnMana		= "Show warning from zero mana in Phase 2",--Translate
	TimerEnrage		= "Show timer for Enrage",--Translate
	TimerNextEnrage	= "Show timer for next Enrage",--Translate
	TimerMana		= "Show timer for zero mana in Phase 2",--Translate
	SpiteWhisper	= "Send whisper to $spell:41376 targets (requires Raid Leader)",--Translate
	DrainIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(41303),
	SpiteIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(41376)
}

L:SetMiscLocalization{
	Pull			= "等待你們的只有痛苦與折磨﹗",
	Enrage			= "%s暴怒了起來!",
	SpiteWhisper	= "惡意在你身上!",
	Suffering		= "Essence of Suffering",--Translate
	Desire			= "Essence of Desire",--Translate
	Anger			= "Essence of Anger"--Translate
}

-----------------------
--  Mother Shahraz --
-----------------------
L = DBM:GetModLocalization("Shahraz")

L:SetGeneralLocalization{
	name = "薩拉茲女士"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	FAIcons		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(41001),
	FAWhisper	= "Send whisper to $spell:41001 targets (requires Raid Leader)"--Translate
}

L:SetMiscLocalization{
	FAWhisper	= "你中了致命的吸引力!"
}

----------------------
--  Illidari Council  --
----------------------
L = DBM:GetModLocalization("Council")

L:SetGeneralLocalization{
	name = "伊利達瑞議會"
}

L:SetWarningLocalization{
	WarnFadeSoon	= "Vanish fades in 5 sec",--Translate
	WarnFaded		= "Vanish faded",--Translate
	WarnDevAura		= "Devotion Aura for 30 sec",--Translate
	WarnResAura		= "Resistance Aura for 30 sec",--Translate
	Immune			= "Malande - %s immune for 15 sec"--Translate
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	WarnFadeSoon	= "Show warning 5 seconds before $spell:41476 fades",--Translate
	WarnFaded		= "Show warning when $spell:41476 fades",--Translate
	WarnDevAura		= "Show warning for $spell:41452",--Translate
	WarnResAura		= "Show warning for $spell:41453",--Translate
	Immune			= "Show warning when Manalde becomes spell or melee immune",--Translate
	PoisonIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(41485),--Translate
	PoisonWhisper	= "Send whisper to $spell:41485 targets (requires Raid Leader)"--Translate
}

L:SetMiscLocalization{
	Gathios			= "Gathios the Shatterer",--Translate
	Malande			= "Lady Malande",--Translate
	Zerevor			= "High Nethermancer Zerevor",--Translate
	Veras			= "Veras Darkshadow",--Translate
	Melee			= "Melee",--Translate
	Spell			= "Spell",--Translate
	PoisonWhisper	= "Deadly Poison on you!"--Translate
}

-------------------------
--  Illidan Stormrage --
-------------------------
L = DBM:GetModLocalization("Illidan")

L:SetGeneralLocalization{
	name = "伊利丹·怒風"
}

L:SetWarningLocalization{
	WarnPhase2Soon	= "Phase 2 soon",--Translate
	WarnPhase4Soon	= "Phase 4 soon",--Translate
	WarnHuman		= "人形階段",
	WarnHumanSoon	= "Human Phase Soon",--Translate
	WarnDemon		= "惡魔階段",
	WarnDemonSoon	= "Demon Phase Soon"--Translate
}

L:SetTimerLocalization{
	TimerCombatStart	= "Combat starts",--Translate
	TimerNextHuman		= "人形階段",
	TimerNextDemon		= "惡魔階段",
	TimerPhase4			= "Phase transition"--Translate
}

L:SetOptionLocalization{
	WarnPhase2Soon	= "Show pre-warning for Phase 2 transition (at ~75%)",--Translate
	WarnPhase4Soon	= "Show pre-warning for Phase 4 transition (at ~35%)",--Translate
	WarnHuman		= "Show warning for Human Phase",--Translate
	WarnHumanSoon	= "Show pre-warning for Human Phase",--Translate
	WarnDemon		= "Show warning for Demon Phase",--Translate
	WarnDemonSoon	= "Show pre-warning for Demon Phase",--Translate
	TimerCombatStart= "Show time for start of combat",--Translate
	TimerNextHuman	= "Show time for Next Human Phase",--Translate
	TimerNextDemon	= "Show time for Demon Human Phase",--Translate
	TimerPhase4		= "Show time for Phase 4 transition",--Translate
	ParasiteIcon	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(41917),
	ParasiteWhisper	= "Send whisper to $spell:41917 targets (requires Raid Leader)",--Translate
	RangeFrame		= "Show range frame (10 yards) in Phase 3 and 4"--Translate
}

L:SetMiscLocalization{
	Pull			= "阿卡瑪。你的謊言真是老套。我很久前就應該殺了你和你那些畸形的同胞。",
	Eyebeam			= "直視背叛者的雙眼吧!",
	Demon			= "感受我體內的惡魔之力吧!",
	Phase4			= "你們就這點本事嗎?這就是你們全部的能耐?",
	ParasiteWhisper	= "Shadowfiends on you!"--Translate
}
