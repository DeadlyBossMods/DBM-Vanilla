if GetLocale() ~= "deDE" then return end

local L

-----------
--  Alar --
-----------
L = DBM:GetModLocalization("Alar")

L:SetGeneralLocalization{
	name = "Al'ar"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
	NextPlatform	= "Nächste Plattform"
}

L:SetOptionLocalization{
	NextPlatform	= "Show timer for when Al'ar changes platforms"
}

L:SetMiscLocalization{
}

------------------
--  Void Reaver --
------------------
L = DBM:GetModLocalization("VoidReaver")

L:SetGeneralLocalization{
	name = "Leerhäscher"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	YellOnOrb	= "Chat Nachricht verschicken, wenn Arkane Kugel auf dich gecastet wird"
}

L:SetMiscLocalization{
	YellOrb	= "Arkane Kugel kommt! Lauft weg!"
}

--------------------------------
--  High Astromancer Solarian --
--------------------------------
L = DBM:GetModLocalization("Solarian")

L:SetGeneralLocalization{
	name = "Hochastromant Solarian"
}

L:SetWarningLocalization{
	WarnSplit		= "*** Adds kommen ***",
	WarnSplitSoon	= "*** Spalten in 5 Sekunden ***",
	WarnAgent		= "*** Agenten ***",
	WarnPriest		= "*** Priester & Solarian ***"

}

L:SetTimerLocalization{
	TimerSplit		= "Spalten",
	TimerAgent		= "Agenten",
	TimerPriest		= "Priester & Solarian"
}

L:SetOptionLocalization{--Translate
	WarnSplit		= "Show warning for Split",
	WarnSplitSoon	= "Show pre-warning for Split",
	WarnAgent		= "Show warning for Agents spawn",
	WarnPriest		= "Show warning for Priests and Solarian spawn",
	TimerSplit		= "Show timer for Split",
	TimerAgent		= "Show timer for Agents spawn",
	TimerPriest		= "Show timer for Priests and Solarian spawn",
	WrathIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(42783),
	WrathWhisper	= "Send whisper to $spell:42783 targets (requires Raid Leader)"
}

L:SetMiscLocalization{
	WrathWhisper	= "Zorn auf dir!",
	YellSplit1		= "I will crush your delusions of grandeur!",--Translate
	YellSplit2		= "You are hopelessly outmatched!",--Translate
	YellPhase2		= "I become"--Translate
}

---------------------------
--  Kael'thas Sunstrider --
---------------------------
L = DBM:GetModLocalization("KaelThas")

L:SetGeneralLocalization{
	name = "Kael'thas Sonnenwanderer"
}

L:SetWarningLocalization{
	WarnGaze		= "*** Thaladred behält >%s< im Blickfeld ***",
	WarnMobDead		= "%s down",--Translate
	WarnEgg			= "*** Phönix tot - Ei gespawnt ***",
	SpecWarnGaze	= "Renn weg!",
	SpecWarnEgg		= "*** Phönix tot - Ei gespawnt ***"
}

L:SetTimerLocalization{
	TimerPhase		= "Next Phase",--Translate
	TimerPhase1mob	= "%s",
	TimerNextGaze	= "New Gaze target",--Translate
	TimerRebirth	= "Widergeburt"
}

L:SetOptionLocalization{--Translate
	WarnGaze		= "Show warning for Thaladred's Gaze target",
	WarnMobDead		= "Show warning for Phase 2 mob down",
	WarnEgg			= "Show warning when Phoenix Egg spawn",
	SpecWarnGaze	= "Show special warning when Gaze on you",
	SpecWarnEgg		= "Show special warning when Phoenix Egg spawn",
	TimerPhase		= "Show time for next phase",
	TimerPhase1mob	= "Show time for Phase 1 mob active",
	TimerNextGaze	= "Show timer for Thaladred's Gaze target changes",
	TimerRebirth	= "Show timer for Phoenix Egg rebirth remaining",
	RangeFrame		= "Range Frame anzeigen wenn benötigt",
	GazeWhisper		= "Whisper an Thaladreds Ziel schicken",
	MCIcon			= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(36797),
	GazeIcon		= "Icon auf Thaladreds Ziel setzen"
}

L:SetMiscLocalization{
	YellPull1	= "Energie. Kraft. Mein Volk ist süchtig danach... Eine Abhängigkeit, die entstand, nachdem der Sonnenbrunnen zerstört wurde. Willkommen in der Zukunft. Ein Jammer, dass Ihr zu spät seid, um sie zu verhindern. Niemand kann mich jetzt noch aufhalten! Selama ashal'anore!",
	YellPhase2	= "Wie Ihr seht, habe ich viele Waffen in meinem Arsenal...",
	YellPhase3	= "Vielleicht habe ich Euch unterschätzt. Es wäre unfair, Euch gegen meine vier Berater gleichzeitig kämpfen zu lassen, aber... mein Volk wurde auch nie fair behandelt. Ich vergelte nur Gleiches mit Gleichem.",
	YellPhase4	= "Ach, manchmal muss man die Sache selbst in die Hand nehmen. Balamore shanal!",
	YellPhase5	= "Ich bin nicht so wit gekommen, um jetzt noch aufgehalten zu werden! Die Zukunft, die ich geplant habe, wird nicht gefährdet werden. Jetzt bekommt Ihr wahre Macht zu spüren!",
	YellSang	= "Ihr habt gegen einige meiner besten Berater bestanden... aber niemand kommt gegen die Macht des Bluthammers an. Zittert vor Fürst Blutdurst!",
	YellCaper	= "Capernian wird dafür sorgen, dass Euer Aufenthalt hier nicht lange währt.",
	YellTelo	= "Gut gemacht. Ihr habt Euch würdig erwiesen, gegen meinen Meisteringenieur, Telonicus, anzutreten.",
	EmoteGaze	= "behält ([^%s]+) im Blickfeld!",
	GazeWhisper	= "Thaladred ist auf dir! Lauf weg!",
	Thaladred	= "Thaladred der Verfinsterer",
	Sanguinar	= "Fürst Blutdurst",
	Capernian	= "Großastromant Capernian",
	Telonicus	= "Meisteringenieur Telonicus",
	Bow			= "Netherbespannter Langbogen",
	Axe			= "Verwüstung",
	Mace		= "Kosmische Macht",
	Dagger		= "Klinge der Unendlichkeit",
	Sword		= "Warpschnitter",
	Shield		= "Phasenverschobenes Bollwerk",
	Staff		= "Stab der Auflösung",
	Egg			= "Phönixei"
}