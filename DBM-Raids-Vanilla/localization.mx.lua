if GetLocale() ~= "esMX" then return end
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
	name 		= "General Rajaxx"
}
L:SetWarningLocalization{
	WarnWave	= "Oleada %s"
}
L:SetOptionLocalization{
	WarnWave	= "Mostrar anuncio anticipado para la siguiente oleada"
}
L:SetMiscLocalization{
	Wave12		= "Ahí vienen. Intenta que no te maten,",--Followed by 'chico' or 'chica'
	Wave12Alt	= "Rajaxx, ¿recuerdas que te dije que serías el último en morir?",
	Wave3		= "¡La hora de las recompensas está próxima! ¡Que la oscuridad reine en el corazón de nuestros enemigos!",
	Wave4		= "¡No volveremos a esperar detrás de rejas y muros de piedra! ¡Nunca más podrán negarnos nuestra venganza! ¡Hasta los dragones temblarán frente a nuestra ira!",
	Wave5		= "¡El miedo es para el enemigo! ¡Miedo y muerte!",
	Wave6		= "¡Corzocelada llorará y rogará por su vida, igual que lo hizo su débil hijo! ¡Hoy acabará un milenio lleno de injusticia!",
	Wave7		= "¡Fandral! ¡Ha llegado tu hora! ¡Ve y escóndete en el Sueño Esmeralda y reza para que nunca te encontremos!",
	Wave8		= "¡Loco imprudente! ¡Acabaré contigo yo mismo!"
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
	name 		= "Buru el Manducador"
}
L:SetWarningLocalization{
	WarnPursue		= "Persiguiendo a >%s<",
	SpecWarnPursue	= "Buru te está persiguiendo",
	WarnDismember	= "%s en >%s< (%s)"
}
L:SetOptionLocalization{
	WarnPursue		= "Mostrar anuncio para los objetivos de la persecución de Buru",
	SpecWarnPursue	= "Mostrar anuncio especial cuando te persiga el jefe",
	WarnDismember	= DBM_CORE_L.AUTO_ANNOUNCE_OPTIONS.spell:format(96)
}
L:SetMiscLocalization{
	PursueEmote 	= "mira a"
}

-------------
-- Ayamiss --
-------------
L = DBM:GetModLocalization("Ayamiss")

L:SetGeneralLocalization{
	name 		= "Ayamiss el Cazador"
}

--------------
-- Ossirian --
--------------
L = DBM:GetModLocalization("Ossirian")

L:SetGeneralLocalization{
	name 		= "Osirio el Sinmarcas"
}
L:SetWarningLocalization{
	WarnVulnerable	= "%s"
}
L:SetTimerLocalization{
	TimerVulnerable	= "%s"
}
L:SetOptionLocalization{
	WarnVulnerable	= "Mostrar anuncio para debilidades",
	TimerVulnerable	= "Mostrar temporizador para la duración de las debilidades"
}

----------------
-- AQ20 Trash --
----------------
L = DBM:GetModLocalization("AQ20Trash")

L:SetGeneralLocalization{
	name = "AQ20: Bichos"
}

L:SetTimerLocalization{
	TimerExplosion 		= "Fantasmas explosivos"
}

L:SetWarningLocalization{
	WarnExplosion 		= "Apareció un solo fantasma explosivo - esquiva",
	SpecWarnExplosion 	= "Fantasmas explosivos - esquiva",
}
L:SetOptionLocalization{
	WarnExplosion 		= "Mostrar anuncio para fantasmas explosivos ($spell:1214871)",
	SpecWarnExplosion 	= "Mostrar anuncio especial cuando aparezcan múltiples fantasmas explosivos ($spell:1214871)",
	TimerExplosion 		= "Mostrar temporizador para cuando aparezcan múltiples fantasmas explosivos ($spell:1214871)"
}

------------
-- Skeram --
------------
L = DBM:GetModLocalization("Skeram")

L:SetGeneralLocalization{
	name = "El profeta Skeram"
}

----------------
-- Three Bugs --
----------------
L = DBM:GetModLocalization("ThreeBugs")

L:SetGeneralLocalization{
	name = "Realeza silítida"
}
L:SetMiscLocalization{
	Yauj = "Princesa Yauj",
	Vem = "Vem",
	Kri = "Lord Kri"
}

-------------
-- Sartura --
-------------
L = DBM:GetModLocalization("Sartura")

L:SetGeneralLocalization{
	name = "Guardia de batalla Sartura"
}

--------------
-- Fankriss --
--------------
L = DBM:GetModLocalization("Fankriss")

L:SetGeneralLocalization{
	name = "Fankriss el Implacable"
}

--------------
-- Viscidus --
--------------
L = DBM:GetModLocalization("Viscidus")

L:SetGeneralLocalization{
	name = "Viscidus"
}
L:SetWarningLocalization{
	WarnFreeze	= "Congelación: %d/3",
	WarnShatter	= "Hacerse añicos: %d/3"
}
L:SetOptionLocalization{
	WarnFreeze	= "Mostrar anuncio para congelación",
	WarnShatter	= "Mostrar anuncio para hacerse añicos"
}
L:SetMiscLocalization{
	Slow	= "comienza a ir más despacio!",
	Freezing= "se está congelando!",
	Frozen	= "no se puede mover!",
	Phase4 	= "comienza a desmoronarse!",
	Phase5 	= "parece a punto de hacerse añicos!",
	Phase6 	= "explota!",

	FrostHitsPerSecond = "Golpes de escarcha por segundo",
	MeleeHitsPerSecond = "Golpes cuerpo a cuerpo por segundo",
}
-------------
-- Huhuran --
-------------
L = DBM:GetModLocalization("Huhuran")

