DBM.Test:Report[[
Test: SoD/ST/JammalanAndOgom/Ogom-First/Kill
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
		[  7.99] SPELL_CAST_START: [Jammal'an the Prophet: Holy Fire] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437809, Holy Fire, 0, 0
			 Triggered 5x, delta times: 7.99, 14.58, 14.59, 14.55, 14.58
	Holy Nova, time=17.30, type=cd, spellId=437817
		[  0.00] ENCOUNTER_START: 2957, Jammal'an and Ogom, 215, 20, 0
		[  9.63] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
			 Triggered 11x, delta times: 9.63, 17.83, 17.78, 17.8, 17.81, 24.31, 17.76, 17.87, 21, 21.05, 22.67
		[ 85.72] SPELL_CAST_START: [Jammal'an the Prophet: Draining...] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437995, Draining..., 0, 0
	Mortal Lash, time=25.40, type=cd, spellId=437847
		[  0.00] ENCOUNTER_START: 2957, Jammal'an and Ogom, 215, 20, 0
		[  6.37] SPELL_CAST_SUCCESS: [Ogom the Wretched->Gotchya: Mortal Lash] Creature-0-5250-109-10825-218718-0000201317, Ogom the Wretched, 0xa48, Player-5826-020EC278, Gotchya, 0x512, 437847, Mortal Lash, 0, 0
		[ 31.58] SPELL_CAST_SUCCESS: [Ogom the Wretched->Schamuhne: Mortal Lash] Creature-0-5250-109-10825-218718-0000201317, Ogom the Wretched, 0xa48, Player-5826-023E0641, Schamuhne, 0x512, 437847, Mortal Lash, 0, 0
			 Triggered 2x, delta times: 31.58, 25.12
	Agonizing Weakness, time=27.10, type=cd, spellId=437868
		[  0.00] ENCOUNTER_START: 2957, Jammal'an and Ogom, 215, 20, 0
		[ 12.86] SPELL_CAST_START: [Ogom the Wretched: Agonizing Weakness] Creature-0-5250-109-10825-218718-0000201317, Ogom the Wretched, 0xa48, "", nil, 0x0, 437868, Agonizing Weakness, 0, 0
			 Triggered 3x, delta times: 12.86, 27.54, 27.52
		[ 82.49] UNIT_DIED: [->Ogom the Wretched] "", nil, 0x0, Creature-0-5250-109-10825-218718-0000201317, Ogom the Wretched, 0xa48, -1, false, 0, 0
	Mass Penance, time=21.00, type=cd, spellId=437921
		[ 85.72] SPELL_CAST_START: [Jammal'an the Prophet: Draining...] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437995, Draining..., 0, 0
		[114.90] SPELL_CAST_START: [Jammal'an the Prophet: Mass Penance] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437921, Mass Penance, 0, 0
			 Triggered 6x, delta times: 114.9, 21.03, 21, 21.05, 22.67, 21.07
	Shadow Sermon: Pain, time=22.20, type=cd, spellId=437927
		[ 85.72] SPELL_CAST_START: [Jammal'an the Prophet: Draining...] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437995, Draining..., 0, 0
		[101.94] SPELL_CAST_START: [Jammal'an the Prophet: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437927, Shadow Sermon: Pain, 0, 0
			 Triggered 6x, delta times: 101.94, 24.29, 22.61, 22.67, 22.67, 22.67
	Psychic Scream, time=43.70, type=cd, spellId=437928
		[ 85.72] SPELL_CAST_START: [Jammal'an the Prophet: Draining...] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437995, Draining..., 0, 0
		[108.41] SPELL_CAST_START: [Jammal'an the Prophet: Psychic Scream] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437928, Psychic Scream, 0, 0
			 Triggered 3x, delta times: 108.41, 43.67, 45.34
	Power Word: Shield, time=15.80, type=cd, spellId=437930
		[ 85.72] SPELL_CAST_START: [Jammal'an the Prophet: Draining...] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437995, Draining..., 0, 0
		[111.65] SPELL_CAST_SUCCESS: [Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437930, Power Word: Shield, 0, 0
			 Triggered 6x, delta times: 111.65, 17.81, 16.16, 16.17, 21.05, 22.67

Announces:
	Stage 2, type=stage, spellId=<none>
		[ 85.72] SPELL_CAST_START: [Jammal'an the Prophet: Draining...] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437995, Draining..., 0, 0
	Holy Fire on >%s<, type=target, spellId=437809
		[  9.01] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Snui: Holy Fire] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, Player-5826-024EEB02, Snui, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
			 Triggered 2x, delta times: 9.01, 58.3
		[ 23.59] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Abdizz: Holy Fire] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, Player-5826-024C3FC3, Abdizz, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
		Unknown trigger
		[ 52.73] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Tisakyle: Holy Fire] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, Player-5826-026C3CA7, Tisakyle, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
	Mortal Lash on >%s<, type=target, spellId=437847
		[  6.37] SPELL_AURA_APPLIED: [Ogom the Wretched->Gotchya: Mortal Lash] Creature-0-5250-109-10825-218718-0000201317, Ogom the Wretched, 0xa48, Player-5826-020EC278, Gotchya, 0x512, 437847, Mortal Lash, 0, DEBUFF, 0
		[ 31.58] SPELL_AURA_APPLIED: [Ogom the Wretched->Schamuhne: Mortal Lash] Creature-0-5250-109-10825-218718-0000201317, Ogom the Wretched, 0xa48, Player-5826-023E0641, Schamuhne, 0x512, 437847, Mortal Lash, 0, DEBUFF, 0
			 Triggered 2x, delta times: 31.58, 25.14
	Agonizing Weakness, type=spell, spellId=437868
		[ 12.86] SPELL_CAST_START: [Ogom the Wretched: Agonizing Weakness] Creature-0-5250-109-10825-218718-0000201317, Ogom the Wretched, 0xa48, "", nil, 0x0, 437868, Agonizing Weakness, 0, 0
			 Triggered 3x, delta times: 12.86, 27.54, 27.52
	Shadow Sermon: Pain on >%s<, type=target, spellId=437927
		[103.96] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Tisakyle: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, Player-5826-026C3CA7, Tisakyle, 0x512, 437927, Shadow Sermon: Pain, 0, DEBUFF, 0
			 Triggered 2x, delta times: 103.96, 92.22
		[128.24] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Abdizz: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, Player-5826-024C3FC3, Abdizz, 0x512, 437927, Shadow Sermon: Pain, 0, DEBUFF, 0
		[150.86] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Snui: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, Player-5826-024EEB02, Snui, 0x512, 437927, Shadow Sermon: Pain, 0, DEBUFF, 0
			 Triggered 2x, delta times: 150.86, 22.66
		Unknown trigger

Special warnings:
	Smite - interrupt >%s<!, type=interrupt, spellId=437805
		[  3.14] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
			 Triggered 13x, delta times: 3.14, 9.72, 4.85, 6.49, 6.51, 4.84, 4.85, 8.07, 4.86, 4.84, 9.75, 4.83, 4.85
	Holy Nova - dodge attack, type=dodge, spellId=437817
		[  9.63] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
			 Triggered 11x, delta times: 9.63, 17.83, 17.78, 17.8, 17.81, 24.31, 17.76, 17.87, 21, 21.05, 22.67
	Mass Penance - dodge attack, type=dodge, spellId=437921
		[114.90] SPELL_CAST_START: [Jammal'an the Prophet: Mass Penance] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437921, Mass Penance, 0, 0
			 Triggered 6x, delta times: 114.9, 21.03, 21, 21.05, 22.67, 21.07
	Psychic Scream!, type=spell, spellId=437928
		[108.41] SPELL_CAST_START: [Jammal'an the Prophet: Psychic Scream] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437928, Psychic Scream, 0, 0
			 Triggered 3x, delta times: 108.41, 43.67, 45.34
	Power Word: Shield on >%s< - dispel now, type=dispel, spellId=437930
		[111.65] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, 437930, Power Word: Shield, 0, BUFF, 0
			 Triggered 6x, delta times: 111.65, 17.81, 16.16, 16.17, 21.05, 22.67

Yells:
	None

Voice pack sounds:
	VoicePack/dispelboss
		[111.65] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, 437930, Power Word: Shield, 0, BUFF, 0
			 Triggered 6x, delta times: 111.65, 17.81, 16.16, 16.17, 21.05, 22.67
	VoicePack/fearsoon
		[108.41] SPELL_CAST_START: [Jammal'an the Prophet: Psychic Scream] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437928, Psychic Scream, 0, 0
			 Triggered 3x, delta times: 108.41, 43.67, 45.34
	VoicePack/kickcast
		[  3.14] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
			 Triggered 13x, delta times: 3.14, 9.72, 4.85, 6.49, 6.51, 4.84, 4.85, 8.07, 4.86, 4.84, 9.75, 4.83, 4.85
	VoicePack/ptwo
		[ 85.72] SPELL_CAST_START: [Jammal'an the Prophet: Draining...] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437995, Draining..., 0, 0
	VoicePack/watchstep
		[  9.63] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
			 Triggered 11x, delta times: 9.63, 17.83, 17.78, 17.8, 17.81, 24.31, 17.76, 17.87, 21, 21.05, 22.67
		[114.90] SPELL_CAST_START: [Jammal'an the Prophet: Mass Penance] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437921, Mass Penance, 0, 0
			 Triggered 6x, delta times: 114.9, 21.03, 21, 21.05, 22.67, 21.07

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
	[  3.14] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[  6.37] SPELL_CAST_SUCCESS: [Ogom the Wretched->Gotchya: Mortal Lash] Creature-0-5250-109-10825-218718-0000201317, Ogom the Wretched, 0xa48, Player-5826-020EC278, Gotchya, 0x512, 437847, Mortal Lash, 0, 0
		StartTimer: 25.4, Mortal Lash
	[  6.37] SPELL_AURA_APPLIED: [Ogom the Wretched->Gotchya: Mortal Lash] Creature-0-5250-109-10825-218718-0000201317, Ogom the Wretched, 0xa48, Player-5826-020EC278, Gotchya, 0x512, 437847, Mortal Lash, 0, DEBUFF, 0
		ShowAnnounce: Mortal Lash on Gotchya
	[  7.99] SPELL_CAST_START: [Jammal'an the Prophet: Holy Fire] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437809, Holy Fire, 0, 0
		StartTimer: 13.4, Holy Fire
	[  9.01] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Snui: Holy Fire] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, Player-5826-024EEB02, Snui, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
		ShowAnnounce: Holy Fire on Beppoo, Shelisea, Snui, Tandanu, Vargana
	[  9.63] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[ 12.86] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 12.86] SPELL_CAST_START: [Ogom the Wretched: Agonizing Weakness] Creature-0-5250-109-10825-218718-0000201317, Ogom the Wretched, 0xa48, "", nil, 0x0, 437868, Agonizing Weakness, 0, 0
		ShowAnnounce: Agonizing Weakness
		StartTimer: 27.1, Agonizing Weakness
	[ 17.71] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 22.57] SPELL_CAST_START: [Jammal'an the Prophet: Holy Fire] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437809, Holy Fire, 0, 0
		StartTimer: 13.4, Holy Fire
	[ 23.59] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Abdizz: Holy Fire] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, Player-5826-024C3FC3, Abdizz, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
		ShowAnnounce: Holy Fire on Abdizz, Camie, Gotchya, Schamuhne, Tandanu
	[ 24.20] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 27.46] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[ 30.71] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 31.58] SPELL_CAST_SUCCESS: [Ogom the Wretched->Schamuhne: Mortal Lash] Creature-0-5250-109-10825-218718-0000201317, Ogom the Wretched, 0xa48, Player-5826-023E0641, Schamuhne, 0x512, 437847, Mortal Lash, 0, 0
		StartTimer: 25.4, Mortal Lash
	[ 31.58] SPELL_AURA_APPLIED: [Ogom the Wretched->Schamuhne: Mortal Lash] Creature-0-5250-109-10825-218718-0000201317, Ogom the Wretched, 0xa48, Player-5826-023E0641, Schamuhne, 0x512, 437847, Mortal Lash, 0, DEBUFF, 0
		ShowAnnounce: Mortal Lash on Schamuhne
	[ 35.55] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 37.16] SPELL_CAST_START: [Jammal'an the Prophet: Holy Fire] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437809, Holy Fire, 0, 0
		StartTimer: 13.4, Holy Fire
	Unknown trigger
		ShowAnnounce: Holy Fire on Elemento, Muhscle, Tandanu, Vargana
	[ 40.40] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 40.40] SPELL_CAST_START: [Ogom the Wretched: Agonizing Weakness] Creature-0-5250-109-10825-218718-0000201317, Ogom the Wretched, 0xa48, "", nil, 0x0, 437868, Agonizing Weakness, 0, 0
		ShowAnnounce: Agonizing Weakness
		StartTimer: 27.1, Agonizing Weakness
	[ 45.24] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[ 48.47] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 51.71] SPELL_CAST_START: [Jammal'an the Prophet: Holy Fire] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437809, Holy Fire, 0, 0
		StartTimer: 13.4, Holy Fire
	[ 52.73] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Tisakyle: Holy Fire] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, Player-5826-026C3CA7, Tisakyle, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
		ShowAnnounce: Holy Fire on Beppoo, Discomuh, Illiath, Shelisea, Tisakyle
	[ 53.33] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 56.70] SPELL_CAST_SUCCESS: [Ogom the Wretched->Schamuhne: Mortal Lash] Creature-0-5250-109-10825-218718-0000201317, Ogom the Wretched, 0xa48, Player-5826-023E0641, Schamuhne, 0x512, 437847, Mortal Lash, 0, 0
		StartTimer: 25.4, Mortal Lash
	[ 56.72] SPELL_AURA_APPLIED: [Ogom the Wretched->Schamuhne: Mortal Lash] Creature-0-5250-109-10825-218718-0000201317, Ogom the Wretched, 0xa48, Player-5826-023E0641, Schamuhne, 0x512, 437847, Mortal Lash, 0, DEBUFF, 0
		ShowAnnounce: Mortal Lash on Schamuhne
	[ 58.17] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 63.04] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[ 66.29] SPELL_CAST_START: [Jammal'an the Prophet: Holy Fire] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437809, Holy Fire, 0, 0
		StartTimer: 13.4, Holy Fire
	[ 67.31] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Snui: Holy Fire] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, Player-5826-024EEB02, Snui, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
		ShowAnnounce: Holy Fire on Elemento, Muhscle, Rajkan, Shelisea, Snui
	[ 67.92] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 67.92] SPELL_CAST_START: [Ogom the Wretched: Agonizing Weakness] Creature-0-5250-109-10825-218718-0000201317, Ogom the Wretched, 0xa48, "", nil, 0x0, 437868, Agonizing Weakness, 0, 0
		ShowAnnounce: Agonizing Weakness
		StartTimer: 27.1, Agonizing Weakness
	[ 72.75] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 77.60] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 80.85] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[ 82.49] UNIT_DIED: [->Ogom the Wretched] "", nil, 0x0, Creature-0-5250-109-10825-218718-0000201317, Ogom the Wretched, 0xa48, -1, false, 0, 0
		StopTimer: Timer437868cd
	[ 85.72] SPELL_CAST_START: [Jammal'an the Prophet: Draining...] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437995, Draining..., 0, 0
		ShowAnnounce: Stage 2
		PlaySound: VoicePack/ptwo
		StopTimer: Timer437817cd
		StartTimer: 15.7, Shadow Sermon: Pain
		StartTimer: 17.7, Holy Nova
		StartTimer: 22.6, Psychic Scream
		StartTimer: 25.4, Power Word: Shield
		StartTimer: 28.7, Mass Penance
	[101.94] SPELL_CAST_START: [Jammal'an the Prophet: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437927, Shadow Sermon: Pain, 0, 0
		StartTimer: 22.2, Shadow Sermon: Pain
	[103.96] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Tisakyle: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, Player-5826-026C3CA7, Tisakyle, 0x512, 437927, Shadow Sermon: Pain, 0, DEBUFF, 0
		ShowAnnounce: Shadow Sermon: Pain on Beppoo, Illiath, Krashnakh, Muhnshine, Obile, Shelisea, Tandanu and 3 others
	[105.16] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[108.41] SPELL_CAST_START: [Jammal'an the Prophet: Psychic Scream] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437928, Psychic Scream, 0, 0
		ShowSpecialWarning: Psychic Scream!
		PlaySound: VoicePack/fearsoon
		StartTimer: 43.7, Psychic Scream
	[111.65] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, 437930, Power Word: Shield, 0, BUFF, 0
		ShowSpecialWarning: Power Word: Shield on Jammal'an the Prophet - dispel now
		PlaySound: VoicePack/dispelboss
	[111.65] SPELL_CAST_SUCCESS: [Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437930, Power Word: Shield, 0, 0
		StartTimer: 15.8, Power Word: Shield
	[114.90] SPELL_CAST_START: [Jammal'an the Prophet: Mass Penance] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437921, Mass Penance, 0, 0
		ShowSpecialWarning: Mass Penance - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 21, Mass Penance
	[122.92] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[126.23] SPELL_CAST_START: [Jammal'an the Prophet: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437927, Shadow Sermon: Pain, 0, 0
		StartTimer: 22.2, Shadow Sermon: Pain
	[128.24] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Abdizz: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, Player-5826-024C3FC3, Abdizz, 0x512, 437927, Shadow Sermon: Pain, 0, DEBUFF, 0
		ShowAnnounce: Shadow Sermon: Pain on Discomuh, Hantha, Krashnakh, Muhnshine, Obile, Tandanu, Vargana and 3 others
	[129.46] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, 437930, Power Word: Shield, 0, BUFF, 0
		ShowSpecialWarning: Power Word: Shield on Jammal'an the Prophet - dispel now
		PlaySound: VoicePack/dispelboss
	[129.46] SPELL_CAST_SUCCESS: [Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437930, Power Word: Shield, 0, 0
		StartTimer: 15.8, Power Word: Shield
	[135.93] SPELL_CAST_START: [Jammal'an the Prophet: Mass Penance] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437921, Mass Penance, 0, 0
		ShowSpecialWarning: Mass Penance - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 21, Mass Penance
	[140.79] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[145.62] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, 437930, Power Word: Shield, 0, BUFF, 0
		ShowSpecialWarning: Power Word: Shield on Jammal'an the Prophet - dispel now
		PlaySound: VoicePack/dispelboss
	[145.62] SPELL_CAST_SUCCESS: [Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437930, Power Word: Shield, 0, 0
		StartTimer: 15.8, Power Word: Shield
	[148.84] SPELL_CAST_START: [Jammal'an the Prophet: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437927, Shadow Sermon: Pain, 0, 0
		StartTimer: 22.2, Shadow Sermon: Pain
	[150.86] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Snui: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, Player-5826-024EEB02, Snui, 0x512, 437927, Shadow Sermon: Pain, 0, DEBUFF, 0
		ShowAnnounce: Shadow Sermon: Pain on Beppoo, Elemento, Hantha, Krashnakh, Muhnshine, Rajkan, Tandanu and 3 others
	[152.08] SPELL_CAST_START: [Jammal'an the Prophet: Psychic Scream] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437928, Psychic Scream, 0, 0
		ShowSpecialWarning: Psychic Scream!
		PlaySound: VoicePack/fearsoon
		StartTimer: 43.7, Psychic Scream
	[156.93] SPELL_CAST_START: [Jammal'an the Prophet: Mass Penance] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437921, Mass Penance, 0, 0
		ShowSpecialWarning: Mass Penance - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 21, Mass Penance
	[161.79] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, 437930, Power Word: Shield, 0, BUFF, 0
		ShowSpecialWarning: Power Word: Shield on Jammal'an the Prophet - dispel now
		PlaySound: VoicePack/dispelboss
	[161.79] SPELL_CAST_SUCCESS: [Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437930, Power Word: Shield, 0, 0
		StartTimer: 15.8, Power Word: Shield
	[161.79] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[171.51] SPELL_CAST_START: [Jammal'an the Prophet: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437927, Shadow Sermon: Pain, 0, 0
		StartTimer: 22.2, Shadow Sermon: Pain
	[173.52] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Snui: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, Player-5826-024EEB02, Snui, 0x512, 437927, Shadow Sermon: Pain, 0, DEBUFF, 0
		ShowAnnounce: Shadow Sermon: Pain on Elemento, Gotchya, Hantha, Illiath, Muhnshine, Shelisea, Tandanu and 3 others
	[177.98] SPELL_CAST_START: [Jammal'an the Prophet: Mass Penance] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437921, Mass Penance, 0, 0
		ShowSpecialWarning: Mass Penance - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 21, Mass Penance
	[182.84] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, 437930, Power Word: Shield, 0, BUFF, 0
		ShowSpecialWarning: Power Word: Shield on Jammal'an the Prophet - dispel now
		PlaySound: VoicePack/dispelboss
	[182.84] SPELL_CAST_SUCCESS: [Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437930, Power Word: Shield, 0, 0
		StartTimer: 15.8, Power Word: Shield
	[182.84] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[194.18] SPELL_CAST_START: [Jammal'an the Prophet: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437927, Shadow Sermon: Pain, 0, 0
		StartTimer: 22.2, Shadow Sermon: Pain
	[196.18] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Tisakyle: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, Player-5826-026C3CA7, Tisakyle, 0x512, 437927, Shadow Sermon: Pain, 0, DEBUFF, 0
		ShowAnnounce: Shadow Sermon: Pain on Discomuh, Elemento, Hantha, Krashnakh, Muhscle, Tandanu, Vargana and 3 others
	[197.42] SPELL_CAST_START: [Jammal'an the Prophet: Psychic Scream] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437928, Psychic Scream, 0, 0
		ShowSpecialWarning: Psychic Scream!
		PlaySound: VoicePack/fearsoon
		StartTimer: 43.7, Psychic Scream
	[200.65] SPELL_CAST_START: [Jammal'an the Prophet: Mass Penance] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437921, Mass Penance, 0, 0
		ShowSpecialWarning: Mass Penance - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 21, Mass Penance
	[205.51] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, 437930, Power Word: Shield, 0, BUFF, 0
		ShowSpecialWarning: Power Word: Shield on Jammal'an the Prophet - dispel now
		PlaySound: VoicePack/dispelboss
	[205.51] SPELL_CAST_SUCCESS: [Jammal'an the Prophet: Power Word: Shield] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437930, Power Word: Shield, 0, 0
		StartTimer: 15.8, Power Word: Shield
	[205.51] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[216.85] SPELL_CAST_START: [Jammal'an the Prophet: Shadow Sermon: Pain] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437927, Shadow Sermon: Pain, 0, 0
		StartTimer: 22.2, Shadow Sermon: Pain
	Unknown trigger
		ShowAnnounce: Shadow Sermon: Pain on Beppoo, Camie, Discomuh, Elemento, Gotchya, Obile, Tandanu and one other
	[221.72] SPELL_CAST_START: [Jammal'an the Prophet: Mass Penance] Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437921, Mass Penance, 0, 0
		ShowSpecialWarning: Mass Penance - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 21, Mass Penance
	[224.94] UNIT_DIED: [->Jammal'an the Prophet] "", nil, 0x0, Creature-0-5250-109-10825-218721-0000201317, Jammal'an the Prophet, 0xa48, -1, false, 0, 0
		EndCombat: All Mobs Down
]]
