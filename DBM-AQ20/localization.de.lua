local L

---------------
-- Kurinnaxx --
---------------
L = DBM:GetModLocalization("Kurinnaxx")

L:SetGeneralLocalization{
	name 		= "Kurinnaxx"
}
L:SetWarningLocalization{
	WarnWound	= "%s auf >%s< (%s)"
}
L:SetOptionLocalization{
	WarnWound	= DBM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format(25646, GetSpellInfo(25646) or "unknown"),	
}
------------
-- Rajaxx --
------------
L = DBM:GetModLocalization("Rajaxx")

L:SetGeneralLocalization{
	name 		= "General Rajaxx"
}
L:SetWarningLocalization{
	WarnWave	= "Welle %s",
	WarnBoss	= "Boss kommt"
}
L:SetOptionLocalization{
	WarnWave	= "Show announce for next incoming wave"
}
L:SetMiscLocalization{
	NpcPull		= "They come now. Try not to get yourself killed, young blood.",--translate
	Wave1		= "Remember, Rajaxx, when I said I'd kill you last?",--translate
	Wave3		= "The time of our retribution is at hand! Let darkness reign in the hearts of our enemies!",--translate
	Wave4		= "No longer will we wait behind barred doors and walls of stone! No longer will our vengeance be denied! The dragons themselves will tremble before our wrath!",--translate
	Wave5		= "Fear is for the enemy! Fear and death!",--translate
	Wave6		= "Staghelm will whimper and beg for his life, just as his whelp of a son did! One thousand years of injustice will end this day!",--translate
	Wave7		= "Fandral! Your time has come! Go and hide in the Emerald Dream and pray we never find you!",--translate
	Wave8		= "Impudent fool! I will kill you myself!" --translate
}

----------
-- Moam --
----------
L = DBM:GetModLocalization("Moam")

L:SetGeneralLocalization{
	name 		= "Moam"
}

----------
-- Buru --
----------
L = DBM:GetModLocalization("Buru")

L:SetGeneralLocalization{
	name 		= "Buru der Verschlinger"
}
L:SetWarningLocalization{
	WarnPursue		= "Pursue on >%s<", 
	SpecWarnPursue	= "Pursue on you",
	WarnDismember	= "%s on >%s< (%s)"
}
L:SetOptionLocalization{
	WarnPursue		= "Announce pursue targets",
	SpecWarnPursue	= "Show special warning when you are being pursued",
	WarnDismember	= DBM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format(96, GetSpellInfo(96) or "unknown"),	
}
L:SetMiscLocalization{
	PursueEmote 	= "%s sets eyes on %s!"
}

-------------
-- Ayamiss --
-------------
L = DBM:GetModLocalization("Ayamiss")

L:SetGeneralLocalization{
	name 		= "Ayamiss der Jäger"
}

--------------
-- Ossirian --
--------------
L = DBM:GetModLocalization("Ossirian")

L:SetGeneralLocalization{
	name 		= "Ossirian der Narbenlose"
}
L:SetWarningLocalization{
	WarnVulnerable	= "%s"
}
L:SetTimerLocalization{
	TimerVulnerable	= "%s"
}
L:SetOptionLocalization{
	WarnVulnerable	= "Announce weaknesses",
	TimerVulnerable	= "Show timer for weaknesses"
}