L:SetGeneralLocalization{
	name = "Princesa Huhuran"
}
---------------
-- Twin Emps --
---------------
L = DBM:GetModLocalization("TwinEmpsAQ")

L:SetGeneralLocalization{
	name = "Los Emperadores Gemelos"
}
L:SetMiscLocalization{
	Veklor = "Emperador Vek'lor",
	Veknil = "Emperador Vek'nilash"
}

------------
-- C'Thun --
------------
L = DBM:GetModLocalization("CThun")

L:SetGeneralLocalization{
	name = "C'Thun"
}
L:SetWarningLocalization{
	WarnEyeTentacle			= "Tentáculo ocular",
	WarnClawTentacle2		= "Tentáculo Garral",
	WarnGiantEyeTentacle	= "Tentáculo ocular gigante",
	WarnGiantClawTentacle	= "Tentáculo garral gigante",
	SpecWarnWeakened		= "¡C'Thun está débil!"
}
L:SetTimerLocalization{
	TimerEyeTentacle		= "Siguiente Tentáculo ocular",
	TimerClawTentacle		= "Siguiente Tentáculo Garral",
	TimerGiantEyeTentacle	= "Siguiente Tentáculo ocular gigante",
	TimerGiantClawTentacle	= "Siguiente Tentáculo garral gigante",
	TimerWeakened			= "Debilidad termina"
}
L:SetOptionLocalization{
	WarnEyeTentacle			= "Mostrar anuncio cuando aparezca un Tentáculo ocular",
	WarnClawTentacle2		= "Mostrar anuncio cuando aparezca un Tentáculo Garral",
	WarnGiantEyeTentacle	= "Mostrar anuncio cuando aparezca un Tentáculo ocular gigante",
	WarnGiantClawTentacle	= "Mostrar anuncio cuando aparezca un Tentáculo garral gigante",
	WarnWeakened			= "Mostrar anuncio cuando C'Thun se vuelva débil",
	SpecWarnWeakened		= "Mostrar anuncio especial cuando C'Thun se vuelva débil",
	TimerEyeTentacle		= "Mostrar temporizador para el siguiente Tentáculo ocular",
	TimerClawTentacle		= "Mostrar temporizador para el siguiente Tentáculo Garral",
	TimerGiantEyeTentacle	= "Mostrar temporizador para el siguiente Tentáculo ocular gigante",
	TimerGiantClawTentacle	= "Mostrar temporizador para el siguiente Tentáculo garral gigante",
	TimerWeakened			= "Mostrar temporizador para la duración de la debilidad de C'Thun",
	RangeFrame				= "Mostrar marco de distancia (10 m)"
}
L:SetMiscLocalization{
	Stomach		= "Estómago",
	Eye			= "Ojo de C'Thun",
	FleshTent	= "Tentáculo de carne",
	Weakened 	= "está débil!",
	NotValid	= "AQ40 parcialmente limpiado. Quedan %s jefes opcionales."
}
----------------
-- Ouro --
----------------
L = DBM:GetModLocalization("Ouro")

L:SetGeneralLocalization{
	name = "Ouro"
}
L:SetWarningLocalization{
	WarnSubmerge		= "Ouro se sumerge",
	WarnEmerge			= "Ouro regresa",
	SpecWarnEye			= "Mira hacia otro lado"
}
L:SetTimerLocalization{
	TimerSubmerge		= "Sumersión",
	TimerEmerge			= "Emersión"
}
L:SetOptionLocalization{
	WarnSubmerge		= "Mostrar anuncio cuando Ouro se sumerja",
	TimerSubmerge		= "Mostrar temporizador para cuando Ouro se sumerja",
	WarnEmerge			= "Mostrar anuncio cuando Ouro regrese a la superficie",
	TimerEmerge			= "Mostrar temporizador para cuando Ouro regrese a la superficie",
	SpecWarnEye			= "Mostrar anuncio para el ojo gigante"
}

----------------
-- AQ40 Trash --
----------------
L = DBM:GetModLocalization("AQ40Trash")

L:SetGeneralLocalization{
	name = "AQ40: Bichos"
}

L:SetTimerLocalization{
	TimerExplosion 		= "Fantasmas explosivos"
}

L:SetWarningLocalization{
	WarnExplosion 		= "Apareció un solo fantasma explosivo - esquiva",
	SpecWarnExplosion 	= "Fantasmas explosivos - esquiva",
}
L:SetOptionLocalization{
	WarnExplosion 		= "Mostrar anuncio para fantasmas explosivos ($spell:1214871)",
	SpecWarnExplosion 	= "Mostrar anuncio especial cuando aparezcan múltiples fantasmas explosivos ($spell:1214871)",
	TimerExplosion 		= "Mostrar temporizador para cuando aparezcan múltiples fantasmas explosivos ($spell:1214871)"
}

