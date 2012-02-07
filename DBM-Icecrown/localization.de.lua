if GetLocale() ~= "deDE" then return end
local L

---------------------------
--  Trash - Lower Spire  --
---------------------------
L = DBM:GetModLocalization("LowerSpireTrash")

L:SetGeneralLocalization{
	name = "Trash der Unteren Spitze"
}

L:SetWarningLocalization{
	SpecWarnTrap		= "Falle aktiviert! - Todesgeweihter Wächter freigesetzt" --creatureid 37007
}

L:SetOptionLocalization{
	SpecWarnTrap		= "Zeige Spezialwarnung für Fallenaktivierung",
	SetIconOnDarkReckoning	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(69483),
	SetIconOnDeathPlague	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(72865)
}

L:SetMiscLocalization{
	WarderTrap1		= "Wer... ist da?",
	WarderTrap2		= "Ich erwache...",
	WarderTrap3		= "Das Sanktum des Meisters wurde entweiht!"
}

---------------------------
--  Trash - Plagueworks  --
---------------------------
L = DBM:GetModLocalization("PlagueworksTrash")

L:SetGeneralLocalization{
	name = "Trash der Seuchenwerke"
}

L:SetWarningLocalization{
	WarnMortalWound	= "%s auf >%s< (%s)",		-- Mortal Wound on >args.destName< (args.amount)
	SpecWarnTrap	= "Falle aktiviert! - Rachsüchtige Fleischernter kommen" --creatureid 37038
}

L:SetOptionLocalization{
	SpecWarnTrap	= "Zeige Spezialwarnung für Fallenaktivierung",
	WarnMortalWound	= DBM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format(71127, GetSpellInfo(71127) or "unbekannt")
}

L:SetMiscLocalization{
	FleshreaperTrap1		= "Schnell, überfallen wir sie von hinten!",
	FleshreaperTrap2		= "Ihr könnt uns nicht entkommen.",
	FleshreaperTrap3		= "Die Lebenden? Hier?!"
}

---------------------------
--  Trash - Crimson Hall  --
---------------------------
L = DBM:GetModLocalization("CrimsonHallTrash")

L:SetGeneralLocalization{
	name = "Trash der Blutroten Halle"
}

L:SetWarningLocalization{
}

L:SetOptionLocalization{
	BloodMirrorIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(70451)
}

L:SetMiscLocalization{
}

---------------------------
--  Trash - Frostwing Hall  --
---------------------------
L = DBM:GetModLocalization("FrostwingHallTrash")

L:SetGeneralLocalization{
	name = "Trash der Frostschwingenhallen"
}

L:SetWarningLocalization{
	SpecWarnGosaEvent	= "Sindragosa-Spießrutenlauf gestartet!"
}

L:SetTimerLocalization{
	GosaTimer			= "Zeit verbleibend"
}

L:SetOptionLocalization{
	SpecWarnGosaEvent	= "Zeige Spezialwarnung für Sindragosa-Spießrutenlauf",
	GosaTimer			= "Dauer des Sindragosa-Spießrutenlaufs anzeigen"
}

L:SetMiscLocalization{
	SindragosaEvent		= "Ihr dürft Euch der Frostkönigin nicht nähern! Schnell, haltet sie auf!"
}

----------------------
--  Lord Marrowgar  --
----------------------
L = DBM:GetModLocalization("LordMarrowgar")

L:SetGeneralLocalization{
	name = "Lord Mark'gar"
}

L:SetTimerLocalization{
	AchievementBoned	= "Zeit zum Befreien"
}

L:SetWarningLocalization{
	WarnImpale			= ">%s< ist aufgespießt"
}

L:SetOptionLocalization{
	WarnImpale			= "Verkünde Ziele von $spell:69062",
	AchievementBoned	= "Zeige Timer für Erfolg 'Entknöchert'",
	SetIconOnImpale		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(69062)
}

-------------------------
--  Lady Deathwhisper  --
-------------------------
L = DBM:GetModLocalization("Deathwhisper")

L:SetGeneralLocalization{
	name = "Lady Todeswisper"
}

