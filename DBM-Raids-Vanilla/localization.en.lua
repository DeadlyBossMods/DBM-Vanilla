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

	FrostHitsPerSecond = "Frost hits per second",
	MeleeHitsPerSecond = "Melee hits per second",
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
	WarnEyeTentacle			= "Eye Tentacles",
	WarnClawTentacle2		= "Claw Tentacle",
	WarnGiantEyeTentacle	= "Giant Eye Tentacle",
	WarnGiantClawTentacle	= "Giant Claw Tentacle",
	SpecWarnWeakened		= "C'Thun Weakened!"
}
L:SetTimerLocalization{
	TimerEyeTentacle		= "Eye Tentacles",
	TimerClawTentacle		= "Claw Tentacle",
	TimerGiantEyeTentacle	= "Giant Eye Tentacle",
	TimerGiantClawTentacle	= "Giant Claw Tentacle",
	TimerWeakened			= "Weaken ends"
}
L:SetOptionLocalization{
	WarnEyeTentacle			= "Show warning for Eye Tentacles",
	WarnClawTentacle2		= "Show warning for Claw Tentacle",
	WarnGiantEyeTentacle	= "Show warning for Giant Eye Tentacle",
	WarnGiantClawTentacle	= "Show warning for Giant Claw Tentacle",
	SpecWarnWeakened		= "Show special warning when boss weaken",
	TimerEyeTentacle		= "Show timer for next Eye Tentacles",
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
	WarnEmerge			= "Emerge",
	SpecWarnEye			= "Look away",
}
L:SetTimerLocalization{
	TimerSubmerge		= "Submerge",
	TimerEmerge			= "Emerge"
}
L:SetOptionLocalization{
	WarnSubmerge		= "Show warning for submerge",
	TimerSubmerge		= "Show timer for submerge",
	WarnEmerge			= "Show warning for emerge",
	TimerEmerge			= "Show timer for emerge",
	SpecWarnEye			= "Show warning for the giant eye"
}

----------------
-- AQ40 Trash --
----------------
L = DBM:GetModLocalization("AQ40Trash")

L:SetGeneralLocalization{
	name = "AQ40 Trash"
}

L:SetTimerLocalization{
	TimerExplosion = "Exploding Ghosts"
}