-------------------
--  Venoxis  --
-------------------
L = DBM:GetModLocalization("Venoxis")

L:SetGeneralLocalization{
	name = "Sumo sacerdote Venoxis"
}

-------------------
--  Jeklik  --
-------------------
L = DBM:GetModLocalization("Jeklik")

L:SetGeneralLocalization{
	name = "Suma sacerdotisa Jeklik"
}

-------------------
--  Marli  --
-------------------
L = DBM:GetModLocalization("Marli")

L:SetGeneralLocalization{
	name = "Suma sacerdotisa Mar'li"
}

-------------------
--  Thekal  --
-------------------
L = DBM:GetModLocalization("Thekal")

L:SetGeneralLocalization{
	name = "Sumo sacerdote Thekal"
}

L:SetWarningLocalization({
	WarnSimulKill	= "Primer esbirro muerto - Resurrección en ~15 segundos"
})

L:SetTimerLocalization({
	TimerSimulKill	= "Resurrección"
})

L:SetOptionLocalization({
	WarnSimulKill	= "Mostrar anuncio para el primer esbirro muerto",
	TimerSimulKill	= "Mostrar tiempo para resurrección de sacerdote"
})

L:SetMiscLocalization({
	PriestDied	= "%s muere.",
	YellPhase2	= "Shirvallah, ¡lléname de IRA!",
	YellKill	= "¡Hakkar ya no me controla! ¡Por fin algo de paz!",
	Thekal		= "Sumo sacerdote Thekal",
	Zath		= "Zelote Zath",
	LorKhan		= "Zelote Lor'Khan"
})

-------------------
--  Arlokk  --
-------------------
L = DBM:GetModLocalization("Arlokk")

L:SetGeneralLocalization{
	name = "Suma sacerdotisa Arlokk"
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
	name = "Señor sangriento Mandokir"
}
L:SetMiscLocalization{
	Bloodlord 	= "Señor sangriento Mandokir",
	Ohgan		= "Ohgan",
	GazeYell	= "Te estoy vigilando"
}

-------------------
--  Edge of Madness  --
-------------------
L = DBM:GetModLocalization("EdgeOfMadness")

L:SetGeneralLocalization{
	name = "Cabo de la Locura"
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
	name = "Jin'do el Aojador"
}
L:SetMiscLocalization{
	Ghosts = "Fantasmas"
}
-----------------
--  Razorgore  --
-----------------
L = DBM:GetModLocalization("Razorgore")

L:SetGeneralLocalization{
	name = "Sangrevaja el Indomable"
}
L:SetTimerLocalization{
	TimerAddsSpawn	= "Primeros esbirros"
}
L:SetOptionLocalization{
	TimerAddsSpawn	= "Mostrar temporizador para cuando aparezcan los primeros esbirros"
}
L:SetMiscLocalization{
	Phase2Emote	= "huyen mientras se consume el poder del orbe.",
	YellPull	= "¡Los invasores han penetrado en El Criadero! ¡Activa la alarma! ¡Hay que proteger los huevos a toda costa!"
}
-------------------
--  Vaelastrasz  --
-------------------
L = DBM:GetModLocalization("Vaelastrasz")

L:SetGeneralLocalization{
	name				= "Vaelastrasz el Corrupto"
}

L:SetMiscLocalization{
	Event				= "¡Demasiado tarde, amigos! Ahora estoy poseído por la corrupción de Nefarius... No puedo... controlarme."
}
-----------------
--  Broodlord  --
-----------------
L = DBM:GetModLocalization("Broodlord")

L:SetGeneralLocalization{
	name	= "Señor de linaje Capazote"
}

L:SetMiscLocalization{
	Pull	= "¡Nadie de su raza debería estar aquí! ¡Están condenados!"
}

---------------
--  Firemaw  --
---------------
L = DBM:GetModLocalization("Firemaw")

L:SetGeneralLocalization{
	name = "Faucefogo"
}

---------------
--  Ebonroc  --
---------------
L = DBM:GetModLocalization("Ebonroc")

L:SetGeneralLocalization{
	name = "Ebanorroca"
}

----------------
--  Flamegor  --
----------------
L = DBM:GetModLocalization("Flamegor")

L:SetGeneralLocalization{
	name = "Flamagor"
}
----------------
--  Ebonroc and Flamegor  --
----------------
L:SetGeneralLocalization{
	name = "Ebonorroca y Flamagor"
}

L:SetTimerLocalization{
	TimerBrandCD	= "Marca"
}
L:SetOptionLocalization{
	TimerBrandCD	= "Mostrar temporizador para la reutilización de Marca"
}

L:SetMiscLocalization{
	Ebonroc		= "Ebonorroca",
	Flamegor	= "Flamagor"
}
-----------------------
--  Vulnerabilities  --
-----------------------
-- Chromaggus, Death Talon Overseer and Death Talon Wyrmguard
L = DBM:GetModLocalization("BWLTrash")

