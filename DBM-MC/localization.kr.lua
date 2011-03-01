if GetLocale() ~= "koKR" then return end
local L

----------------
--  Lucifron  --
----------------
L = DBM:GetModLocalization("Lucifron")

L:SetGeneralLocalization{
	name = "루시프론"
}

----------------
--  Magmadar  --
----------------
L = DBM:GetModLocalization("Magmadar")

L:SetGeneralLocalization{
	name = "마그마다르"
}

----------------
--  Gehennas  --
----------------
L = DBM:GetModLocalization("Gehennas")

L:SetGeneralLocalization{
	name = "게헨나스"
}

------------
--  Garr  --
------------
L = DBM:GetModLocalization("Garr")

L:SetGeneralLocalization{
	name = "가르"
}

--------------
--  Geddon  --
--------------
L = DBM:GetModLocalization("Geddon")

L:SetGeneralLocalization{
	name = "남작 게돈"
}

L:SetOptionLocalization{
	SetIconOnBombTarget	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(20475)
}

----------------
--  Shazzrah  --
----------------
L = DBM:GetModLocalization("Shazzrah")

L:SetGeneralLocalization{
	name = "샤즈라"
}

----------------
--  Sulfuron  --
----------------
L = DBM:GetModLocalization("Sulfuron")

L:SetGeneralLocalization{
	name = "설퍼론 사자"
}

----------------
--  Golemagg  --
----------------
L = DBM:GetModLocalization("Golemagg")

L:SetGeneralLocalization{
	name = "초열의 골레마그"
}
L:SetWarningLocalization{
	WarnP2Soon	= "곧 2 단계"
}
L:SetOptionLocalization{
	WarnP2Soon 	= "2 단계 사전 경고 보기"
}

-----------------
--  Majordomo  --
-----------------
L = DBM:GetModLocalization("Majordomo")

L:SetGeneralLocalization{
	name = "청지기 이그젝큐투스"
}

L:SetMiscLocalization{
	Kill	= "Impossible! Stay your attack, mortals... I submit! I submit!"
}

----------------
--  Ragnaros  --
----------------
L = DBM:GetModLocalization("Ragnaros")

L:SetGeneralLocalization{
	name = "라그나로스"
}
L:SetWarningLocalization{
	WarnSubmerge		= "잠수",
	WarnSubmergeSoon	= "곧 잠수",
	WarnEmerge			= "등장",
	WarnEmergeSoon		= "곧 등장"
}
L:SetTimerLocalization{
	TimerCombatStart	= "전투 시작",
	TimerSubmerge		= "잠수",
	TimerEmerge			= "등장"
}
L:SetOptionLocalization{
	TimerCombatStart	= "전투 시작 타이머 보기",
	WarnSubmerge		= "잠수 경고 보기",
	WarnSubmergeSoon	= "잠수 사전 경고 보기",
	TimerSubmerge		= "잠수 타이머 보기",
	WarnEmerge			= "등장 경고 보기",
	WarnEmergeSoon		= "등장 사전 경고 보기",
	TimerEmerge			= "등장 타이머 보기"
}
L:SetMiscLocalization{
	Submerge	= "나의 종들아",
	Pull		= "Impudent whelps! You've rushed headlong to your own deaths! See now, the master stirs!\r\n"
}