L:SetTimerLocalization{
	TimerAdds	= "Neue Adds"
}

L:SetWarningLocalization{
	WarnReanimating				= "Add-Wiederbelebung",			-- Reanimating an adherent or fanatic
	WarnTouchInsignificance		= "%s auf >%s< (%d)",		-- Touch of Insignificance on >args.destName< (args.amount)
	WarnAddsSoon				= "Neue Adds bald"
}

L:SetOptionLocalization{
	WarnAddsSoon				= "Zeige Vorwarnung für erscheinende Adds",
	WarnReanimating				= "Zeige Warnung, wenn ein Add wiederbelebt wird",	-- Reanimated Adherent/Fanatic spawning
	TimerAdds					= "Zeige Zeit bis neue Adds erscheinen",
	ShieldHealthFrame			= "Zeige Lebensanzeige mit einem Balken für $spell:70842",
	WarnTouchInsignificance		= DBM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format(71204, GetSpellInfo(71204) or "unbekannt"),	
	SetIconOnDominateMind		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(71289),
	SetIconOnDeformedFanatic	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(70900),
	SetIconOnEmpoweredAdherent	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(70901)
}

L:SetMiscLocalization{
	YellPull				= "Was soll die Störung? Ihr wagt es, heiligen Boden zu betreten? Dies wird der Ort Eurer letzten Ruhe sein!",
	YellReanimatedFanatic	= "Erhebt Euch und frohlocket ob Eurer reinen Form!",
	ShieldPercent			= "Manabarriere", --Translate Spell id 70842
	Fanatic1				= "Fanatischer Kultist",
	Fanatic2				= "Deformierter Fanatiker",
	Fanatic3				= "Wiederbelebter Fanatiker"
}

----------------------
--  Gunship Battle  --
----------------------
L = DBM:GetModLocalization("GunshipBattle")

L:SetGeneralLocalization{
	name = "Kanonenschiffsschlacht" -- "Kanonenschiffsschlacht von Eiskrone"
}

L:SetWarningLocalization{
	WarnBattleFury	= "%s (%d)",
	WarnAddsSoon	= "Neue Adds bald"
}

L:SetOptionLocalization{
	WarnBattleFury		= DBM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format(69638, GetSpellInfo(69638) or "Kampfesfuror"),
	TimerCombatStart	= "Zeige Zeit bis Kampfbeginn",
	WarnAddsSoon		= "Zeige Vorwarnung für erscheinende Adds",
	TimerAdds			= "Zeige Zeit bis neue Adds erscheinen"
}

L:SetTimerLocalization{
	TimerCombatStart	= "Kampfbeginn",
	TimerAdds			= "Neue Adds"
}

L:SetMiscLocalization{
	PullAlliance	= "Alle Maschinen auf Volldampf! Unser Schicksal erwartet uns!",
	KillAlliance	= "Sagt nicht, ich hätte Euch nicht gewarnt, Ihr Schurken! Vorwärts, Brüder und Schwestern!",
	PullHorde		= "Erhebt Euch, Söhne und Töchter der Horde! Wir ziehen gegen einen verhassten Feind in die Schlacht! LOK'TAR OGAR!",
	KillHorde		= "Die Allianz wankt. Vorwärts zum Lichkönig!",
	AddsAlliance	= "Häscher, Unteroffiziere, Angriff!",
	AddsHorde		= "Soldaten! Zum Angriff!",
	MageAlliance	= "Der Rumpf ist beschädigt! Holt einen Kampfmagier, der die Kanonen ausschaltet!", --needs to be verified (video-captured alliance translation)
	MageHorde		= "Die Außenhaut ist beschädigt! Holt einen Zauberer, der die Kanonen ausschaltet!"
}

-----------------------------
--  Deathbringer Saurfang  --
-----------------------------
L = DBM:GetModLocalization("Deathbringer")

L:SetGeneralLocalization{
	name = "Todesbringer Saurfang"
}

L:SetWarningLocalization{
	WarnFrenzySoon	= "Wahnsinn bald",
	warnMark 		= "Mal des gefallenen Champions (%d) auf >%s<"
}