L:SetGeneralLocalization{
	name = "Guardias Garramortal"--FIXME
}
L:SetWarningLocalization{
	WarnVulnerable		= "Vulnerabilidad: %s"
}
L:SetOptionLocalization{
	WarnVulnerable		= "Mostrar anuncio de vulnerabilidades de hechizo"
}
L:SetMiscLocalization{
	Fire		= "Fuego",
	Nature		= "Naturaleza",
	Frost		= "Escarcha",
	Shadow		= "Sombras",
	Arcane		= "Arcano",
	Holy		= "Sagrado"
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
	WarnVulnerable	= "Vulnerabilidad: %s"
}
L:SetTimerLocalization{
	TimerBreathCD	= "%s TdR",
	TimerBreath		= "%s lanzamiento",
	TimerVulnCD		= "TdR de Vulnerabilidad",
	TimerAllBreaths = "Lluvia de aliento"
}
L:SetOptionLocalization{
	WarnBreath			= "Mostrar anuncio cuando Chromaggus lance uno de sus alientos",
	WarnVulnerableNew	= "Mostrar temporizador para el tiempo de reutilización de los alientos",
	TimerBreathCD		= "Mostrar TdR de aliento",
	TimerBreath			= "Mostrar lanzamiento de aliento",
	TimerVulnCD			= "Mostrar TdR de Vulnerabilidad",
	TimerAllBreaths 	= "Mostrar temporizador para Lluvia de aliento"
}
L:SetMiscLocalization{
	Breath1	= "Primer aliento",
	Breath2	= "Segundo aliento",
	VulnEmote	= "%s se estremece mientras su piel empieza a brillar.",
	Vuln		= "Vulnerabilidad",
	Fire		= "Fuego",
	Nature		= "Naturaleza",
	Frost		= "Escarcha",
	Shadow		= "Sombras",
	Arcane		= "Arcano",
	Holy		= "Sagrado"
}

----------------
--  Nefarian  --
----------------
L = DBM:GetModLocalization("Nefarian-Classic")

L:SetGeneralLocalization{
	name = "Nefarian"
}
L:SetWarningLocalization{
	WarnAddsLeft		= "%d restante",
	WarnClassCall		= "Llamada de %s",
	specwarnClassCall	= "¡Llamada de tu clase!"
}
L:SetTimerLocalization{
	TimerClassCall		= "Llamada de %s termina"
}
L:SetOptionLocalization{
	TimerClassCall		= "Mostrar temporizador para la duración de las llamadas en cada clase",
	WarnAddsLeft		= "Mostrar anuncio para las muertes restantes hasta Fase 2",
	WarnClassCall		= "Mostrar anuncio para las llamadas de clase",
	specwarnClassCall	= "Mostrar anuncio especial cuando se ve afectado por la llamada de clase"
}
L:SetMiscLocalization{
	YellP1		= "¡Que comiencen los juegos!",
	YellP2		= "Bien hecho, mis esbirros. El coraje de los mortales empieza a mermar. ¡Veamos ahora cómo se enfrentan al verdadero Señor de la Cubre de Roca Negra!",
	YellP3		= "¡Imposible! ¡Levántense, mis esbirros! ¡Sirvan a su amo una vez más!",
	YellShaman	= "¡Chamanes, muéstrenme lo que pueden hacer sus tótems!",
	YellPaladin	= "Paladines... He oído que tienen muchas vidas. Demuéstrenmelo.",
	YellDruid	= "Los druidas y su estúpido poder de cambiar de forma. ¡Veámoslo en acción!",
	YellPriest	= "¡Sacerdotes! Si van a seguir curando de esa forma, ¡podíamos hacerlo más interesante!",
	YellWarrior	= "¡Vamos guerreros, sé que pueden golpear más fuerte que eso! ¡Veámoslo!",
	YellRogue	= "¿Pícaros? ¡Dejen de esconderse y enfréntense a mí!",
	YellWarlock	= "Brujos... No deberían estar jugando con magia que no comprenden. ¿Ven lo que pasa?",
	YellHunter	= "¡Cazadores y sus molestas cerbatanas!",
	YellMage	= "¿Magos también? Deberían tener más cuidado cuando juegan con la magia...",
--	YellDK		= "¡Caballeros de la Muerte... venid aquí!",
--	YellMonk	= "Monjes, ¿no os mareáis con tanta vuelta?",
--	YellDH		= "¿Cazadores de demonios? Qué raro eso de taparos los ojos así. ¿No os cuesta ver lo que tenéis alrededor?"--Demon Hunter call; I know this hasn't been implemented yet in DBM, but I added it just in case.
}

----------------------
--  SoD BWL Trials  --
----------------------
L = DBM:GetModLocalization("SoDBWLTrials")

L:SetGeneralLocalization{
	name = "Pruebas de Temporada de descubrimiento"
}
L:SetWarningLocalization{
	SpecWarnBothBombs		= "Azul y verde en >%s<",
	SpecWarnBothBombsYou	= "Azul y verde en TI",
}
L:SetTimerLocalization{
	TimerBombs				= DBM_COMMON_L.BOMBS
}
L:SetOptionLocalization{
SpecWarnBothBombs			= "Mostrar anuncio especial si las bombas azul y verde están en el mismo jugador",
SpecWarnBothBombsYou		= "Mostrar anuncio especial si las bombas azul y verde están en ti",
TimerBombs					= "Mostrar temporizador para las bombas de prueba azul y verde"
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
	name = "Barón Geddon"
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
	name = "Sulfuron Presagista"
}

----------------
--  Golemagg  --
----------------
L = DBM:GetModLocalization("Golemagg")

