if GetLocale() == "esES" then
--Attumen
DBM_ATH_NAME			= "Attumen el Montero";
DBM_ATH_DESCRIPTION		= "Muestra el tiempo para sus maldiciones.";
DBM_ATH_OPTION_1		= "Muestra aviso de 5 segundos";

DBM_ATH_WARN_CURSE		= "*** Maldicion ***";
DBM_ATH_CURSE_SOON		= "*** Maldicion en %s segundos ***";

DBM_ATH_MIDNIGHT		= "Medianoche";
DBM_ATH_YELL_1			= "Come Midnight, let's disperse this petty rabble!";--translate


--Moroes
DBM_MOROES_NAME			= "Moroes";
DBM_MOROES_DESCRIPTION	= "Muestra el tiempo de Esfumarse";
DBM_MOROES_OPTION_1		= "Muestra un aviso cuando haga Esfumarse";
DBM_MOROES_OPTION_2		= "Muestra un aviso cuando se le acabe Esfumarse";
DBM_MOROES_OPTION_3		= "Muestra un aviso cuando quede poco para Esfumarse";
DBM_MOROES_OPTION_4		= "Muestra un aviso cuando haga Garrote";

DBM_MOROES_VANISH_WARN	= "*** Esfumarse ***";
DBM_MOROES_VANISH_FADED	= "*** Esfumarse acabado ***";
DBM_MOROES_VANISH_SOON	= "*** Esfumarse pronto ***";
DBM_MOROES_GARROTE_WARN	= "*** Garrote en >%s< ***";

DBM_MOROES_YELL_START	= "Mm, visitantes inesperados. Hay que hacer preparativos...";--translate?




-- Maiden of Virtue
DBM_MOV_NAME			= "Doncella de la Virtud";
DBM_MOV_DESCRIPTION		= "Muestra el tiempo aproximado para el arrepentimiento, un cuadro de test de rango, y los afectados por el fuego sagrado.";
DBM_MOV_OPTION_1		= "Muestra un Cuadro de test de rango";
DBM_MOV_OPTION_2		= "Anunciar Fuego Sagrado";

DBM_MOV_YELL_PULL		= "Your behavior will not be tolerated.";--translate
DBM_MOV_YELL_REP_1		= "Cast out your corrupt thoughts.";--translate
DBM_MOV_YELL_REP_2		= "Your impurity must be cleansed.";--translate
DBM_MOV_WARN_REP		= "*** Arrepentimiento ***";
DBM_MOV_WARN_REP_SOON	= "*** Arrepentimiento pronto ***";

DBM_MOV_WARN_HOLYFIRE	= "*** Fuego Sagrado en >%s< ***";



-- Romulo and Julianne
DBM_RJ_NAME				= "Romulo y Julianne";
DBM_RJ_DESCRIPTION		= "Anunciar el bufo de arrojo en Romulo y devoción en Julianne.";
DBM_RJ_OPTION_1			= "Anunciar cuando Julianne se esta curando";
DBM_RJ_OPTION_2			= "Anunciar Empujón envenenado";

DBM_RJ_DARING_WARN		= "*** Romulo tiene arrojo ***";
DBM_RJ_DEVOTION_WARN	= "*** Julianne tiene Devoción ***";
DBM_RJ_HEAL_WARN		= "*** ¡Julianne se esta curando! ***";
DBM_RJ_POISON_WARN		= "Empujón envenenado en >%s<";

DBM_RJ_ROMULO			= "Romulo";
DBM_RJ_JULIANNE			= "Julianne";
DBM_RJ_PHASE2_YELL		= "¡Ven, dulce noche; y devuélveme a mi Romulo!";--translate?

-- Big Bad Wolf
DBM_BBW_NAME			= "El Lobo Feroz";
DBM_BBW_DESCRIPTION		= "Anuncia y muestra tiempo para \"Caperucita Roja\".";
DBM_BBW_OPTION_1		= "Anunciar Miedo";
DBM_BBW_OPTION_2		= "Enviar susurro";

DBM_BBW_YELL_1			= "The better to own you with!";--translate
DBM_BBW_FEAR_EXP		= "Aullido aterrador";

DBM_BBW_FEAR_WARN		= "*** Miedo ***";
DBM_BBW_FEAR_SOON		= "*** Miedo pronto ***";
DBM_BBW_RRH_WARN		= "*** >%s< es Caperucita Roja ***";
DBM_BBW_RUN_AWAY		= "¡Corre!";
DBM_BBW_RUN_AWAY_WHISP	= "¡Eres Caperucita Roja! ¡Corre!";
DBM_BBW_RRH_SOON_WARN	= "*** Caperucita Roja pronto ***";

-- Curator
DBM_CURA_NAME			= "Curator";
DBM_CURA_DESCRIPTION	= "Muestra el tiempo para su Evocación.";

DBM_CURA_YELL_PULL		= "La Galeria es solo para los invitados.";--translate?
DBM_CURA_YELL_OOM		= "No se puede procesar tu solicitud.";--translate?

