if GetLocale() == "esES" or GetLocale() == "esMX" then

DBM_BT_TAB			= "TempleTab"
DBM_BLACK_TEMPLE	= "Templo Oscuro";


-- High Warlord Naj'entus
DBM_NAJENTUS_NAME					= "Gran señor de la guerra Naj'entus";
DBM_NAJENTUS_DESCRIPTION			= "Anuncia Espinazo empalador y Escudo de marea";

DBM_NAJENTUS_OPTION_ICON			= "Poner icono en el objetivo de Espinazo empalador";
DBM_NAJENTUS_OPTION_RANGECHECK		= "Mostrar distancia";
DBM_NAJENTUS_OPTION_FRAME			= "Mostrar jugadores con menos de 8500 de vida";

DBM_NAJENTUS_YELL_PULL				= "¡Moriréis en el nombre de Lady Vashj!";

DBM_NAJENTUS_WARN_SPINE				= "*** Espinazo empalador en >%s< ***";
DBM_NAJENTUS_WARN_ENRAGE			= "*** Enrage en %s %s ***";
DBM_NAJENTUS_WARN_SHIELD			= "*** Escudo de marea ***";
DBM_NAJENTUS_WARN_SHIELD_SOON		= "*** Escudo de marea pronto ***";

DBM_NAJENTUS_FRAME_TITLE			= "Naj'entus"
DBM_NAJENTUS_FRAME_TEXT				= "Jugadores con menos de 8500 de vida:"
DBM_NAJENTUS_SPELL_PWS				= "Palabra de poder: Escudo"
DBM_NAJENTUS_SPELL_FW				= "Resguardo contra la Escarcha"
DBM_NAJENTUS_SPELL_FB				= "Flor Vil"


-- Supremus
DBM_SUPREMUS_NAME					= "Supremus";
DBM_SUPREMUS_DESCRIPTION			= "Anuncia las fases y los objetivos.";
DBM_SUPREMUS_OPTION_TARGETWARN		= "Anuncia el objetivo de Supremus en la fase 2";
DBM_SUPREMUS_OPTION_TARGETICON		= "Poner icono en el objetivo de Supremus";
DBM_SUPREMUS_OPTION_TARGETWHISPER	= "Enviar susurro al objetivo de Supremus";

DBM_SUPREMUS_EMOTE_PHASE1			= "punches the ground in anger!";--translate
DBM_SUPREMUS_EMOTE_PHASE2			= "The ground begins to crack open!";--translate
DBM_SUPREMUS_EMOTE_NEWTARGET		= "acquires a new target";--translate

DBM_SUPREMUS_WARN_KITE_TARGET		= "Objetivo: >%s<";
DBM_SUPREMUS_WARN_PHASE_1_SOON		= "*** Fase de full DPS en 10 seg ***";
DBM_SUPREMUS_WARN_PHASE_2_SOON		= "*** Fase de Kitear en 10 seg ***";
DBM_SUPREMUS_WARN_PHASE_1			= "*** Fase de Full DPS ****";
DBM_SUPREMUS_WARN_PHASE_2			= "*** Fase de Kitear ***";
DBM_SUPREMUS_SPECWARN_FIRE			= "Llama de arrabio";
DBM_SUPREMUS_SPECWARN_VOLCANO		= "Volcán";
DBM_SUPREMUS_WHISPER_RUN_AWAY		= "¡Huye!";

-- Shade of Akama
DBM_AKAMA_NAME						= "Sombra de Akama";
DBM_AKAMA_DESCRIPTION				= nil;

DBM_AKAMA_MOB_AKAMA					= "Akama";
DBM_AKAMA_MOB_DEFENDER				= "Defensor Lengua de ceniza";
DBM_AKAMA_MOB_CHANNELER				= "Canalizador Lengua de ceniza";
DBM_AKAMA_MOB_SORCERER				= "Hechicero Lengua de ceniza";
DBM_AKAMA_MOB_DIES					= "%s muere.";

DBM_AKAMA_WARN_CHANNELER_DOWN		= "**** %s/6 canalizadores muertos ****";
DBM_AKAMA_WARN_SORCERER_DOWN		= "**** %s hechiceros muertos ****";