L:SetGeneralLocalization{
	name = "Golemagg el Incinerador"
}

-----------------
--  Majordomo  --
-----------------
L = DBM:GetModLocalization("Majordomo")

L:SetGeneralLocalization{
	name = "Mayordomo Executus"
}
L:SetTimerLocalization{
	timerShieldCD		= "Próximo Escudo"
}
L:SetOptionLocalization{
	timerShieldCD		= "Mostrar temporizador para el próximo Escudo de daño/reflejo"
}
----------------
--  Ragnaros  --
----------------
L = DBM:GetModLocalization("Ragnaros-Classic")

L:SetGeneralLocalization{
	name = "Ragnaros"
}
L:SetWarningLocalization{
	WarnSubmerge		= "Ragnaros se sumerge",
	WarnEmerge			= "Ragnaros ha regresado"
}
L:SetTimerLocalization{
	TimerSubmerge		= "Sumersión",
	TimerEmerge			= "Emersión"
}
L:SetOptionLocalization{
	WarnSubmerge		= "Mostrar anuncio cuando Ragnaros se sumerja",
	TimerSubmerge		= "Mostrar temporizador para cuando Ragnaros se sumerja",
	WarnEmerge			= "Mostrar anuncio cuando Ragnaros regrese a la superficie",
	TimerEmerge			= "Mostrar temporizador para cuando Ragnaros regrese a la superficie"
}
L:SetMiscLocalization{
	Submerge	= "¡AVANCEN, MIS SIRVIENTES! ¡DEFIENDAN A SU MAESTRO!",
	Pull		= "¡Crías imprudentes! ¡Se han precipitado hasta su propia muerte! ¡Ahora miren, el maestro se agita!"
}

-----------------
--  The Molten Core  --
-----------------
L = DBM:GetModLocalization("MoltenCore")

L:SetGeneralLocalization{
	name = "El Núcleo de Magma"
}

L:SetOptionLocalization{
	YellHeartCleared	= "Gritar cuando el Corazón de pavesa/ceniza sea removido.",
	WarnBossPower		= "Mostrar anuncios cuando la energía del jefe alcance el 50%, 75%, 90% y 100%"
}

L:SetWarningLocalization{
	WarnBossPower		= "Energía del jefe al %d%%"
}
-----------------
--  MC: Trash  --
-----------------
L = DBM:GetModLocalization("MCTrash")

L:SetGeneralLocalization{
	name = "NM: Bichos"
}

--------------
--  Onyxia  --
--------------
L = DBM:GetModLocalization("OnyxiaVanilla")

L:SetGeneralLocalization{
	name = "Onyxia"
}

L:SetWarningLocalization{
	WarnWhelpsSoon		= "Crías de Onyxia en breve"
}

L:SetTimerLocalization{
	TimerWhelps	= "Crías de Onyxia"
}

L:SetOptionLocalization{
	TimerWhelps				= "Mostrar temporizador para las siguientes Crías de Onyxia",
	WarnWhelpsSoon			= "Mostrar anuncio anticipado para las siguientes Crías de Onyxia",
	SoundWTF3				= "Reproducir sonidos graciosos de cierta banda legendaria"
}

L:SetMiscLocalization{
	Breath = "%s toma aliento...",
	YellPull = "Qué casualidad. Generalmente, debo salir de mi guarida para poder comer.",
	YellP2 = "Este ejercicio sin sentido me aburre. ¡Los incineraré a todos desde arriba!",
	YellP3 = "¡Parece ser que van a necesitar otra lección, mortales!",
	SoDWarning = "Bienvenido a %s. DBM reproducirá algunos sonidos divertidos de una banda clásica legendaria durante la pelea. Puedes desactivar esto en la interfaz de usuario de DBM: escribe /dbm y navega hasta el módulo de Onyxia en Bandas -> Clásico."
}

-----------------
-- Anub'Rekhan --
-----------------
L = DBM:GetModLocalization("AnubRekhanVanilla")

L:SetGeneralLocalization({
	name = "Anub'Rekhan"
})

L:SetMiscLocalization({
	ArachnophobiaTimer	= "Logro: Aracnofobia",
	Pull1				= "¡Eso, corred! ¡Así la sangre circula más rápido!",
	Pull2				= "Solo un bocado..."
})

-------------------------
-- Gran Viuda Faerlina --
-------------------------
L = DBM:GetModLocalization("FaerlinaVanilla")

L:SetGeneralLocalization({
	name = "Gran Viuda Faerlina"
})

L:SetWarningLocalization({
	WarningEmbraceExpire	= "Abrazo de la viuda expirando en 5 s",
	WarningEmbraceExpired	= "Abrazo de la viuda ha expirado"
})

L:SetOptionLocalization({
	WarningEmbraceExpire	= "Mostrar anuncio anticipado para cuando expire Abrazo de la viuda",
	WarningEmbraceExpired	= "Mostrar anuncio cuando expire Abrazo de la viuda"
})

L:SetMiscLocalization({
	Pull					= "¡Arrodíllate ante mí, sabandija!"--Not actually pull trigger, but often said on pull
})

-------------
-- Maexxna --
-------------
L = DBM:GetModLocalization("MaexxnaVanilla")

L:SetGeneralLocalization({
	name = "Maexxna"
})

