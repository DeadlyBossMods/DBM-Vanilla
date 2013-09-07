if GetLocale() ~= "zhTW" then return end
local L

------------
-- Skeram --
------------
L = DBM:GetModLocalization("Skeram")

L:SetGeneralLocalization{
	name = "預言者斯克拉姆"
}

----------------
-- Three Bugs --
----------------
L = DBM:GetModLocalization("ThreeBugs")

L:SetGeneralLocalization{
	name = "異種蠍皇族"
}
L:SetMiscLocalization{
	Yauj = "亞爾基公主",
	Vem = "維姆",
	Kri = "克里領主"
}

-------------
-- Sartura --
-------------
L = DBM:GetModLocalization("Sartura")

L:SetGeneralLocalization{
	name = "戰地衛士沙爾圖拉"
}

--------------
-- Fankriss --
--------------
L = DBM:GetModLocalization("Fankriss")

L:SetGeneralLocalization{
	name = "不屈的范克里斯"
}

--------------
-- Viscidus --
--------------
L = DBM:GetModLocalization("Viscidus")

L:SetGeneralLocalization{
	name = "維希度斯"
}
L:SetWarningLocalization{
	WarnFreeze	= "冰凍:%d/3",
	WarnShatter	= "打碎:%d/3"
}
L:SetOptionLocalization{
	WarnFreeze	= "提示冰凍狀態",
	WarnShatter	= "提示打碎狀態"
}
L:SetMiscLocalization{
	Slow	= "開始減速!",
	Freezing= "凍住了",
	Frozen	= "變成冰凍的固體!",
	Phase4 	= "開始爆裂!",
	Phase5 	= "看來準備好毀滅了!",
	Phase6 	= "Explodes."
}
-------------
-- Huhuran --
-------------
L = DBM:GetModLocalization("Huhuran")

L:SetGeneralLocalization{
	name = "哈霍蘭公主"
}
---------------
-- Twin Emps --
---------------
L = DBM:GetModLocalization("TwinEmpsAQ")

L:SetGeneralLocalization{
	name = "雙子帝王"
}
L:SetMiscLocalization{
	Veklor = "維克洛爾大帝",
	Veknil = "維克尼拉斯大帝"
}

------------
-- C'Thun --
------------
L = DBM:GetModLocalization("CThun")

L:SetGeneralLocalization{
	name = "克蘇恩"
}
L:SetOptionLocalization{
	RangeFrame	= "顯示距離框架"
}
----------------
-- Ouro --
----------------
L = DBM:GetModLocalization("Ouro")

L:SetGeneralLocalization{
	name = "奧羅"
}
L:SetWarningLocalization{
	WarnSubmerge		= "鑽地",
	WarnEmerge			= "現身"
}
L:SetTimerLocalization{
	TimerSubmerge		= "鑽地",
	TimerEmerge			= "現身"
}
L:SetOptionLocalization{
	WarnSubmerge		= "為鑽地顯示警告",
	TimerSubmerge		= "為鑽地顯示計時器",
	WarnEmerge			= "為現身顯示警告",
	TimerEmerge			= "為現身顯示計時器"
}