L:SetTimerLocalization{
	TimerCombatStart		= "Kampfbeginn"
}

L:SetOptionLocalization{
	warnMark				= "Verkünde Ziele von $spell:72444",
	TimerCombatStart		= "Zeige Zeit bis Kampfbeginn",
	WarnFrenzySoon			= "Zeige Vorwarnung für $spell:72737 (bei ~33%)",
	BoilingBloodIcons		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(72441),
	RangeFrame				= "Zeige Abstandsfenster (12m)",
	RunePowerFrame			= "Zeige Lebensanzeige und einen Balken für $spell:72371",
	BeastIcons				= "Setze Zeichen auf Blutbestien"
}

L:SetMiscLocalization{
	RunePower			= "Blutmacht",
	PullAlliance		= "Mit jedem Krieger der Horde, den Ihr getötet habt, mit jedem dieser Allianzhunde, der fiel, wuchsen die Armeen des Lichkönigs. Selbst in diesem Moment erwecken die Val'kyr Eure Gefallenen als Diener der Geißel.",
	PullHorde			= "Kor'kron, Aufbruch! Champions, gebt Acht. Die Geißel ist..."
}

-----------------
--  Festergut  --
-----------------
L = DBM:GetModLocalization("Festergut")

L:SetGeneralLocalization{
	name = "Fauldarm"
}

L:SetWarningLocalization{
	InhaledBlight		= "Eingeatmete Seuche >%d<",
	WarnGastricBloat	= "%s auf >%s< (%s)",		-- Gastric Bloat on >args.destName< (args.amount)
}

L:SetOptionLocalization{
	InhaledBlight		= "Zeige Warnung für $spell:71912",
	RangeFrame			= "Zeige Abstandsfenster (8m)",
	WarnGastricBloat	= DBM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format(72551, GetSpellInfo(72551) or "unbekannt"),	
	SetIconOnGasSpore	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(69279),
	AnnounceSporeIcons	= "Verkünde Zeichen für Ziele von $spell:69279 im Schlachtzugchat (nur als Leiter)",
	AchievementCheck	= "Verkünde Fehlschlag des Erfolgs 'Grippeimpfungs-Engpass' an Schlachtzug (nur als Leiter/Assistent)"
}

L:SetMiscLocalization{
	SporeSet	= "Gassporenzeichen {rt%d} auf %s gesetzt",
	AchievementFailed	= ">> ERFOLG FEHLGESCHLAGEN: %s hat %d Stapel von Geimpft <<"
}

---------------
--  Rotface  --
---------------
L = DBM:GetModLocalization("Rotface")

L:SetGeneralLocalization{
	name = "Modermiene"
}

L:SetWarningLocalization{
	WarnOozeSpawn				= "Kleiner Schlamm erscheint",
	WarnUnstableOoze			= "%s auf >%s< (%d)",			-- Unstable Ooze on >args.destName< (args.amount)
	SpecWarnLittleOoze			= "Kleiner Schlamm greift dich an - Lauf weg!"--creatureid 36897
}

L:SetTimerLocalization{
	NextPoisonSlimePipes		= "Nächster Giftschleim"
}

L:SetOptionLocalization{
	NextPoisonSlimePipes		= "Zeige Zeit bis nächster Auslauf von Giftschleim", -- "Giftschleim" (see trigger), because npc name "Klebriger Schlamm" (37006) == spell name "Klebriger Schlamm" (69774, ...)
	WarnOozeSpawn				= "Zeige Warnung für Erscheinen eines Kleinen Schlamm",
	SpecWarnLittleOoze			= "Zeige Spezialwarnung, wenn du von einem Kleinen Schlamm angegriffen wirst",--creatureid 36897
	RangeFrame					= "Zeige Abstandsfenster (8m)",
	WarnUnstableOoze			= DBM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format(69558, GetSpellInfo(69558) or "unbekannt"),
	InfectionIcon				= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(71224),
	TankArrow					= "Zeige DBM-Pfeil zum Kiter von 'Großer Schlamm'" 
}