L:SetWarningLocalization({
	WarningSpidersSoon	= "Arañitas de Maexxna en 5 s",
	WarningSpidersNow	= "Arañitas de Maexxna"
})

L:SetTimerLocalization({
	TimerSpider	= "Siguientes arañitas"
})

L:SetOptionLocalization({
	WarningSpidersSoon	= "Mostrar anuncio anticipado para cuando aparezcan Arañitas de Maexxna",
	WarningSpidersNow	= "Mostrar anuncio cuando aparezcan Arañitas de Maexxna",
	TimerSpider			= "Mostrar temporizador para las siguientes Arañitas de Maexxna"
})

L:SetMiscLocalization({
	ArachnophobiaTimer	= "Logro: Aracnofobia"
})

-----------------------
-- Noth el Pesteador --
-----------------------
L = DBM:GetModLocalization("NothVanilla")

L:SetGeneralLocalization({
	name = "Noth el Pesteador"
})

L:SetWarningLocalization({
	WarningTeleportNow	= "Teletransporte",
	WarningTeleportSoon	= "Teletransporte en 20 s"
})

L:SetTimerLocalization({
	TimerTeleport		= "Teletransporte: Balcón",
	TimerTeleportBack	= "Teletransporte: Suelo"
})

L:SetOptionLocalization({
	WarningTeleportNow	= "Mostrar anuncio para Teletransporte",
	WarningTeleportSoon	= "Mostrar anuncio anticipado para Teletransporte",
	TimerTeleport		= "Mostrar temporizador para el siguiente Teletransporte: Balcón",
	TimerTeleportBack	= "Mostrar temporizador para Teletransporte: Suelo"
})

L:SetMiscLocalization({
	Pull				= "¡Muere, intruso!",
	AddsYell			= "¡Levantaos, soldados míos! ¡Levantaos y luchad una vez más!",
	Adds				= "invoca a guerreros esqueletos!",
	AddsTwo				= "alza más esqueletos!"
})

----------------------
-- Heigan el Impuro --
----------------------
L = DBM:GetModLocalization("HeiganVanilla")

L:SetGeneralLocalization({
	name = "Heigan el Impuro"
})

L:SetWarningLocalization({
	WarningTeleportNow	= "Teletransporte",
	WarningTeleportSoon	= "Teletransporte en %d s"
})

L:SetTimerLocalization({
	TimerTeleport	= "Teletransporte"
})

L:SetOptionLocalization({
	WarningTeleportNow	= "Mostrar anuncio para Teletransporte",
	WarningTeleportSoon	= "Mostrar anuncio anticipado para Teletransporte",
	TimerTeleport		= "Mostrar anuncio para Teletransporte"
})

L:SetMiscLocalization({
	Pull				= "Ahora me perteneces."
})

-------------
-- Loatheb --
-------------
L = DBM:GetModLocalization("LoathebVanilla")

L:SetGeneralLocalization({
	name = "Loatheb"
})

L:SetWarningLocalization({
	WarningHealSoon	= "Sanación posible en 3 s",
	WarningHealNow	= "¡Sanan ahora!"
})

L:SetOptionLocalization({
	WarningHealSoon		= "Mostrar anuncio anticipado para la franja de sanación",
	WarningHealNow		= "Mostrar anuncio para la franja de sanación"
})

---------------
-- Remendejo --
---------------
L = DBM:GetModLocalization("PatchwerkVanilla")

L:SetGeneralLocalization({
	name = "Remendejo"
})

L:SetOptionLocalization({
})

L:SetMiscLocalization({
	yell1 = "¡Remendejo quiere jugar!",
	yell2 = "¡Remendejo es la encarnación de guerra de Kel'Thuzad!"
})

---------------
-- Grobbulus --
---------------
L = DBM:GetModLocalization("GrobbulusVanilla")

L:SetGeneralLocalization({
	name = "Grobbulus"
})

-----------
-- Gluth --
-----------
L = DBM:GetModLocalization("GluthVanilla")

L:SetGeneralLocalization({
	name = "Gluth"
})

--------------
-- Thaddius --
--------------
L = DBM:GetModLocalization("ThaddiusVanilla")

L:SetGeneralLocalization({
	name = "Thaddius"
})

L:SetMiscLocalization({
	Yell	= "¡Stalagg aplasta!",
	Emote	= "¡%s se sobrecarga!",
	Emote2	= "¡Espiral Tesla se sobrecarga!",
	Boss1	= "Feugen",
	Boss2	= "Stalagg",
	Charge1 = "negativo",
	Charge2 = "positivo"
})

L:SetOptionLocalization({
	WarningChargeChanged	= "Mostrar anuncio especial cuando tu polaridad cambie",
	WarningChargeNotChanged	= "Mostrar anuncio especial cuando tu polaridad no cambie",
	AirowsEnabled			= "Mostrar flechas durante $spell:28089",
	Never 					= "Nunca",
	TwoCamp					= "Mostrar flechas (estrategia normal de dos grupos para correr a través)",
	ArrowsRightLeft			= "Mostrar flechas de izquierda y derecha (estrategia de cuatro grupos; muestra la flecha izquierda si cambia la polaridad, y la derecha si no cambia)",
	ArrowsInverse			= "Mostrar flechas de izquierda y derecha inversas (estrategia de cuatro grupos; muestra la flecha derecha si cambia la polaridad, y la izquierda si no cambia)"
})
L:SetWarningLocalization({
	WarningChargeChanged	= "Polaridad cambiada a %s",
	WarningChargeNotChanged	= "Tu polaridad no ha cambiado"
})