-- Teron Gorefiend
DBM_GOREFIEND_NAME					= "Teron Sanguino";
DBM_GOREFIEND_DESCRIPTION			= "Anuncia Sombra de muerte e Incinerar.";

DBM_GOREFIEND_OPTION_INCINERATE		= "Anunciar incinerar";

DBM_GOREFIEND_YELL_PULL				= "¡La venganza es mía!";

DBM_GOREFIEND_WARN_SOD				= "*** Sombra de muerte: >%s< ***";
DBM_GOREFIEND_WARN_INCINERATE		= "*** Incinerar: >%s< ***";

DBM_GOREFIEND_SPECWARN_SOD			= "Sombra de muerte";

-- Bloodboil
DBM_BLOODBOIL_NAME					= "Gurtogg Sangre Hirviente";
DBM_BLOODBOIL_DESCRIPTION			= "Anuncia Sangre Hirviente e Ira Vil.";
DBM_BLOODBOIL_OPTION_SMASH			= "Anunciar Machaque arqueado";

DBM_BLOODBOIL_YELL_PULL				= "La Horda...os aplastará";

DBM_BLOODBOIL_WARN_BLOODBOIL		= "*** Sangre Hirviente #%s ***";
DBM_BLOODBOIL_WARN_ENRAGE			= "*** Enrage en %s %s ***";
DBM_BLOODBOIL_WARN_FELRAGE_SOON		= "*** Ira Vil pronto ***";
DBM_BLOODBOIL_WARN_NORMAL_SOON		= "*** Fase normal en 5 seg ***";
DBM_BLOODBOIL_WARN_FELRAGE			= "*** Ira Vil en >%s< ***";
DBM_BLOODBOIL_WARN_NORMALPHASE		= "*** Fase Normal ***";
DBM_BLOODBOIL_WARN_SMASH			= "*** Machaque arqueado ***";
DBM_BLOODBOIL_WARN_SMASH_SOON		= "*** Machaque arqueado pronto ***";

-- Essence (Reliquary) of Souls
DBM_SOULS_NAME						= "Relicario de Almas"
DBM_SOULS_DESCRIPTION				= "Anuncia Enrage, Fijado, Drenado de Alma, Escudo de Runa, Embotado y Maldad."
DBM_SOULS_OPTION_DRAIN				= "Anunciar Drenado de Alma"
DBM_SOULS_OPTION_DRAIN_CAST			= "Anunciar el casteo de Drenado de Alma (útil para dispell en masa)"
DBM_SOULS_OPTION_FIXATE				= "Anunciar Fijado"
DBM_SOULS_OPTION_SPITE				= "Anunciar Maldad"
DBM_SOULS_OPTION_SCREAM				= "Anunciar Alarido de Alma"
DBM_SOULS_OPTION_SPECWARN_SPITE		= "Mostrar aviso especial cuando te afecte Maldad"
DBM_SOULS_OPTION_WHISPER_SPITE		= "Enviar susurro a los objetivos de Maldad"

DBM_SOULS_BOSS_SUFFERING			= "Esencia de Sufrimiento"
DBM_SOULS_BOSS_DESIRE				= "Esencia de Deseo"
DBM_SOULS_BOSS_KILL_NAME			= "Esencia de Inquina"
DBM_SOULS_YELL_PULL					= "¡Solo os esperan dolor y sufrimiento!"
DBM_SOULS_EMOTE_ENRAGE				= "¡Esencia de Inquina rebosa furia!"
DBM_SOULS_YELL_DESIRE				= "Puedes tener todo lo que desees... pagando su precio."
DBM_SOULS_YELL_DESIRE_DEMONIC		= "Shi shi rikk rukadare shi tichar kar x gular"--translate
DBM_SOULS_DEBUFF_SPITE				= "([^%s]+) (%w+) afectado por Maldad%."
DBM_SOULS_DEBUFF_SOULDRAIN			= "([^%s]+) (%w+) afectado por Drenado de Alma%."
DBM_SOULS_DEBUFF_FIXATE				= "([^%s]+) (%w+) afectado por Fijado%."
DBM_SOULS_YELL_ANGER_INC			= "¡Cuidado: estoy vivo!"

