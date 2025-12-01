if GetLocale() ~= "ptBR" then return end
local L

---------------
-- Kurinnaxx --
---------------
L = DBM:GetModLocalization("Kurinnaxx")

L:SetGeneralLocalization{
	name 		= "Korinnaxx"
}
------------
-- Rajaxx --
------------
L = DBM:GetModLocalization("Rajaxx")

L:SetGeneralLocalization{
	name 		= "General Rajaxx"
}
L:SetWarningLocalization{
	WarnWave	= "Onda %s"
}
L:SetOptionLocalization{
	WarnWave	= "Exibir anúncio para a próxima onda de entrada"
}
L:SetMiscLocalization{
	Wave12		= "Eles estão vindo. Tenta não morrer, sangue-bom.",
	Wave12Alt	= "Você se lembra, Rajaxx, quando eu disse que ia te matar por último?",
	Wave3		= "A hora da vingança se aproxima! Deixem as trevas reinar nos corações dos nossos inimigos!",
	Wave4		= "Basta de portas trancadas e muros de pedra nos escondendo. Nossa vingança não será mais negada! Os próprios dragões tremerão diante da nossa ira!",
	Wave5		= "Levem o medo ao inimigo! Medo e morte!",
	Wave6		= "Guenelmo vai chorar e suplicar pela própria vida! Exatamente como o moleque do filho dele! Mil anos de injustiça... terminam hoje!",
	Wave7		= "Fandral, sua hora chegou! Vá se esconder no Sonho Esmeralda, e reze para que nós nunca o encontremos!",
	Wave8		= "Tolo insolente! Eu mesmo vou matá-lo!"
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
	name 		= "Buru, o Banqueteador"
}
L:SetWarningLocalization{
	WarnPursue		= "Perseguindo >%s<",
	SpecWarnPursue	= "Perseguindo você",
	WarnDismember	= "%s em >%s< (%s)"
}
L:SetOptionLocalization{
	WarnPursue		= "Exibir anúncio para alvos perseguidos",
	SpecWarnPursue	= "Exibir anúncio especial quando estiver sendo perseguido",
	WarnDismember	= DBM_CORE_L.AUTO_ANNOUNCE_OPTIONS.spell:format(96)
}
L:SetMiscLocalization{
	PursueEmote 	= "vê o"
}

-------------
-- Ayamiss --
-------------
L = DBM:GetModLocalization("Ayamiss")

L:SetGeneralLocalization{
	name 		= "Ayamiss, o Caçador"
}

--------------
-- Ossirian --
--------------
L = DBM:GetModLocalization("Ossirian")

L:SetGeneralLocalization{
	name 		= "Ossirian, o Intocado"
}
L:SetWarningLocalization{
	WarnVulnerable	= "%s"
}
L:SetTimerLocalization{
	TimerVulnerable	= "%s"
}
L:SetOptionLocalization{
	WarnVulnerable	= "Exibir anúncio para fraqueza",
	TimerVulnerable	= "Exibir cronômetro para fraqueza"
}

----------------
-- AQ20 Trash --
----------------
L = DBM:GetModLocalization("AQ20Trash")

L:SetGeneralLocalization{
	name = "Lixo"
}
L:SetTimerLocalization{
	TimerExplosion = "Fantasmas explosivos"
}

L:SetWarningLocalization{
	WarnExplosion 		= "Um único fantasma explosivo apareceu - desvie",
	SpecWarnExplosion 	= "Fantasmas explosivos - desvie",
}
L:SetOptionLocalization{
	WarnExplosion 		= "Exibir anúncio para fantasmas explosivos ($spell:1214871)",
	SpecWarnExplosion 	= "Exibir anúncio especial quando vários fantasmas explosivos aparecerem ($spell:1214871)",
	TimerExplosion 		= "Exibir cronômetro para quando vários fantasmas explosivos aparecerem ($spell:1214871)"
}

------------
-- Skeram --
------------
L = DBM:GetModLocalization("Skeram")

L:SetGeneralLocalization{
	name = "Profeta Skeram"
}

----------------
-- Three Bugs --
----------------
L = DBM:GetModLocalization("ThreeBugs")

L:SetGeneralLocalization{
	name = "Realeza Silítidea"
}

-------------
-- Sartura --
-------------
L = DBM:GetModLocalization("Sartura")

L:SetGeneralLocalization{
	name = "Guarda de Batalha Sartura"
}

--------------
-- Fankriss --
--------------
L = DBM:GetModLocalization("Fankriss")

L:SetGeneralLocalization{
	name = "Fankriss, o Obstinado"
}

--------------
-- Viscidus --
--------------
L = DBM:GetModLocalization("Viscidus")

