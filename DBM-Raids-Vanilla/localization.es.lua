if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local L

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
	WarnFreeze	= "Freeze: %d/3",
	WarnShatter	= "Shatter: %d/3"
}
L:SetOptionLocalization{
	WarnFreeze	= "Announce Freeze status",
	WarnShatter	= "Announce Shatter status"
}
L:SetMiscLocalization{
	Slow	= "comienza a ir más despacio!",
	Freezing= "se está congelando!",
	Frozen	= "no se puede mover!",
	Phase4 	= "comienza a desmoronarse!",
	Phase5 	= "parece a punto de hacerse añicos!",
	Phase6 	= "explota"--Might want to double check this, since no further messages appeared after the previous one.
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
	WarnEyeTentacle			= "Tentáculo ocular",
	WarnClawTentacle2		= "Tentáculo Garral",
	WarnGiantEyeTentacle	= "Tentáculo ocular gigante",
	WarnGiantClawTentacle	= "Tentáculo garral gigante",
	WarnWeakened			= "C'Thun débil",
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
	WarnEyeTentacle			= "Mostrar aviso cuando aparezca un Tentáculo ocular",
	WarnClawTentacle2		= "Mostrar aviso cuando aparezca un Tentáculo Garral",
	WarnGiantEyeTentacle	= "Mostrar aviso cuando aparezca un Tentáculo ocular gigante",
	WarnGiantClawTentacle	= "Mostrar aviso cuando aparezca un Tentáculo garral gigante",
	WarnWeakened			= "Mostrar aviso cuando C'Thun se vuelva débil",
	SpecWarnWeakened		= "Mostrar aviso especial cuando C'Thun se vuelva débil",
	TimerEyeTentacle		= "Mostrar temporizador para el siguiente Tentáculo ocular",
	TimerClawTentacle		= "Mostrar temporizador para el siguiente Tentáculo Garral",
	TimerGiantEyeTentacle	= "Mostrar temporizador para el siguiente Tentáculo ocular gigante",
	TimerGiantClawTentacle	= "Mostrar temporizador para el siguiente Tentáculo garral gigante",
	TimerWeakened			= "Mostrar temporizador para la duración de la debilidad de C'Thun",
	RangeFrame				= "Mostrar marco de distancia (10 m)"
}
L:SetMiscLocalization{
	Stomach		= "Estómago de C'Thun",
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
	WarnSubmerge		= "Ouro ha regresado",
	WarnEmerge			= "Ouro se sumerge"
}
L:SetTimerLocalization{
	TimerSubmerge		= "Sumersión",
	TimerEmerge			= "Emersión"
}
L:SetOptionLocalization{
	WarnSubmerge		= "Mostrar aviso cuando Ouro se sumerja",
	TimerSubmerge		= "Mostrar temporizador para cuando Ouro se sumerja",
	WarnEmerge			= "Mostrar aviso cuando Ouro regrese a la superficie",
	TimerEmerge			= "Mostrar temporizador para cuando Ouro regrese a la superficie"
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
	WarnWave	= "Oleada %s"
}
L:SetOptionLocalization{
	WarnWave	= "Mostrar aviso previo para la siguiente oleada"
}
L:SetMiscLocalization{
	Wave12		= "Ahí vienen. Intenta que no te maten,",--Followed by 'chico' or 'chica'
	Wave3		= "¡La hora de las recompensas está próxima! ¡Que la oscuridad gobierne el corazón de nuestros enemigos!",
	Wave4		= "¡No volveremos a esperar detrás de rejas y paredes de piedra! ¡Nunca más podrán negarnos nuestra venganza! ¡Hasta los dragones temblarán frente a nuestra ira!",
	Wave5		= "¡El miedo es para el enemigo! ¡Miedo y muerte!",
	Wave6		= "¡Corzocelada lloriqueará y rogará por su vida, igual que hizo su débil hijo! ¡Hoy acabará un milenio de injusticia!",
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
	WarnPursue		= "Anunciar objetivos de la persecución de Buru",
	SpecWarnPursue	= "Mostrar aviso especial cuando te persiga el jefe",
	WarnDismember	= DBM_CORE_L.AUTO_ANNOUNCE_OPTIONS.spell:format(96)
}
L:SetMiscLocalization{
	PursueEmote 	= "¡%s fija su mirada en %s!"
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
	WarnVulnerable	= "Anunciar debilidades",
	TimerVulnerable	= "Mostrar temporizador para la duración de las debilidades"
}