--------------------------
-- Instructor Razuvious --
--------------------------
L = DBM:GetModLocalization("RazuviousVanilla")

L:SetGeneralLocalization({
	name = "Instructor Razuvious"
})

L:SetMiscLocalization({
	Yell1 = "¡No tengan piedad!",
	Yell2 = "¡Se ha acabado el tiempo de práctica! ¡Quiero ver lo que han aprendido!",
	Yell3 = "¡Hagan lo que les enseñé!",
	Yell4 = "Un barrido con pierna... ¿Tienes algún problema?"
})

L:SetOptionLocalization({
	WarningShieldWallSoon	= "Mostrar anuncio anticipado para cuando termine $spell:29061"
})

L:SetWarningLocalization({
	WarningShieldWallSoon	= "Barrera de huesos termina en 5 s"
})

--------------------------
-- Gothik el Cosechador --
--------------------------
L = DBM:GetModLocalization("GothikVanilla")

L:SetGeneralLocalization({
	name = "Gothik el Cosechador"
})

L:SetOptionLocalization({
	TimerWave			= "Mostrar temporizador para la siguiente oleada de esbirros",
	TimerPhase2			= "Mostrar temporizador para el cambio a Fase 2",
	WarningWaveSoon		= "Mostrar anuncio anticipado para la siguiente oleada de esbirros",
	WarningWaveSpawned	= "Mostrar anuncio cuando comience una oleada de esbirros",
	WarningRiderDown	= "Mostrar anuncio cuando muera un Jinete inflexible",
	WarningKnightDown	= "Mostrar anuncio cuando muera un Caballero de la Muerte inflexible"
})

L:SetTimerLocalization({
	TimerWave	= "Oleada %d",
	TimerPhase2	= "Fase 2"
})

L:SetWarningLocalization({
	WarningWaveSoon		= "Oleada %d: %s en 3 s",
	WarningWaveSpawned	= "Oleada %d: %s",
	WarningRiderDown	= "Jinete muerto",
	WarningKnightDown	= "Caballero muerto",
	WarningPhase2		= "Fase 2"
})

L:SetMiscLocalization({
	yell			= "Tú mismo has buscado tu final.",
	WarningWave1	= "%d %s",
	WarningWave2	= "%d %s y %d %s",
	WarningWave3	= "%d %s, %d %s y %d %s",
	Trainee			= "practicantes",
	Knight			= "caballeros",
	Rider			= "jinetes"
})

------------------------
-- Los Cuatro Jinetes --
------------------------
L = DBM:GetModLocalization("HorsemenVanilla")

L:SetGeneralLocalization({
	name = "Los Cuatro Jinetes"
})

L:SetOptionLocalization({
	WarningMarkSoon				= "Mostrar anuncio anticipado para las marcas",
	SpecialWarningMarkOnPlayer	= "Mostrar anuncio especial cuando estés afectado por más de cuatro marcas"
})

L:SetTimerLocalization({
})

L:SetWarningLocalization({
	WarningMarkSoon				= "Marca %d en 3 s",
	SpecialWarningMarkOnPlayer	= "%s: %s"
})

L:SetMiscLocalization({
	Korthazz	= "Señor feudal Korth'azz",
	Rivendare	= "Barón Osahendido",
	Blaumeux	= "Lady Blaumeux",
	Zeliek		= "Sir Zeliek"
})

---------------
-- Sapphiron --
---------------
L = DBM:GetModLocalization("SapphironVanilla")

L:SetGeneralLocalization({
	name = "Sapphiron"
})

L:SetOptionLocalization({
	WarningAirPhaseSoon	= "Mostrar anuncio anticipado para el cambio a fase aérea",
	WarningAirPhaseNow	= "Mostrar anuncio para  el cambio a fase aérea",
	WarningLanded		= "Mostrar anuncio para el cambio a fase en tierra",
	TimerAir			= "Mostrar temporizador para el cambio a fase aérea",
	TimerLanding		= "Mostrar temporizador para el cambio a fase en tierra",
	TimerIceBlast		= "Mostrar temporizador para $spell:28524",
	WarningDeepBreath	= "Mostrar anuncio especial para $spell:28524",
})

L:SetMiscLocalization({
	EmoteBreath			= "%s respira hondo.",
	WarningYellIceblock	= "¡Soy un bloque de hielo!"
})

L:SetWarningLocalization({
	WarningAirPhaseSoon	= "Fase aérea en 10 s",
	WarningAirPhaseNow	= "Fase aérea",
	WarningLanded		= "Fase en tierra",
	WarningDeepBreath	= "Aliento de Escarcha"
})

L:SetTimerLocalization({
	TimerAir		= "Fase aérea",
	TimerLanding	= "Fase en tierra",
	TimerIceBlast	= "Aliento de Escarcha"
})

----------------
-- Kel'Thuzad --
----------------

L = DBM:GetModLocalization("KelThuzadVanilla")

L:SetGeneralLocalization({
	name = "Kel'Thuzad"
})