L:SetGeneralLocalization{
	name = "Viscidus"
}
L:SetWarningLocalization{
	WarnFreeze	= "Congelamento: %d/3",
	WarnShatter	= "Estilhaçamento: %d/3"
}
L:SetOptionLocalization{
	WarnFreeze	= "Exibir anúncio para congelamento",
	WarnShatter	= "Exibir anúncio para estilhaçamento"
}
L:SetMiscLocalization{
	Slow		= "começa a ficar lento",
	Freezing	= "está congelando",
	Frozen		= "está totalmente congelado",
	Phase4 		= "começa a rachar",
	Phase5 		= "parece estar a ponto de se estilhaçar",
	Phase6 		= "explode",

	FrostHitsPerSecond = "Golpes de gelo por segundo",
	MeleeHitsPerSecond = "Golpes corpo a corpo por segundo",
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
	name = "Imperadores Gêmeos"
}

------------
-- C'Thun --
------------
L = DBM:GetModLocalization("CThun")

L:SetGeneralLocalization{
	name = "C'Thun"
}
L:SetWarningLocalization{
	WarnEyeTentacle			= "Tentóculo",
	WarnClawTentacle2		= "Tentáculo de Garra",
	WarnGiantEyeTentacle	= "Tentóculo Gigante",
	WarnGiantClawTentacle	= "Tentáculo de Garra Gigante",
	SpecWarnWeakened		= "C'Thun enfraquece!"
}
L:SetTimerLocalization{
	TimerEyeTentacle		= "Tentóculo",
	TimerClawTentacle		= "Tentáculo de Garra",
	TimerGiantEyeTentacle	= "Tentóculo Gigante",
	TimerGiantClawTentacle	= "Tentáculo de Garra Gigante",
	TimerWeakened			= "Enfraquece acaba"
}
L:SetOptionLocalization{
	WarnEyeTentacle			= "Exibir anúncio para Tentóculo",
	WarnClawTentacle2		= "Exibir anúncio para Tentáculo de Garra",
	WarnGiantEyeTentacle	= "Exibir anúncio para Tentóculo Gigante",
	WarnGiantClawTentacle	= "Exibir anúncio para Tentáculo de Garra Gigante",
	SpecWarnWeakened		= "Exibir anúncio especial quando o chefe enfraquecer",
	TimerEyeTentacle		= "Exibir cronômetro para o próximo Tentóculo",
	TimerClawTentacle		= "Exibir cronômetro para o próximo Tentáculo de Garra",
	TimerGiantEyeTentacle	= "Exibir cronômetro para o próximo Tentóculo Gigante",
	TimerGiantClawTentacle	= "Exibir cronômetro para o próximo Tentáculo de Garra Gigante",
	TimerWeakened			= "Exibir cronômetro para duração mais fraca do chefe",
	RangeFrame				= "Exibir quadro de distância (10 m)"
}
L:SetMiscLocalization{
	Stomach		= "Estômago",
	FleshTent	= "Tentáculo de Carne",
	Weakened 	= "enfraquece!",
	NotValid	= "AQ40 parcialmente limpo. %s chefes opcionais permanecem."
}
----------------
-- Ouro --
----------------
L = DBM:GetModLocalization("Ouro")

L:SetGeneralLocalization{
	name = "Ouroboros"
}
L:SetWarningLocalization{
	WarnSubmerge		= "Submersão",
	WarnEmerge			= "Emersão"
}
L:SetTimerLocalization{
	TimerSubmerge		= "Submersão",
	TimerEmerge			= "Emersão"
}
L:SetOptionLocalization{
	WarnSubmerge		= "Exibir anúncio para a submersão de Ouroboros",
	TimerSubmerge		= "Exibir cronômetro para a submersão de Ouroboros",
	WarnEmerge			= "Exibir anúncio para a emersão de Ouroboros",
	TimerEmerge			= "Exibir cronômetro para a emersão de Ouroboros",
	SpecWarnEye 		= "Exibir anúncio para o olho gigante"
}

----------------
-- AQ40 Trash --
----------------
L = DBM:GetModLocalization("AQ40Trash")

L:SetGeneralLocalization{
	name = "Lixo"
}
L:SetTimerLocalization{
	TimerExplosion = "Fantasmas explosivos"
}

L:SetWarningLocalization{
	WarnExplosion 		= "Um único fantasma explosivo apareceu - desvia",
	SpecWarnExplosion 	= "Fantasmas explosivos - desvia",
}
L:SetOptionLocalization{
	WarnExplosion 		= "Exibir anúncio para fantasmas explosivos ($spell:1214871)",
	SpecWarnExplosion 	= "Exibir anúncio especial quando vários fantasmas explosivos aparecerem ($spell:1214871)",
	TimerExplosion 		= "Exibir cronômetro para quando vários fantasmas explosivos aparecerem ($spell:1214871)"
}

-------------------
--  Venoxis  --
-------------------
L = DBM:GetModLocalization("Venoxis")