L:SetWarningLocalization{
	WarnExplosion = "Single exploding ghost spawned - dodge",
	SpecWarnExplosion = "Exploding ghosts - dodge",
}
L:SetOptionLocalization{
	WarnExplosion = "Show announce for exploding ghosts ($spell:1214871)",
	SpecWarnExplosion = "Show special warning when multiple exploding ghosts spawn ($spell:1214871)",
	TimerExplosion = "Show timer for when multiple exploding ghosts spawn ($spell:1214871)"
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
	PursueEmote 	= " sets eyes on "
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

L:SetTimerLocalization{
	TimerExplosion = "Exploding Ghosts"
}

L:SetWarningLocalization{
	WarnExplosion = "Single exploding ghost spawned - dodge",
	SpecWarnExplosion = "Exploding ghosts - dodge",
}
L:SetOptionLocalization{
	WarnExplosion = "Show announce for exploding ghosts ($spell:1214871)",
	SpecWarnExplosion = "Show special warning when multiple exploding ghosts spawn ($spell:1214871)",
	TimerExplosion = "Show timer for when multiple exploding ghosts spawn ($spell:1214871)"
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
	Event				= "Too late, friends!"
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

----------------
--  Ebonroc and Flamegor  --
----------------
L = DBM:GetModLocalization("EbonrocandFlamegor")

L:SetGeneralLocalization{
	name = "Ebonroc and Flamegor"
}

L:SetTimerLocalization{
	TimerBrandCD	= "Brand"
}
L:SetOptionLocalization{
	TimerBrandCD	= "Show timer for Brand cooldown"
}

L:SetMiscLocalization{
	Ebonroc		= "Ebonroc",
	Flamegor	= "Flamegor"
}

-----------------------
--  BWL Trash  --
-----------------------
-- Chromaggus, Death Talon Overseer and Death Talon Wyrmguard
L = DBM:GetModLocalization("BWLTrash")

L:SetGeneralLocalization{
	name = "BWL Trash"
}
L:SetWarningLocalization{
	WarnVulnerable		= "%s Vulnerability"
}
L:SetOptionLocalization{
	WarnVulnerable		= "Show warning for spell vulnerabilities"
}
L:SetMiscLocalization{
	Fire		= "Fire",
	Nature		= "Nature",
	Frost		= "Frost",
	Shadow		= "Shadow",
	Arcane		= "Arcane",
	Holy		= "Holy"
}

------------------
--  Chromaggus  --
------------------
L = DBM:GetModLocalization("Chromaggus")

L:SetGeneralLocalization{
	name = "Chromaggus"
}
L:SetWarningLocalization{
	WarnBreath		= "%s",
	WarnVulnerable	= "%s Vulnerability"
}
L:SetTimerLocalization{
	TimerBreathCD	= "%s CD",
	TimerBreath		= "%s cast",
	TimerVulnCD		= "Vulnerability CD",
	TimerAllBreaths = "Breath Volley"
}
L:SetOptionLocalization{
	WarnBreath		= "Show warning when Chromaggus casts one of his Breaths",
	WarnVulnerableNew	= "Show warning for spell vulnerabilities",
	TimerBreathCD	= "Show timer for Breath cooldown",
	TimerBreath		= "Show timer for Breath cast",
	TimerVulnCD		= "Show Vulnerability CD",
	TimerAllBreaths = "Show timer for Breath Volley"
}
L:SetMiscLocalization{
	Breath1		= "First Breath",
	Breath2		= "Second Breath",
	VulnEmote	= "%s flinches as its skin shimmers.",
	Vuln		= "Vulnerability",
	Fire		= "Fire",
	Nature		= "Nature",
	Frost		= "Frost",
	Shadow		= "Shadow",
	Arcane		= "Arcane",
	Holy		= "Holy"
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
	WarnClassCall		= "%s call",
	specwarnClassCall	= "Class call on you!"
}
L:SetTimerLocalization{
	TimerClassCall		= "%s call ends"
}
L:SetOptionLocalization{
	TimerClassCall		= "Show timer for class call duration",
	WarnAddsLeft		= "Announce kills remaining until Stage 2 is triggered",
	WarnClassCall		= "Announce class calls",
	specwarnClassCall	= "Show Special warning when you are affected by class call"
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

----------------------
--  SoD BWL Trials  --
----------------------
L = DBM:GetModLocalization("SoDBWLTrials")

L:SetGeneralLocalization{
	name = "Season of Discovery Trials"
}
L:SetWarningLocalization{
	SpecWarnBothBombs		= "Blue and Green on >%s<",
	SpecWarnBothBombsYou	= "Blue and Green on YOU",
}
L:SetTimerLocalization{
	TimerBombs				= DBM_COMMON_L.BOMBS
}
L:SetOptionLocalization{
	SpecWarnBothBombs		= "Show special warning if both Blue and Green bombs are on the same player.",
	SpecWarnBothBombsYou	= "Show special warning if both Blue and Green bombs are on you.",
	TimerBombs				= "Show timer for Blue and Green Trial bombs"
}

L:SetMiscLocalization{
	-- Does not need translation if "BLUE BOMB" is okay, the "Blue"/"Green" strings are just fallbacks if Core is outdated
	-- Only translate that if you need something like "BOMB BLUE"
	BlueBomb = (DBM_COMMON_L.BLUE or "Blue") .. " " .. DBM_COMMON_L.BOMB,
	GreenBomb = (DBM_COMMON_L.GREEN or "Green") .. " " .. DBM_COMMON_L.BOMB,

	-- Used in options
	BlueTrial = "Blue Trial",
	GreenTrial = "Green Trial",
	GreenAndBlue = "Green and Blue on the same player",
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
	timerCombatStart	= DBM_CORE_L.AUTO_TIMER_TEXTS.combat
}
L:SetOptionLocalization{
	WarnSubmerge		= "Show warning for submerge",
	TimerSubmerge		= "Show timer for submerge",
	WarnEmerge			= "Show warning for emerge",
	TimerEmerge			= "Show timer for emerge",
	timerCombatStart	= DBM_CORE_L.AUTO_TIMER_OPTIONS.combat
}
L:SetMiscLocalization{
	Submerge	= "COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!",
	Pull		= "Impudent whelps! You've rushed headlong to your own deaths! See now, the master stirs!\r\n"
}

----------------------
--  The Molten Core --
----------------------
L = DBM:GetModLocalization("MoltenCore")

L:SetGeneralLocalization{
	name = "The Molten Core"
}

L:SetOptionLocalization{
	YellHeartCleared	= "Yell when Heart of Ash/Cinder is removed.",
	WarnBossPower		= "Show warnings when boss energy reaches 50%, 75%, 90%, and 100%"
}

L:SetWarningLocalization{
	WarnBossPower		= "Boss energy at %d%%"
}

-----------------
--  MC: Trash  --
-----------------
L = DBM:GetModLocalization("MCTrash")

L:SetGeneralLocalization{
	name = "MC: Trash"
}

-------------------
--  Venoxis  --
-------------------
L = DBM:GetModLocalization("Venoxis")

L:SetGeneralLocalization{
	name = "High Priest Venoxis"
}

-------------------
--  Jeklik  --
-------------------
L = DBM:GetModLocalization("Jeklik")

L:SetGeneralLocalization{
	name = "High Priestess Jeklik"
}

-------------------
--  Marli  --
-------------------
L = DBM:GetModLocalization("Marli")

L:SetGeneralLocalization{
	name = "High Priestess Mar'li"
}

-------------------
--  Thekal  --
-------------------
L = DBM:GetModLocalization("Thekal")

L:SetGeneralLocalization{
	name = "High Priest Thekal"
}

L:SetWarningLocalization({
	WarnSimulKill	= "First add down - Resurrection in ~15 seconds"
})

L:SetTimerLocalization({
	TimerSimulKill	= "Resurrection"
})

L:SetOptionLocalization({
	WarnSimulKill	= "Announce first mob down, resurrection soon",
	TimerSimulKill	= "Show timer for priest resurrection"
})

L:SetMiscLocalization({
	PriestDied	= "%s dies.",
	YellPhase2	= "Shirvallah, fill me with your RAGE!",
	YellKill	= "Hakkar binds me no more!  Peace at last!",
	Thekal		= "High Priest Thekal",
	Zath		= "Zealot Zath",
	LorKhan		= "Zealot Lor'Khan"
})

-------------------
--  Arlokk  --
-------------------
L = DBM:GetModLocalization("Arlokk")

L:SetGeneralLocalization{
	name = "High Priestess Arlokk"
}

-------------------
--  Hakkar  --
-------------------
L = DBM:GetModLocalization("Hakkar")

L:SetGeneralLocalization{
	name = "Hakkar the Soulflayer"
}

-------------------
--  Bloodlord  --
-------------------
L = DBM:GetModLocalization("Bloodlord")

L:SetGeneralLocalization{
	name = "Bloodlord Mandokir"
}
L:SetMiscLocalization{
	Bloodlord 	= "Bloodlord Mandokir",
	Ohgan		= "Ohgan",
	GazeYell	= "I'm watching you"
}

-------------------
--  Edge of Madness  --
-------------------
L = DBM:GetModLocalization("EdgeOfMadness")

L:SetGeneralLocalization{
	name = "Edge of Madness"
}
L:SetMiscLocalization{
	Hazzarah = "Hazza'rah",
	Renataki = "Renataki",
	Wushoolay = "Wushoolay",
	Grilek = "Gri'lek"
}

-------------------
--  Gahz'ranka  --
-------------------
L = DBM:GetModLocalization("Gahzranka")

L:SetGeneralLocalization{
	name = "Gahz'ranka"
}

-------------------
--  Jindo  --
-------------------
L = DBM:GetModLocalization("Jindo")

L:SetGeneralLocalization{
	name = "Jin'do the Hexxer"
}

L:SetMiscLocalization{
	Ghosts = "Ghosts"
}

--------------
--  Onyxia  --
--------------
L = DBM:GetModLocalization("OnyxiaVanilla")

L:SetGeneralLocalization{
	name = "Onyxia"
}

L:SetWarningLocalization{
	WarnWhelpsSoon		= "Onyxian Whelps soon"
}

L:SetTimerLocalization{
	TimerWhelps	= "Onyxian Whelps"
}

L:SetOptionLocalization{
	TimerWhelps				= "Show timer for Onyxian Whelps",
	WarnWhelpsSoon			= "Show pre-warning for Onyxian Whelps",
	SoundWTF3				= "Play some funny sounds from a legendary classic Onyxia raid"
}

L:SetMiscLocalization{
	Breath = "%s takes in a deep breath...",
	YellPull = "How fortuitous. Usually, I must leave my lair in order to feed.",
	YellP2 = "This meaningless exertion bores me. I'll incinerate you all from above!",
	YellP3 = "It seems you'll need another lesson, mortals!",
	SoDWarning = "Welcome to %s. DBM will play some fun sounds from a legendary classic raid during the fight. You can disable this in the DBM UI: type /dbm and navigate to the Onyxia mod under Raids -> Classic.",
}

-------------------
--  Anub'Rekhan  --
-------------------
L = DBM:GetModLocalization("AnubRekhanVanilla")

L:SetGeneralLocalization({
	name = "Anub'Rekhan"
})

L:SetOptionLocalization({
	ArachnophobiaTimer	= "Show timer for Arachnophobia (achievement)"
})

L:SetMiscLocalization({
	ArachnophobiaTimer	= "Arachnophobia",
	Pull1				= "Yes, run! It makes the blood pump faster!",
	Pull2				= "Just a little taste..."
})

----------------------------
--  Grand Widow Faerlina  --
----------------------------
L = DBM:GetModLocalization("FaerlinaVanilla")

L:SetGeneralLocalization({
	name = "Grand Widow Faerlina"
})

L:SetWarningLocalization({
	WarningEmbraceExpire	= "Widow's Embrace ends in 5 seconds",
	WarningEmbraceExpired	= "Widow's Embrace faded"
})

L:SetOptionLocalization({
	WarningEmbraceExpire	= "Show pre-warning for Widow's Embrace fade",
	WarningEmbraceExpired	= "Show warning for Widow's Embrace fade"
})

L:SetMiscLocalization({
	Pull					= "Kneel before me, worm!"--Not actually pull trigger, but often said on pull
})

---------------
--  Maexxna  --
---------------
L = DBM:GetModLocalization("MaexxnaVanilla")

L:SetGeneralLocalization({
	name = "Maexxna"
})

L:SetWarningLocalization({
	WarningSpidersSoon	= "Maexxna Spiderlings in 5 seconds",
	WarningSpidersNow	= "Maexxna Spiderlings spawned"
})

L:SetTimerLocalization({
	TimerSpider	= "Next Maexxna Spiderlings"
})

L:SetOptionLocalization({
	WarningSpidersSoon	= "Show pre-warning for Maexxna Spiderlings",
	WarningSpidersNow	= "Show warning for Maexxna Spiderlings",
	TimerSpider			= "Show timer for next Maexxna Spiderlings"
})

L:SetMiscLocalization({
	ArachnophobiaTimer	= "Arachnophobia"
})

------------------------------
--  Noth the Plaguebringer  --
------------------------------
L = DBM:GetModLocalization("NothVanilla")

L:SetGeneralLocalization({
	name = "Noth the Plaguebringer"
})

L:SetWarningLocalization({
	WarningTeleportNow	= "Teleported",
	WarningTeleportSoon	= "Teleport in 20 seconds"
})

L:SetTimerLocalization({
	TimerTeleport		= "Teleport",
	TimerTeleportBack	= "Teleport back"
})

L:SetOptionLocalization({
	WarningTeleportNow	= "Show warning for Teleport",
	WarningTeleportSoon	= "Show pre-warning for Teleport",
	TimerTeleport		= "Show timer for Teleport",
	TimerTeleportBack	= "Show timer for Teleport back"
})

L:SetMiscLocalization({
	Pull				= "Die, trespasser!",
	AddsYell			= "Rise, my soldiers! Rise and fight once more!",
	Adds				= "summons forth Skeletal Warriors!",
	AddsTwo				= "raises more skeletons!"
})

--------------------------
--  Heigan the Unclean  --
--------------------------
L = DBM:GetModLocalization("HeiganVanilla")

L:SetGeneralLocalization({
	name = "Heigan the Unclean"
})

L:SetWarningLocalization({
	WarningTeleportNow	= "Teleported",
	WarningTeleportSoon	= "Teleport in %d seconds"
})

L:SetTimerLocalization({
	TimerTeleport	= "Teleport"
})

L:SetOptionLocalization({
	WarningTeleportNow	= "Show warning for Teleport",
	WarningTeleportSoon	= "Show pre-warning for Teleport",
	TimerTeleport		= "Show timer for Teleport"
})

L:SetMiscLocalization({
	Pull				= "You are mine now."
})

---------------
--  Loatheb  --
---------------
L = DBM:GetModLocalization("LoathebVanilla")

L:SetGeneralLocalization({
	name = "Loatheb"
})

L:SetWarningLocalization({
	WarningHealSoon	= "Healing possible in 3 seconds",
	WarningHealNow	= "Heal now"
})

L:SetOptionLocalization({
	WarningHealSoon		= "Show pre-warning for 3-second healing window",
	WarningHealNow		= "Show warning for 3-second healing window"
})

-----------------
--  Patchwerk  --
-----------------
L = DBM:GetModLocalization("PatchwerkVanilla")

L:SetGeneralLocalization({
	name = "Patchwerk"
})

L:SetOptionLocalization({
})

L:SetMiscLocalization({
	yell1			= "Patchwerk want to play!",
	yell2			= "Kel'thuzad make Patchwerk his avatar of war!"
})

-----------------
--  Grobbulus  --
-----------------
L = DBM:GetModLocalization("GrobbulusVanilla")

L:SetGeneralLocalization({
	name = "Grobbulus"
})

-------------
--  Gluth  --
-------------
L = DBM:GetModLocalization("GluthVanilla")

L:SetGeneralLocalization({
	name = "Gluth"
})

----------------
--  Thaddius  --
----------------
L = DBM:GetModLocalization("ThaddiusVanilla")

L:SetGeneralLocalization({
	name = "Thaddius"
})

L:SetMiscLocalization({
	Yell	= "Stalagg crush you!",
	Emote	= "%s overloads!",
	Emote2	= "Tesla Coil overloads!",
	Boss1	= "Feugen",
	Boss2	= "Stalagg",
	Charge1 = "negative",
	Charge2 = "positive"
})

L:SetOptionLocalization({
	WarningChargeChanged	= "Show special warning when your polarity changed",
	WarningChargeNotChanged	= "Show special warning when your polarity did not change",
	AirowsEnabled			= "Show arrows during $spell:28089",
	Never					= "Never",
	TwoCamp					= "Show arrows (normal \"2 camp\" run through strategy)",
	ArrowsRightLeft			= "Show left/right arrows for the \"4 camp\" strategy (show left arrow if polarity changed, right if not)",
	ArrowsInverse			= "Inverse \"4 camp\" strategy (show right arrow if polarity changed, left if not)"
})

L:SetWarningLocalization({
	WarningChargeChanged	= "Polarity changed to %s",
	WarningChargeNotChanged	= "Polarity did not change"
})

----------------------------
--  Instructor Razuvious  --
----------------------------
L = DBM:GetModLocalization("RazuviousVanilla")

L:SetGeneralLocalization({
	name = "Instructor Razuvious"
})

L:SetMiscLocalization({
	Yell1 = "Show them no mercy!",
	Yell2 = "The time for practice is over! Show me what you have learned!",
	Yell3 = "Do as I taught you!",
	Yell4 = "Sweep the leg... Do you have a problem with that?"
})

L:SetOptionLocalization({
	WarningShieldWallSoon	= "Show pre-warning for Shield Wall ending"
})

L:SetWarningLocalization({
	WarningShieldWallSoon	= "Shield Wall ends in 5 seconds"
})

----------------------------
--  Gothik the Harvester  --
----------------------------
L = DBM:GetModLocalization("GothikVanilla")

L:SetGeneralLocalization({
	name = "Gothik the Harvester"
})

L:SetOptionLocalization({
	TimerWave			= "Show timer for next wave",
	TimerPhase2			= "Show timer for Phase 2",
	WarningWaveSoon		= "Show pre-warning for wave",
	WarningWaveSpawned	= "Show warning for wave spawned",
	WarningRiderDown	= "Show warning when an Unrelenting Rider dies",
	WarningKnightDown	= "Show warning when an Unrelenting Death Knight dies"
})

L:SetTimerLocalization({
	TimerWave	= "Wave %d",
	TimerPhase2	= "Phase 2"
})

L:SetWarningLocalization({
	WarningWaveSoon		= "Wave %d: %s in 3 sec",
	WarningWaveSpawned	= "Wave %d: %s spawned",
	WarningRiderDown	= "Rider down",
	WarningKnightDown	= "Knight down",
	WarningPhase2		= "Phase 2"
})

L:SetMiscLocalization({
	yell			= "Foolishly you have sought your own demise.",
	WarningWave1	= "%d %s",
	WarningWave2	= "%d %s and %d %s",
	WarningWave3	= "%d %s, %d %s and %d %s",
	Trainee			= "Trainees",
	Knight			= "Knights",
	Horse			= "Spectral Horse",
	Rider			= "Riders"
})

---------------------
--  Four Horsemen  --
---------------------
L = DBM:GetModLocalization("HorsemenVanilla")

L:SetGeneralLocalization({
	name = "Four Horsemen"
})

L:SetOptionLocalization({
	WarningMarkSoon				= "Show pre-warning for Mark",
	SpecialWarningMarkOnPlayer	= "Show special warning when you are affected by more than 4 marks",
	timerMark					= "Show timer for next horseman's Mark (with count)",
})

L:SetTimerLocalization({
	timerMark	= "Mark %d",
})

L:SetWarningLocalization({
	WarningMarkSoon				= "Mark %d in 3 seconds",
	SpecialWarningMarkOnPlayer	= "%s: %s"
})

L:SetMiscLocalization({
	Korthazz	= "Thane Korth'azz",
	Rivendare	= "Baron Rivendare",
	Blaumeux	= "Lady Blaumeux",
	Zeliek		= "Sir Zeliek"
})

-----------------
--  Sapphiron  --
-----------------
L = DBM:GetModLocalization("SapphironVanilla")

L:SetGeneralLocalization({
	name = "Sapphiron"
})

L:SetOptionLocalization({
	WarningAirPhaseSoon	= "Show pre-warning for air phase",
	WarningAirPhaseNow	= "Announce air phase",
	WarningLanded		= "Announce ground phase",
	TimerAir			= "Show timer for air phase",
	TimerLanding		= "Show timer for landing",
	TimerIceBlast		= "Show timer for Frost Breath",
	WarningDeepBreath	= "Show special warning for Frost Breath"
})

L:SetMiscLocalization({
	EmoteBreath			= "%s takes a deep breath."
})

L:SetWarningLocalization({
	WarningAirPhaseSoon	= "Air phase in 10 seconds",
	WarningAirPhaseNow	= "Air phase",
	WarningLanded		= "Sapphiron landed",
	WarningDeepBreath	= "Frost Breath"
})

L:SetTimerLocalization({
	TimerAir		= "Air phase",
	TimerLanding	= "Landing",
	TimerIceBlast	= "Frost Breath"
})

------------------
--  Kel'Thuzad  --
------------------

L = DBM:GetModLocalization("KelThuzadVanilla")

L:SetGeneralLocalization({
	name = "Kel'Thuzad"
})

L:SetOptionLocalization({
	TimerPhase2			= "Show timer for Phase 2",
	specwarnP2Soon		= "Show special warning 10 seconds before Kel'Thuzad engages",
	warnAddsSoon		= "Show pre-warning for Guardians of Icecrown"
})

L:SetMiscLocalization({
	Yell = "Minions, servants, soldiers of the cold dark! Obey the call of Kel'Thuzad!"
})

L:SetWarningLocalization({
	specwarnP2Soon	= "Kel'Thuzad engages in 10 Seconds",
	warnAddsSoon	= "Guardians of Icecrown incoming soon"
})

L:SetTimerLocalization({
	TimerPhase2	= "Phase 2"
})

-----------------
--  Naxx Trash --
-----------------

L = DBM:GetModLocalization("NaxxTrash")

L:SetGeneralLocalization({
	name = "Trash"
})

--------------------
--  SoD Hardmode  --
--------------------

L = DBM:GetModLocalization("SoD_NaxxHardmode")

L:SetGeneralLocalization({
	name = "SoD Hardmode"
})

L:SetOptionLocalization({
	AutomateEmote		= "Attempt to automatically trigger the correct emote for Marching Orders (may be broken due a fix by Blizzard)",
	AffixTimer			= "Show timers for hardmode affixes",
	WarnEggs			= "Show announce for egg spawn (Spider wing hard mode)",
	SpecWarnOrders		= "Show special warning when DBM fails to automate a Marching Order"
})

L.MarchingOrderTranslationComplete = true -- Set this to false until *all* of the Order* below are translated to the actual string used in the game
L:SetMiscLocalization({
	Affixes				= "Affixes",
	ConstructAffix		= "Lightning Bomb",
	SpiderAffix			= "Exploding Eggs",
	UnsupportedLocale	= [[Welcome to the empowered Military Quarter!
The hard mode mechanic here selects random players and requires them to do a given emote.
Our support for your client locale %s is still incomplete, DBM may miss emotes.
You can help! Share the exact text (screenshots, videos, Transcriptor logs) used in the hard mode mechanic here with us at discord.gg/deadlybossmods.
]],
	AutomatedEmote		= "DBM attempted to automate emote %s for marching orders (this might not work due to Blizzard blocking the automation).",
	AutomatedEmoteGuess	= "DBM attempted to automated emote %s for marching orders based on a guess. Was this the correct emote? Let us know at discord.gg/deadlybossmods",
	-- List of emotes may not be complete, let me know if I missed one
	OrderDance			= "DANCE for me!",
	OrderRoar			= "Show me your best ROAR!",
	OrderSalute			= "SALUTE, maggot!",
	OrderBow			= "BOW before me, mortal!",
	OrderPray			= "Get on your knees and PRAY!",
	OrderKneel			= nil, -- I thought i saw this one, but maybe I mistook it for pray? Don't have it in logs
	-- Guessed regexes for emotes, by default the emote tokens are used (which actually works 100% in en locale)
	-- Optional and obsolete if all Order* strings above are complete
	GuessOrderDance		= nil,
	GuessOrderRoar		= nil,
	GueesOrderSalute	= nil,
	GuessOrderBow		= nil,
	GuessOrderPray		= nil,
	GuessOrderKneel		= nil,
})

L:SetWarningLocalization({
	WarnEggs		= "Eggs spawned",
	SpecWarnOrders	= "Marching Order: %s"
})

L:SetTimerLocalization({
	AffixTimer	= "Affix"
})


---------------------------
--  Season of Discovery  --
---------------------------

---------------------------
--  Blackfathom Deeps  --
---------------------------

------------------
--  Baron Aquanis  --
------------------
L = DBM:GetModLocalization("BaronAuanisSoD")

L:SetGeneralLocalization({
	name = "Baron Aquanis"
})

L:SetMiscLocalization({
	Water		= "Water"
})

------------------
--  Ghamoo-ra  --
------------------
L = DBM:GetModLocalization("GhamooraSoD")

L:SetGeneralLocalization({
	name = "Ghamoo-ra"
})

------------------
--  Lady Sarevess  --
------------------
L = DBM:GetModLocalization("LadySarevessSoD")

L:SetGeneralLocalization({
	name = "Lady Sarevess"
})

------------------
--  Gelihast  --
------------------
L = DBM:GetModLocalization("GelihastSoD")

L:SetGeneralLocalization({
	name = "Gelihast"
})

L:SetTimerLocalization{
	TimerImmune = "Immunity ends"
}

L:SetOptionLocalization({
	TimerImmune	= "Show timer for the duration of Gelihast's immunity during phase transitions."
})

------------------
--  Lorgus Jett  --
------------------
L = DBM:GetModLocalization("LorgusJettSoD")

L:SetGeneralLocalization({
	name = "Lorgus Jett"
})

L:SetWarningLocalization({
	warnPriestRemaining		= "%s Priestesses remaining"
})

L:SetOptionLocalization({
	warnPriestRemaining	= "Show warning for how maining Blackfathom Tide Priestesses are remaining"
})

------------------
--  Twilight Lord Kelris  --
------------------
L = DBM:GetModLocalization("TwilightLordKelrisSoD")

L:SetGeneralLocalization({
	name = "Twilight Lord Kelris"
})

------------------
--  Aku'mai  --
------------------
L = DBM:GetModLocalization("AkumaiSoD")

L:SetGeneralLocalization({
	name = "Aku'mai"
})

------------------
--  Gnomeregan  --
------------------

---------------------------
--  Crowd Pummeler 9-60  --
---------------------------
L = DBM:GetModLocalization("CrowdPummellerSoD")

L:SetGeneralLocalization({
	name = "Crowd Pummeler 9-60"
})

---------------
--  Grubbis  --
---------------
L = DBM:GetModLocalization("GrubbisSoD")

L:SetGeneralLocalization({
	name = "Grubbis"
})

L:SetMiscLocalization({
	FirstPull = "There are still ventilation shafts actively spewing radioactive material throughout Gnomeregan.",
	Pull = "Oh no! Tremors like these can only mean one thing..."
})

----------------------------
--  Electrocutioner 6000  --
----------------------------
L = DBM:GetModLocalization("ElectrocutionerSoD")

L:SetGeneralLocalization({
	name = "Electrocutioner 6000"
})

-----------------------
--  Viscous Fallout  --
-----------------------
L = DBM:GetModLocalization("ViscousFalloutSoD")

L:SetGeneralLocalization({
	name = "Viscous Fallout"
})

----------------------------
--  Mechanical Menagerie  --
----------------------------
L = DBM:GetModLocalization("MechanicalMenagerieSoD")

L:SetGeneralLocalization({
	name = "Mechanical Menagerie"
})

L:SetMiscLocalization{
	Sheep		= "Sheep",
	Whelp		= "Whelp",
	Squirrel	= "Squirrel",
	Chicken		= "Chicken"
}

-----------------------------
--  Mekgineer Thermaplugg  --
-----------------------------
L = DBM:GetModLocalization("ThermapluggSoD")

L:SetGeneralLocalization({
	name = "Mekgineer Thermaplugg"
})

L:SetTimerLocalization{
	timerTankCD = "Tank Ability"
}

L:SetOptionLocalization({
	timerTankCD	= "Show timer for random tank ability cooldown in stage 4"
})

------------------
--  Sunken Temple  --
------------------

--------------
-- ST Trash --
--------------
L = DBM:GetModLocalization("STTrashSoD")

L:SetGeneralLocalization{
	name = "Sunken Temple Trash"
}

---------------------------
--  Atal'alarion  --
---------------------------
L = DBM:GetModLocalization("AtalalarionSoD")

L:SetGeneralLocalization({
	name = "Atal'alarion"
})

---------------------------
--  Festering Rotslime  --
---------------------------
L = DBM:GetModLocalization("FesteringRotslimeSoD")

L:SetGeneralLocalization({
	name = "Festering Rotslime"
})

---------------------------
--  Atal'ai Defenders  --
---------------------------
L = DBM:GetModLocalization("AtalaiDefendersSoD")

L:SetGeneralLocalization({
	name = "Atal'ai Defenders"
})

L:SetOptionLocalization({
	SetIconsOnGhosts = "Set icons on ghost bosses"
})

---------------------------
--  Dreamscythe and Weaver  --
---------------------------
L = DBM:GetModLocalization("DreamscytheAndWeaverSoD")

L:SetGeneralLocalization({
	name = "Dreamscythe and Weaver"
})
---------------------------
--  Avatar of Hakkar  --
---------------------------
L = DBM:GetModLocalization("AvatarofHakkarSoD")

L:SetGeneralLocalization({
	name = "Avatar of Hakkar"
})
---------------------------
--  Jammal'an and Ogom  --
---------------------------
L = DBM:GetModLocalization("JammalanAndOgomSoD")

L:SetGeneralLocalization({
	name = "Jammal'an and Ogom"
})
---------------------------
--  Morphaz and Hazzas  --
---------------------------
L = DBM:GetModLocalization("MorphazandHazzasSoD")

L:SetGeneralLocalization({
	name = "Morphaz and Hazzas"
})
---------------------------
--  Shade of Eranikus  --
---------------------------
L = DBM:GetModLocalization("ShadeofEranikusSoD")

L:SetGeneralLocalization({
	name = "Shade of Eranikus"
})

---------------------------
--  Lord Roccor (3042) --
---------------------------
--L= DBM:GetModLocalization(2663)

---------------------------
--  Bael'Gar (3044) --
---------------------------
--L= DBM:GetModLocalization(2664)

---------------------------
--  Lord Incendius (3043) --
---------------------------
--L= DBM:GetModLocalization(2665)

---------------------------
--  Golem Lord Argelmach (3046) --
---------------------------
--L= DBM:GetModLocalization(2666)

---------------------------
--  The Seven (3048) --
---------------------------
--L= DBM:GetModLocalization(2667)

---------------------------
--  General Angerforge (3045) --
---------------------------
--L= DBM:GetModLocalization(2668)

---------------------------
--  Ambassador Flamelash (3047) --
---------------------------
--L= DBM:GetModLocalization(2669)

---------------------------
--  Emperor Dagran Thaurissan (3049) --
---------------------------
--L= DBM:GetModLocalization(2670)

-----------------------------
--  Scarlet Enclave (SoD)  --
-----------------------------
-- This mostly relies on the new auto-generated locales for boss names from encounter data.
-- Only add name localization if the name in locale.generated.lua is inconsistent with the commonly used name in the language.

L = DBM:GetModLocalization("Balnazzar")

L:SetMiscLocalization{
	OtherPlayer = "another player", -- Use with AUTO_SPEC_WARN_TEXTS.moveto ("$spell - move to >%%s<")
	Tick = "Tick"
}

L = DBM:GetModLocalization("Solistrasza")


L = DBM:GetModLocalization("Beatrix")

L:SetMiscLocalization{
	YellFroggers1 = "break their ranks",
	YellFroggers2 = "Ready your lances",
	CannonMistress = "Cannon Mistress Lind", -- TODO: can we automatically get the localized name?
	YellPhase2 = "We stand united! Let our enemies tremble before our might!",
	Footmen = "Footmen",
	Horses = "Horses",
	YellMeteor = "Arcanist, reduce them to ashes",
}


L = DBM:GetModLocalization("RebornCouncil")


L = DBM:GetModLocalization("Caldoran")


L = DBM:GetModLocalization("LillianVoss")


L = DBM:GetModLocalization("Beastmaster")

L:SetOptionLocalization({
	TimerMark = "Show timer for next Enervate/Enkindle marks (with count)",
	WarnMark = "Show warning for enervate/Enkindle marks (with count)"
})

L:SetTimerLocalization({
	TimerMark	= "Mark %d",
})

L:SetWarningLocalization({
	WarnMark = "Mark %d"
})


L = DBM:GetModLocalization("Mason")

L:SetMiscLocalization{
	Cannons1 = "Fire!",
	Cannons2 = "Fire at will!",
}

L = DBM:GetModLocalization("SE_Trash")
L:SetGeneralLocalization{
	name = "Scarlet Enclave Trash"
}

L:SetOptionLocalization{
	FlightTimer = "Show timers for Gryphon flights",
}

L:SetMiscLocalization{
	CentralTower = "Central Tower",
	Prison = "Prison",
	Cathedral = "Cathedral"
}