----------------
-- AQ20 Trash --
----------------
L = DBM:GetModLocalization("AQ20Trash")

L:SetGeneralLocalization{
	name = "AQ20: Bichos"
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
	YellPull 	= "¡Los invasores han penetrado en El Criadero! ¡Activad la alarma! ¡Hay que proteger los huevos a toda costa!"
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
	name = "Ebonorroca"
}

----------------
--  Flamegor  --
----------------
L = DBM:GetModLocalization("Flamegor")

L:SetGeneralLocalization{
	name = "Flamagor"
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
	TimerBreathCD	= "%s TdR"
}
L:SetOptionLocalization{
	WarnBreath		= "Mostrar aviso cuando Chromaggus lance uno de sus alientos",
	TimerBreathCD	= "Mostrar temporizador para el tiempo de reutilización de los alientos"
}
L:SetMiscLocalization{
	Breath1	= "Primer aliento",
	Breath2	= "Segundo aliento"
}

----------------
--  Nefarian  --
----------------
L = DBM:GetModLocalization("Nefarian-Classic")

L:SetGeneralLocalization{
	name = "Nefarian"
}
L:SetWarningLocalization{
	WarnClassCall		= "Llamada: %s",
	WarnPhase			= "Fase %s"
}
L:SetTimerLocalization{
	TimerClassCall		= "Llamada: %s"
}
L:SetOptionLocalization{
	TimerClassCall		= "Mostrar temporizador para la duración de las llamadas en cada clase",
	WarnClassCall		= "Mostrar aviso para las llamadas de clase",
	WarnPhase			= "Anunciar cambios de fase"
}
L:SetMiscLocalization{
	YellP2		= "Bien hecho, mis esbirros. El coraje de los mortales empieza a mermar. ¡Veamos ahora cómo se enfrentan al verdadero Señor de la Cubre de Roca Negra!",
	YellP3		= "¡Imposible! ¡Erguíos, mis esbirros! ¡Servid a vuestro maestro una vez más!",
	YellShaman	= "¡Chamanes, mostradme lo que pueden hacer vuestros tótems!",
	YellPaladin	= "Paladines... He oído que tenéis muchas vidas. Demostrádmelo.",
	YellDruid	= "Los druidas y vuestro estúpido poder de cambiar de forma. ¡Veámoslo en acción!",
	YellPriest	= "¡Sacerdotes! Si vais a seguir curando de esa forma, ¡podríamos hacerlo más interesante!",
	YellWarrior	= "¡Vamos guerreros, sé que podéis golpear más fuerte que eso! ¡Veámoslo!",
	YellRogue	= "¿Pícaros? ¡Dejad de esconderos y enfrentaos a mí!",
	YellWarlock	= "Brujos... No deberíais estar jugando con magia que no comprendéis. ¿Veis lo que pasa?",
	YellHunter	= "¡Cazadores y vuestras molestas cerbatanas!",
	YellMage	= "¡Magos también? Deberíais tener más cuidado cuando jugáis con la magia...",
	YellDK		= "¡Caballeros de la Muerte... venid aquí!",
	YellMonk	= "Monjes, ¿no os mareáis con tanta vuelta?",
	YellDH		= "¿Cazadores de demonios? Qué raro eso de taparos los ojos así. ¿No os cuesta ver lo que tenéis alrededor?"--Demon Hunter call; I know this hasn't been implemented yet in DBM, but I added it just in case.
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
	name = "Presagista Sulfuron"
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
	WarnSubmerge		= "Mostrar aviso cuando Ragnaros se sumerja",
	TimerSubmerge		= "Mostrar temporizador para cuando Ragnaros se sumerja",
	WarnEmerge			= "Mostrar aviso cuando Ragnaros regrese a la superficie",
	TimerEmerge			= "Mostrar temporizador para cuando Ragnaros regrese a la superficie"
}
L:SetMiscLocalization{
	Submerge	= "¡AVANZAD, MIS SIRVIENTES! ¡DEFENDED A VUESTRO MAESTRO!",
	Pull		= "¡Crías imprudentes! ¡Os habéis precipitado hasta vuestra propia muerte! ¡Ahora mirad, el maestro se agita!"
}