L:SetGeneralLocalization{
	name = "Sumo Sacerdote Venoxis"
}

-------------------
--  Jeklik  --
-------------------
L = DBM:GetModLocalization("Jeklik")

L:SetGeneralLocalization{
	name = "Alta-sacerdotisa Jeklik"
}

-------------------
--  Marli  --
-------------------
L = DBM:GetModLocalization("Marli")

L:SetGeneralLocalization{
	name = "Alta-sacerdotisa Mar'li"
}

-------------------
--  Thekal  --
-------------------
L = DBM:GetModLocalization("Thekal")

L:SetGeneralLocalization{
	name = "Sumo Sacerdote Thekal"
}

L:SetWarningLocalization({
	WarnSimulKill	= "Primeiro lacaio morto - ressurreição em ~ 15 segundos"
})

L:SetTimerLocalization({
	TimerSimulKill	= "Ressurreição"
})

L:SetOptionLocalization({
	WarnSimulKill	= "Exibir anúncio para o primeiro lacaio morto",
	TimerSimulKill	= "Exibir a hora da ressurreição do sacerdote"
})

L:SetMiscLocalization({
	PriestDied	= "%s morre.",
	YellPhase2	= "Shirvallah! Me preenche com a tua fúria!",
	YellKill	= "Não sou mais prisioneiro de Hakkar! Enfim, paz!"
})

-------------------
--  Arlokk  --
-------------------
L = DBM:GetModLocalization("Arlokk")

L:SetGeneralLocalization{
	name = "Alta-sacerdotisa Arlokk"
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
	name = "Sangrelorde Mandokir"
}
L:SetMiscLocalization{
	GazeYell	= "Estou do olho em você"
}

-------------------
--  Edge of Madness  --
-------------------
L = DBM:GetModLocalization("EdgeOfMadness")

L:SetGeneralLocalization{
	name = "Beira da Loucura"
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
	name = "Jin'do, o Bagateiro"
}
L:SetMiscLocalization{
	Ghosts = "Fantasmas"
}
-----------------
--  Razorgore  --
-----------------
L = DBM:GetModLocalization("Razorgore")

L:SetGeneralLocalization{
	name = "Violâminus, o Indomado"
}
L:SetTimerLocalization{
	TimerAddsSpawn	= "Primeiros lacaios"
}
L:SetOptionLocalization{
	TimerAddsSpawn	= "Exibir cronômetro quando os primeiros lacaios aparecerem"
}
L:SetMiscLocalization{
	Phase2Emote	= "fogem à medida que o poder do orbe é drenado.",
	YellPull	= "Invasores violaram a incubadora! Soem o alarme! Protejam os ovos a todo custo!"
}
-------------------
--  Vaelastrasz  --
-------------------
L = DBM:GetModLocalization("Vaelastrasz")

L:SetGeneralLocalization{
	name				= "Vaelastrasz, o Corrupto"
}

L:SetMiscLocalization{
	Event				= "É tarde demais, meus amigos! A corrupção de Nefarius se espalhou... não consigo... me controlar."
}
-----------------
--  Broodlord  --
-----------------
L = DBM:GetModLocalization("Broodlord")

L:SetGeneralLocalization{
	name	= "Prolemestre Flagelador"
}

L:SetMiscLocalization{
	Pull	= "Nenhum de vocês deveria estar aqui! Vocês condenaram somente a si mesmos!"
}

---------------
--  Firemaw  --
---------------
L = DBM:GetModLocalization("Firemaw")

L:SetGeneralLocalization{
	name = "Fogorja"
}

---------------
--  Ebonroc  --
---------------
L = DBM:GetModLocalization("Ebonroc")