DBM_CURA_EVO_NOW		= "*** Evocación ***";
DBM_CURA_EVO_SOON		= "*** Evocación pronto ***";
DBM_CURA_EVO_1MIN		= "Evocación en 1 min"

-- Terestian Illhoof
DBM_TI_NAME				= "Terestian Pezuña Enferma";
DBM_TI_DESCRIPTION		= "Anuncia Cadenas demoníacas y fases debiles.";
DBM_TI_OPTION_1			= "Anunciar cuando salga Diablillo";

DBM_TI_YELL_PULL		= "Ah, you're just in time. The rituals are about to begin!";--translate
DBM_TI_SACRIFICE		= "([^%s]+) (%w+) le afecta Sacrificio%.";
DBM_TI_EMOTE_IMP		= "%s grita de dolor y señala a su maestro.";--translate?
DBM_TI_CAST_IMP			= "Terestian invoca un diablillo";

DBM_TI_SACRIFICE_WARN	= "*** >%s< está siendo sacrificado ***";
DBM_TI_SACRIFICE_SOON	= "*** Sacrificio pronto ***";
DBM_TI_WEAKENED_WARN	= "*** Debilitado ***";
DBM_TI_IMP_SOON			= "*** Diablillo sale pronto ***";
DBM_TI_IMP_RESPAWNED	= "*** Sale Diablillo ***";


-- Shade of Aran
DBM_ARAN_NAME			= "Sombra de Aran";
DBM_ARAN_DESCRIPTION	= "Anuncia Corona de llamas y Deflagración Arcana.";

DBM_ARAN_CAST_WREATH	= "Sombra de Aran empieza a castear Corona de llamas";
DBM_ARAN_CAST_AE		= "Sombra de Aran empieza a castear Deflagración Arcana.";
DBM_ARAN_CAST_BLIZZ		= "Sombra de Aran empieza a castear Ventisca.";
DBM_ARAN_YELL_ADDS		= "I'm not finished yet! No, I have a few more tricks up my sleeve...";--translate
DBM_ARAN_YELL_BLIZZ1	= "Back to the cold dark with you!";--translate
DBM_ARAN_YELL_BLIZZ2	= "I'll freeze you all!";--translate

DBM_ARAN_WREATH_WARN	= "*** Corona de llamas en 5 segundos ***";
DBM_ARAN_AE_WARN		= "*** Deflagración Arcana ***";
DBM_ARAN_BLIZZ_WARN		= "*** Ventisca ***";
DBM_ARAN_ADDS_WARN		= "*** Elementales ***";
DBM_ARAN_DO_NOT_MOVE	= "¡No te muevas!";

--Netherspite
DBM_NS_NAME				= "Rencor abisal";
DBM_NS_DESCRIPTION		= "Muestra tiempo para sus fases y anuncia Aliento abisal y Zonas de vacío.";
DBM_NS_OPTION_1			= "Anunciar fases";
DBM_NS_OPTION_2			= "Mostrar aviso de 5 segundos para fases";
DBM_NS_OPTION_3			= "Anunciar Zonas de vacío";
DBM_NS_OPTION_4			= "Anunciar Aliento abisal";

DBM_NS_EMOTE_PHASE_2	= "%s goes into a nether-fed rage!";--translate
DBM_NS_EMOTE_PHASE_1	= "%s cries out in withdrawal, opening gates to the nether.";--translate

DBM_NS_WARN_PORTAL		= "*** Fase de portal ***";
DBM_NS_WARN_BANISH		= "*** Fase Desterrar ***";
DBM_NS_WARN_PORTAL_SOON	= "*** Fase de portales en 5 seg ***";
DBM_NS_WARN_BANISH_SOON	= "*** Fase Desterraren 5 seg ***";
DBM_NS_WARN_BREATH		= "*** Aliento abisal ***";
DBM_NS_WARN_VOID_ZONE	= "*** Zonas de vacío ***";
DBM_NS_WARN_ENRAGE		= "*** Enrage en %s %s ***";

--Prince Malchezaar
DBM_PRINCE_NAME			= "Príncipe Malchezaar"
DBM_PRINCE_DESCRIPTION	= "Anuncia Infernales, Socavar, Palabra de las Sombras: dolor y Nova de las Sombras.";
DBM_PRINCE_OPTION_1		= "Anunciar  Nova de las Sombras";
DBM_PRINCE_OPTION_2		= "Anunciar Socavar";
DBM_PRINCE_OPTION_3		= "Enviar susurro";
DBM_PRINCE_OPTION_4		= "Anunciar Palabra de las Sombras: dolor";
DBM_PRINCE_OPTION_5		= "Anunciar Infernal";

DBM_PRINCE_YELL_PULL	= "Madness has brought you here to me. I shall be your undoing!";--translate
DBM_PRINCE_YELL_P2		= "Simple fools! Time is the fire in which you'll burn!";--translate
DBM_PRINCE_YELL_P3		= "How can you hope to stand against such overwhelming power?";--translate
DBM_PRINCE_YELL_INF1	= "All realities, all dimensions are open to me!";--translate
DBM_PRINCE_YELL_INF2	= "You face not Malchezzar alone, but the legions I command!";--translate