DBM_SOULS_WARN_ENRAGE_SOON			= "*** Enrage pronto ***"
DBM_SOULS_WARN_ENRAGE				= "*** Enrage ***"
DBM_SOULS_WARN_ENRAGE_OVER			= "*** Enrage finalizado ***"
DBM_SOULS_WARN_RUNESHIELD			= "*** Escudo de Runa ***"
DBM_SOULS_WARN_RUNESHIELD_SOON		= "*** Escudo de Runa en 3 seg ***"
DBM_SOULS_WARN_DEADEN				= "*** Embotado ****"
DBM_SOULS_WARN_DEADEN_SOON			= "*** Embotado en 5 seg ***"
DBM_SOULS_WARN_DESIRE_INC			= "*** Esencia de Deseo - Sin mana en unos 3 min. ***"
DBM_SOULS_WARN_MANADRAIN			= "*** Sin mana en 20 seg ***"
DBM_SOULS_WARN_SPITE				= "*** Maldad en %s ***"
DBM_SOULS_WARN_SOULDRAIN			= "*** Drenado de Alma en %s ***"
DBM_SOULS_WARN_SOULDRAIN_CAST		= "*** Casteando Drenado de Alma ***"
DBM_SOULS_WARN_FIXATE				= "*** Fijado: >%s< ***"
DBM_SOULS_SPECWARN_FIXATE			= "¡Fijado!"
DBM_SOULS_WARN_SCREAM				= "*** Alarido de Alma ***"
DBM_SOULS_SPECWARN_SPITE			= "¡Maldad!"
DBM_SOULS_WARN_ANGER_INC			= "*** Esencia de Inquina ***";
DBM_SOULS_WHISPER_SPITE				= "¡Maldad en ti!"

-- Mother Shahraz
DBM_SHAHRAZ_NAME					= "Madre Shahraz"
DBM_SHAHRAZ_DESCRIPTION				= "Anuncia Atracción Fatal, pone iconos y envia susurros. Anuncia y muestra tiempos para los haces."
DBM_SHAHRAZ_OPTION_BEAM				= "Anunciar Haces"
DBM_SHAHRAZ_OPTION_BEAM_SOON		= "Mostrar aviso de \"Haz pronto\""

DBM_SHAHRAZ_YELL_PULL				= "Y bien... ¿negocios o placer?"

DBM_SHAHRAZ_WARN_ENRAGE				= "*** Enrage en %s %s ***"
DBM_SHAHRAZ_WARN_FA					= "*** Atracción Fatal en %s ***"
DBM_SHAHRAZ_SPECWARN_FA				= "Atracción Fatal"
DBM_SHAHRAZ_WHISPER_FA				= "¡Atracción Fatal en ti!"
DBM_SHAHRAZ_WARN_BEAM_VILE			= "*** Haz inmundo ***"
DBM_SHAHRAZ_WARN_BEAM_SINISTER		= "*** Haz siniestro ***"
DBM_SHAHRAZ_WARN_BEAM_SINFUL		= "*** Haz pecaminoso ***"
DBM_SHAHRAZ_WARN_BEAM_WICKED		= "*** Haz maligno ***"
DBM_SHAHRAZ_WARN_BEAM_SOON			= "*** Haz en 3 seg ***"

-- Illidari Council
DBM_COUNCIL_NAME					= "El Consejo Illidari"
DBM_COUNCIL_DESCRIPTION				= "Anuncia Círculo de sanación, Veneno mortal, Cólera divina, Esfumarse y escudos."
DBM_COUNCIL_OPTION_COH				= "Anunciar Círculo de sanación"
DBM_COUNCIL_OPTION_DP				= "Anunciar Veneno mortal"
DBM_COUNCIL_OPTION_DW				= "Anunciar Cólera divina"
DBM_COUNCIL_OPTION_VANISH			= "Anunciar Esfumarse"
DBM_COUNCIL_OPTION_VANISHFADED		= "Mostrar aviso al finalizar Esfumarse"
DBM_COUNCIL_OPTION_VANISHFADESOON	= "Mostrar aviso 5 seg antes de finalizar Esfumarse"
DBM_COUNCIL_OPTION_SN				= "Anunciar Escudo reflectante"
DBM_COUNCIL_OPTION_SS				= "Anunciar Escudo de hechizos"
DBM_COUNCIL_OPTION_SM				= "Anunciar Escudo físico"
DBM_COUNCIL_OPTION_DEVAURA			= "Anunciar Aura de Devoción"
DBM_COUNCIL_OPTION_RESAURA			= "Anunciar Aura de Resistencia"