L:SetGeneralLocalization{
	name = "Petrébano"
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
L = DBM:GetModLocalization("EbonrocandFlamegor")

L:SetGeneralLocalization{
	name = "Petrébano e Flamagor"
}

L:SetTimerLocalization{
	TimerBrandCD	= "Marca"
}
L:SetOptionLocalization{
	TimerBrandCD	= "Exibir cronômetro para recarga da marca"
}

L:SetMiscLocalization{
	Ebonroc		= "Petrébano",
	Flamegor	= "Flamagor"
}
-----------------------
--  Vulnerabilities  --
-----------------------
-- Chromaggus, Death Talon Overseer and Death Talon Wyrmguard
L = DBM:GetModLocalization("BWLTrash")

L:SetGeneralLocalization{
	name = "Guarda Garra da Morte"
}
L:SetWarningLocalization{
	WarnVulnerable		= "Vulnerabilidade: %s"
}
L:SetOptionLocalization{
	WarnVulnerable		= "Exibir anúncio de vulnerabilidade de feitiços"
}
L:SetMiscLocalization{
	Fire		= "Fogo",
	Nature		= "Natureza",
	Frost		= "Gelo",
	Shadow		= "Sombra",
	Arcane		= "Arcano",
	Holy		= "Sagrado"
}

------------------
--  Chromaggus  --
------------------
L = DBM:GetModLocalization("Chromaggus")

L:SetGeneralLocalization{
	name = "Cromaggus"
}
L:SetWarningLocalization{
	WarnBreath		= "%s",
	WarnVulnerable	= "Vulnerabilidade: %s"
}
L:SetTimerLocalization{
	TimerBreathCD	= "%s recarga",
	TimerBreath		= "%s lançamento",
	TimerVulnCD		= "Recarga de Vulnerabilidade",
	TimerAllBreaths = "Salva da respiração"
}
L:SetOptionLocalization{
	WarnBreath			= "Exibir anúncio quando Cromaggus lançar uma das suas respirações",
	WarnVulnerableNew	= "Exibir cronômetro para recarga da respiração",
	TimerBreathCD		= "Exibir recarga da respiração",
	TimerBreath			= "Exibir lançamento da respiração",
	TimerVulnCD			= "Exibir recarga de Vulnerabilidade",
	TimerAllBreaths 	= "Exibir cronômetro para Salva da respiração"
}
L:SetMiscLocalization{
	Breath1		= "Primeira respiração",
	Breath2		= "Segunda respiração",
	VulnEmote	= "%s tem espasmos à medida que sua pele começa a brilhar.",
	Vuln		= "Vulnerabilidade",
	Fire		= "Fogo",
	Nature		= "Natureza",
	Frost		= "Gelo",
	Shadow		= "Sombra",
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
	WarnAddsLeft		= "%d |4restante:restantes;",
	WarnClassCall		= "Chamada de %s",
	specwarnClassCall	= "Chamada da sua classe!"
}
L:SetTimerLocalization{
	TimerClassCall		= "Chamada de %s acaba"
}
L:SetOptionLocalization{
	TimerClassCall		= "Exibir cronômetro para duração da chamada em cada classe",
	WarnAddsLeft		= "Exibir anúncio para as mortes restantes até a Fase 2",
	WarnClassCall		= "Exibir anúncio para chamadas de classe",
	specwarnClassCall	= "Exibir anúncio especial quando for afetado por chamada em classe"
}
L:SetMiscLocalization{
	YellP1		= "Que comecem os jogos!",
	YellP2		= "Muito bem, meus lacaios. A coragem dos mortais começa a vacilar! Agora vejamos como eles enfrentarão o verdadeiro Senhor dos Rocha Negra!!!",
	YellP3		= "Impossível! Ergam-se, meus lacaios! Sirvam ao seu mestre mais uma vez!",
	YellShaman	= "Xamãs, mostrem-me do que seus totens são capazes!",
	YellPaladin	= "Paladinos... ouvi dizer que vocês têm muitas vidas. Isso eu quero ver.",
	YellDruid	= "Druidas e suas metamorfoses idiotas. Vamos vê-las em ação!",
	YellPriest	= "Sacerdotes! Se vocês continuarem a curar desse jeito, acho que podemos tornar as coisas um pouquinho mais interessantes!",
	YellWarrior	= "Guerreiros, sei que vocês conseguem bater mais forte que isso! Vamos!",
	YellRogue	= "Ladinos? Parem de se esconder e venham me enfrentar!",
	YellWarlock	= "Bruxos, vocês não deveriam brincar com magias que não compreendem. Viram só o que acontece?",
	YellHunter	= "Caçadores e seus irritantes atiradores de ervilhas!",
	YellMage	= "Magos também? Vocês deveriam ter mais cuidado ao brincar com magia..."
}

----------------------
--  SoD BWL Trials  --
----------------------
L = DBM:GetModLocalization("SoDBWLTrials")

L:SetGeneralLocalization{
	name = "Provações da Temporada da Descoberta"
}
L:SetWarningLocalization{
	SpecWarnBothBombs		= "Azul e verde em >%s<",
	SpecWarnBothBombsYou	= "Azul e verde em VOCÊ",
}
L:SetTimerLocalization{
	TimerBombs				= DBM_COMMON_L.BOMBS
}
L:SetOptionLocalization{
SpecWarnBothBombs			= "Exibir anúncio especial se as bombas azul e verde estiverem no mesmo jogador",
SpecWarnBothBombsYou		= "Exibir anúncio especial se as bombas azul e verde estiverem em você",
TimerBombs					= "Exibir cronômetro para as bombas de teste azul e verde"
}
----------------
--  Lucifron  --
----------------
L = DBM:GetModLocalization("Lucifron")

L:SetGeneralLocalization{
	name = "Lúcifron"
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
	name = "Geena"
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
	name = "Barão Geddon"
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
	name = "Emissário de Sulfuron"
}

----------------
--  Golemagg  --
----------------
L = DBM:GetModLocalization("Golemagg")

L:SetGeneralLocalization{
	name = "Golemagg, o Incinerador"
}

-----------------
--  Majordomo  --
-----------------
L = DBM:GetModLocalization("Majordomo")

L:SetGeneralLocalization{
	name = "Senescal Executus"
}
L:SetTimerLocalization{
	timerShieldCD		= "Escudo"
}
L:SetOptionLocalization{
	timerShieldCD		= "Exibir cronômetro para o próximo escudo de dano/reflexão"
}

----------------
--  Ragnaros  --
----------------
L = DBM:GetModLocalization("Ragnaros-Classic")

L:SetGeneralLocalization{
	name = "Ragnaros"
}
L:SetWarningLocalization{
	WarnSubmerge		= "Submersão",
	WarnEmerge			= "Emersão"
}
L:SetTimerLocalization{
	TimerSubmerge		= "Submersão",
	TimerEmerge			= "Emersão",
}
L:SetOptionLocalization{
	WarnSubmerge		= "Exibir anúncio para submersão",
	TimerSubmerge		= "Exibir cronômetro para submersão",
	WarnEmerge			= "Exibir anúncio para emersão",
	TimerEmerge			= "Exibir cronômetro para emersão",
}
L:SetMiscLocalization{
	Submerge	= "VENHAM, MEUS SERVOS! DEFENDAM SEU SENHOR!",
	Pull		= "Vermes abusados! Vocês se precipitaram para suas mortes! Vejam agora, o amo se agita!"
}

-----------------
--  The Molten Core  --
-----------------
L = DBM:GetModLocalization("MoltenCore")

L:SetGeneralLocalization{
	name = "O Núcleo Derretido"
}

L:SetOptionLocalization{
	YellHeartCleared	= "Gritar quando o Coração de cinzas/brasas for removido",
	WarnBossPower		= "Exibir anúncios quando a energia do chefe atingir 50%, 75%, 90% e 100%"
}

L:SetWarningLocalization{
	WarnBossPower		= "Energia do chefe em %d%%"
}
-----------------
--  MC: Trash  --
-----------------
L = DBM:GetModLocalization("MCTrash")

L:SetGeneralLocalization{
	name = "Lixo"
}

--------------
--  Onyxia  --
--------------
L = DBM:GetModLocalization("OnyxiaVanilla")

L:SetGeneralLocalization{
	name = "Onyxia"
}

L:SetWarningLocalization{
	WarnWhelpsSoon		= "Dragonete Onyxiano em breve"
}

L:SetTimerLocalization{
	TimerWhelps	= "Dragonete Onyxiano"
}

L:SetOptionLocalization{
	TimerWhelps				= "Exibir cronômetro para os próximos Dragonetes Onyxiano",
	WarnWhelpsSoon			= "Exibir anúncio antecipado para os próximos Dragonetes Onyxiano",
	SoundWTF3				= "Reproduzir sons engraçados de um lendário raide clássico de Onyxia"
}

L:SetMiscLocalization{
	Breath = "%s respira fundo...",
	YellPull = "Que sorte. Geralmente costumo sair de minha caverna para poder me alimentar.",
	YellP2 = "Este esforço inútil me aborrece. Vou atear fogo em todos vocês do alto!",
	YellP3 = "Parece que vocês vão precisar de outra lição, mortais!",
	SoDWarning = "Bem-vindo a %s. O DBM tocará alguns sons divertidos de uma raide clássica lendária durante a luta. Você pode desativar isso na interface do DBM: digite /dbm e navegue até o mod Onyxia em Raides -> Clássico."
}

-----------------
-- Anub'Rekhan --
-----------------
L = DBM:GetModLocalization("AnubRekhanVanilla")

L:SetGeneralLocalization({
	name = "Anub'Rekhan"
})

L:SetMiscLocalization({
	Pull1				= "Sim, corram! Assim o sangue corre mais rápido!",
	Pull2				= "Só um gostinho...",
	Pull3				= "There is no way out."
})

-------------------------
-- Grand Widow Faerlina --
-------------------------
L = DBM:GetModLocalization("FaerlinaVanilla")

L:SetGeneralLocalization({
	name = "Grã-viúva Faerlina"
})

L:SetWarningLocalization({
	WarningEmbraceExpire	= "Abraço da Viúva expirando em 5 segundos",
	WarningEmbraceExpired	= "Abraço da Viúva expirou"
})

L:SetOptionLocalization({
	WarningEmbraceExpire	= "Exibir anúncio antecipado quando expirar Abraço da Viúva",
	WarningEmbraceExpired	= "Exibir anúncio quando expirar Abraço da Viúva"
})

L:SetMiscLocalization({
	Pull1					= "Ajoelhe-se perante a mim, verme!",
	Pull2 					= "Vocês não podem se esconder de mim!",
	Pull3 					= "Slay them in the master's name!",
	Pull4					= "Run while you still can!"
})

-------------
-- Maexxna --
-------------
L = DBM:GetModLocalization("MaexxnaVanilla")

L:SetGeneralLocalization({
	name = "Maexxna"
})

L:SetWarningLocalization({
	WarningSpidersSoon	= "Proles de Maexxna em 5 segundos",
	WarningSpidersNow	= "Proles de Maexxna"
})

L:SetTimerLocalization({
	TimerSpider	= "Proles"
})

L:SetOptionLocalization({
	WarningSpidersSoon	= "Exibir anúncio antecipado para quando as Proles de Maexxna aparecerem",
	WarningSpidersNow	= "Exibir anúncio quando as Proles de Maexxna aparecerem",
	TimerSpider			= "Exibir cronômetro para as próximas Proles de Maexxna"
})

-----------------------
-- Noth the Plaguebringer --
-----------------------
L = DBM:GetModLocalization("NothVanilla")

L:SetGeneralLocalization({
	name = "Noth, o Pestífero"
})

L:SetWarningLocalization({
	WarningTeleportNow	= "Teleporte",
	WarningTeleportSoon	= "Teleporte em 20 segundos"
})

L:SetTimerLocalization({
	TimerTeleport		= "Teleporte: Sacada",
	TimerTeleportBack	= "Teleporte: Chão"
})

L:SetOptionLocalization({
	WarningTeleportNow	= "Exibir anúncio para Teleporte",
	WarningTeleportSoon	= "Exibir anúncio antecipado para Teleporte",
	TimerTeleport		= "Exibir cronômetro para Teleporte: Sacada",
	TimerTeleportBack	= "Exibir cronômetro para Teleporte: Chão"
})

L:SetMiscLocalization({
	Pull1				= "Morte aos intrusos!",
	Pull2				= "Glória ao mestre!",
	Pull3 				= "Sua vida foi confiscada.",
	AddsYell			= "Ergam-se, meus soldados! Ergam-se e lutem uma vez mais!"
})

----------------------
-- Heigan el Impuro --
----------------------
L = DBM:GetModLocalization("HeiganVanilla")

L:SetGeneralLocalization({
	name = "Heigan, o Sujo"
})

L:SetWarningLocalization({
	WarningTeleportNow	= "Teleporte",
	WarningTeleportSoon	= "Teleporte em %d |4segundo:segundos;"
})

L:SetTimerLocalization({
	TimerTeleport	= "Teleporte"
})

L:SetOptionLocalization({
	WarningTeleportNow	= "Exibir anúncio para Teleporte",
	WarningTeleportSoon	= "Exibir anúncio antecipado para Teleporte",
	TimerTeleport		= "Exibir cronômetro para Teleporte"
})

L:SetMiscLocalization({
	Pull1				= "Vocês agora são meus.",
	Pull2				= "Eu vejo você...",
	Pull3				= "You... are next."
})

-------------
-- Loatheb --
-------------
L = DBM:GetModLocalization("LoathebVanilla")

L:SetGeneralLocalization({
	name = "Repugnaz"
})

L:SetWarningLocalization({
	WarningHealSoon	= "Cura possível em 3 segundos",
	WarningHealNow	= "Cure agora!"
})

L:SetOptionLocalization({
	WarningHealSoon		= "Exibir anúncio antecipado para a janela de cura",
	WarningHealNow		= "Exibir anúncio para a janela de cura"
})

---------------
-- Retalhoso --
---------------
L = DBM:GetModLocalization("PatchwerkVanilla")

L:SetGeneralLocalization({
	name = "Retalhoso"
})

L:SetOptionLocalization({
})

L:SetMiscLocalization({
	yell1 			= "Retalhoso quer brincar!",
	yell2			= "Retalhoso virou avatar de guerra do Kel'Thuzad!"
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
	Yell	= "Stalagg esmaga você!",
	Emote	= "%s se sobrecarrega!",
	Emote2	= "Bobina de Tesla se sobrecarrega!",
	Charge1 = "negativo",
	Charge2 = "positivo"
})

L:SetOptionLocalization({
	WarningChargeChanged	= "Exibir anúncio especial quando sua polaridade mudar",
	WarningChargeNotChanged	= "Exibir anúncio especial quando sua polaridade não mudar",
	AirowsEnabled			= "Exibir setas durante $spell:28089",
	Never					= "Nunca",
	TwoCamp					= "Exibir setas (estratégia típica de dois grupos para correr através)",
	ArrowsRightLeft			= "Exibir setas para a esquerda e direita (estratégia de quatro grupos; exibe a seta para a esquerda se a polaridade mudar, seta para a direita se não mudar)",
	ArrowsInverse			= "Exibir setas esquerda e direita reversas (estratégia de quatro grupos; exibe a seta para a direita se a polaridade mudar, a seta para a esquerda se não mudar)"
})

L:SetWarningLocalization({
	WarningChargeChanged	= "Polaridade alterada para %s",
	WarningChargeNotChanged	= "Polaridade não se alterou"
})

--------------------------
-- Instructor Razuvious --
--------------------------
L = DBM:GetModLocalization("RazuviousVanilla")

L:SetGeneralLocalization({
	name = "Instrutor Razúvio"
})

L:SetMiscLocalization({
	Yell1 = "Não há compaixão nesta luta!",
	Yell2 = "Acabou o treinamento! Agora é pra valer!",
	Yell3 = "Façam como eu ensinei!",
	Yell4 = "Sweep the leg... Do you have a problem with that?"
})

L:SetOptionLocalization({
	WarningShieldWallSoon	= "Exibir anúncio antecipado quando terminar $spell:29061"
})

L:SetWarningLocalization({
	WarningShieldWallSoon	= "Muralha de Escudos termina em 5 segundos"
})

--------------------------
-- Gothik the Harvester --
--------------------------
L = DBM:GetModLocalization("GothikVanilla")

L:SetGeneralLocalization({
	name = "Gothik, o Ceifador"
})

L:SetOptionLocalization({
	TimerWave			= "Exibir cronômetro para a próxima onda de lacaios",
	TimerPhase2			= "Exibir cronômetro para mudar para a Fase 2",
	WarningWaveSoon		= "Exibir anúncio antecipado para a próxima onda de lacaios",
	WarningWaveSpawned	= "Exibir anúncio quando uma onda de lacaios começar",
	WarningRiderDown	= "Exibir anúncio quando um Cavalgante Implacável morrer",
	WarningKnightDown	= "Exibir anúncio quando um Cavaleiro da Morte Implacável morrer"
})

L:SetTimerLocalization({
	TimerWave	= "Onda %d",
	TimerPhase2	= "Fase 2"
})

L:SetWarningLocalization({
	WarningWaveSoon		= "Onda %d: %s em 3 segundos",
	WarningWaveSpawned	= "Onda %d: %s",
	WarningRiderDown	= "Cavalgante morto",
	WarningKnightDown	= "Cavaleiro morto",
	WarningPhase2		= "Fase 2"
})

L:SetMiscLocalization({
	WarningWave1	= "%d %s",
	WarningWave2	= "%d %s y %d %s",
	WarningWave3	= "%d %s, %d %s y %d %s",
	Trainee			= "Aprendizes",
	Knight			= "Cavaleiros",
	Horse			= "Cavalo Espectral",
	Rider			= "Cavalgantes"
})

------------------------
-- Os Quatro Cavaleiros --
------------------------
L = DBM:GetModLocalization("HorsemenVanilla")

L:SetGeneralLocalization({
	name = "Os Quatro Cavaleiros"
})

L:SetOptionLocalization({
	WarningMarkSoon				= "Exibir anúncio antecipado para marcas",
	SpecialWarningMarkOnPlayer	= "Exibir anúncio especial quando você for afetado por mais de quatro marcas",
	timerMark 					= "Exibir cronômetro para a próxima marca dos cavaleiros (com contador)",

})

L:SetTimerLocalization({
	timerMark	= "Marca %d"
})

L:SetWarningLocalization({
	WarningMarkSoon				= "Marca %d em 3 segundos",
	SpecialWarningMarkOnPlayer	= "%s: %s"
})

---------------
-- Sapphiron --
---------------
L = DBM:GetModLocalization("SapphironVanilla")

L:SetGeneralLocalization({
	name = "Sapphiron"
})

L:SetOptionLocalization({
	WarningAirPhaseSoon	= "Exibir anúncio antecipado para a fase aérea",
	WarningAirPhaseNow	= "Exibir anúncio para a fase aérea",
	WarningLanded		= "Exibir anúncio para a fase em terra",
	TimerAir			= "Exibir cronômetro para a fase aérea",
	TimerLanding		= "Exibir cronômetro para a fase em terra",
	TimerIceBlast		= "Exibir cronômetro para $spell:28524",
	WarningDeepBreath	= "Exibir anúncio especial para $spell:28524",
})

L:SetWarningLocalization({
	WarningAirPhaseSoon	= "Fase aérea em 10 segundos",
	WarningAirPhaseNow	= "Fase aérea",
	WarningLanded		= "Fase em terra",
	WarningDeepBreath	= "Sopro Gélido"
})

L:SetTimerLocalization({
	TimerAir		= "Fase aérea",
	TimerLanding	= "Fase em terra",
	TimerIceBlast	= "Sopro Gélido"
})

----------------
-- Kel'Thuzad --
----------------

L = DBM:GetModLocalization("KelThuzadVanilla")

L:SetGeneralLocalization({
	name = "Kel'Thuzad"
})

L:SetOptionLocalization({
	TimerPhase2			= "Exibir cronômetro para a fase 2",
	specwarnP2Soon		= "Exibir anúncio especial 10 segundos antes de mudar para a fase 2",
	warnAddsSoon		= "Exibir anúncio antecipado para quando os Guardiões da Coroa de Gelo aparecerem"
})

L:SetMiscLocalization({
	Yell = "Lacaios, serviçais, soldados das gélidas trevas! Atendam ao chamado de Kel'Thuzad!"
})

L:SetWarningLocalization({
	specwarnP2Soon	= "Fase 2 em 10 segundos",
	warnAddsSoon	= "Guardiões da Coroa de Gelo em breve"
})

L:SetTimerLocalization({
	TimerPhase2	= "Fase 2"
})
-----------------
--  Naxx Trash --
-----------------

L = DBM:GetModLocalization("NaxxTrash")

L:SetGeneralLocalization({
	name = "Lixo"
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
	name = "Barão Aquanis"
})

L:SetMiscLocalization({
	Water		= "Água"
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
	TimerImmune = "Imunidade termina"
}

L:SetOptionLocalization({
	TimerImmune	= "Exibir cronômetro para a duração da imunidade de Gelihast durante as transições de fase"
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
	warnPriestRemaining	= "Exibir um anúncio indicando quantas Sacerdotisas das Marés da Profundezas Negras ainda estão restantes"
})

------------------
--  Twilight Lord Kelris  --
------------------
L = DBM:GetModLocalization("TwilightLordKelrisSoD")

L:SetGeneralLocalization({
	name = "Senhor do Crepúsculo Kelris"
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
	name = "Espanca-gente 9-60"
})

---------------
--  Grubbis  --
---------------
L = DBM:GetModLocalization("GrubbisSoD")

L:SetGeneralLocalization({
	name = "Grúdio"
})

L:SetMiscLocalization({
	FirstPull = "Ainda há dutos de ventilação espalhando material radioativo em Gnomeregan.",
	Pull = "Ah, não! Tremores assim só podem significar uma coisa..."
})
----------------------------
--  Electrocutioner 6000  --
----------------------------
L = DBM:GetModLocalization("ElectrocutionerSoD")

L:SetGeneralLocalization({
	name = "Eletrocutor 6000"
})

-----------------------
--  Viscous Fallout  --
-----------------------
L = DBM:GetModLocalization("ViscousFalloutSoD")

L:SetGeneralLocalization({
	name = "Precipitação Radioativa Viscosa"
})

----------------------------
--  Mechanical Menagerie  --
----------------------------
L = DBM:GetModLocalization("MechanicalMenagerieSoD")

L:SetGeneralLocalization({
	name = "Viveiro Mecânico"
})

L:SetMiscLocalization{
	Sheep		= "Ovelha",
	Whelp		= "Dragonete",
	Squirrel	= "Esquilo",
	Chicken		= "Frango"
}
-----------------------------
--  Mekgineer Thermaplugg  --
-----------------------------
L = DBM:GetModLocalization("ThermapluggSoD")

L:SetGeneralLocalization({
	name = "Mecangenheiro Termaplugue"
})

L:SetTimerLocalization{
	timerTankCD = "Habilidade do tanque"
}

L:SetOptionLocalization({
	timerTankCD	= "Exibir cronômetro para o tempo de recarga aleatório da habilidade do tanque na fase 4."
})

------------------
--  Sunken Temple  --
------------------

--------------
-- ST Trash --
--------------
L = DBM:GetModLocalization("STTrashSoD")

L:SetGeneralLocalization{
	name = "Lixo do Templo Submerso"
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
	name = "Podridão Supurante"
})

---------------------------
--  Atal'ai Defenders  --
---------------------------
L = DBM:GetModLocalization("AtalaiDefendersSoD")

L:SetGeneralLocalization({
	name = "Defensores Atal'ai"
})

L:SetOptionLocalization({
	SetIconsOnGhosts = "Colocar ícones nos chefes fantasmas"
})
---------------------------
--  Dreamscythe and Weaver  --
---------------------------
L = DBM:GetModLocalization("DreamscytheAndWeaverSoD")

L:SetGeneralLocalization({
	name = "Darquimeros e Tecelão"
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
	name = "Jammal'an e Ogom"
})
---------------------------
--  Morphaz and Hazzas  --
---------------------------
L = DBM:GetModLocalization("MorphazandHazzasSoD")

L:SetGeneralLocalization({
	name = "Morphaz e Hazzas"
})
---------------------------
--  Shade of Eranikus  --
---------------------------
L = DBM:GetModLocalization("ShadeofEranikusSoD")

L:SetGeneralLocalization({
	name = "Vulto de Erânicos"
})
