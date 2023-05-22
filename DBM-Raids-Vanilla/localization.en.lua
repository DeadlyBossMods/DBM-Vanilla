local L

------------
-- Skeram --
------------
L = DBM:GetModLocalization("Skeram")

L:SetGeneralLocalization{
	name = "The Prophet Skeram"
}

----------------
-- Three Bugs --
----------------
L = DBM:GetModLocalization("ThreeBugs")

L:SetGeneralLocalization{
	name = "Bug Trio"
}
L:SetMiscLocalization{
	Yauj = "Princess Yauj",
	Vem = "Vem",
	Kri = "Lord Kri"
}

-------------
-- Sartura --
-------------
L = DBM:GetModLocalization("Sartura")

L:SetGeneralLocalization{
	name = "Battleguard Sartura"
}

--------------
-- Fankriss --
--------------
L = DBM:GetModLocalization("Fankriss")

L:SetGeneralLocalization{
	name = "Fankriss the Unyielding"
}

--------------
-- Viscidus --
--------------
L = DBM:GetModLocalization("Viscidus")

L:SetGeneralLocalization{
	name = "Viscidus"
}
L:SetWarningLocalization{
	WarnFreeze	= "Freeze: %d/3",
	WarnShatter	= "Shatter: %d/3"
}
L:SetOptionLocalization{
	WarnFreeze	= "Announce Freeze status",
	WarnShatter	= "Announce Shatter status"
}
L:SetMiscLocalization{
	Slow	= "begins to slow",
	Freezing= "is freezing up",
	Frozen	= "is frozen solid",
	Phase4 	= "begins to crack",
	Phase5 	= "looks ready to shatter",
	Phase6 	= "Explodes.",

	HitsRemain	= "Hits Remaining",
	Frost		= "Frost",
	Physical	= "Physical"
}
-------------
-- Huhuran --
-------------
L = DBM:GetModLocalization("Huhuran")

L:SetGeneralLocalization{
	name = "Princess Huhuran"
}
---------------
-- Twin Emps --
---------------
L = DBM:GetModLocalization("TwinEmpsAQ")

L:SetGeneralLocalization{
	name = "Twin Emperors"
}
L:SetMiscLocalization{
	Veklor = "Emperor Vek'lor",
	Veknil = "Emperor Vek'nilash"
}

------------
-- C'Thun --
------------
L = DBM:GetModLocalization("CThun")

L:SetGeneralLocalization{
	name = "C'Thun"
}
L:SetWarningLocalization{
	WarnEyeTentacle			= "Eye Tentacle",
	WarnClawTentacle2		= "Claw Tentacle",
	WarnGiantEyeTentacle	= "Giant Eye Tentacle",
	WarnGiantClawTentacle	= "Giant Claw Tentacle",
	SpecWarnWeakened		= "C'Thun Weaken!"
}
L:SetTimerLocalization{
	TimerEyeTentacle		= "Eye Tentacle",
	TimerClawTentacle		= "Claw Tentacle",
	TimerGiantEyeTentacle	= "Giant Eye Tentacle",
	TimerGiantClawTentacle	= "Giant Claw Tentacle",
	TimerWeakened			= "Weaken ends"
}
L:SetOptionLocalization{
	WarnEyeTentacle			= "Show warning for Eye Tentacle",
	WarnClawTentacle2		= "Show warning for Claw Tentacle",
	WarnGiantEyeTentacle	= "Show warning for Giant Eye Tentacle",
	WarnGiantClawTentacle	= "Show warning for Giant Claw Tentacle",
	SpecWarnWeakened		= "Show special warning when boss weaken",
	TimerEyeTentacle		= "Show timer for next Eye Tentacle",
	TimerClawTentacle		= "Show timer for next Claw Tentacle",
	TimerGiantEyeTentacle	= "Show timer for next Giant Eye Tentacle",
	TimerGiantClawTentacle	= "Show timer for next Giant Claw Tentacle",
	TimerWeakened			= "Show timer for boss weaken duration",
	RangeFrame				= "Show range frame (10)"
}
L:SetMiscLocalization{
	Stomach		= "Stomach",
	Eye			= "Eye of C'Thun",
	FleshTent	= "Flesh Tentacle",--Localized so it shows on frame in users language, not senders
	Weakened 	= "weaken",
	NotValid	= "AQ40 partially cleared. %s optional bosses remain."
}
----------------
-- Ouro --
----------------
L = DBM:GetModLocalization("Ouro")

L:SetGeneralLocalization{
	name = "Ouro"
}
L:SetWarningLocalization{
	WarnSubmerge		= "Submerge",
	WarnEmerge			= "Emerge"
}
L:SetTimerLocalization{
	TimerSubmerge		= "Submerge",
	TimerEmerge			= "Emerge"
}
L:SetOptionLocalization{
	WarnSubmerge		= "Show warning for submerge",
	TimerSubmerge		= "Show timer for submerge",
	WarnEmerge			= "Show warning for emerge",
	TimerEmerge			= "Show timer for emerge"
}