L:SetMiscLocalization{
	YellSlimePipes1	= "Gute Nachricht, Freunde! Die Giftschleim-Rohre sind repariert!",	-- Professor Putricide
	YellSlimePipes2	= "Gute Nachricht, Freunde! Der Schleim fließt wieder!"	-- Professor Putricide
}

---------------------------
--  Professor Putricide  --
---------------------------
L = DBM:GetModLocalization("Putricide")

L:SetGeneralLocalization{
	name = "Professor Seuchenmord"
}

L:SetWarningLocalization{
	WarnPhase2Soon				= "Phase 2 bald",
	WarnPhase3Soon				= "Phase 3 bald",
	WarnMutatedPlague			= "%s auf >%s< (%d)",	-- Mutated Plague on >args.destName< (args.amount)
	SpecWarnMalleableGoo		= "Formbarer Glibber auf dir - Lauf weg!",
	SpecWarnMalleableGooNear	= "Formbarer Glibber in deiner Nähe - Aufpassen!",
	SpecWarnUnboundPlague		= "Gebe Entfesselte Seuche weiter!",
	SpecWarnNextPlageSelf		= "Entfesselte Seuche als nächstes auf dir, bereite dich vor!"
}

L:SetOptionLocalization{
	WarnPhase2Soon				= "Zeige Vorwarnung für Phase 2 (bei ~83%)",
	WarnPhase3Soon				= "Zeige Vorwarnung für Phase 3 (bei ~38%)",
	SpecWarnMalleableGoo		= "Zeige Spezialwarnung, falls du das erste Ziel von $spell:72295 bist",
	SpecWarnMalleableGooNear	= "Zeige Spezialwarnung, falls das erste Ziel von $spell:72295 in\ndeiner Nähe ist",
	WarnMutatedPlague			= DBM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format(72451, GetSpellInfo(72451) or "unbekannt"),
	OozeAdhesiveIcon			= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(70447),
	GaseousBloatIcon			= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(70672),
	UnboundPlagueIcon			= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(72856),
	MalleableGooIcon			= "Setze Zeichen auf erstes Ziel von $spell:72295",
	NextUnboundPlagueTargetIcon	= "Setze Zeichen auf nächstes Ziel von $spell:72856",
	YellOnMalleableGoo			= "Schreie bei $spell:72295 auf dir",
	YellOnUnbound				= "Schreie bei $spell:72856 auf dir",
	GooArrow					= "Zeige DBM-Pfeil, wenn $spell:72295 in deiner Nähe ist",
	SpecWarnUnboundPlague		= "Zeige Spezialwarnung für Übertragung von $spell:72856",
	SpecWarnNextPlageSelf		= "Zeige Spezialwarnung, wenn du in der Nähe des Ziels von $spell:72856 bist"
}

L:SetMiscLocalization{
	YellPull		= "Gute Nachricht, Freunde! Ich habe eine Seuche perfektioniert, die alles Leben Azeroths auslöscht!",
	YellMalleable	= "Formbarer Glibber auf mir!",
	YellUnbound		= "Entfesselte Seuche auf mir!"
}

----------------------------
--  Blood Prince Council  --
----------------------------
L = DBM:GetModLocalization("BPCouncil")

L:SetGeneralLocalization{
	name = "Rat des Blutes"
}

L:SetWarningLocalization{
	WarnTargetSwitch		= "Ziel wechseln auf: %s",
	WarnTargetSwitchSoon	= "Zielwechsel bald",
	SpecWarnVortex			= "Schockvortex auf dir - Lauf weg!",
	SpecWarnVortexNear		= "Schockvortex in deiner Nähe - Aufpassen!"
}

L:SetTimerLocalization{
	TimerTargetSwitch		= "Zielwechsel"
}