L:SetOptionLocalization({
	TimerPhase2			= "Mostrar temporizador para el cambio a Fase 2",
	specwarnP2Soon		= "Mostrar anuncio especial 10 s antes del cambio a Fase 2",
	warnAddsSoon		= "Mostrar anuncio anticipado para cuando aparezcan los Guardianes de Corona de Hielo"
})

L:SetMiscLocalization({
	Yell = "¡Esbirros, sirvientes, soldados de la fría oscuridad! ¡Obedeced la llamada de Kel'Thuzad!"
})

L:SetWarningLocalization({
	specwarnP2Soon	= "Fase 2 en 10 s",
	warnAddsSoon	= "Guardianes de Corona de Hielo en breve"
})

L:SetTimerLocalization({
	TimerPhase2	= "Fase 2"
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
	name = "Barón Aquanis"
})

L:SetMiscLocalization({
	Water		= "Agua"
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
	TimerImmune = "Se termina inmunidad"
}

L:SetOptionLocalization({
	TimerImmune	= "Mostrar temporizador para la duración de la inmunidad de Gelihast durante las transiciones de fase."
})
------------------
--  Lorgus Jett  --
------------------
L = DBM:GetModLocalization("LorgusJettSoD")

L:SetGeneralLocalization({
	name = "Lorgus Jett"
})

L:SetWarningLocalization({
	warnPriestRemaining		= "%s Sacerdotisas restantes"
})

L:SetOptionLocalization({
	warnPriestRemaining	= "Mostrar anuncio para cuántas Sacerdotisas de las mareas Brazanegra están restantes."
})

------------------
--  Twilight Lord Kelris  --
------------------
L = DBM:GetModLocalization("TwilightLordKelrisSoD")

L:SetGeneralLocalization({
	name = "Señor Crepuscular Kelris"
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
	name = "Golpeamasa 9-60"
})

---------------
--  Grubbis  --
---------------
L = DBM:GetModLocalization("GrubbisSoD")

L:SetGeneralLocalization({
	name = "Grubbis"
})

L:SetMiscLocalization({
	FirstPull = "Aún hay ductos de ventilación que expulsan material radioactivo por todo Gnomeregan.",
	Pull = "¡No! Temblores como estos solo pueden significar una cosa..."
})
----------------------------
--  Electrocutioner 6000  --
----------------------------
L = DBM:GetModLocalization("ElectrocutionerSoD")

L:SetGeneralLocalization({
	name = "Electrocutor 6000"
})

-----------------------
--  Viscous Fallout  --
-----------------------
L = DBM:GetModLocalization("ViscousFalloutSoD")

L:SetGeneralLocalization({
	name = "Radiactivo viscoso"
})

----------------------------
--  Mechanical Menagerie  --
----------------------------
L = DBM:GetModLocalization("MechanicalMenagerieSoD")

L:SetGeneralLocalization({
	name = "Sala de fieras mecánicas"
})

L:SetMiscLocalization{
	Sheep		= "Oveja",
	Whelp		= "Dragón",
	Squirrel	= "Ardilla",
	Chicken		= "Pollo"
}
-----------------------------
--  Mekgineer Thermaplugg  --
-----------------------------
L = DBM:GetModLocalization("ThermapluggSoD")

L:SetGeneralLocalization({
	name = "Mekigeniero Termochufe"
})

L:SetTimerLocalization{
	timerTankCD = "Habilidad de tanque"
}

L:SetOptionLocalization({
	timerTankCD	= "Mostrar temporizador para la reutilización aleatoria de habilidades de tanque en la etapa 4."
})

------------------
--  Sunken Temple  --
------------------

--------------
-- ST Trash --
--------------
L = DBM:GetModLocalization("STTrashSoD")

L:SetGeneralLocalization{
	name = "Bichos del Templo Sumergido"
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
	name = "Putrilimo purulento"
})

---------------------------
--  Atal'ai Defenders  --
---------------------------
L = DBM:GetModLocalization("AtalaiDefendersSoD")

L:SetGeneralLocalization({
	name = "Defensores de Atal'ai"
})

L:SetOptionLocalization({
	SetIconsOnGhosts = "Colocar iconos en jefes fantasmas"
})
---------------------------
--  Dreamscythe and Weaver  --
---------------------------
L = DBM:GetModLocalization("DreamscytheAndWeaverSoD")

L:SetGeneralLocalization({
	name = "Segasueños y Sastrón"
})
---------------------------
--  Avatar of Hakkar  --
---------------------------
L = DBM:GetModLocalization("AvatarofHakkarSoD")

L:SetGeneralLocalization({
	name = "Avatar de Hakkar"
})
---------------------------
--  Jammal'an and Ogom  --
---------------------------
L = DBM:GetModLocalization("JammalanAndOgomSoD")

L:SetGeneralLocalization({
	name = "Jammal'an y Ogom"
})
---------------------------
--  Morphaz and Hazzas  --
---------------------------
L = DBM:GetModLocalization("MorphazandHazzasSoD")

L:SetGeneralLocalization({
	name = "Morphaz y Hazzas"
})
---------------------------
--  Shade of Eranikus  --
---------------------------
L = DBM:GetModLocalization("ShadeofEranikusSoD")

L:SetGeneralLocalization({
	name = "Sombra de Eranikus"
})