----------------
-- AQ40 Trash --
----------------
L = DBM:GetModLocalization("AQ40Trash")

L:SetGeneralLocalization{
	name = "AQ40 Trash"
}

---------------
-- Kurinnaxx --
---------------
L = DBM:GetModLocalization("Kurinnaxx")

L:SetGeneralLocalization{
	name 		= "Kurinnaxx"
}
------------
-- Rajaxx --
------------
L = DBM:GetModLocalization("Rajaxx")

L:SetGeneralLocalization{
	name 		= "General Rajaxx"
}
L:SetWarningLocalization{
	WarnWave	= "Wave %s"
}
L:SetOptionLocalization{
	WarnWave	= "Show announce for next incoming wave"
}
L:SetMiscLocalization{
	Wave12		= "They come now. Try not to get yourself killed, young blood.",
	Wave12Alt	= "Remember, Rajaxx, when I said I'd kill you last?",
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
	name 		= "Moam"
}

----------
-- Buru --
----------
L = DBM:GetModLocalization("Buru")

L:SetGeneralLocalization{
	name 		= "Buru the Gorger"
}
L:SetWarningLocalization{
	WarnPursue		= "Pursue on >%s<",
	SpecWarnPursue	= "Pursue on you",
	WarnDismember	= "%s on >%s< (%s)"
}
L:SetOptionLocalization{
	WarnPursue		= "Announce pursue targets",
	SpecWarnPursue	= "Show special warning when you are being pursued",
	WarnDismember	= DBM_CORE_L.AUTO_ANNOUNCE_OPTIONS.spell:format(96)
}
L:SetMiscLocalization{
	PursueEmote 	= "%s sets eyes on %s!"
}

-------------
-- Ayamiss --
-------------
L = DBM:GetModLocalization("Ayamiss")

L:SetGeneralLocalization{
	name 		= "Ayamiss the Hunter"
}

--------------
-- Ossirian --
--------------
L = DBM:GetModLocalization("Ossirian")