L:SetOptionLocalization{
	WarnTargetSwitch		= "Zeige Warnung für Zielwechsel",-- Warn when another Prince needs to be damaged
	WarnTargetSwitchSoon	= "Zeige Vorwarnung für Zielwechsel",-- Every ~47 secs, you have to dps a different Prince
	TimerTargetSwitch		= "Zeige Zeit bis Zielwechsel",
	SpecWarnVortex			= "Zeige Spezialwarnung für $spell:72037 auf dich",
	SpecWarnVortexNear		= "Zeige Spezialwarnung für $spell:72037 in deiner Nähe",
	EmpoweredFlameIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(72040),
	ActivePrinceIcon		= "Setze Zeichen auf den machterfüllten Prinzen (Totenkopf)",
	RangeFrame				= "Zeige Abstandsfenster (12m)",
	VortexArrow				= "Zeige DBM-Pfeil, wenn $spell:72037 in deiner Nähe ist",
	BypassLatencyCheck		= "NICHT IMPLEMENTIERT! BypassLatencyCheck" -- obsolete
}

L:SetMiscLocalization{
	Keleseth			= "Prinz Keleseth",
	Taldaram			= "Prinz Taldaram",
	Valanar				= "Prinz Valanar",
	EmpoweredFlames		= "Machtvolle Flammen rasen auf (%S+) zu!"
}

-----------------------------
--  Blood-Queen Lana'thel  --
-----------------------------
L = DBM:GetModLocalization("Lanathel")

L:SetGeneralLocalization{
	name = "Blutkönigin Lana'thel"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	SetIconOnDarkFallen		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(71340),
	SwarmingShadowsIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(71266),
	BloodMirrorIcon			= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(70838),
	RangeFrame				= "Zeige Abstandsfenster (8m)",
	YellOnFrenzy			= "Schreie, wenn du von $spell:71474 betroffen bist"
}

L:SetMiscLocalization{
	SwarmingShadows			= "Schatten sammeln sich und schwärmen um (%S+)!",
	YellFrenzy				= "Ich habe Durst!"
}

-----------------------------
--  Valithria Dreamwalker  --
-----------------------------
L = DBM:GetModLocalization("Valithria")

L:SetGeneralLocalization{
	name = "Valithria Traumwandler"
}

L:SetWarningLocalization{
	WarnCorrosion	= "%s auf >%s< (%d)",		-- Corrosion on >args.destName< (args.amount)
	WarnPortalOpen	= "Portale offen"
}

L:SetTimerLocalization{
	TimerPortalsOpen		= "Portale offen",
	TimerBlazingSkeleton	= "Nächstes Loderndes Skelett",
	TimerAbom				= "Nächste Monstrosität"
}

L:SetOptionLocalization{
	SetIconOnBlazingSkeleton	= "Setze Zeichen auf Loderndes Skelett (Totenkopf)",
	WarnPortalOpen				= "Zeige Warnung, wenn Alptraumportale geöffnet sind",
	TimerPortalsOpen			= "Zeige Zeit bis Alptraumportale geöffnet sind",
	TimerBlazingSkeleton		= "Zeige Zeit bis nächstes Loderndes Skelett erscheint",
	TimerAbom					= "Zeige Zeit bis nächste Gefräßige Monstrosität erscheint (experimentell)",
	WarnCorrosion				= DBM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format(70751, GetSpellInfo(70751) or "unbekannt")
}

L:SetMiscLocalization{
	YellPull		= "Eindringlinge im Inneren Sanktum! Beschleunigt die Vernichtung des grünen Drachen! Bewahrt nur Knochen und Sehnen für die Wiederbelebung auf!",
	YellKill		= "ICH BIN GEHEILT! Ysera, erlaubt mir, diese üblen Kreaturen zu beseitigen",
	YellPortals		= "Ich habe ein Portal in den Traum geöffnet. Darin liegt Eure Erlösung, Helden...",
	YellPhase2		= "Meine Kraft kehrt zurück. Macht weiter, Helden!"
}

------------------
--  Sindragosa  --
------------------
L = DBM:GetModLocalization("Sindragosa")

L:SetGeneralLocalization{
	name = "Sindragosa"
}

L:SetTimerLocalization{
	TimerNextAirphase		= "Nächste Luftphase",
	TimerNextGroundphase	= "Nächste Bodenphase",
	AchievementMystic		= "Ablaufzeit für Mystischer Puffer"
}

