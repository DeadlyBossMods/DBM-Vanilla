DBM.Test:Report[[
Test: SoD/ST/JammalanAndOgom/Ogom-First/Wipe
Mod:  DBM-Raids-Vanilla/JammalanAndOgomSoD

Findings:
	Timer for spell ID 437817 (Holy Nova) is triggered by event SPELL_CAST_START 437995 (Draining...)
	Timer for spell ID 437921 (Mass Penance) is triggered by event SPELL_CAST_START 437995 (Draining...)
	Timer for spell ID 437927 (Shadow Sermon: Pain) is triggered by event SPELL_CAST_START 437995 (Draining...)
	Timer for spell ID 437928 (Psychic Scream) is triggered by event SPELL_CAST_START 437995 (Draining...)
	Timer for spell ID 437930 (Power Word: Shield) is triggered by event SPELL_CAST_START 437995 (Draining...)
	Unused event registration: SPELL_CAST_START 437915 (Hammers of Justice)
	Unused event registration: SPELL_CAST_START 437920 (Divine Storm)
	Unused event registration: SPELL_CAST_START 437951 (Eating...)
	Unused event registration: SPELL_CAST_SUCCESS 437884 (Consecration)
	Unused event registration: SPELL_CAST_SUCCESS 437915 (Hammers of Justice)
	Unused event registration: SPELL_CAST_SUCCESS 437920 (Divine Storm)
	Unused event registration: SPELL_DAMAGE 437887 (Consecration)
	Unused event registration: SPELL_MISSED 437887 (Consecration)

Unused objects:
	[Announce] Consecration, type=spell, spellId=437884
	[Announce] Casting Hammers of Justice: 4.0 sec, type=cast, spellId=437915
	[Announce] Casting Divine Storm: 1.5 sec, type=cast, spellId=437920
	[Announce] Power Word: Shield on >%s<, type=target, spellId=437930
	[Special Warning] %s damage - move away, type=gtfo, spellId=437884
	[Timer] Consecration, time=15.80, type=cd, spellId=437884
	[Timer] Hammers of Justice, time=35.00, type=next, spellId=437915
	[Timer] Divine Storm, time=32.40, type=cd, spellId=437920

Timers:
	Holy Fire, time=13.40, type=cd, spellId=437809
		[  0.00] ENCOUNTER_START: 2957, Jammal'an and Ogom, 215, 20, 0
		[  7.82] SPELL_CAST_START: [Jammal'an the Prophet: Holy Fire] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437809, Holy Fire, 0, 0
			 Triggered 6x, delta times: 7.82, 13.31, 14.2, 13.38, 17.41, 13.31
		[ 90.78] SPELL_CAST_START: [Jammal'an the Prophet: Draining...] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437995, Draining..., 0, 0
	Holy Nova, time=17.30, type=cd, spellId=437817
		[  0.00] ENCOUNTER_START: 2957, Jammal'an and Ogom, 215, 20, 0
		[  9.42] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
			 Triggered 10x, delta times: 9.42, 17.8, 18.23, 17.82, 17.38, 26.32, 17.42, 19.4, 22.67, 21.43
		[ 90.78] SPELL_CAST_START: [Jammal'an the Prophet: Draining...] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437995, Draining..., 0, 0
	Mortal Lash, time=25.40, type=cd, spellId=437847
		[  0.00] ENCOUNTER_START: 2957, Jammal'an and Ogom, 215, 20, 0
		[  6.19] SPELL_CAST_SUCCESS: [Ogom the Wretched->Schamuhne: Mortal Lash] Creature-0-5250-109-10825-218718-000020105B, Ogom the Wretched, 0xa48, Player-5826-023E0641, Schamuhne, 0x512, 437847, Mortal Lash, 0, 0
			 Triggered 4x, delta times: 6.19, 25.9, 25.94, 25.77
		[ 85.52] UNIT_DIED: [->Ogom the Wretched] "", nil, 0x0, Creature-0-5250-109-10825-218718-000020105B, Ogom the Wretched, 0xa48, -1, false, 0, 0
	Agonizing Weakness, time=27.10, type=cd, spellId=437868
		[  0.00] ENCOUNTER_START: 2957, Jammal'an and Ogom, 215, 20, 0
		[ 13.06] SPELL_CAST_START: [Ogom the Wretched: Agonizing Weakness] Creature-0-5250-109-10825-218718-000020105B, Ogom the Wretched, 0xa48, "", nil, 0x0, 437868, Agonizing Weakness, 0, 0
			 Triggered 3x, delta times: 13.06, 27.54, 27.54
		[ 85.52] UNIT_DIED: [->Ogom the Wretched] "", nil, 0x0, Creature-0-5250-109-10825-218718-000020105B, Ogom the Wretched, 0xa48, -1, false, 0, 0
	Mass Penance, time=21.00, type=cd, spellId=437921
		[ 90.78] SPELL_CAST_START: [Jammal'an the Prophet: Draining...] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437995, Draining..., 0, 0
		[118.30] SPELL_CAST_START: [Jammal'an the Prophet: Mass Penance] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437921, Mass Penance, 0, 0
			 Triggered 4x, delta times: 118.3, 21.03, 22.69, 21.02
	Shadow Sermon: Pain, time=22.20, type=cd, spellId=437927
		[ 90.78] SPELL_CAST_START: [Jammal'an the Prophet: Draining...] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437995, Draining..., 0, 0
		[104.97] SPELL_CAST_START: [Jammal'an the Prophet: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437927, Shadow Sermon: Pain, 0, 0
			 Triggered 5x, delta times: 104.97, 23.05, 22.66, 22.25, 22.67
	Psychic Scream, time=43.70, type=cd, spellId=437928
		[ 90.78] SPELL_CAST_START: [Jammal'an the Prophet: Draining...] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437995, Draining..., 0, 0
		[111.83] SPELL_CAST_START: [Jammal'an the Prophet: Psychic Scream] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437928, Psychic Scream, 0, 0
			 Triggered 3x, delta times: 111.83, 43.7, 43.3
	Power Word: Shield, time=15.80, type=cd, spellId=437930
		[ 90.78] SPELL_CAST_START: [Jammal'an the Prophet: Draining...] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437995, Draining..., 0, 0
		[115.08] SPELL_CAST_SUCCESS: [Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437930, Power Word: Shield, 0, 0
			 Triggered 5x, delta times: 115.08, 16.18, 15.78, 19.42, 21.43

Announces:
	Stage 2, type=stage, spellId=<none>
		[ 90.78] SPELL_CAST_START: [Jammal'an the Prophet: Draining...] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437995, Draining..., 0, 0
	Holy Fire on >%s<, type=target, spellId=437809
		[  8.82] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Muhscle: Holy Fire] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, Player-5826-023E078B, Muhscle, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
		[ 22.15] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Snui: Holy Fire] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, Player-5826-024EEB02, Snui, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
		[ 36.33] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Shelisea: Holy Fire] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, Player-5826-0222D437, Shelisea, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
		[ 49.71] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Tisakyle: Holy Fire] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, Player-5826-026C3CA7, Tisakyle, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
		[ 67.12] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Discomuh: Holy Fire] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, Player-5826-023D8989, Discomuh, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
		[ 80.45] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Rajkan: Holy Fire] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, Player-5826-022B87C7, Rajkan, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
	Mortal Lash on >%s<, type=target, spellId=437847
		[  6.21] SPELL_AURA_APPLIED: [Ogom the Wretched->Schamuhne: Mortal Lash] Creature-0-5250-109-10825-218718-000020105B, Ogom the Wretched, 0xa48, Player-5826-023E0641, Schamuhne, 0x512, 437847, Mortal Lash, 0, DEBUFF, 0
			 Triggered 3x, delta times: 6.21, 25.88, 51.71
	Agonizing Weakness, type=spell, spellId=437868
		[ 13.06] SPELL_CAST_START: [Ogom the Wretched: Agonizing Weakness] Creature-0-5250-109-10825-218718-000020105B, Ogom the Wretched, 0xa48, "", nil, 0x0, 437868, Agonizing Weakness, 0, 0
			 Triggered 3x, delta times: 13.06, 27.54, 27.54
	Shadow Sermon: Pain on >%s<, type=target, spellId=437927
		Unknown trigger
		[130.03] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Tisakyle: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, Player-5826-026C3CA7, Tisakyle, 0x512, 437927, Shadow Sermon: Pain, 0, DEBUFF, 0
		[152.68] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Snui: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, Player-5826-024EEB02, Snui, 0x512, 437927, Shadow Sermon: Pain, 0, DEBUFF, 0
		Unknown trigger

Special warnings:
	Smite - interrupt >%s<!, type=interrupt, spellId=437805
		[  4.59] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
			 Triggered 13x, delta times: 4.59, 8.47, 6.47, 4.84, 4.87, 7.71, 4.87, 8.5, 4.88, 4.83, 8.11, 6.44, 8.11
	Holy Nova - dodge attack, type=dodge, spellId=437817
		[  9.42] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
			 Triggered 10x, delta times: 9.42, 17.8, 18.23, 17.82, 17.38, 26.32, 17.42, 19.4, 22.67, 21.43
	Mass Penance - dodge attack, type=dodge, spellId=437921
		[118.30] SPELL_CAST_START: [Jammal'an the Prophet: Mass Penance] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437921, Mass Penance, 0, 0
			 Triggered 4x, delta times: 118.3, 21.03, 22.69, 21.02
	Psychic Scream!, type=spell, spellId=437928
		[111.83] SPELL_CAST_START: [Jammal'an the Prophet: Psychic Scream] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437928, Psychic Scream, 0, 0
			 Triggered 3x, delta times: 111.83, 43.7, 43.3
	Power Word: Shield on >%s< - dispel now, type=dispel, spellId=437930
		[115.08] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, 437930, Power Word: Shield, 0, BUFF, 0
			 Triggered 5x, delta times: 115.08, 16.18, 15.78, 19.42, 21.43

Yells:
	None

Voice pack sounds:
	VoicePack/dispelboss
		[115.08] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, 437930, Power Word: Shield, 0, BUFF, 0
			 Triggered 5x, delta times: 115.08, 16.18, 15.78, 19.42, 21.43
	VoicePack/fearsoon
		[111.83] SPELL_CAST_START: [Jammal'an the Prophet: Psychic Scream] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437928, Psychic Scream, 0, 0
			 Triggered 3x, delta times: 111.83, 43.7, 43.3
	VoicePack/kickcast
		[  4.59] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
			 Triggered 13x, delta times: 4.59, 8.47, 6.47, 4.84, 4.87, 7.71, 4.87, 8.5, 4.88, 4.83, 8.11, 6.44, 8.11
	VoicePack/ptwo
		[ 90.78] SPELL_CAST_START: [Jammal'an the Prophet: Draining...] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437995, Draining..., 0, 0
	VoicePack/watchstep
		[  9.42] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
			 Triggered 10x, delta times: 9.42, 17.8, 18.23, 17.82, 17.38, 26.32, 17.42, 19.4, 22.67, 21.43
		[118.30] SPELL_CAST_START: [Jammal'an the Prophet: Mass Penance] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437921, Mass Penance, 0, 0
			 Triggered 4x, delta times: 118.3, 21.03, 22.69, 21.02

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 2957, Jammal'an and Ogom, 215, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_START 437805 437868 437817 437995 437928 437921 437809 437927 437915 437951 437920, SPELL_CAST_SUCCESS 437847 437930 437915 437884 437920, SPELL_AURA_APPLIED 437809 437847 437927 437930, UNIT_DIED, SPELL_DAMAGE 437887, SPELL_MISSED 437887
		StartTimer: 7.5, Holy Fire
		StartTimer: 6, Mortal Lash
		StartTimer: 8, Holy Nova
		StartTimer: 12.5, Agonizing Weakness
	[  4.59] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[  6.19] SPELL_CAST_SUCCESS: [Ogom the Wretched->Schamuhne: Mortal Lash] Creature-0-5250-109-10825-218718-000020105B, Ogom the Wretched, 0xa48, Player-5826-023E0641, Schamuhne, 0x512, 437847, Mortal Lash, 0, 0
		StartTimer: 25.4, Mortal Lash
	[  6.21] SPELL_AURA_APPLIED: [Ogom the Wretched->Schamuhne: Mortal Lash] Creature-0-5250-109-10825-218718-000020105B, Ogom the Wretched, 0xa48, Player-5826-023E0641, Schamuhne, 0x512, 437847, Mortal Lash, 0, DEBUFF, 0
		ShowAnnounce: Mortal Lash on Schamuhne
	[  7.82] SPELL_CAST_START: [Jammal'an the Prophet: Holy Fire] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437809, Holy Fire, 0, 0
		StartTimer: 13.4, Holy Fire
	[  8.82] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Muhscle: Holy Fire] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, Player-5826-023E078B, Muhscle, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
		ShowAnnounce: Holy Fire on Gotchya, Illiath, Muhscle, Schamuhne, Tandanu
	[  9.42] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[ 13.06] SPELL_CAST_START: [Ogom the Wretched: Agonizing Weakness] Creature-0-5250-109-10825-218718-000020105B, Ogom the Wretched, 0xa48, "", nil, 0x0, 437868, Agonizing Weakness, 0, 0
		ShowAnnounce: Agonizing Weakness
		StartTimer: 27.1, Agonizing Weakness
	[ 13.06] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 19.53] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 21.13] SPELL_CAST_START: [Jammal'an the Prophet: Holy Fire] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437809, Holy Fire, 0, 0
		StartTimer: 13.4, Holy Fire
	[ 22.15] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Snui: Holy Fire] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, Player-5826-024EEB02, Snui, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
		ShowAnnounce: Holy Fire on Beppoo, Camie, Obile, Schamuhne, Snui
	[ 24.37] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 27.22] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[ 29.24] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 32.09] SPELL_CAST_SUCCESS: [Ogom the Wretched->Schamuhne: Mortal Lash] Creature-0-5250-109-10825-218718-000020105B, Ogom the Wretched, 0xa48, Player-5826-023E0641, Schamuhne, 0x512, 437847, Mortal Lash, 0, 0
		StartTimer: 25.4, Mortal Lash
	[ 32.09] SPELL_AURA_APPLIED: [Ogom the Wretched->Schamuhne: Mortal Lash] Creature-0-5250-109-10825-218718-000020105B, Ogom the Wretched, 0xa48, Player-5826-023E0641, Schamuhne, 0x512, 437847, Mortal Lash, 0, DEBUFF, 0
		ShowAnnounce: Mortal Lash on Schamuhne
	[ 35.33] SPELL_CAST_START: [Jammal'an the Prophet: Holy Fire] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437809, Holy Fire, 0, 0
		StartTimer: 13.4, Holy Fire
	[ 36.33] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Shelisea: Holy Fire] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, Player-5826-0222D437, Shelisea, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
		ShowAnnounce: Holy Fire on Gotchya, Hantha, Illiath, Krashnakh, Shelisea
	[ 36.95] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 40.60] SPELL_CAST_START: [Ogom the Wretched: Agonizing Weakness] Creature-0-5250-109-10825-218718-000020105B, Ogom the Wretched, 0xa48, "", nil, 0x0, 437868, Agonizing Weakness, 0, 0
		ShowAnnounce: Agonizing Weakness
		StartTimer: 27.1, Agonizing Weakness
	[ 41.82] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 45.45] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[ 48.71] SPELL_CAST_START: [Jammal'an the Prophet: Holy Fire] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437809, Holy Fire, 0, 0
		StartTimer: 13.4, Holy Fire
	[ 49.71] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Tisakyle: Holy Fire] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, Player-5826-026C3CA7, Tisakyle, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
		ShowAnnounce: Holy Fire on Beppoo, Noxea, Schamuhne, Shelisea, Tisakyle
	[ 50.32] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 55.20] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 58.03] SPELL_CAST_SUCCESS: [Ogom the Wretched->Schamuhne: Mortal Lash] Creature-0-5250-109-10825-218718-000020105B, Ogom the Wretched, 0xa48, Player-5826-023E0641, Schamuhne, 0x512, 437847, Mortal Lash, 0, 0
		StartTimer: 25.4, Mortal Lash
	[ 60.03] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 63.27] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[ 66.12] SPELL_CAST_START: [Jammal'an the Prophet: Holy Fire] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437809, Holy Fire, 0, 0
		StartTimer: 13.4, Holy Fire
	[ 67.12] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Discomuh: Holy Fire] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, Player-5826-023D8989, Discomuh, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
		ShowAnnounce: Holy Fire on Camie, Discomuh, Shelisea, Tandanu, Vargana
	[ 68.14] SPELL_CAST_START: [Ogom the Wretched: Agonizing Weakness] Creature-0-5250-109-10825-218718-000020105B, Ogom the Wretched, 0xa48, "", nil, 0x0, 437868, Agonizing Weakness, 0, 0
		ShowAnnounce: Agonizing Weakness
		StartTimer: 27.1, Agonizing Weakness
	[ 68.14] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 74.58] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 79.43] SPELL_CAST_START: [Jammal'an the Prophet: Holy Fire] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437809, Holy Fire, 0, 0
		StartTimer: 13.4, Holy Fire
	[ 80.45] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Rajkan: Holy Fire] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, Player-5826-022B87C7, Rajkan, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
		ShowAnnounce: Holy Fire on Beppoo, Camie, Hantha, Muhnshine, Rajkan
	[ 80.65] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[ 82.69] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 83.80] SPELL_CAST_SUCCESS: [Ogom the Wretched->Schamuhne: Mortal Lash] Creature-0-5250-109-10825-218718-000020105B, Ogom the Wretched, 0xa48, Player-5826-023E0641, Schamuhne, 0x512, 437847, Mortal Lash, 0, 0
		StartTimer: 25.4, Mortal Lash
	[ 83.80] SPELL_AURA_APPLIED: [Ogom the Wretched->Schamuhne: Mortal Lash] Creature-0-5250-109-10825-218718-000020105B, Ogom the Wretched, 0xa48, Player-5826-023E0641, Schamuhne, 0x512, 437847, Mortal Lash, 0, DEBUFF, 0
		ShowAnnounce: Mortal Lash on Schamuhne
	[ 85.52] UNIT_DIED: [->Ogom the Wretched] "", nil, 0x0, Creature-0-5250-109-10825-218718-000020105B, Ogom the Wretched, 0xa48, -1, false, 0, 0
		StopTimer: Timer437847cd
		StopTimer: Timer437868cd
	[ 90.78] SPELL_CAST_START: [Jammal'an the Prophet: Draining...] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437995, Draining..., 0, 0
		ShowAnnounce: Stage 2
		PlaySound: VoicePack/ptwo
		StopTimer: Timer437809cd
		StopTimer: Timer437817cd
		StartTimer: 15.7, Shadow Sermon: Pain
		StartTimer: 17.7, Holy Nova
		StartTimer: 22.6, Psychic Scream
		StartTimer: 25.4, Power Word: Shield
		StartTimer: 28.7, Mass Penance
	[104.97] SPELL_CAST_START: [Jammal'an the Prophet: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437927, Shadow Sermon: Pain, 0, 0
		StartTimer: 22.2, Shadow Sermon: Pain
	[106.97] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	Unknown trigger
		ShowAnnounce: Shadow Sermon: Pain on Discomuh, Elemento, Hantha, Obile, Schamuhne, Tandanu, Vargana and 2 others
	[111.83] SPELL_CAST_START: [Jammal'an the Prophet: Psychic Scream] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437928, Psychic Scream, 0, 0
		ShowSpecialWarning: Psychic Scream!
		PlaySound: VoicePack/fearsoon
		StartTimer: 43.7, Psychic Scream
	[115.08] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, 437930, Power Word: Shield, 0, BUFF, 0
		ShowSpecialWarning: Power Word: Shield on Jammal'an the Prophet - dispel now
		PlaySound: VoicePack/dispelboss
	[115.08] SPELL_CAST_SUCCESS: [Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437930, Power Word: Shield, 0, 0
		StartTimer: 15.8, Power Word: Shield
	[118.30] SPELL_CAST_START: [Jammal'an the Prophet: Mass Penance] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437921, Mass Penance, 0, 0
		ShowSpecialWarning: Mass Penance - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 21, Mass Penance
	[124.39] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[128.02] SPELL_CAST_START: [Jammal'an the Prophet: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437927, Shadow Sermon: Pain, 0, 0
		StartTimer: 22.2, Shadow Sermon: Pain
	[130.03] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Tisakyle: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, Player-5826-026C3CA7, Tisakyle, 0x512, 437927, Shadow Sermon: Pain, 0, DEBUFF, 0
		ShowAnnounce: Shadow Sermon: Pain on Beppoo, Elemento, Hantha, Illiath, Krashnakh, Muhnshine, Obile and 3 others
	[131.26] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, 437930, Power Word: Shield, 0, BUFF, 0
		ShowSpecialWarning: Power Word: Shield on Jammal'an the Prophet - dispel now
		PlaySound: VoicePack/dispelboss
	[131.26] SPELL_CAST_SUCCESS: [Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437930, Power Word: Shield, 0, 0
		StartTimer: 15.8, Power Word: Shield
	[139.33] SPELL_CAST_START: [Jammal'an the Prophet: Mass Penance] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437921, Mass Penance, 0, 0
		ShowSpecialWarning: Mass Penance - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 21, Mass Penance
	[143.79] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[147.04] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, 437930, Power Word: Shield, 0, BUFF, 0
		ShowSpecialWarning: Power Word: Shield on Jammal'an the Prophet - dispel now
		PlaySound: VoicePack/dispelboss
	[147.04] SPELL_CAST_SUCCESS: [Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437930, Power Word: Shield, 0, 0
		StartTimer: 15.8, Power Word: Shield
	[150.68] SPELL_CAST_START: [Jammal'an the Prophet: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437927, Shadow Sermon: Pain, 0, 0
		StartTimer: 22.2, Shadow Sermon: Pain
	[152.68] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Snui: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, Player-5826-024EEB02, Snui, 0x512, 437927, Shadow Sermon: Pain, 0, DEBUFF, 0
		ShowAnnounce: Shadow Sermon: Pain on Elemento, Hantha, Illiath, Krashnakh, Rajkan, Shelisea, Tandanu and 3 others
	[155.53] SPELL_CAST_START: [Jammal'an the Prophet: Psychic Scream] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437928, Psychic Scream, 0, 0
		ShowSpecialWarning: Psychic Scream!
		PlaySound: VoicePack/fearsoon
		StartTimer: 43.7, Psychic Scream
	[162.02] SPELL_CAST_START: [Jammal'an the Prophet: Mass Penance] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437921, Mass Penance, 0, 0
		ShowSpecialWarning: Mass Penance - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 21, Mass Penance
	[166.46] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, 437930, Power Word: Shield, 0, BUFF, 0
		ShowSpecialWarning: Power Word: Shield on Jammal'an the Prophet - dispel now
		PlaySound: VoicePack/dispelboss
	[166.46] SPELL_CAST_SUCCESS: [Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437930, Power Word: Shield, 0, 0
		StartTimer: 15.8, Power Word: Shield
	[166.46] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[172.93] SPELL_CAST_START: [Jammal'an the Prophet: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437927, Shadow Sermon: Pain, 0, 0
		StartTimer: 22.2, Shadow Sermon: Pain
	Unknown trigger
		ShowAnnounce: Shadow Sermon: Pain on Beppoo, Discomuh, Elemento, Gotchya, Illiath, Schamuhne, Tandanu and 2 others
	[183.04] SPELL_CAST_START: [Jammal'an the Prophet: Mass Penance] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437921, Mass Penance, 0, 0
		ShowSpecialWarning: Mass Penance - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 21, Mass Penance
	[187.89] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, 437930, Power Word: Shield, 0, BUFF, 0
		ShowSpecialWarning: Power Word: Shield on Jammal'an the Prophet - dispel now
		PlaySound: VoicePack/dispelboss
	[187.89] SPELL_CAST_SUCCESS: [Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437930, Power Word: Shield, 0, 0
		StartTimer: 15.8, Power Word: Shield
	[187.89] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[195.60] SPELL_CAST_START: [Jammal'an the Prophet: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437927, Shadow Sermon: Pain, 0, 0
		StartTimer: 22.2, Shadow Sermon: Pain
	Unknown trigger
		ShowAnnounce: Shadow Sermon: Pain on Elemento
	[198.83] SPELL_CAST_START: [Jammal'an the Prophet: Psychic Scream] Creature-0-5250-109-10825-218721-000020105B, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437928, Psychic Scream, 0, 0
		ShowSpecialWarning: Psychic Scream!
		PlaySound: VoicePack/fearsoon
		StartTimer: 43.7, Psychic Scream
	[200.47] ENCOUNTER_END: 2957, Jammal'an and Ogom, 215, 20, 0, 0
		EndCombat: ENCOUNTER_END
]]
