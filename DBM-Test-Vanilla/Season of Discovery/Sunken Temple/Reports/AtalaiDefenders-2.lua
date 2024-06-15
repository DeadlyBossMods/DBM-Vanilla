DBM.Test:Report[[
Test: SoD/ST/AtalaiDefenders/2
Mod:  DBM-Raids-Vanilla/AtalaiDefendersSoD

Findings:
	Unused event registration: SPELL_AURA_APPLIED 438294 (Thorns)
	Unused event registration: SPELL_AURA_REMOVED 438294 (Thorns)
	Unused event registration: SPELL_CAST_START 438294 (Thorns)
	Unused event registration: SPELL_CAST_START 438339 (Healing Wave)
	Unused event registration: SPELL_CAST_START 438341 (Renew)
	Unused event registration: SPELL_CAST_SUCCESS 444964 (Summon Zolo)
	Unused event registration: SPELL_SUMMON 444964 (Summon Zolo)

Unused objects:
	[Announce] Thorns on >%s<, type=target, spellId=438294
	[Special Warning] Thorns on >%s< - dispel now, type=dispel, spellId=438294
	[Special Warning] Thorns on >%s< - stop attacking, type=reflect, spellId=438294
	[Special Warning] Healing Wave - interrupt >%s<!, type=interrupt, spellId=438339
	[Special Warning] Renew - interrupt >%s<!, type=interrupt, spellId=438341
	[Timer] Thorns ends, time=60.00, type=active, spellId=438294

Timers:
	Demoralizing Shout, time=22.80, type=cd, spellId=23511, triggerDeltas = 151.37, 30.29, 18.86, 16.45
		[151.37] SPELL_CAST_START: [Loro: Demoralizing Shout] Creature-0-5250-109-10825-221638-00001FFD61, Loro, 0xa48, "", nil, 0x0, 23511, Demoralizing Shout, 0, 0
			 Triggered 2x, delta times: 151.37, 30.29
		[200.52] SPELL_CAST_SUCCESS: [Loro: Summon Loro] Creature-0-5250-109-10825-221638-00001FFD61, Loro, 0xa48, "", nil, 0x0, 444960, Summon Loro, 0, 0
		[216.97] SPELL_CAST_START: [Loro: Demoralizing Shout] Creature-0-5250-109-10825-221834-0000200B7C, Loro, 0xa48, "", nil, 0x0, 23511, Demoralizing Shout, 0, 0

Announces:
	%s, type=stagechange, spellId=<none>, triggerDeltas = 28.68, 27.79, 34.04, 48.76, 61.25
		[ 28.68] SPELL_CAST_SUCCESS: [Zul'Lor: Summon Zul'Lor] Creature-0-5250-109-10825-221640-00001FFD61, Zul'Lor, 0xa48, "", nil, 0x0, 444962, Summon Zul'Lor, 0, 0
		[ 56.47] SPELL_CAST_SUCCESS: [Mijan: Summon Mijan] Creature-0-5250-109-10825-218868-00001FFD61, Mijan, 0xa48, "", nil, 0x0, 444963, Summon Mijan, 0, 0
		[ 90.51] SPELL_CAST_SUCCESS: [Hukku: Summon Hukku] Creature-0-5250-109-10825-218922-00001FFD61, Hukku, 0xa48, "", nil, 0x0, 444961, Summon Hukku, 0, 0
		[139.27] SPELL_CAST_SUCCESS: [Gasher: Summon Gasher] Creature-0-5250-109-10825-221637-00001FFD61, Gasher, 0xa48, "", nil, 0x0, 444747, Summon Gasher, 0, 0
		[200.52] SPELL_CAST_SUCCESS: [Loro: Summon Loro] Creature-0-5250-109-10825-221638-00001FFD61, Loro, 0xa48, "", nil, 0x0, 444960, Summon Loro, 0, 0
	Casting Demoralizing Shout: 2.5 sec, type=cast, spellId=23511, triggerDeltas = 151.37, 30.29, 35.31
		[151.37] SPELL_CAST_START: [Loro: Demoralizing Shout] Creature-0-5250-109-10825-221638-00001FFD61, Loro, 0xa48, "", nil, 0x0, 23511, Demoralizing Shout, 0, 0
			 Triggered 2x, delta times: 151.37, 30.29
		[216.97] SPELL_CAST_START: [Loro: Demoralizing Shout] Creature-0-5250-109-10825-221834-0000200B7C, Loro, 0xa48, "", nil, 0x0, 23511, Demoralizing Shout, 0, 0
	Healing Ward, type=spell, spellId=438335, triggerDeltas = 46.48, 18.63, 37.22, 22.63, 12.96, 55.08, 17.80
		[ 46.48] SPELL_CAST_START: [Mijan: Healing Ward] Creature-0-5250-109-10825-218868-00001FFD61, Mijan, 0xa48, "", nil, 0x0, 438335, Healing Ward, 0, 0
		[ 65.11] SPELL_CAST_START: [Mijan: Healing Ward] Creature-0-5250-109-10825-221835-0000200AEC, Mijan, 0xa48, "", nil, 0x0, 438335, Healing Ward, 0, 0
			 Triggered 6x, delta times: 65.11, 37.22, 22.63, 12.96, 55.08, 17.80
	Fervor faded, type=fades, spellId=445284, triggerDeltas = 124.34, 16.83
		[124.34] SPELL_AURA_REMOVED: [Gasher->Gasher: Fervor] Creature-0-5250-109-10825-221637-00001FFD61, Gasher, 0xa48, Creature-0-5250-109-10825-221637-00001FFD61, Gasher, 0xa48, 445284, Fervor, 0, BUFF, 0
			 Triggered 2x, delta times: 124.34, 16.83
	Fervor on >%s< (%d), type=stack, spellId=445284, triggerDeltas = 105.58, 7.54, 6.47
		[105.58] SPELL_AURA_APPLIED_DOSE: [Gasher->Gasher: Fervor] Creature-0-5250-109-10825-221637-00001FFD61, Gasher, 0xa48, Creature-0-5250-109-10825-221637-00001FFD61, Gasher, 0xa48, 445284, Fervor, 0, BUFF, 10, 0
			 Triggered 3x, delta times: 105.58, 7.54, 6.47
	Spinning Axes, type=spell, spellId=445289, triggerDeltas = 98.27, 30.74, 27.54, 30.78, 30.74
		[ 98.27] SPELL_CAST_SUCCESS: [Gasher: Spinning Axes] Creature-0-5250-109-10825-221637-00001FFD61, Gasher, 0xa48, "", nil, 0x0, 445289, Spinning Axes, 0, 0
			 Triggered 2x, delta times: 98.27, 30.74
		[156.55] SPELL_CAST_SUCCESS: [Gasher: Spinning Axes] Creature-0-5250-109-10825-221759-0000200B3F, Gasher, 0xa48, "", nil, 0x0, 445289, Spinning Axes, 0, 0
			 Triggered 3x, delta times: 156.55, 30.78, 30.74
	Unstable Cask, type=spell, spellId=445940, triggerDeltas = 229.40
		[229.40] SPELL_CAST_SUCCESS: [Zolo->Elemento: Unstable Cask] Creature-0-5250-109-10825-221639-00001FFD61, Zolo, 0xa48, Player-5826-02256816, Elemento, 0x512, 445940, Unstable Cask, 0, 0
	Shield Slam on >%s<, type=target, spellId=446354, triggerDeltas = 149.26, 6.48, 30.79, 6.47, 6.47
		[149.26] SPELL_AURA_APPLIED: [Loro->Elemento: Shield Slam] Creature-0-5250-109-10825-221638-00001FFD61, Loro, 0xa48, Player-5826-02256816, Elemento, 0x512, 446354, Shield Slam, 0, DEBUFF, 0
			 Triggered 4x, delta times: 149.26, 37.27, 6.47, 6.47
		[155.74] SPELL_AURA_APPLIED: [Loro->Muhscle: Shield Slam] Creature-0-5250-109-10825-221638-00001FFD61, Loro, 0xa48, Player-5826-023E078B, Muhscle, 0x512, 446354, Shield Slam, 0, DEBUFF, 0
	Hukku's Guardians, type=spell, spellId=446360, triggerDeltas = 61.06, 35.59
		[ 61.06] SPELL_CAST_SUCCESS: [Hukku: Hukku's Guardians] Creature-0-5250-109-10825-218922-00001FFD61, Hukku, 0xa48, "", nil, 0x0, 446360, Hukku's Guardians, 0, 0
		[ 96.65] SPELL_CAST_SUCCESS: [Hukku: Hukku's Guardians] Creature-0-5250-109-10825-221833-0000200B0E, Hukku, 0xa48, "", nil, 0x0, 446360, Hukku's Guardians, 0, 0
	Frailty, type=spell, spellId=446364, triggerDeltas = 5.98, 12.15, 15.77, 19.87, 6.07, 60.28, 9.69
		[  5.98] SPELL_CAST_SUCCESS: [Zul'Lor: Frailty] Creature-0-5250-109-10825-221640-00001FFD61, Zul'Lor, 0xa48, "", nil, 0x0, 446364, Frailty, 0, 0
			 Triggered 2x, delta times: 5.98, 12.15
		[ 33.90] SPELL_CAST_SUCCESS: [Zul'Lor: Frailty] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, "", nil, 0x0, 446364, Frailty, 0, 0
			 Triggered 5x, delta times: 33.90, 19.87, 6.07, 60.28, 9.69
	Charge, type=spell, spellId=446369, triggerDeltas = 11.66, 11.33, 14.16, 11.36, 15.81, 43.91, 13.49, 13.46, 9.01
		[ 11.66] SPELL_CAST_SUCCESS: [Zul'Lor->Camie: Charge] Creature-0-5250-109-10825-221640-00001FFD61, Zul'Lor, 0xa48, Player-5826-01FA7B12, Camie, 0x512, 446369, Charge, 0, 0
		[ 22.99] SPELL_CAST_SUCCESS: [Zul'Lor->Krashnakh: Charge] Creature-0-5250-109-10825-221640-00001FFD61, Zul'Lor, 0xa48, Player-5826-01FE8271, Krashnakh, 0x512, 446369, Charge, 0, 0
		[ 37.15] SPELL_CAST_SUCCESS: [Zul'Lor->Schamuhne: Charge] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, Player-5826-023E0641, Schamuhne, 0x512, 446369, Charge, 0, 0
		[ 48.51] SPELL_CAST_SUCCESS: [Zul'Lor->nurriburbur: Charge] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, Pet-0-5250-109-10825-2734-0100A1103F, nurriburbur, 0x1112, 446369, Charge, 0, 0
			 Triggered 2x, delta times: 48.51, 59.72
		[ 64.32] SPELL_CAST_SUCCESS: [Zul'Lor->Obile: Charge] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, Player-5826-01FDA26E, Obile, 0x512, 446369, Charge, 0, 0
		[121.72] SPELL_CAST_SUCCESS: [Zul'Lor->Camie: Charge] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, Player-5826-01FA7B12, Camie, 0x512, 446369, Charge, 0, 0
		[135.18] SPELL_CAST_SUCCESS: [Zul'Lor->Discomuh: Charge] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, Player-5826-023D8989, Discomuh, 0x512, 446369, Charge, 0, 0
		[144.19] SPELL_CAST_SUCCESS: [Zul'Lor->Illiath: Charge] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, Player-5826-020D96DC, Illiath, 0x512, 446369, Charge, 0, 0

Special warnings:
	Atal'ai Serpent Totem - switch targets, type=switch, spellId=445912, triggerDeltas = 56.20, 6.87, 34.40, 35.60, 34.02, 63.12
		[ 56.20] SPELL_CAST_SUCCESS: [Mijan: Atal'ai Serpent Totem] Creature-0-5250-109-10825-218868-00001FFD61, Mijan, 0xa48, "", nil, 0x0, 445912, Atal'ai Serpent Totem, 0, 0
		[ 63.07] SPELL_CAST_SUCCESS: [Mijan: Atal'ai Serpent Totem] Creature-0-5250-109-10825-221835-0000200AEC, Mijan, 0xa48, "", nil, 0x0, 445912, Atal'ai Serpent Totem, 0, 0
			 Triggered 5x, delta times: 63.07, 34.40, 35.60, 34.02, 63.12
	Chain Lightning - interrupt >%s<!, type=interrupt, spellId=446338, triggerDeltas = 203.38, 6.62, 16.16, 9.68
		[203.38] SPELL_CAST_START: [Zolo: Chain Lightning] Creature-0-5250-109-10825-221639-00001FFD61, Zolo, 0xa48, "", nil, 0x0, 446338, Chain Lightning, 0, 0
			 Triggered 4x, delta times: 203.38, 6.62, 16.16, 9.68
	Atal'ai Skeleton Totem - switch targets, type=switch, spellId=446339, triggerDeltas = 214.84, 16.18
		[214.84] SPELL_CAST_SUCCESS: [Zolo: Atal'ai Skeleton Totem] Creature-0-5250-109-10825-221639-00001FFD61, Zolo, 0xa48, "", nil, 0x0, 446339, Atal'ai Skeleton Totem, 0, 0
			 Triggered 2x, delta times: 214.84, 16.18
	Shadow Bolt - interrupt >%s<!, type=interrupt, spellId=446361, triggerDeltas = 62.44, 13.18, 4.85, 16.18, 11.33, 16.16, 3.25
		[ 62.44] SPELL_CAST_START: [Hukku: Shadow Bolt] Creature-0-5250-109-10825-218922-00001FFD61, Hukku, 0xa48, "", nil, 0x0, 446361, Shadow Bolt, 0, 0
			 Triggered 3x, delta times: 62.44, 13.18, 4.85
		[ 96.65] SPELL_CAST_START: [Hukku: Shadow Bolt] Creature-0-5250-109-10825-221833-0000200B0E, Hukku, 0xa48, "", nil, 0x0, 446361, Shadow Bolt, 0, 0
			 Triggered 4x, delta times: 96.65, 11.33, 16.16, 3.25
	Corrupted Slam - dodge attack, type=dodge, spellId=446372, triggerDeltas = 11.67, 11.34, 15.76, 10.54, 61.90, 26.29
		[ 11.67] SPELL_CAST_START: [Zul'Lor: Corrupted Slam] Creature-0-5250-109-10825-221640-00001FFD61, Zul'Lor, 0xa48, "", nil, 0x0, 446372, Corrupted Slam, 0, 0
			 Triggered 2x, delta times: 11.67, 11.34
		[ 38.77] SPELL_CAST_START: [Zul'Lor: Corrupted Slam] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, "", nil, 0x0, 446372, Corrupted Slam, 0, 0
			 Triggered 4x, delta times: 38.77, 10.54, 61.90, 26.29

Yells:
	None

Voice pack sounds:
	VoicePack/attacktotem
		[214.84] SPELL_CAST_SUCCESS: [Zolo: Atal'ai Skeleton Totem] Creature-0-5250-109-10825-221639-00001FFD61, Zolo, 0xa48, "", nil, 0x0, 446339, Atal'ai Skeleton Totem, 0, 0
			 Triggered 2x, delta times: 214.84, 16.18
	VoicePack/kickcast
		[ 62.44] SPELL_CAST_START: [Hukku: Shadow Bolt] Creature-0-5250-109-10825-218922-00001FFD61, Hukku, 0xa48, "", nil, 0x0, 446361, Shadow Bolt, 0, 0
			 Triggered 3x, delta times: 62.44, 13.18, 4.85
		[ 96.65] SPELL_CAST_START: [Hukku: Shadow Bolt] Creature-0-5250-109-10825-221833-0000200B0E, Hukku, 0xa48, "", nil, 0x0, 446361, Shadow Bolt, 0, 0
			 Triggered 4x, delta times: 96.65, 11.33, 16.16, 3.25
		[203.38] SPELL_CAST_START: [Zolo: Chain Lightning] Creature-0-5250-109-10825-221639-00001FFD61, Zolo, 0xa48, "", nil, 0x0, 446338, Chain Lightning, 0, 0
			 Triggered 4x, delta times: 203.38, 6.62, 16.16, 9.68
	VoicePack/phasechange
		[ 28.68] SPELL_CAST_SUCCESS: [Zul'Lor: Summon Zul'Lor] Creature-0-5250-109-10825-221640-00001FFD61, Zul'Lor, 0xa48, "", nil, 0x0, 444962, Summon Zul'Lor, 0, 0
		[ 56.47] SPELL_CAST_SUCCESS: [Mijan: Summon Mijan] Creature-0-5250-109-10825-218868-00001FFD61, Mijan, 0xa48, "", nil, 0x0, 444963, Summon Mijan, 0, 0
		[ 90.51] SPELL_CAST_SUCCESS: [Hukku: Summon Hukku] Creature-0-5250-109-10825-218922-00001FFD61, Hukku, 0xa48, "", nil, 0x0, 444961, Summon Hukku, 0, 0
		[139.27] SPELL_CAST_SUCCESS: [Gasher: Summon Gasher] Creature-0-5250-109-10825-221637-00001FFD61, Gasher, 0xa48, "", nil, 0x0, 444747, Summon Gasher, 0, 0
		[200.52] SPELL_CAST_SUCCESS: [Loro: Summon Loro] Creature-0-5250-109-10825-221638-00001FFD61, Loro, 0xa48, "", nil, 0x0, 444960, Summon Loro, 0, 0
	VoicePack/watchstep
		[ 11.67] SPELL_CAST_START: [Zul'Lor: Corrupted Slam] Creature-0-5250-109-10825-221640-00001FFD61, Zul'Lor, 0xa48, "", nil, 0x0, 446372, Corrupted Slam, 0, 0
			 Triggered 2x, delta times: 11.67, 11.34
		[ 38.77] SPELL_CAST_START: [Zul'Lor: Corrupted Slam] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, "", nil, 0x0, 446372, Corrupted Slam, 0, 0
			 Triggered 4x, delta times: 38.77, 10.54, 61.90, 26.29

Icons:
	Icon 1, target=Creature-0-5250-109-10825-221837-0000200AD0, scanMethod=nil
		[ 28.71] SPELL_SUMMON: [Zul'Lor->Zul'Lor: Summon Zul'Lor] Creature-0-5250-109-10825-221640-00001FFD61, Zul'Lor, 0xa48, Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, 444962, Summon Zul'Lor, 0, 0
	Icon 2, target=Creature-0-5250-109-10825-221835-0000200AEC, scanMethod=nil
		[ 56.52] SPELL_SUMMON: [Mijan->Mijan: Summon Mijan] Creature-0-5250-109-10825-218868-00001FFD61, Mijan, 0xa48, Creature-0-5250-109-10825-221835-0000200AEC, Mijan, 0xa48, 444963, Summon Mijan, 0, 0
	Icon 4, target=Creature-0-5250-109-10825-221759-0000200B3F, scanMethod=nil
		[139.32] SPELL_SUMMON: [Gasher->Gasher: Summon Gasher] Creature-0-5250-109-10825-221637-00001FFD61, Gasher, 0xa48, Creature-0-5250-109-10825-221759-0000200B3F, Gasher, 0xa48, 444747, Summon Gasher, 0, 0
	Icon 5, target=Creature-0-5250-109-10825-221834-0000200B7C, scanMethod=nil
		[200.57] SPELL_SUMMON: [Loro->Loro: Summon Loro] Creature-0-5250-109-10825-221638-00001FFD61, Loro, 0xa48, Creature-0-5250-109-10825-221834-0000200B7C, Loro, 0xa48, 444960, Summon Loro, 0, 0
	Icon 6, target=Creature-0-5250-109-10825-221833-0000200B0E, scanMethod=nil
		[ 90.57] SPELL_SUMMON: [Hukku->Hukku: Summon Hukku] Creature-0-5250-109-10825-218922-00001FFD61, Hukku, 0xa48, Creature-0-5250-109-10825-221833-0000200B0E, Hukku, 0xa48, 444961, Summon Hukku, 0, 0

Event trace:
	[  0.00] ENCOUNTER_START: 2954, Atal'ai Defenders, 215, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_START 446372 438294 446338 438341 438339 23511 446361 438335, SPELL_CAST_SUCCESS 446364 446369 444962 445912 445940 446339 445289 444747 444960 444961 446360 444963 444964, SPELL_AURA_APPLIED 446354 438294, SPELL_AURA_APPLIED_DOSE 445284, SPELL_AURA_REMOVED 445284 438294, SPELL_SUMMON 444962 444963 444964 444747 444960 444961
	[  5.98] SPELL_CAST_SUCCESS: [Zul'Lor: Frailty] Creature-0-5250-109-10825-221640-00001FFD61, Zul'Lor, 0xa48, "", nil, 0x0, 446364, Frailty, 0, 0
		ShowAnnounce: Frailty
	[ 11.66] SPELL_CAST_SUCCESS: [Zul'Lor->Camie: Charge] Creature-0-5250-109-10825-221640-00001FFD61, Zul'Lor, 0xa48, Player-5826-01FA7B12, Camie, 0x512, 446369, Charge, 0, 0
		ShowAnnounce: Charge
	[ 11.67] SPELL_CAST_START: [Zul'Lor: Corrupted Slam] Creature-0-5250-109-10825-221640-00001FFD61, Zul'Lor, 0xa48, "", nil, 0x0, 446372, Corrupted Slam, 0, 0
		ShowSpecialWarning: Corrupted Slam - dodge attack
		PlaySound: VoicePack/watchstep
	[ 18.13] SPELL_CAST_SUCCESS: [Zul'Lor: Frailty] Creature-0-5250-109-10825-221640-00001FFD61, Zul'Lor, 0xa48, "", nil, 0x0, 446364, Frailty, 0, 0
		ShowAnnounce: Frailty
	[ 22.99] SPELL_CAST_SUCCESS: [Zul'Lor->Krashnakh: Charge] Creature-0-5250-109-10825-221640-00001FFD61, Zul'Lor, 0xa48, Player-5826-01FE8271, Krashnakh, 0x512, 446369, Charge, 0, 0
		ShowAnnounce: Charge
	[ 23.01] SPELL_CAST_START: [Zul'Lor: Corrupted Slam] Creature-0-5250-109-10825-221640-00001FFD61, Zul'Lor, 0xa48, "", nil, 0x0, 446372, Corrupted Slam, 0, 0
		ShowSpecialWarning: Corrupted Slam - dodge attack
		PlaySound: VoicePack/watchstep
	[ 28.68] SPELL_CAST_SUCCESS: [Zul'Lor: Summon Zul'Lor] Creature-0-5250-109-10825-221640-00001FFD61, Zul'Lor, 0xa48, "", nil, 0x0, 444962, Summon Zul'Lor, 0, 0
		ShowAnnounce: Stage 2
		PlaySound: VoicePack/phasechange
	[ 28.71] SPELL_SUMMON: [Zul'Lor->Zul'Lor: Summon Zul'Lor] Creature-0-5250-109-10825-221640-00001FFD61, Zul'Lor, 0xa48, Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, 444962, Summon Zul'Lor, 0, 0
		ScanForMobs: Creature-0-5250-109-10825-221837-0000200AD0, 2, 1, 1
	[ 33.90] SPELL_CAST_SUCCESS: [Zul'Lor: Frailty] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, "", nil, 0x0, 446364, Frailty, 0, 0
		ShowAnnounce: Frailty
	[ 37.15] SPELL_CAST_SUCCESS: [Zul'Lor->Schamuhne: Charge] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, Player-5826-023E0641, Schamuhne, 0x512, 446369, Charge, 0, 0
		ShowAnnounce: Charge
	[ 38.77] SPELL_CAST_START: [Zul'Lor: Corrupted Slam] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, "", nil, 0x0, 446372, Corrupted Slam, 0, 0
		ShowSpecialWarning: Corrupted Slam - dodge attack
		PlaySound: VoicePack/watchstep
	[ 46.48] SPELL_CAST_START: [Mijan: Healing Ward] Creature-0-5250-109-10825-218868-00001FFD61, Mijan, 0xa48, "", nil, 0x0, 438335, Healing Ward, 0, 0
		ShowAnnounce: Healing Ward
	[ 48.51] SPELL_CAST_SUCCESS: [Zul'Lor->nurriburbur: Charge] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, Pet-0-5250-109-10825-2734-0100A1103F, nurriburbur, 0x1112, 446369, Charge, 0, 0
		ShowAnnounce: Charge
	[ 49.31] SPELL_CAST_START: [Zul'Lor: Corrupted Slam] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, "", nil, 0x0, 446372, Corrupted Slam, 0, 0
		ShowSpecialWarning: Corrupted Slam - dodge attack
		PlaySound: VoicePack/watchstep
	[ 53.77] SPELL_CAST_SUCCESS: [Zul'Lor: Frailty] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, "", nil, 0x0, 446364, Frailty, 0, 0
		ShowAnnounce: Frailty
	[ 56.20] SPELL_CAST_SUCCESS: [Mijan: Atal'ai Serpent Totem] Creature-0-5250-109-10825-218868-00001FFD61, Mijan, 0xa48, "", nil, 0x0, 445912, Atal'ai Serpent Totem, 0, 0
		ShowSpecialWarning: Atal'ai Serpent Totem - switch targets
	[ 56.47] SPELL_CAST_SUCCESS: [Mijan: Summon Mijan] Creature-0-5250-109-10825-218868-00001FFD61, Mijan, 0xa48, "", nil, 0x0, 444963, Summon Mijan, 0, 0
		ShowAnnounce: Stage 3
		PlaySound: VoicePack/phasechange
	[ 56.52] SPELL_SUMMON: [Mijan->Mijan: Summon Mijan] Creature-0-5250-109-10825-218868-00001FFD61, Mijan, 0xa48, Creature-0-5250-109-10825-221835-0000200AEC, Mijan, 0xa48, 444963, Summon Mijan, 0, 0
		ScanForMobs: Creature-0-5250-109-10825-221835-0000200AEC, 2, 2, 1
	[ 59.84] SPELL_CAST_SUCCESS: [Zul'Lor: Frailty] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, "", nil, 0x0, 446364, Frailty, 0, 0
		ShowAnnounce: Frailty
	[ 61.06] SPELL_CAST_SUCCESS: [Hukku: Hukku's Guardians] Creature-0-5250-109-10825-218922-00001FFD61, Hukku, 0xa48, "", nil, 0x0, 446360, Hukku's Guardians, 0, 0
		ShowAnnounce: Hukku's Guardians
	[ 62.44] SPELL_CAST_START: [Hukku: Shadow Bolt] Creature-0-5250-109-10825-218922-00001FFD61, Hukku, 0xa48, "", nil, 0x0, 446361, Shadow Bolt, 0, 0
		ShowSpecialWarning: Shadow Bolt - interrupt Hukku!
		PlaySound: VoicePack/kickcast
	[ 63.07] SPELL_CAST_SUCCESS: [Mijan: Atal'ai Serpent Totem] Creature-0-5250-109-10825-221835-0000200AEC, Mijan, 0xa48, "", nil, 0x0, 445912, Atal'ai Serpent Totem, 0, 0
		ShowSpecialWarning: Atal'ai Serpent Totem - switch targets
	[ 64.32] SPELL_CAST_SUCCESS: [Zul'Lor->Obile: Charge] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, Player-5826-01FDA26E, Obile, 0x512, 446369, Charge, 0, 0
		ShowAnnounce: Charge
	[ 65.11] SPELL_CAST_START: [Mijan: Healing Ward] Creature-0-5250-109-10825-221835-0000200AEC, Mijan, 0xa48, "", nil, 0x0, 438335, Healing Ward, 0, 0
		ShowAnnounce: Healing Ward
	[ 75.62] SPELL_CAST_START: [Hukku: Shadow Bolt] Creature-0-5250-109-10825-218922-00001FFD61, Hukku, 0xa48, "", nil, 0x0, 446361, Shadow Bolt, 0, 0
		ShowSpecialWarning: Shadow Bolt - interrupt Hukku!
		PlaySound: VoicePack/kickcast
	[ 80.47] SPELL_CAST_START: [Hukku: Shadow Bolt] Creature-0-5250-109-10825-218922-00001FFD61, Hukku, 0xa48, "", nil, 0x0, 446361, Shadow Bolt, 0, 0
		ShowSpecialWarning: Shadow Bolt - interrupt Hukku!
		PlaySound: VoicePack/kickcast
	[ 90.51] SPELL_CAST_SUCCESS: [Hukku: Summon Hukku] Creature-0-5250-109-10825-218922-00001FFD61, Hukku, 0xa48, "", nil, 0x0, 444961, Summon Hukku, 0, 0
		ShowAnnounce: Stage 4
		PlaySound: VoicePack/phasechange
	[ 90.57] SPELL_SUMMON: [Hukku->Hukku: Summon Hukku] Creature-0-5250-109-10825-218922-00001FFD61, Hukku, 0xa48, Creature-0-5250-109-10825-221833-0000200B0E, Hukku, 0xa48, 444961, Summon Hukku, 0, 0
		ScanForMobs: Creature-0-5250-109-10825-221833-0000200B0E, 2, 6, 1
	[ 96.65] SPELL_CAST_SUCCESS: [Hukku: Hukku's Guardians] Creature-0-5250-109-10825-221833-0000200B0E, Hukku, 0xa48, "", nil, 0x0, 446360, Hukku's Guardians, 0, 0
		ShowAnnounce: Hukku's Guardians
	[ 96.65] SPELL_CAST_START: [Hukku: Shadow Bolt] Creature-0-5250-109-10825-221833-0000200B0E, Hukku, 0xa48, "", nil, 0x0, 446361, Shadow Bolt, 0, 0
		ShowSpecialWarning: Shadow Bolt - interrupt Hukku!
		PlaySound: VoicePack/kickcast
	[ 97.47] SPELL_CAST_SUCCESS: [Mijan: Atal'ai Serpent Totem] Creature-0-5250-109-10825-221835-0000200AEC, Mijan, 0xa48, "", nil, 0x0, 445912, Atal'ai Serpent Totem, 0, 0
		ShowSpecialWarning: Atal'ai Serpent Totem - switch targets
	[ 98.27] SPELL_CAST_SUCCESS: [Gasher: Spinning Axes] Creature-0-5250-109-10825-221637-00001FFD61, Gasher, 0xa48, "", nil, 0x0, 445289, Spinning Axes, 0, 0
		ShowAnnounce: Spinning Axes
	[102.33] SPELL_CAST_START: [Mijan: Healing Ward] Creature-0-5250-109-10825-221835-0000200AEC, Mijan, 0xa48, "", nil, 0x0, 438335, Healing Ward, 0, 0
		ShowAnnounce: Healing Ward
	[105.58] SPELL_AURA_APPLIED_DOSE: [Gasher->Gasher: Fervor] Creature-0-5250-109-10825-221637-00001FFD61, Gasher, 0xa48, Creature-0-5250-109-10825-221637-00001FFD61, Gasher, 0xa48, 445284, Fervor, 0, BUFF, 10, 0
		ShowAnnounce: Fervor on Gasher (10)
	[107.98] SPELL_CAST_START: [Hukku: Shadow Bolt] Creature-0-5250-109-10825-221833-0000200B0E, Hukku, 0xa48, "", nil, 0x0, 446361, Shadow Bolt, 0, 0
		ShowSpecialWarning: Shadow Bolt - interrupt Hukku!
		PlaySound: VoicePack/kickcast
	[108.23] SPELL_CAST_SUCCESS: [Zul'Lor->nurriburbur: Charge] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, Pet-0-5250-109-10825-2734-0100A1103F, nurriburbur, 0x1112, 446369, Charge, 0, 0
		ShowAnnounce: Charge
	[111.21] SPELL_CAST_START: [Zul'Lor: Corrupted Slam] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, "", nil, 0x0, 446372, Corrupted Slam, 0, 0
		ShowSpecialWarning: Corrupted Slam - dodge attack
		PlaySound: VoicePack/watchstep
	[113.12] SPELL_AURA_APPLIED_DOSE: [Gasher->Gasher: Fervor] Creature-0-5250-109-10825-221637-00001FFD61, Gasher, 0xa48, Creature-0-5250-109-10825-221637-00001FFD61, Gasher, 0xa48, 445284, Fervor, 0, BUFF, 20, 0
		ShowAnnounce: Fervor on Gasher (20)
	[119.59] SPELL_AURA_APPLIED_DOSE: [Gasher->Gasher: Fervor] Creature-0-5250-109-10825-221637-00001FFD61, Gasher, 0xa48, Creature-0-5250-109-10825-221637-00001FFD61, Gasher, 0xa48, 445284, Fervor, 0, BUFF, 30, 0
		ShowAnnounce: Fervor on Gasher (30)
	[120.12] SPELL_CAST_SUCCESS: [Zul'Lor: Frailty] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, "", nil, 0x0, 446364, Frailty, 0, 0
		ShowAnnounce: Frailty
	[121.72] SPELL_CAST_SUCCESS: [Zul'Lor->Camie: Charge] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, Player-5826-01FA7B12, Camie, 0x512, 446369, Charge, 0, 0
		ShowAnnounce: Charge
	[124.14] SPELL_CAST_START: [Hukku: Shadow Bolt] Creature-0-5250-109-10825-221833-0000200B0E, Hukku, 0xa48, "", nil, 0x0, 446361, Shadow Bolt, 0, 0
		ShowSpecialWarning: Shadow Bolt - interrupt Hukku!
		PlaySound: VoicePack/kickcast
	[124.34] SPELL_AURA_REMOVED: [Gasher->Gasher: Fervor] Creature-0-5250-109-10825-221637-00001FFD61, Gasher, 0xa48, Creature-0-5250-109-10825-221637-00001FFD61, Gasher, 0xa48, 445284, Fervor, 0, BUFF, 0
		AntiSpam: 1
			Filtered: 1x SPELL_AURA_REMOVED at 131.11
		ShowAnnounce: Fervor faded
	[124.96] SPELL_CAST_START: [Mijan: Healing Ward] Creature-0-5250-109-10825-221835-0000200AEC, Mijan, 0xa48, "", nil, 0x0, 438335, Healing Ward, 0, 0
		ShowAnnounce: Healing Ward
	[127.39] SPELL_CAST_START: [Hukku: Shadow Bolt] Creature-0-5250-109-10825-221833-0000200B0E, Hukku, 0xa48, "", nil, 0x0, 446361, Shadow Bolt, 0, 0
		ShowSpecialWarning: Shadow Bolt - interrupt Hukku!
		PlaySound: VoicePack/kickcast
	[129.01] SPELL_CAST_SUCCESS: [Gasher: Spinning Axes] Creature-0-5250-109-10825-221637-00001FFD61, Gasher, 0xa48, "", nil, 0x0, 445289, Spinning Axes, 0, 0
		ShowAnnounce: Spinning Axes
	[129.81] SPELL_CAST_SUCCESS: [Zul'Lor: Frailty] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, "", nil, 0x0, 446364, Frailty, 0, 0
		ShowAnnounce: Frailty
	[133.07] SPELL_CAST_SUCCESS: [Mijan: Atal'ai Serpent Totem] Creature-0-5250-109-10825-221835-0000200AEC, Mijan, 0xa48, "", nil, 0x0, 445912, Atal'ai Serpent Totem, 0, 0
		ShowSpecialWarning: Atal'ai Serpent Totem - switch targets
	[135.18] SPELL_CAST_SUCCESS: [Zul'Lor->Discomuh: Charge] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, Player-5826-023D8989, Discomuh, 0x512, 446369, Charge, 0, 0
		ShowAnnounce: Charge
	[137.50] SPELL_CAST_START: [Zul'Lor: Corrupted Slam] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, "", nil, 0x0, 446372, Corrupted Slam, 0, 0
		ShowSpecialWarning: Corrupted Slam - dodge attack
		PlaySound: VoicePack/watchstep
	[137.92] SPELL_CAST_START: [Mijan: Healing Ward] Creature-0-5250-109-10825-221835-0000200AEC, Mijan, 0xa48, "", nil, 0x0, 438335, Healing Ward, 0, 0
		ShowAnnounce: Healing Ward
	[139.27] SPELL_CAST_SUCCESS: [Gasher: Summon Gasher] Creature-0-5250-109-10825-221637-00001FFD61, Gasher, 0xa48, "", nil, 0x0, 444747, Summon Gasher, 0, 0
		ShowAnnounce: Stage 5
		PlaySound: VoicePack/phasechange
	[139.32] SPELL_SUMMON: [Gasher->Gasher: Summon Gasher] Creature-0-5250-109-10825-221637-00001FFD61, Gasher, 0xa48, Creature-0-5250-109-10825-221759-0000200B3F, Gasher, 0xa48, 444747, Summon Gasher, 0, 0
		ScanForMobs: Creature-0-5250-109-10825-221759-0000200B3F, 2, 4, 1
	[141.17] SPELL_AURA_REMOVED: [Gasher->Gasher: Fervor] Creature-0-5250-109-10825-221637-00001FFD61, Gasher, 0xa48, Creature-0-5250-109-10825-221637-00001FFD61, Gasher, 0xa48, 445284, Fervor, 0, BUFF, 0
		AntiSpam: 1
		ShowAnnounce: Fervor faded
	[144.19] SPELL_CAST_SUCCESS: [Zul'Lor->Illiath: Charge] Creature-0-5250-109-10825-221837-0000200AD0, Zul'Lor, 0xa48, Player-5826-020D96DC, Illiath, 0x512, 446369, Charge, 0, 0
		ShowAnnounce: Charge
	[149.26] SPELL_AURA_APPLIED: [Loro->Elemento: Shield Slam] Creature-0-5250-109-10825-221638-00001FFD61, Loro, 0xa48, Player-5826-02256816, Elemento, 0x512, 446354, Shield Slam, 0, DEBUFF, 0
		ShowAnnounce: Shield Slam on Elemento
	[151.37] SPELL_CAST_START: [Loro: Demoralizing Shout] Creature-0-5250-109-10825-221638-00001FFD61, Loro, 0xa48, "", nil, 0x0, 23511, Demoralizing Shout, 0, 0
		ShowAnnounce: Casting Demoralizing Shout: 2.5 sec
		StartTimer: 22.8, Demoralizing Shout
	[155.74] SPELL_AURA_APPLIED: [Loro->Muhscle: Shield Slam] Creature-0-5250-109-10825-221638-00001FFD61, Loro, 0xa48, Player-5826-023E078B, Muhscle, 0x512, 446354, Shield Slam, 0, DEBUFF, 0
		ShowAnnounce: Shield Slam on Muhscle
	[156.55] SPELL_CAST_SUCCESS: [Gasher: Spinning Axes] Creature-0-5250-109-10825-221759-0000200B3F, Gasher, 0xa48, "", nil, 0x0, 445289, Spinning Axes, 0, 0
		ShowAnnounce: Spinning Axes
	[167.09] SPELL_CAST_SUCCESS: [Mijan: Atal'ai Serpent Totem] Creature-0-5250-109-10825-221835-0000200AEC, Mijan, 0xa48, "", nil, 0x0, 445912, Atal'ai Serpent Totem, 0, 0
		ShowSpecialWarning: Atal'ai Serpent Totem - switch targets
	[181.66] SPELL_CAST_START: [Loro: Demoralizing Shout] Creature-0-5250-109-10825-221638-00001FFD61, Loro, 0xa48, "", nil, 0x0, 23511, Demoralizing Shout, 0, 0
		ShowAnnounce: Casting Demoralizing Shout: 2.5 sec
		StartTimer: 22.8, Demoralizing Shout
	[186.53] SPELL_AURA_APPLIED: [Loro->Elemento: Shield Slam] Creature-0-5250-109-10825-221638-00001FFD61, Loro, 0xa48, Player-5826-02256816, Elemento, 0x512, 446354, Shield Slam, 0, DEBUFF, 0
		ShowAnnounce: Shield Slam on Elemento
	[187.33] SPELL_CAST_SUCCESS: [Gasher: Spinning Axes] Creature-0-5250-109-10825-221759-0000200B3F, Gasher, 0xa48, "", nil, 0x0, 445289, Spinning Axes, 0, 0
		ShowAnnounce: Spinning Axes
	[193.00] SPELL_CAST_START: [Mijan: Healing Ward] Creature-0-5250-109-10825-221835-0000200AEC, Mijan, 0xa48, "", nil, 0x0, 438335, Healing Ward, 0, 0
		ShowAnnounce: Healing Ward
	[193.00] SPELL_AURA_APPLIED: [Loro->Elemento: Shield Slam] Creature-0-5250-109-10825-221638-00001FFD61, Loro, 0xa48, Player-5826-02256816, Elemento, 0x512, 446354, Shield Slam, 0, DEBUFF, 0
		ShowAnnounce: Shield Slam on Elemento
	[199.47] SPELL_AURA_APPLIED: [Loro->Elemento: Shield Slam] Creature-0-5250-109-10825-221638-00001FFD61, Loro, 0xa48, Player-5826-02256816, Elemento, 0x512, 446354, Shield Slam, 0, DEBUFF, 0
		ShowAnnounce: Shield Slam on Elemento
	[200.52] SPELL_CAST_SUCCESS: [Loro: Summon Loro] Creature-0-5250-109-10825-221638-00001FFD61, Loro, 0xa48, "", nil, 0x0, 444960, Summon Loro, 0, 0
		ShowAnnounce: Stage 6
		PlaySound: VoicePack/phasechange
		StopTimer: Timer23511cd
		StartTimer: 14.6, Demoralizing Shout
	[200.57] SPELL_SUMMON: [Loro->Loro: Summon Loro] Creature-0-5250-109-10825-221638-00001FFD61, Loro, 0xa48, Creature-0-5250-109-10825-221834-0000200B7C, Loro, 0xa48, 444960, Summon Loro, 0, 0
		ScanForMobs: Creature-0-5250-109-10825-221834-0000200B7C, 2, 5, 1
	[203.38] SPELL_CAST_START: [Zolo: Chain Lightning] Creature-0-5250-109-10825-221639-00001FFD61, Zolo, 0xa48, "", nil, 0x0, 446338, Chain Lightning, 0, 0
		ShowSpecialWarning: Chain Lightning - interrupt Zolo!
		PlaySound: VoicePack/kickcast
	[210.00] SPELL_CAST_START: [Zolo: Chain Lightning] Creature-0-5250-109-10825-221639-00001FFD61, Zolo, 0xa48, "", nil, 0x0, 446338, Chain Lightning, 0, 0
		ShowSpecialWarning: Chain Lightning - interrupt Zolo!
		PlaySound: VoicePack/kickcast
	[210.80] SPELL_CAST_START: [Mijan: Healing Ward] Creature-0-5250-109-10825-221835-0000200AEC, Mijan, 0xa48, "", nil, 0x0, 438335, Healing Ward, 0, 0
		ShowAnnounce: Healing Ward
	[214.84] SPELL_CAST_SUCCESS: [Zolo: Atal'ai Skeleton Totem] Creature-0-5250-109-10825-221639-00001FFD61, Zolo, 0xa48, "", nil, 0x0, 446339, Atal'ai Skeleton Totem, 0, 0
		ShowSpecialWarning: Atal'ai Skeleton Totem - switch targets
		PlaySound: VoicePack/attacktotem
	[216.97] SPELL_CAST_START: [Loro: Demoralizing Shout] Creature-0-5250-109-10825-221834-0000200B7C, Loro, 0xa48, "", nil, 0x0, 23511, Demoralizing Shout, 0, 0
		ShowAnnounce: Casting Demoralizing Shout: 2.5 sec
		StartTimer: 22.8, Demoralizing Shout
	[218.07] SPELL_CAST_SUCCESS: [Gasher: Spinning Axes] Creature-0-5250-109-10825-221759-0000200B3F, Gasher, 0xa48, "", nil, 0x0, 445289, Spinning Axes, 0, 0
		ShowAnnounce: Spinning Axes
	[226.16] SPELL_CAST_START: [Zolo: Chain Lightning] Creature-0-5250-109-10825-221639-00001FFD61, Zolo, 0xa48, "", nil, 0x0, 446338, Chain Lightning, 0, 0
		ShowSpecialWarning: Chain Lightning - interrupt Zolo!
		PlaySound: VoicePack/kickcast
	[229.40] SPELL_CAST_SUCCESS: [Zolo->Elemento: Unstable Cask] Creature-0-5250-109-10825-221639-00001FFD61, Zolo, 0xa48, Player-5826-02256816, Elemento, 0x512, 445940, Unstable Cask, 0, 0
		ShowAnnounce: Unstable Cask
	[230.21] SPELL_CAST_SUCCESS: [Mijan: Atal'ai Serpent Totem] Creature-0-5250-109-10825-221835-0000200AEC, Mijan, 0xa48, "", nil, 0x0, 445912, Atal'ai Serpent Totem, 0, 0
		ShowSpecialWarning: Atal'ai Serpent Totem - switch targets
	[231.02] SPELL_CAST_SUCCESS: [Zolo: Atal'ai Skeleton Totem] Creature-0-5250-109-10825-221639-00001FFD61, Zolo, 0xa48, "", nil, 0x0, 446339, Atal'ai Skeleton Totem, 0, 0
		ShowSpecialWarning: Atal'ai Skeleton Totem - switch targets
		PlaySound: VoicePack/attacktotem
	[235.84] SPELL_CAST_START: [Zolo: Chain Lightning] Creature-0-5250-109-10825-221639-00001FFD61, Zolo, 0xa48, "", nil, 0x0, 446338, Chain Lightning, 0, 0
		ShowSpecialWarning: Chain Lightning - interrupt Zolo!
		PlaySound: VoicePack/kickcast
	[238.77] ENCOUNTER_END: 2954, Atal'ai Defenders, 215, 20, 1, 0
		EndCombat: ENCOUNTER_END
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 445284 438294
]]
