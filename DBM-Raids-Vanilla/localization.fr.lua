if GetLocale() ~= "frFR" then return end
local L

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
	name 		= "Général Rajaxx"
}
L:SetWarningLocalization{
	WarnWave	= "Vague %s"
}
L:SetOptionLocalization{
	WarnWave	= "Afficher une annonce pour la prochaine vague entrante"
}
L:SetMiscLocalization{
	Wave12		= "Ils arrivent. Essayez de ne pas vous faire tuer, bleusaille.",
	Wave12Alt	= "Alors, Rajaxx, tu te souviens que j’avais dit que je te tuerais le dernier ?",
	Wave3		= "L’heure de notre vengeance sonne enfin ! Que les ténèbres règnent dans le cœur de nos ennemis !",
	Wave4		= "C’en est fini d’attendre derrière des portes fermées et des murs de pierre ! Nous ne serons pas privés de notre vengeance ! Les dragons eux-mêmes trembleront devant notre courroux !",
	Wave5		= "La peur est pour l’ennemi ! La peur et la mort !",
	Wave6		= "Forteramure pleurnichera pour avoir la vie sauve, comme l’a fait son morveux de fils ! En ce jour, mille ans d’injustice s’achèvent !",
	Wave7		= "Fandral ! Ton heure est venue ! Va te cacher dans le Rêve d’Emeraude, et prie pour que nous ne te trouvions jamais !",
	Wave8		= "Imbécile imprudent ! Je vais te tuer moi-même !"
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
	name 		= "Buru Grandgosier"
}
L:SetWarningLocalization{
	WarnPursue		= "Poursuivre >%s<",
	SpecWarnPursue	= "Te poursuivre",
	WarnDismember	= "%s sur >%s< (%s)"
}
L:SetOptionLocalization{
	WarnPursue		= "Afficher une annonce pour les cibles de poursuite",
	SpecWarnPursue	= "Afficher une annonce spéciale lorsque vous êtes poursuivi",
	WarnDismember	= DBM_CORE_L.AUTO_ANNOUNCE_OPTIONS.spell:format(96)
}
L:SetMiscLocalization{
	PursueEmote 	= "pose ses yeux sur"
}

-------------
-- Ayamiss --
-------------
L = DBM:GetModLocalization("Ayamiss")

L:SetGeneralLocalization{
	name 		= "Ayamiss le Chasseur"
}

--------------
-- Ossirian --
--------------
L = DBM:GetModLocalization("Ossirian")

L:SetGeneralLocalization{
	name 		= "Ossirian l'Intouché"
}
L:SetWarningLocalization{
	WarnVulnerable	= "%s"
}
L:SetTimerLocalization{
	TimerVulnerable	= "%s"
}
L:SetOptionLocalization{
	WarnVulnerable	= "Afficher une annonce pour les sensibilités",
	TimerVulnerable	= "Afficher un chronomètre pour les sensibilités"
}

----------------
-- AQ20 Trash --
----------------
L = DBM:GetModLocalization("AQ20Trash")

L:SetGeneralLocalization{
	name = "AQ20 : Ennemis communs"
}
L:SetTimerLocalization{
	TimerExplosion = "Fantômes explosifs"
}

L:SetWarningLocalization{
	WarnExplosion 		= "Un seul fantôme explosif est apparu - esquivez",
	SpecWarnExplosion 	= "Fantômes explosifs - esquivez",
}
L:SetOptionLocalization{
	WarnExplosion 		= "Afficher une annonce pour les fantômes explosifs ($spell:1214871)",
	SpecWarnExplosion 	= "Afficher une annonce spéciale lorsque plusieurs fantômes explosifs apparaissent ($spell:1214871)",
	TimerExplosion 		= "Afficher un chronomètre pour l'apparition de plusieurs fantômes explosifs ($spell:1214871)"
}

------------
-- Skeram --
------------
L = DBM:GetModLocalization("Skeram")

L:SetGeneralLocalization{
	name = "Le Prophète Skeram"
}

----------------
-- Three Bugs --
----------------
L = DBM:GetModLocalization("ThreeBugs")

L:SetGeneralLocalization{
	name = "Trio d'insectes"
}
L:SetMiscLocalization{
	Yauj = "Princesse Yauj",
	Vem = "Vem",
	Kri = "Seigneur Kri"
}

-------------
-- Sartura --
-------------
L = DBM:GetModLocalization("Sartura")

L:SetGeneralLocalization{
	name = "Garde de guerre Sartura"
}

--------------
-- Fankriss --
--------------
L = DBM:GetModLocalization("Fankriss")

L:SetGeneralLocalization{
	name = "Fankriss l'Inflexible"
}

--------------
-- Viscidus --
--------------
L = DBM:GetModLocalization("Viscidus")