DBM_COUNCIL_MOB_GATHIOS				= "Gathios el Despedazador"
DBM_COUNCIL_MOB_MALANDE				= "Lady Malande"
DBM_COUNCIL_MOB_ZEREVOR				= "Sumo abisálico Zerevor"
DBM_COUNCIL_MOB_VERAS				= "Veras Sombra Oscura"

DBM_COUNCIL_MOB_GATHIOS_EN			= "Gathios the Shatterer"--translate
DBM_COUNCIL_MOB_MALANDE_EN			= "Lady Malande"--translate
DBM_COUNCIL_MOB_ZEREVOR_EN			= "High Nethermancer Zerevor"--translate
DBM_COUNCIL_MOB_VERAS_EN			= "Veras Darkshadow"--translate

DBM_COUNCIL_YELL_PULL1				= "¡Idioma común... un idioma tan ordinario! ¡Bandal!"
DBM_COUNCIL_YELL_PULL2				= "You wish to test me?"--translate
DBM_COUNCIL_YELL_PULL3				= "Tengo cosas mejores que hacer..."
DBM_COUNCIL_YELL_PULL4				= "Flee or die!"--translate

DBM_COUNCIL_WARN_CAST_COH			= "Círculo de sanación"
DBM_COUNCIL_WARN_POISON				= "Veneno mortal en >%s<"
DBM_COUNCIL_WARN_SHIELD_NORMAL		= "Escudo reflectante"
DBM_COUNCIL_WARN_SHIELD_SPELL		= "Escudo de hechizos en %s"
DBM_COUNCIL_WARN_SHIELD_MELEE		= "Escudo físico en %s"
DBM_COUNCIL_WARN_VANISH				= "Esfumarse"
DBM_COUNCIL_WARN_VANISH_FADED		= "Finalizó Esfumarse"
DBM_COUNCIL_WARN_WRATH				= "Cólera divina en >%s<"
DBM_COUNCIL_WARN_AURA_DEV			= "Aura de Devoción"
DBM_COUNCIL_WARN_AURA_RES			= "Aura de Resistencia"
DBM_COUNCIL_WARN_VANISHFADE_SOON	= "Esfumarse finaliza en 5 seg"

-- Illidan Stormrage
DBM_ILLIDAN_NAME					= "Illidan Tempestira"
DBM_ILLIDAN_DESCRIPTION				= "Announces Phases, Shear, Shadowfiends, Barrage, Eye Blast, Agonizing Flames, Shadow Demons, Flame Burst and Enrage."--translate
DBM_ILLIDAN_OPTION_RANGECHECK		= "Show range check frame in phase 3"--translate
DBM_ILLIDAN_OPTION_PHASES			= "Announce phases"--translate
DBM_ILLIDAN_OPTION_SHEARCAST		= "Announce Shear cast"--translate
DBM_ILLIDAN_OPTION_SHEAR			= "Announce Shear"--translate
DBM_ILLIDAN_OPTION_SHADOWFIEND		= "Announce Shadowfiends"--translate
DBM_ILLIDAN_OPTION_ICONFIEND		= "Set icons on Shadowfiend targets"--translate
DBM_ILLIDAN_OPTION_BARRAGE			= "Announce Dark Barrage"--translate
DBM_ILLIDAN_OPTION_BARRAGE_SOON		= "Show \"Dark Barrage soon\" warning"--translate
DBM_ILLIDAN_OPTION_EYEBEAM			= "Announce Eye Blast"--translate
DBM_ILLIDAN_OPTION_FLAMES			= "Announce Agonizing Flames"--translate
DBM_ILLIDAN_OPTION_DEMONFORM		= "Announce demon/normal form"--translate
DBM_ILLIDAN_OPTION_FLAMEBURST		= "Announce Flame Burst"--translate
DBM_ILLIDAN_OPTION_SHADOWDEMONS		= "Announce Shadow Demons"--translate
DBM_ILLIDAN_OPTION_EYEBEAMSOON		= "Show \"Eye Blast soon\" warning"--translate