L:SetGeneralLocalization{
	name 		= "Ossirian the Unscarred"
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

----------------
-- AQ20 Trash --
----------------
L = DBM:GetModLocalization("AQ20Trash")

L:SetGeneralLocalization{
	name = "AQ20 Trash"
}

-----------------
--  Razorgore  --
-----------------
L = DBM:GetModLocalization("Razorgore")

L:SetGeneralLocalization{
	name = "Razorgore the Untamed"
}
L:SetTimerLocalization{
	TimerAddsSpawn	= "Adds spawning"
}
L:SetOptionLocalization{
	TimerAddsSpawn	= "Show timer for first adds spawning"
}
L:SetMiscLocalization{
	Phase2Emote	= "flee as the controlling power of the orb is drained.",
	YellEgg1 = "You'll pay for forcing me to do this!",
	YellEgg2 = "Fools! These eggs are more precious than you know!",
	YellEgg3 = "No - not another one! I'll have your heads for this atrocity!",
	YellPull 	= "Intruders have breached the hatchery! Sound the alarm! Protect the eggs at all costs!\r\n"--Yes this yell actually has a return and new line in it. as grabbed by transcriptor
}
-------------------
--  Vaelastrasz  --
-------------------
L = DBM:GetModLocalization("Vaelastrasz")

L:SetGeneralLocalization{
	name				= "Vaelastrasz the Corrupt"
}

L:SetMiscLocalization{
	Event				= "Too late, friends! Nefarius' corruption has taken hold...I cannot...control myself."
}
-----------------
--  Broodlord  --
-----------------
L = DBM:GetModLocalization("Broodlord")

L:SetGeneralLocalization{
	name	= "Broodlord Lashlayer"
}

L:SetMiscLocalization{
	Pull	= "None of your kind should be here!  You've doomed only yourselves!"
}

---------------
--  Firemaw  --
---------------
L = DBM:GetModLocalization("Firemaw")

L:SetGeneralLocalization{
	name = "Firemaw"
}

---------------
--  Ebonroc  --
---------------
L = DBM:GetModLocalization("Ebonroc")

L:SetGeneralLocalization{
	name = "Ebonroc"
}

----------------
--  Flamegor  --
----------------
L = DBM:GetModLocalization("Flamegor")

L:SetGeneralLocalization{
	name = "Flamegor"
}

------------------
--  Chromaggus  --
------------------
L = DBM:GetModLocalization("Chromaggus")

L:SetGeneralLocalization{
	name = "Chromaggus"
}
L:SetWarningLocalization{
	WarnBreath		= "%s"
}
L:SetTimerLocalization{
	TimerBreathCD	= "%s CD",
	TimerBreath		= "%s cast",
	TimerVulnCD		= "Vulnerability CD"
}
L:SetOptionLocalization{
	WarnBreath		= "Show warning when Chromaggus casts one of his Breaths",
	TimerBreathCD	= "Show Breath CD",
	TimerBreath		= "Show Breath cast",
	TimerVulnCD		= "Show Vulnerability CD"
}
L:SetMiscLocalization{
	Breath1	= "First Breath",
	Breath2	= "Second Breath",
	VulnEmote	= "flinches as its skin shimmers."
}

----------------
--  Nefarian  --
----------------
L = DBM:GetModLocalization("Nefarian-Classic")

L:SetGeneralLocalization{
	name = "Nefarian"
}
L:SetWarningLocalization{
	WarnAddsLeft		= "%d kills remaining",
	WarnClassCall		= "%s call"
}
L:SetTimerLocalization{
	TimerClassCall		= "%s call ends"
}
L:SetOptionLocalization{
	TimerClassCall		= "Show timer for class call duration",
	WarnAddsLeft		= "Announce kills remaining until Stage 2 is triggered",
	WarnClassCall		= "Announce class calls"
}
L:SetMiscLocalization{
	YellP1		= "Let the games begin!",
	YellP2		= "Well done, my minions. The mortals' courage begins to wane! Now, let's see how they contend with the true Lord of Blackrock Spire!!!",
	YellP3		= "Impossible! Rise my minions!  Serve your master once more!",
	YellShaman	= "Shamans, show me",
	YellPaladin	= "Paladins... I've heard you have many lives. Show me.",
	YellDruid	= "Druids and your silly shapeshifting. Lets see it in action!",
	YellPriest	= "Priests! If you're going to keep healing like that, we might as well make it a little more interesting!",
	YellWarrior	= "Warriors, I know you can hit harder than that! Lets see it!",
	YellRogue	= "Rogues? Stop hiding and face me!",
	YellWarlock	= "Warlocks, you shouldn't be playing with magic you don't understand. See what happens?",
	YellHunter	= "Hunters and your annoying pea-shooters!",
	YellMage	= "Mages too? You should be more careful when you play with magic...",
	YellDK		= "Death Knights... get over here!",
	YellMonk	= "Monk",
	YellDH		= "Demon hunters? How odd, covering your eyes like that. Doesn't it make it hard to see the world around you?"
}

----------------
--  Lucifron  --
----------------
L = DBM:GetModLocalization("Lucifron")

L:SetGeneralLocalization{
	name = "Lucifron"
}

----------------
--  Magmadar  --
----------------
L = DBM:GetModLocalization("Magmadar")

L:SetGeneralLocalization{
	name = "Magmadar"
}

----------------
--  Gehennas  --
----------------
L = DBM:GetModLocalization("Gehennas")

L:SetGeneralLocalization{
	name = "Gehennas"
}

------------
--  Garr  --
------------
L = DBM:GetModLocalization("Garr-Classic")

L:SetGeneralLocalization{
	name = "Garr"
}

--------------
--  Geddon  --
--------------
L = DBM:GetModLocalization("Geddon")

L:SetGeneralLocalization{
	name = "Baron Geddon"
}

----------------
--  Shazzrah  --
----------------
L = DBM:GetModLocalization("Shazzrah")

L:SetGeneralLocalization{
	name = "Shazzrah"
}

----------------
--  Sulfuron  --
----------------
L = DBM:GetModLocalization("Sulfuron")

L:SetGeneralLocalization{
	name = "Sulfuron Harbinger"
}

----------------
--  Golemagg  --
----------------
L = DBM:GetModLocalization("Golemagg")

L:SetGeneralLocalization{
	name = "Golemagg the Incinerator"
}

-----------------
--  Majordomo  --
-----------------
L = DBM:GetModLocalization("Majordomo")

L:SetGeneralLocalization{
	name = "Majordomo Executus"
}
L:SetTimerLocalization{
	timerShieldCD		= "Next Shield"
}
L:SetOptionLocalization{
	timerShieldCD		= "Show timer for next Damage/Reflect Shield"
}

----------------
--  Ragnaros  --
----------------
L = DBM:GetModLocalization("Ragnaros-Classic")

L:SetGeneralLocalization{
	name = "Ragnaros"
}
L:SetWarningLocalization{
	WarnSubmerge		= "Submerge",
	WarnEmerge			= "Emerge"
}
L:SetTimerLocalization{
	TimerSubmerge		= "Submerge",
	TimerEmerge			= "Emerge",
	timerCombatStart	= DBM_CORE_L.GENERIC_TIMER_COMBAT
}
L:SetOptionLocalization{
	WarnSubmerge		= "Show warning for submerge",
	TimerSubmerge		= "Show timer for submerge",
	WarnEmerge			= "Show warning for emerge",
	TimerEmerge			= "Show timer for emerge",
	timerCombatStart	= DBM_CORE_L.OPTION_TIMER_COMBAT
}
L:SetMiscLocalization{
	Submerge	= "COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!",
	Pull		= "Impudent whelps! You've rushed headlong to your own deaths! See now, the master stirs!\r\n"
}

-----------------
--  MC: Trash  --
-----------------
L = DBM:GetModLocalization("MCTrash")

L:SetGeneralLocalization{
	name = "MC: Trash"
}