L:SetGeneralLocalization{
	name = "Viscidus"
}
L:SetWarningLocalization{
	WarnFreeze	= "Gel : %d/3",
	WarnShatter	= "Briser : %d/3"
}
L:SetOptionLocalization{
	WarnFreeze	= "Afficher une annonce pour le Gel",
	WarnShatter	= "Afficher une annonce pour le Bris"
}
L:SetMiscLocalization{
	Slow	= "commence à ralentir !",
	Freezing= "est gelé !",
	Frozen	= "est congelé !",
	Phase4 	= "commence à se briser !",
	Phase5 	= "semble prêt à se briser !",
	Phase6 	= "explose !",

	FrostHitsPerSecond = "Coups de givre par seconde",
	MeleeHitsPerSecond = "Coups au corps à corps par seconde",
}
-------------
-- Huhuran --
-------------
L = DBM:GetModLocalization("Huhuran")

L:SetGeneralLocalization{
	name = "Princesse Huhuran"
}
---------------
-- Twin Emps --
---------------
L = DBM:GetModLocalization("TwinEmpsAQ")

L:SetGeneralLocalization{
	name = "Empereurs Jumeaux"
}
L:SetMiscLocalization{
	Veklor = "Empereur Vek'lor",
	Veknil = "Empereur Vek'nilash"
}

------------
-- C'Thun --
------------
L = DBM:GetModLocalization("CThun")

L:SetGeneralLocalization{
	name = "C'Thun"
}
L:SetWarningLocalization{
	WarnEyeTentacle			= "Tentacule oculaire",
	WarnClawTentacle2		= "Tentacule griffu",
	WarnGiantEyeTentacle	= "Tentacule oculaire géant",
	WarnGiantClawTentacle	= "Tentacule griffu géant",
	SpecWarnWeakened		= "C'Thun est affaibli !"
}
L:SetTimerLocalization{
	TimerEyeTentacle		= "Prochain Tentacule oculaire",
	TimerClawTentacle		= "Prochain Tentacule griffu",
	TimerGiantEyeTentacle	= "Prochain Tentacule oculaire géant",
	TimerGiantClawTentacle	= "Prochain Tentacule griffu géant",
	TimerWeakened			= "L'affaiblissement terminé"
}
L:SetOptionLocalization{
	WarnEyeTentacle			= "Afficher une annonce pour Tentacule oculaire",
	WarnClawTentacle2		= "Afficher une annonce pour Tentacule griffu",
	WarnGiantEyeTentacle	= "Afficher une annonce pour Tentacule oculaire géant",
	WarnGiantClawTentacle	= "Afficher une annonce pour Tentacule griffu géant",
	SpecWarnWeakened		= "Afficher une annonce spéciale lorsque le boss s'affaiblit",
	TimerEyeTentacle		= "Afficher un chronomètre pour le prochain Tentacule oculaire",
	TimerClawTentacle		= "Afficher un chronomètre pour le prochain Tentacule griffu",
	TimerGiantEyeTentacle	= "Afficher un chronomètre pour le prochain Tentacule oculaire géant",
	TimerGiantClawTentacle	= "Afficher un chronomètre pour le prochain Tentacule griffu géant",
	TimerWeakened			= "Afficher un chronomètre pour la durée d'affaiblissement du boss",
	RangeFrame				= "Afficher le cadre de portée (10 m)"
}
L:SetMiscLocalization{
	Stomach		= "Estomac",
	Eye			= "Oeil de C'Thun",
	FleshTent	= "Tentacule de chair",
	Weakened 	= "est affaibli !",
	NotValid	= "AQ40 partiellement effacé. %s bosses optionnels restent."
}
----------------
-- Ouro --
----------------
L = DBM:GetModLocalization("Ouro")

L:SetGeneralLocalization{
	name = "Ouro"
}
L:SetWarningLocalization{
	WarnSubmerge		= "Ouro a submergé",
	WarnEmerge			= "Ouro a émergé",
	SpecWarnEye			= "Détournez le regard"
}
L:SetTimerLocalization{
	TimerSubmerge		= "Submersion",
	TimerEmerge			= "Émersion"
}
L:SetOptionLocalization{
	WarnSubmerge		= "Afficher une annonce pour la submersion d'Ouro",
	TimerSubmerge		= "Afficher un chronomètre pour la submersion d'Ouro",
	WarnEmerge			= "Afficher une annonce pour l'émersion d'Ouro",
	TimerEmerge			= "Afficher un chronomètre pour l'émersion d'Ouro",
	SpecWarnEye			= "Afficher une annonce pour l'œil géant"
}

----------------
-- AQ40 Trash --
----------------
L = DBM:GetModLocalization("AQ40Trash")

L:SetGeneralLocalization{
	name = "AQ40 : Ennemis communs"
}
L:SetTimerLocalization{
	TimerExplosion = "Fantômes explosifs"
}

L:SetWarningLocalization{
	WarnExplosion 		= "Un seul fantôme explosif est apparu - esquivez",
	SpecWarnExplosion 	= "Fantômes explosifs - esquivez",
}
L:SetOptionLocalization{
	WarnExplosion 		= "Afficher une annonce pour les fantômes explosifs ($spell:1214871)",
	SpecWarnExplosion 	= "Afficher une annonce spéciale lorsque plusieurs fantômes explosifs apparaissent ($spell:1214871)",
	TimerExplosion 		= "Afficher un chronomètre pour l'apparition de plusieurs fantômes explosifs ($spell:1214871)"
}

-------------------
--  Venoxis  --
-------------------
L = DBM:GetModLocalization("Venoxis")