L:SetWarningLocalization{
	WarnPhase2soon			= "Phase 2 bald",
	WarnAirphase			= "Luftphase",
	WarnGroundphaseSoon		= "Sindragosa landet bald",
	WarnInstability			= "Instabilität >%d<",
	WarnChilledtotheBone	= "Durchgefroren >%d<",
	WarnMysticBuffet		= "Mystischer Puffer >%d<"
}

L:SetOptionLocalization{
	WarnAirphase			= "Verkünde Luftphase",
	WarnGroundphaseSoon		= "Zeige Vorwarnung für Bodenphase",
	WarnPhase2soon			= "Zeige Vorwarnung für Phase 2 (bei ~38%)",
	TimerNextAirphase		= "Zeige Zeit bis nächste Luftphase",
	TimerNextGroundphase	= "Zeige Zeit bis nächste Bodenphase",
	WarnInstability			= "Zeige Warnung für deine $spell:69766 Stapel",
	WarnChilledtotheBone	= "Zeige Warnung für deine $spell:70106 Stapel",
	WarnMysticBuffet		= "Zeige Warnung für deine $spell:70128 Stapel",
	AnnounceFrostBeaconIcons= "Verkünde Zeichen für Ziele von $spell:70126 im SZ-Chat (nur als Leiter)",
	SetIconOnFrostBeacon	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(70126),
	SetIconOnUnchainedMagic	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(69762),
	ClearIconsOnAirphase	= "Entferne alle Zeichen vor der Luftphase",
	AchievementCheck		= "Verkünde Warnungen für den Erfolg 'Das Buffet ist eröffnet' an Schlachtzug (nur als Leiter/Assistent)",
	RangeFrame				= "Zeige dynamisches Abstandsfenster (10m/20m) basierend auf zuletzt\ngenutzten Bossfähigkeiten und Spieler-Debuffs"
}

L:SetMiscLocalization{
	YellAirphase		= "Euer Vormarsch endet hier! Keiner wird überleben!",
	YellPhase2			= "Fühlt die grenzenlose Macht meines Meisters, und verzweifelt!",
	YellAirphaseDem		= "Rikk zilthuras rikk zila Aman adare tiriosh ",--Demonic, since curse of tonges is used by some guilds and it messes up yell detection.
	YellPhase2Dem		= "Zar kiel xi romathIs zilthuras revos ruk toralar ",--Demonic, since curse of tonges is used by some guilds and it messes up yell detection.
	BeaconIconSet		= "Frostleuchtfeuer-Zeichen {rt%d} auf %s gesetzt",
	AchievementWarning	= "Warnung: %s hat 5 Stapel von Mystischer Puffer",
	AchievementFailed	= ">> ERFOLG FEHLGESCHLAGEN: %s hat %d Stapel von Mystischer Puffer <<",
	YellPull			= "Ihr seid Narren, euch hierher zu wagen. Der eisige Wind Nordends wird eure Seelen verschlingen!"	--Not currently in use.
}

---------------------
--  The Lich King  --
---------------------
L = DBM:GetModLocalization("LichKing")

L:SetGeneralLocalization{
	name = "Der Lichkönig"
}

L:SetWarningLocalization{
	WarnPhase2Soon			= "Übergang in Phase 2 bald",
	WarnPhase3Soon			= "Übergang in Phase 3 bald",
	ValkyrWarning			= ">%s< wurde gegriffen!",
	SpecWarnYouAreValkd		= "Du wurdest gegriffen",
	SpecWarnDefileCast		= "Entweihen auf dir - Lauf weg!",
	SpecWarnDefileNear		= "Entweihen in deiner Nähe - Aufpassen!",
	SpecWarnTrapNear		= "Schattenfalle in deiner Nähe - Aufpassen!",
	WarnNecroticPlagueJump	= "Nekrotische Seuche auf >%s< gesprungen",
	SpecWarnPALGrabbed		= "Paladin Heiler %s wurde gegriffen",
	SpecWarnPRIGrabbed		= "Priester Heiler %s wurde gegriffen",
	SpecWarnValkyrLow		= "Schattenwächterin unter 55%%"
}

L:SetTimerLocalization{
	TimerCombatStart	= "Kampfbeginn",
	TimerRoleplay		= "Rollenspiel",
	PhaseTransition		= "Phasenübergang",
	TimerNecroticPlagueCleanse = "Nekrotische Seuche reinigen"
}

