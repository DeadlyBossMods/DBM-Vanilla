if GetLocale() ~= "zhTW" then return end
local L

---------------
-- Kurinnaxx --
---------------
L = DBM:GetModLocalization("Kurinnaxx")

L:SetGeneralLocalization{
	name 		= "庫林納克斯"
}
L:SetWarningLocalization{
	WarnWound	= ">%2$s<中了%1$s(%s)"
}

------------
-- Rajaxx --
------------
L = DBM:GetModLocalization("Rajaxx")

L:SetGeneralLocalization{
	name 		= "拉賈克斯將軍"
}
L:SetWarningLocalization{
	WarnWave	= "進攻波數%s",
	WarnBoss	= "首領到來"
}
L:SetOptionLocalization{
	WarnWave	= "為下一次波進攻顯示提示"
}
L:SetMiscLocalization{
	NpcPull		= "They come now. Try not to get yourself killed, young blood.",
	Wave1		= "Remember, Rajaxx, when I said I'd kill you last?",
	Wave3		= "The time of our retribution is at hand! Let darkness reign in the hearts of our enemies!",
	Wave4		= "No longer will we wait behind barred doors and walls of stone! No longer will our vengeance be denied! The dragons themselves will tremble before our wrath!",
	Wave5		= "Fear is for the enemy! Fear and death!",
	Wave6		= "Staghelm will whimper and beg for his life, just as his whelp of a son did! One thousand years of injustice will end this day!",
	Wave7		= "Fandral! Your time has come! Go and hide in the Emerald Dream and pray we never find you!",
	Wave8		= "Impudent fool! I will kill you myself!"
}

----------
-- Moam --
----------
L = DBM:GetModLocalization("Moam")

L:SetGeneralLocalization{
	name 		= "莫阿姆"
}

----------
-- Buru --
----------
L = DBM:GetModLocalization("Buru")

L:SetGeneralLocalization{
	name 		= "『暴食者』布魯"
}
L:SetWarningLocalization{
	WarnPursue		= "Pursue on >%s<",
	SpecWarnPursue	= "Pursue on you",
	WarnDismember	= "%s on >%s< (%s)"
}
L:SetOptionLocalization{
	WarnPursue		= "Announce pursue targets",
	SpecWarnPursue	= "Show special warning when you are being pursued"
}
L:SetMiscLocalization{
	PursueEmote 	= "%s sets eyes on %s!"
}

-------------
-- Ayamiss --
-------------
L = DBM:GetModLocalization("Ayamiss")

L:SetGeneralLocalization{
	name 		= "『狩獵者』阿亞米斯"
}

--------------
-- Ossirian --
--------------
L = DBM:GetModLocalization("Ossirian")

L:SetGeneralLocalization{
	name 		= "『無疤者』奧斯里安"
}
L:SetWarningLocalization{
	WarnVulnerable	= "%s"
}
L:SetTimerLocalization{
	TimerVulnerable	= "%s"
}
L:SetOptionLocalization{
	WarnVulnerable	= "提示虛弱",
	TimerVulnerable	= "為虛弱顯示計時器"
}