L:SetGeneralLocalization{
	name = "Grand prêtre Venoxis"
}

-------------------
--  Jeklik  --
-------------------
L = DBM:GetModLocalization("Jeklik")

L:SetGeneralLocalization{
	name = "Grande prêtresse Jeklik"
}

-------------------
--  Marli  --
-------------------
L = DBM:GetModLocalization("Marli")

L:SetGeneralLocalization{
	name = "Grande prêtresse Mar'li"
}

-------------------
--  Thekal  --
-------------------
L = DBM:GetModLocalization("Thekal")

L:SetGeneralLocalization{
	name = "Grand prêtre Thekal"
}

L:SetWarningLocalization({
	WarnSimulKill	= "Premier serviteur mort - Résurrection en ~15 secondes"
})

L:SetTimerLocalization({
	TimerSimulKill	= "Résurrection"
})

L:SetOptionLocalization({
	WarnSimulKill	= "Annoncez le premier serviteur mort",
	TimerSimulKill	= "Afficher un chronomètre pour la résurrection des prêtres"
})

L:SetMiscLocalization({
	PriestDied	= "%s meurt.",
	YellPhase2	= "Shirvallah, que ta RAGE m’envahisse !",
	YellKill	= "Hakkar ne me domine plus ! Je connais enfin la paix !",
	Thekal		= "Grand prêtre Thekal",
	Zath		= "Zélote Zath",
	LorKhan		= "Zélote Lor'Khan"
})

-------------------
--  Arlokk  --
-------------------
L = DBM:GetModLocalization("Arlokk")

L:SetGeneralLocalization{
	name = "Grande prêtresse Arlokk"
}

-------------------
--  Hakkar  --
-------------------
L = DBM:GetModLocalization("Hakkar")

L:SetGeneralLocalization{
	name = "Hakkar"
}

-------------------
--  Bloodlord  --
-------------------
L = DBM:GetModLocalization("Bloodlord")

L:SetGeneralLocalization{
	name = "Seigneur sanglant Mandokir"
}
L:SetMiscLocalization{
	Bloodlord 	= "Seigneur sanglant Mandokir",
	Ohgan		= "Ohgan",
	GazeYell	= "je vous ai à l'œil"
}

-------------------
--  Edge of Madness  --
-------------------
L = DBM:GetModLocalization("EdgeOfMadness")

L:SetGeneralLocalization{
	name = "Frontière de la folie"
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
	name = "Jin'do le Maléficieur"
}
L:SetMiscLocalization{
	Ghosts = "Fantômes"
}
-----------------
--  Razorgore  --
-----------------
L = DBM:GetModLocalization("Razorgore")

L:SetGeneralLocalization{
	name = "Tranchetripe l'Indompté"
}
L:SetTimerLocalization{
	TimerAddsSpawn	= "Premiers serviteurs"
}
L:SetOptionLocalization{
	TimerAddsSpawn	= "Afficher un chronomètre pour les premiers serviteurs"
}
L:SetMiscLocalization{
	Phase2Emote	= "s'enfuit car le contrôle de l'orbe s'affaiblit.",
	YellPull = "La chambre des œufs est envahie ! Sonnez l'alarme ! Protégez les œufs à tout prix !"
}
-------------------
--  Vaelastrasz  --
-------------------
L = DBM:GetModLocalization("Vaelastrasz")

L:SetGeneralLocalization{
	name				= "Vaelastrasz le Corrompu"
}

L:SetMiscLocalization{
	Event				= "Trop tard, mes amis ! La corruption de Nefarius s'empare de moi… Je ne peux plus… me contrôler."
}
-----------------
--  Broodlord  --
-----------------
L = DBM:GetModLocalization("Broodlord")

L:SetGeneralLocalization{
	name	= "Seigneur des couvées Lashlayer"
}

L:SetMiscLocalization{
	Pull	= "Aucun membre de votre espèce ne devrait être ici ! Vous vous êtes condamnés vous-mêmes !"
}

---------------
--  Firemaw  --
---------------
L = DBM:GetModLocalization("Firemaw")

L:SetGeneralLocalization{
	name = "Gueule-de-feu"
}

---------------
--  Ebonroc  --
---------------
L = DBM:GetModLocalization("Ebonroc")