DBM_ILLIDAN_YELL_PULL				= "¡Ha llegado la hora: es nuestro momento!"
DBM_ILLIDAN_YELL_EYEBEAM			= "Stare into the eyes of the Betrayer!"--translate
DBM_ILLIDAN_YELL_DEMONFORM			= "Behold the power... of the demon within!"--translate
DBM_ILLIDAN_YELL_PHASE4				= "¿Esto es todo, mortales? ¿Es esta toda la furia que podéis reunir?"
DBM_ILLIDAN_MOB_FLAME				= "Flame of Azzinoth"--translate
DBM_ILLIDAN_SPELL_SHADOWDEMONS		= "Summon Shadow Demons"--translate
DBM_ILLIDAN_SPELL_SHEAR				= "Shear"--translate
DBM_ILLIDAN_YELL_START				= "Akama. Tu hipocresía no me sorprende. Debí acabar contigo y con tus malogrados hermanos hace tiempo."

DBM_ILLIDAN_WARN_SHEAR				= "Shear on >%s<"--translate
DBM_ILLIDAN_WARN_SHADOWFIEND		= "Shadowfiend on >%s<"--translate
DBM_ILLIDAN_WARN_BARRAGE			= "Dark Barrage on >%s<"--translate
DBM_ILLIDAN_WARN_BARRAGE_SOON		= "Dark Barrage soon"--translate
DBM_ILLIDAN_WARN_EYEBEAM			= "Eye Blast"--translate
DBM_ILLIDAN_WARN_FLAMES				= "Agonizing Flames on %s"--translate
DBM_ILLIDAN_WARN_PHASE2				= "Fase 2"
DBM_ILLIDAN_WARN_PHASE3				= "Fase 3"
DBM_ILLIDAN_WARN_PHASE4				= "Fase 4"
DBM_ILLIDAN_WARN_PHASE_DEMON		= "Demon Phase"--translate
DBM_ILLIDAN_WARN_FLAMEBURST			= "Flame Burst #%s"--translate
DBM_ILLIDAN_WARN_FLAMEBURST_SOON	= "Flame Burst soon"--translate
DBM_ILLIDAN_WARN_SHADOWDEMSSOON		= "Shadow Demons soon"--translate
DBM_ILLIDAN_WARN_SHADOWDEMS			= "Shadow Demons"--translate
DBM_ILLIDAN_WARN_NORMALPHASE_SOON	= "Normal Phase in 10 sec"--translate
DBM_ILLIDAN_WARN_CASTSHEAR			= "Casting Shear"--translate
DBM_ILLIDAN_WARN_EYEBEAM_SOON		= "Eye Blast soon"--translate
DBM_ILLIDAN_WARN_PHASE_NORMAL		= "Normal Phase"--translate
DBM_ILLIDAN_WARN_DEMONPHASE_SOON	= "Demon Phase in 10 sec"--translate
DBM_ILLIDAN_WARN_SHADOWDEMSON		= "Shadow Demons on %s"--translate
DBM_ILLIDAN_STATUSMSG_PHASE2		= "Phase 2"--translate
DBM_ILLIDAN_WARN_PRISON				= "Shadow Prison"--translate
DBM_ILLIDAN_WARN_P4ENRAGE_SOON		= "Enrage in 5 sec"--translate
DBM_ILLIDAN_WARN_P4ENRAGE_NOW		= "Enrage"--translate
DBM_ILLIDAN_WARN_CAGED				= "Caged"--translate

DBM_ILLIDAN_SELFWARN_SHADOWFIEND	= "Parasitic Shadowfiend"--translate
DBM_ILLIDAN_SELFWARN_SHADOW			= "Agonizing Flames"--translate
DBM_ILLIDAN_SELFWARN_DEMONS			= "Shadow Demon"--translate

DBM_SBT["Enrage2"]					= "Enrage" -- you cannot have two timers with the same id, so the 2nd enrage bar needs a "localization"

end