DBM_PRINCE_WARN_NOVA		= "*** Nova de las Sombras en 2 seg. ***";
DBM_PRINCE_WARN_ENFEEBLE	= "*** Socavar ***";
DBM_PRINCE_WHISP_ENFEEBLE	= "¡Te afecta Socavar!";
DBM_PRINCE_WARN_SWP			= "*** Palabra de las Sombras: dolor >%s< ***";
DBM_PRINCE_WARN_INF			= "*** Infernal #%s ***";
DBM_PRINCE_WARN_INF_SOON	= "*** Infernal #%s pronto ***"
DBM_PRINCE_WARN_PHASE		= "*** Fase %s ***";

-- Nightbane
DBM_NB_NAME				= "Nocturno";
DBM_NB_DESCRIPTION		= "Anuncia Miedo, Tierra carbonizada, Ceniza de distracción, Lluvia de huesos, Explosión humeante y las fases aereas.";
DBM_NB_OPTION_1			= "Mostrar aviso especial para Tierra carbonizada";
DBM_NB_OPTION_2			= "Anunciar Ceniza de distracción en dps a rango/healers";
DBM_NB_OPTION_3			= "Anunciar Lluvia de huesos";
DBM_NB_OPTION_4			= "Anunciar Explosión humeante";
DBM_NB_OPTION_5			= "Mostrar aviso especial cuando Nocturno castea Explosión humeante en ti";
DBM_NB_OPTION_ICON		= "Poner icono(calavera) en el objetivo de Lluvia de huesos";

DBM_NB_EMOTE_PULL		= "An ancient being awakens in the distance...";--translate
DBM_NB_YELL_PULL		= "What fools! I shall bring a quick end to your suffering!";--translate
DBM_NB_YELL_AIR			= "Miserable vermin. I shall exterminate you from the air!";--translate
DBM_NB_YELL_GROUND		= "Enough! I shall land and crush you myself!";--translate
DBM_NB_YELL_GROUND2		= "Insects! Let me show you my strength up close!";--translate

DBM_NB_FEAR_WARN		= "*** Miedo ***";
DBM_NB_FEAR_SOON_WARN	= "*** Miedo pronto ***";
DBM_NB_AIR_WARN			= "*** Fase aerea ***";
DBM_NB_EARTH_WARN		= "Tierra carbonizada";
DBM_NB_SMOKE_SPECWARN	= "Explosión humeante";
DBM_NB_BONES_WARN		= "*** Lluvia de huesos ***";
DBM_NB_ASH_WARN			= "*** Ceniza de distracción en >%s< ***";
DBM_NB_SMOKE_WARN		= "*** Explosión humeante en >%s< ***";
DBM_NB_DOWN_WARN 		= "*** Aterriza en 15 seg ***";
DBM_NB_DOWN_WARN2 		= "*** Aterriza en 5 seg ***";

-- Wizard of Oz
DBM_OZ_NAME				= "Mago de Oz";
DBM_OZ_DESCRIPTION		= "Anuncia la salida de Rugido,Espantapájaros,Cabezalata y La Vieja Bruja.";
DBM_OZ_OPTION_1			= "Mostrar distancia en fase 2";

DBM_OZ_CRONE_NAME		= "La Vieja Bruja";
DBM_OZ_YELL_DOROTHEE	= "Oh Tito, we simply must find a way home! The old wizard could be our only hope! Strawman, Roar, Tinhead, will you - wait... oh golly, look we have visitors!";--translate
DBM_OZ_YELL_ROAR		= "I'm not afraid a' you! Do you wanna' fight? Huh, do ya'? C'mon! I'll fight ya' with both paws behind my back!";--translate
DBM_OZ_YELL_STRAWMAN	= "Now what should I do with you? I simply can't make up my mind.";--translate
DBM_OZ_YELL_TINHEAD		= "I could really use a heart. Say, can I have yours?";--translate
DBM_OZ_YELL_TITO		= "Don't let them hurt us Tito! Oh, you won't, will you?";--translate
DBM_OZ_YELL_CRONE		= "Woe to each and every one of you, my pretties!";--translate

DBM_OZ_WARN_TITO		= "*** Tito ***";
DBM_OZ_WARN_ROAR		= "*** Rugido ***";
DBM_OZ_WARN_STRAWMAN	= "*** Espantapájaros ***";
DBM_OZ_WARN_TINHEAD		= "*** Cabezalata ***";
DBM_OZ_WARN_CRONE		= "*** La Vieja Bruja ***";

-- Named Beasts
DBM_SHAD_NAME			= "Shadikith el Planeador";
DBM_HYA_NAME			= "Hyakiss el Rondador";
DBM_ROKAD_NAME			= "Rokad el Devastador";
end