L:SetGeneralLocalization{
	name = "Rochébène"
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
L:SetGeneralLocalization{
	name = "Rochébène et Flamegor"
}

L:SetTimerLocalization{
	TimerBrandCD	= "Marque"
}
L:SetOptionLocalization{
	TimerBrandCD	= "Afficher un chronomètre pour le temps de recharge de la marque"
}

L:SetMiscLocalization{
	Ebonroc		= "Rochébène",
	Flamegor	= "Flamegor"
}

-----------------------
--  Vulnerabilities  --
-----------------------
-- Chromaggus, Death Talon Overseer and Death Talon Wyrmguard
L = DBM:GetModLocalization("BWLTrash")

L:SetGeneralLocalization{
	name = "Gardes Griffemort"--FIXME
}
L:SetWarningLocalization{
	WarnVulnerable		= "Vulnérabilité : %s"
}
L:SetOptionLocalization{
	WarnVulnerable		= "Afficher un annonce pour les vulnérabilités des sorts"
}
L:SetMiscLocalization{
	Fire		= "Feu",
	Nature		= "Nature",
	Frost		= "Givre",
	Shadow		= "Ombre",
	Arcane		= "Arcanes",
	Holy		= "Sacré"
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
	WarnVulnerable	= "Vulnérabilité : %s"
}
L:SetTimerLocalization{
	TimerBreathCD	= "%s recharge",
	TimerBreath		= "%s incantation",
	TimerVulnCD		= "Recharge de Vulnérabilité",
	TimerAllBreaths = "Salve de souffle"
}
L:SetOptionLocalization{
	WarnBreath			= "Afficher une annonce lorsque Chromaggus incante un de ses souffles",
	WarnVulnerableNew	= "Afficher une annonce pour les vulnérabilités des sorts",
	TimerBreathCD		= "Afficher le temps de recharge du souffle",
	TimerBreath			= "Afficher l'incantation du souffle",
	TimerVulnCD			= "Afficher le temps de recharge de la vulnérabilité",
	TimerAllBreaths 	= "Afficher un chronomètre pour Salve de souffle"
}
L:SetMiscLocalization{
	Breath1		= "Premier souffle",
	Breath2		= "Deuxième souffle",
	VulnEmote	= "%s grimace lorsque sa peau se met à briller.",
	Fire		= "Feu",
	Nature		= "Nature",
	Frost		= "Givre",
	Shadow		= "Ombre",
	Arcane		= "Arcanes",
	Holy		= "Sacré"
}

----------------
--  Nefarian  --
----------------
L = DBM:GetModLocalization("Nefarian-Classic")

L:SetGeneralLocalization{
	name = "Nefarian"
}
L:SetWarningLocalization{
	WarnAddsLeft		= "%d restants",
	WarnClassCall		= "L'appel de %s",
	specwarnClassCall	= "Votre appel de classe !"
}
L:SetTimerLocalization{
	TimerClassCall		= "L'appel de %s termine"
}
L:SetOptionLocalization{
	TimerClassCall		= "Afficher un chronomètre pour la durée de l'appel en classe",
	WarnAddsLeft		= "Afficher une annonce pour les éliminations restantes jusqu'au déclenchement de la phase 2",
	WarnClassCall		= "Afficher une annonce pour les appels de classe",
	specwarnClassCall	= "Afficher une annonce spéciale lorsque vous êtes affecté par un appel de classe"
}
L:SetMiscLocalization{
    YellP1			= "Que les jeux commencent !",
    YellP2			= "Beau travail ! Le courage des mortels commence à faiblir ! Voyons maintenant s'ils peuvent lutter contre le véritable seigneur du pic Blackrock !",
    YellP3			= "C'est impossible ! Relevez-vous, serviteurs ! Servez une nouvelle fois votre maître !",
    YellShaman		= "Chamans, montrez-moi ce que vos totems peuvent faire !",
    YellPaladin		= "Les paladins... J'en entendu dire que vous aviez de nombreuses vies... Montrez-moi.",
    YellDruid		= "Les druides et leur stupides changements de forme. Voyons ce qu'ils donnent en vrai...",
    YellPriest		= "Prêtres ! Si vous continuez à soigner comme ça, nous pourrions rendre le processus plus intéressant !",
    YellWarrior		= "Guerriers, je sais que vous pouvez frapper plus fort que ça ! Voyons ça !",
    YellRogue		= "Voleurs, arrêtez de vous cacher et affrontez-moi !",
    YellWarlock		= "Démonistes, vous ne devriez pas jouer avec une magie qui vous dépasse. Vous voyez ce qui arrive ?",
    YellHunter		= "Ah, les chasseurs et les stupides sarbacanes !",
    YellMage		= "Les mages aussi ? Vous devriez être plus prudents lorsque vous jouez avec la magie."
}

----------------------
--  SoD BWL Trials  --
----------------------
L = DBM:GetModLocalization("SoDBWLTrials")

L:SetGeneralLocalization{
	name = "Épreuves de la saison de la découverte"
}
L:SetWarningLocalization{
	SpecWarnBothBombs		= "Bleu et vert sur >%s<",
	SpecWarnBothBombsYou	= "Bleu et vert sur VOUS",
}
L:SetTimerLocalization{
	TimerBombs				= DBM_COMMON_L.BOMBS
}
L:SetOptionLocalization{
SpecWarnBothBombs			= "Afficher une annonce spéciale si les bombes bleue et verte sont sur le même joueur",
SpecWarnBothBombsYou		= "Afficher une annonce spéciale si les bombes bleue et verte sont sur vous",
TimerBombs					= "Afficher un chronomètre pour les bombes d'épreuve bleue et verte"
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
	name = "Messager de Sulfuron"
}

----------------
--  Golemagg  --
----------------
L = DBM:GetModLocalization("Golemagg")

L:SetGeneralLocalization{
	name = "Golemagg l'Incinérateur"
}

-----------------
--  Majordomo  --
-----------------
L = DBM:GetModLocalization("Majordomo")

L:SetGeneralLocalization{
	name = "Chambellan Executus"
}
L:SetTimerLocalization{
	timerShieldCD		= "Bouclier suivant"
}
L:SetOptionLocalization{
	timerShieldCD		= "Afficher un chronomètre pour le prochain bouclier de dégâts / Renvoi de la magie"
}

----------------
--  Ragnaros  --
----------------
L = DBM:GetModLocalization("Ragnaros-Classic")

L:SetGeneralLocalization{
	name = "Ragnaros"
}
L:SetWarningLocalization{
	WarnSubmerge		= "Submergé",
	WarnEmerge			= "Émergé"
}
L:SetTimerLocalization{
	TimerSubmerge		= "Submergé",
	TimerEmerge			= "Émergé",
}
L:SetOptionLocalization{
	WarnSubmerge		= "Afficher une annonce pour submergé",
	TimerSubmerge		= "Afficher un chronomètre pour submergé",
	WarnEmerge			= "Afficher une annonce pour émergé",
	TimerEmerge			= "Afficher un chronomètre pour émergé",
}
L:SetMiscLocalization{
	Submerge	= "VENEZ, MES SERVITEURS ! DÉFENDEZ VOTRE MAÎTRE !",
	Pull		= "Impudents imbéciles ! Vous vous êtes précipités vers votre propre mort ! Voyez, à présent, le Maître remue !"
}

-----------------
--  The Molten Core  --
-----------------
L = DBM:GetModLocalization("MoltenCore")

L:SetGeneralLocalization{
	name = "Le Cœur du Magma"
}

L:SetOptionLocalization{
	YellHeartCleared	= "Crier lorsque le Cœur de cendre/braise est retiré.",
	WarnBossPower		= "Afficher des annonces lorsque l'énergie du boss atteint 50 %, 75 %, 90 % et 100 %"
}

L:SetWarningLocalization{
	WarnBossPower		= "L'énergie du boss à %d%%"
}
-----------------
--  MC: Trash  --
-----------------
L = DBM:GetModLocalization("MCTrash")

L:SetGeneralLocalization{
	name = "CM : Ennemis communs"
}

--------------
--  Onyxia  --
--------------
L = DBM:GetModLocalization("OnyxiaVanilla")

L:SetGeneralLocalization{
	name = "Onyxia"
}

L:SetWarningLocalization{
	WarnWhelpsSoon		= "Les Jeunes dragonnets onyxien arrivent bientôt"
}

L:SetTimerLocalization{
	TimerWhelps = "Arrivée des Jeunes dragonnets onyxien"
}

L:SetOptionLocalization{
	TimerWhelps				= "Afficher un chronomètre pour l'arrivée des Jeunes dragonnets onyxien",
	WarnWhelpsSoon			= "Afficher une annonce avant l'arrivée des Jeunes dragonnets onyxien",
	SoundWTF3				= "Joue des sons amusants du légendaire raid classic d'Onyxia"
}

L:SetMiscLocalization{
	Breath = "%s prend une grande inspiration...",
	YellPull = "Quelle chance ! D'habitude, je dois quitter mon repaire pour me nourrir.",
	YellP2 = "Cet exercice dénué de sens m'ennuie. Je vais vous incinérer d'un seul coup !",
	YellP3 = "Il semble que vous ayez besoin d'une autre leçon, mortels !",
	SoDWarning = "Bienvenue à %s. DBM jouera des sons amusants d'un raid classique légendaire pendant le combat. Vous pouvez désactiver cela dans l'interface utilisateur de DBM : tapez /dbm et allez dans le mod Onyxia sous Raids -> Classique."
}

-------------------
--  Anub'Rekhan  --
-------------------
L = DBM:GetModLocalization("AnubRekhanVanilla")

L:SetGeneralLocalization({
	name = "Anub'Rekhan"
})

L:SetMiscLocalization({
	ArachnophobiaTimer	= "Arachnophobia",
	Pull1				= "Oui, courez ! Faites circulez le sang !",
	Pull2				= "Rien qu'une petite bouchée…"
})

----------------------------
--  Grand Widow Faerlina  --
----------------------------
L = DBM:GetModLocalization("FaerlinaVanilla")

L:SetGeneralLocalization({
	name = "Grande veuve Faerlina"
})

L:SetWarningLocalization({
	WarningEmbraceExpire	= "Fin du baisé de la veuve dans 5 sec",
	WarningEmbraceExpired	= "Baisé de la veuve terminé"
})

L:SetOptionLocalization({
	WarningEmbraceExpire	= "Afficher une annonce de fin du baisé de la veuve",
	WarningEmbraceExpired	= "Afficher une annonce quand le baisé de la veuve va se terminer"
})

L:SetMiscLocalization({
	Pull					= "À genoux, vermisseau !"--Not actually pull trigger, but often said on pull
})
---------------
--  Maexxna  --
---------------
L = DBM:GetModLocalization("MaexxnaVanilla")

L:SetGeneralLocalization({
	name = "Maexxna"
})

L:SetWarningLocalization({
	WarningSpidersSoon	= "Araignées dans 5 sec",
	WarningSpidersNow	= "Arrivée des araignées!"
})

L:SetTimerLocalization({
	TimerSpider			= "Araignées"
})

L:SetOptionLocalization({
	WarningSpidersSoon	= "Afficher une pré-annonce pour les araignées",
	WarningSpidersNow	= "Afficher une annonce pour les araignées",
	TimerSpider			= "Afficher un chronomètre pour l'arrivée des araignées"
})

L:SetMiscLocalization({
	ArachnophobiaTimer	= "Arachnophobia"
})

------------------------------
--  Noth the Plaguebringer  --
------------------------------
L = DBM:GetModLocalization("NothVanilla")

L:SetGeneralLocalization({
	name = "Noth le Porte-peste"
})

L:SetWarningLocalization({
	WarningTeleportNow		= "Téléportation !",
	WarningTeleportSoon		= "Téléportation dans 20 sec"
})

L:SetTimerLocalization({
	TimerTeleport			= "Téléportation",
	TimerTeleportBack		= "Retour de TP"
})

L:SetOptionLocalization({
	WarningTeleportNow		= "Afficher une annonce pour la téléporation",
	WarningTeleportSoon		= "Afficher une pré-annonce pour la téléporation",
	TimerTeleport			= "Afficher un chronomètre pour la téléporation",
	TimerTeleportBack		= "Afficher un chronomètre pour le retour de Noth"
})

L:SetMiscLocalization({
	Pull				= "Mourez, intrus !",
	AddsYell			= "Levez-vous, soldats ! Levez-vous et combattez une fois encore !",
	Adds				= "invoque des guerriers squelettes !",
	AddsTwo				= "lève encore d'autres squelettes !"
})
--------------------------
--  Heigan the Unclean  --
--------------------------
L = DBM:GetModLocalization("HeiganVanilla")

L:SetGeneralLocalization({
	name = "Heigan l'Impur"
})

L:SetWarningLocalization({
	WarningTeleportNow		= "Téléportation !",
	WarningTeleportSoon		= "Téléporation dans %d sec"
})

L:SetTimerLocalization({
	TimerTeleport			= "Téléporation"
})

L:SetOptionLocalization({
	WarningTeleportNow		= "Afficher une annonce de la téléporation",
	WarningTeleportSoon		= "Afficher une pré-annonce de la téléporation",
	TimerTeleport			= "Afficher un chronomètre pour la téléporation"
})

L:SetMiscLocalization({
	Pull				= "Vous êtes à moi, maintenant."
})
----------------
--  Lolotheb  --
----------------
L = DBM:GetModLocalization("LoathebVanilla")

L:SetGeneralLocalization({
	name = "Horreb"
})

L:SetWarningLocalization({
	WarningHealSoon		= "Soins possibles dans 3 sec",
	WarningHealNow		= "SOIGNEZ MAINTENANT !"
})

L:SetOptionLocalization({
	WarningHealSoon		= "Afficher une annonce \"Soins dans 3 sec\" ",
	WarningHealNow		= "Afficher une annonce \"SOIGNEZ MAINTENANT\" "
})

-----------------
--  Patchwerk  --
-----------------
L = DBM:GetModLocalization("PatchwerkVanilla")

L:SetGeneralLocalization({
	name = "Le Recousu"
})

L:SetOptionLocalization({
})

L:SetMiscLocalization({
	yell1 		     	= "R'cousu veut jouer !",
	yell2 		     	= "R'cousu avatar de guerre pour Kel'Thuzad !"
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
	Yell					= "Stalagg écraser toi !",
	Emote					= "%s entre en surcharge !",
	Emote2					= "Bobine de Tesla entre en surcharge !",
	Boss1 					= "Feugen",
	Boss2 					= "Stalagg",
	Charge1 				= "négative",
	Charge2 				= "positive"
})

L:SetOptionLocalization({
	WarningChargeChanged	= "Afficher une annonce spéciale quand votre polarité a changé",
	WarningChargeNotChanged	= "Afficher une annonce spéciale quand votre polarité n'a pas changé",
	TimerShiftCast			= "Afficher un chronomètre pour le cast du changement de polarité",
	AirowsEnabled			= "Afficher les flèches pendant $spell:28089",
	Never					= "Jamais",
	TwoCamp					= "Afficher les flèches (stratégie normale de \"2 camps\" pour traverser)",
	ArrowsRightLeft			= "Afficher les flèches droite / gauche pour la stratégie \"4 camps\" (affiche la flèche gauche si la polarité a changé, et la flèche droite sinon)",
	ArrowsInverse			= "Inverser la statégie \"4 camps\" (affiche la flèche droite si la polarité a changé, et la flèche gauche sinon)"
})

L:SetWarningLocalization({
	WarningChargeChanged	= "Polarité changée : %s",
	WarningChargeNotChanged	= "Même polarité"
})

-----------------
--  Razuvious  --
-----------------
L = DBM:GetModLocalization("RazuviousVanilla")

L:SetGeneralLocalization({
	name = "Instructeur Razuvious"
})

L:SetMiscLocalization({
	Yell1 					= "Pas de quartier !",
	Yell2 					= "Les cours sont terminés ! Montrez-moi ce que vous avez appris !",
	Yell3 					= "Faites ce que vous ai appris !",
	Yell4 					= "Frappe-le à la jambe… Ça te pose un problème ?"
})

L:SetOptionLocalization({
	WarningShieldWallSoon	= "Afficher une annonce du Mur de Bouclier"
})

L:SetWarningLocalization({
	WarningShieldWallSoon	= "Mur de Bouclier expire dans 5 sec"
})

--------------
--  Gothik  --
--------------
L = DBM:GetModLocalization("GothikVanilla")

L:SetGeneralLocalization({
	name = "Gothik le Moissonneur"
})

L:SetOptionLocalization({
	TimerWave			= "Afficher un chronomètre des vagues",
	TimerPhase2			= "Afficher un chronomètre pour la phase 2",
	WarningWaveSoon		= "Afficher une pré-annonce pour les vagues",
	WarningWaveSpawned	= "Afficher une annonce quand une vague est arrivée",
	WarningRiderDown	= "Afficher une annonce quand un Cavalier meurt",
	WarningKnightDown	= "Afficher une annonce quand un Chevalier meurt",
	WarningPhase2		= "Afficher une annonce pour la phase 2"
})

L:SetTimerLocalization({
	TimerWave			= "Vague #%d",
	TimerPhase2			= "Phase 2"
})

L:SetWarningLocalization({
	WarningWaveSoon		= "Vague %d: %s dans 3 sec",
	WarningWaveSpawned	= "Vague %d: %s arrivée",
	WarningRiderDown	= "Cavalier mort",
	WarningKnightDown	= "Chevalier mort",
	WarningPhase2		= "Phase 2"
})

L:SetMiscLocalization({
	yell				= "Dans votre folie, vous avez provoqué votre propre mort.",
	WarningWave1		= "%d %s",
	WarningWave2		= "%d %s et %d %s",
	WarningWave3		= "%d %s, %d %s et %d %s",
	Trainee				= "Recrues",
	Knight				= "Chevaliers",
	Rider				= "Cavaliers"
})

----------------
--  Horsemen  --
----------------
L = DBM:GetModLocalization("HorsemenVanilla")

L:SetGeneralLocalization({
	name = "Les Quatre Cavaliers"
})

L:SetOptionLocalization({
	TimerMark					= "Afficher un chronomètre des marques",
	WarningMarkSoon				= "Afficher une pré-annonce des marques",
	SpecialWarningMarkOnPlayer	= "Afficher une annonce spéciale quand vous avez plus de 4 marques sur vous"
})

L:SetTimerLocalization({
	TimerMark 					= "Marque %d"
})

L:SetWarningLocalization({
	WarningMarkSoon				= "Marque %d dans 3 sec",
	SpecialWarningMarkOnPlayer	= "%s: %s"
})

L:SetMiscLocalization({
	Korthazz					= "Thane Korth'azz",
	Rivendare					= "Baron Vaillefendre",
	Blaumeux					= "Dame Blaumeux",
	Zeliek						= "Sire Zeliek"
})

-----------------
--  Sapphiron  --
-----------------
L = DBM:GetModLocalization("SapphironVanilla")

L:SetGeneralLocalization({
	name = "Sapphiron"
})

L:SetOptionLocalization({
	WarningAirPhaseSoon		= "Afficher une pré-annonce de la phase en vol",
	WarningAirPhaseNow		= "Afficher une annonce de la phase en vol",
	WarningLanded		    = "Afficher une annonce pour la phase au sol",
	TimerAir			    = "Afficher un chronomètre de la phase en vol",
	TimerLanding		   	= "Afficher un chronomètre de l'atterrissage",
	TimerIceBlast		   	= "Afficher un chronomètre du Souffle de givre",
	WarningDeepBreath		= "Afficher une annonce spéciale pour le Souffle de givre",
	WarningIceblock			= "Crie dans un glaçon"
})

L:SetMiscLocalization({
	EmoteBreath			    = "prend une grande inspiration",
	WarningYellIceblock		= "Je suis un bloc de glace !"
})

L:SetWarningLocalization({
	WarningAirPhaseSoon		= "Envol dans 10 sec",
	WarningAirPhaseNow		= "Dans les airs",
	WarningLanded		    = "Atterrissage de Sapphiron",
	WarningDeepBreath	  	= "Souffle de givre !"
})

L:SetTimerLocalization({
	TimerAir		   		  = "Envol",
	TimerLanding			  = "Atterrissage dans",
	TimerIceBlast			  = "Souffle de givre"
})

------------------
--  Kel'thuzad  --
------------------

L = DBM:GetModLocalization("KelThuzadVanilla")

L:SetGeneralLocalization({
	name = "Kel'Thuzad"
})

L:SetOptionLocalization({
	TimerPhase2				= "Afficher un chronomètre pour la phase 2",
	specwarnP2Soon 			= "Afficher un chronomètre pour prévenir 10 secondes avant l'arrivée de Kel'Thuzad"
})

L:SetMiscLocalization({
	Yell 					= "Serviteurs, valets et soldats des ténèbres glaciales ! Répondez à l'appel de Kel'Thuzad !"
})

L:SetWarningLocalization({
	specwarnP2Soon  		= "Kel'Thuzad sera actif dans 10 secondes"
})

L:SetTimerLocalization({
	TimerPhase2				= "Phase 2",
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
	Water		= "Eau"
})

------------------
--  Ghamoo-ra  --
------------------
L = DBM:GetModLocalization("GhamooraSoD")

L:SetGeneralLocalization({
	name = "Ghamoo-Ra"
})

------------------
--  Lady Sarevess  --
------------------
L = DBM:GetModLocalization("LadySarevessSoD")

L:SetGeneralLocalization({
	name = "Dame Sarevess"
})

------------------
--  Gelihast  --
------------------
L = DBM:GetModLocalization("GelihastSoD")

L:SetGeneralLocalization({
	name = "Gelihast"
})

L:SetTimerLocalization{
	TimerImmune = "Immunité terminée"
}

L:SetOptionLocalization({
	TimerImmune	= "Afficher un chronomètre pour la durée de l'immunité de Gelihast pendant les transitions de phase"
})

------------------
--  Lorgus Jett  --
------------------
L = DBM:GetModLocalization("LorgusJettSoD")

L:SetGeneralLocalization({
	name = "Lorgus Jett"
})

L:SetWarningLocalization({
	warnPriestRemaining		= "%s Prêtresses restantes"
})

L:SetOptionLocalization({
	warnPriestRemaining	= "Afficher une annonce indiquant le nombre de prêtresses des marées de Brassenoire restantes"
})

------------------
--  Twilight Lord Kelris  --
------------------
L = DBM:GetModLocalization("TwilightLordKelrisSoD")

L:SetGeneralLocalization({
	name = "Seigneur du Crépuscule Kelris"
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
	name = "Disperseur de foule 9-60"
})

---------------
--  Grubbis  --
---------------
L = DBM:GetModLocalization("GrubbisSoD")

L:SetGeneralLocalization({
	name = "Grubbis"
})

L:SetMiscLocalization({
	FirstPull = "Des buses de ventilation continuent de cracher de la matière radioactive au-dessus de Gnomeregan.",
	Pull = "Oh non ! Des secousses pareilles ne peuvent signifier qu’une chose…"
})
----------------------------
--  Electrocutioner 6000  --
----------------------------
L = DBM:GetModLocalization("ElectrocutionerSoD")

L:SetGeneralLocalization({
	name = "Electrocuteur 6000"
})

-----------------------
--  Viscous Fallout  --
-----------------------
L = DBM:GetModLocalization("ViscousFalloutSoD")

L:SetGeneralLocalization({
	name = "Retombée visqueuse"
})

----------------------------
--  Mechanical Menagerie  --
----------------------------
L = DBM:GetModLocalization("MechanicalMenagerieSoD")

L:SetGeneralLocalization({
	name = "Ménagerie mécanique"
})

L:SetMiscLocalization{
	Sheep		= "Mouton",
	Whelp		= "Dragonnet",
	Squirrel	= "Écureuil",
	Chicken		= "Poulet"
}
-----------------------------
--  Mekgineer Thermaplugg  --
-----------------------------
L = DBM:GetModLocalization("ThermapluggSoD")

L:SetGeneralLocalization({
	name = "Mekgénieur Thermojoncteur"
})

L:SetTimerLocalization{
	timerTankCD = "Technique du tank"
}

L:SetOptionLocalization({
	timerTankCD	= "Afficher un chronomètre pour le temps de recharge aléatoire de la technique du tank à l'étape 4"
})

------------------
--  Sunken Temple  --
------------------

--------------
-- ST Trash --
--------------
L = DBM:GetModLocalization("STTrashSoD")

L:SetGeneralLocalization{
	name = "Temple englouti : Ennemis communs"
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
	name = "Pourriture gélatineuse purulente"
})