L:SetOptionLocalization{
	TimerCombatStart		= "Zeige Zeit bis Kampfbeginn",
	TimerRoleplay			= "Dauer des Rollenspiels (bei 10%) anzeigen",
	WarnNecroticPlagueJump	= "Verkünde Sprungziele von $spell:73912",
	TimerNecroticPlagueCleanse	= "Zeige Timer zum Reinigen von $spell:73912 vor dem ersten Tick",
	PhaseTransition			= "Dauer der Phasenübergänge anzeigen",
	WarnPhase2Soon			= "Zeige Vorwarnung für Übergang in Phase 2 (bei ~73%)",
	WarnPhase3Soon			= "Zeige Vorwarnung für Übergang in Phase 3 (bei ~43%)",
	ValkyrWarning			= "Verkünde Griffziele der Schattenwächterinnen der Val'kyr",
	SpecWarnYouAreValkd		= "Zeige Spezialwarnung, wenn du von einer Schattenwächterin der Val'kyr gegriffen wurdest",--npc36609
	SpecWarnHealerGrabbed	= "Zeige Spezialwarnung, wenn ein Paladin Heiler oder Priester Heiler\ngegriffen wurde (nur wenn der Heiler selbst auch DBM ausführt)",
	SpecWarnDefileCast		= "Zeige Spezialwarnung für $spell:72762 auf dir",
	SpecWarnDefileNear		= "Zeige Spezialwarnung für $spell:72762 in deiner Nähe",
	SpecWarnTrapNear		= "Zeige Spezialwarnung für $spell:73539 in deiner Nähe",
	YellOnDefile			= "Schreie bei $spell:72762 auf dir",
	YellOnTrap				= "Schreie bei $spell:73539 auf dir",
	DefileIcon				= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(72762),
	NecroticPlagueIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(73912),
	RagingSpiritIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(69200),
	TrapIcon				= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(73539),
	HarvestSoulIcon			= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(74327),
	ValkyrIcon				= "Setze Zeichen auf Schattenwächterinnen der Val'kyr",
	DefileArrow				= "Zeige DBM-Pfeil, wenn $spell:72762 in deiner Nähe ist",
	TrapArrow				= "Zeige DBM-Pfeil, wenn $spell:73539 in deiner Nähe ist",
	LKBugWorkaround			= "NICHT IMPLEMENTIERT! LKBugWorkaround", -- obsolete
	AnnounceValkGrabs		= "Verkünde Griffziele der Schattenwächterinnen der Val'kyr im SZ-Chat\n(benötigt aktivierte Mitteilungen und Leiter-/Assistentenstatus)",
	SpecWarnValkyrLow		= "Zeige Spezialwarnung, wenn eine Schattenwächterin der Val'kyr unter 55% Lebenspunkte ist",
	AnnouncePlagueStack		= "Verkünde $spell:73912 Stapel an den Schlachtzug (ab 10 Stapel,\ndanach alle 5 Stapel)\n(nur als Leiter/Assistent)",
}

L:SetMiscLocalization{
	LKPull					= "Der vielgerühmte Streiter des Lichts ist endlich hier? Soll ich Frostgram niederlegen und mich Eurer Gnade ausliefern, Fordring?",
	YellDefile				= "Entweihen auf mir!",
	YellTrap				= "Schattenfalle auf mir!",
	YellValk				= "Ich wurde gegriffen!",
	LKRoleplay				= "Ist es wirklich Rechtschaffenheit, die Euch treibt? Ich bin mir nicht sicher…",
	PlagueWhisper			= "Ihr wurdet von der",
	ValkGrabbedIcon			= "Schattenwächterin der Val'kyr {rt%d} hat %s gegriffen",
	ValkGrabbed				= "Schattenwächterin der Val'kyr hat %s gegriffen",
	PlagueStackWarning		= "Warnung: %s hat %d Stapel von Nekrotischer Seuche",
	AchievementCompleted	= ">> ERFOLG FERTIG: %s hat %d Stapel von Nekrotischer Seuche <<"
}