---------------------------
--  Atal'ai Defenders  --
---------------------------
L = DBM:GetModLocalization("AtalaiDefendersSoD")

L:SetGeneralLocalization({
	name = "Défenseurs atal’ai"
})

L:SetOptionLocalization({
	SetIconsOnGhosts = "Placer des icônes sur les boss fantômes"
})
---------------------------
--  Dreamscythe and Weaver  --
---------------------------
L = DBM:GetModLocalization("DreamscytheAndWeaverSoD")

L:SetGeneralLocalization({
	name = "Fauche-rêve et tisserand"
})
---------------------------
--  Avatar of Hakkar  --
---------------------------
L = DBM:GetModLocalization("AvatarofHakkarSoD")

L:SetGeneralLocalization({
	name = "Avatar d’Hakkar"
})
---------------------------
--  Jammal'an and Ogom  --
---------------------------
L = DBM:GetModLocalization("JammalanAndOgomSoD")

L:SetGeneralLocalization({
	name = "Jammal’an et Ogom"
})
---------------------------
--  Morphaz and Hazzas  --
---------------------------
L = DBM:GetModLocalization("MorphazandHazzasSoD")

L:SetGeneralLocalization({
	name = "Morphaz et Hazzas"
})
---------------------------
--  Shade of Eranikus  --
---------------------------
L = DBM:GetModLocalization("ShadeofEranikusSoD")

L:SetGeneralLocalization({
	name = "Ombre d’Eranikus"
})
