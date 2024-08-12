DBM.Test:Report[[
Test: SoD/ST/JammalanAndOgom/Jammalan-First
Mod:  DBM-Raids-Vanilla/JammalanAndOgomSoD

Findings:
	Unused event registration: SPELL_AURA_APPLIED 437927 (Shadow Sermon: Pain)
	Unused event registration: SPELL_AURA_APPLIED 437930 (Power Word: Shield)
	Unused event registration: SPELL_CAST_START 437921 (Mass Penance)
	Unused event registration: SPELL_CAST_START 437927 (Shadow Sermon: Pain)
	Unused event registration: SPELL_CAST_START 437928 (Psychic Scream)
	Unused event registration: SPELL_CAST_START 437995 (Draining...)
	Unused event registration: SPELL_CAST_SUCCESS 437930 (Power Word: Shield)

Unused objects:
	[Announce] Shadow Sermon: Pain on >%s<, type=target, spellId=437927
	[Announce] Power Word: Shield on >%s<, type=target, spellId=437930
	[Special Warning] Mass Penance - dodge attack, type=dodge, spellId=437921
	[Special Warning] Psychic Scream!, type=spell, spellId=437928
	[Special Warning] Power Word: Shield on >%s< - dispel now, type=dispel, spellId=437930
	[Timer] Mass Penance, time=21.00, type=cd, spellId=437921
	[Timer] Shadow Sermon: Pain, time=22.20, type=cd, spellId=437927
	[Timer] Psychic Scream, time=43.70, type=cd, spellId=437928
	[Timer] Power Word: Shield, time=15.80, type=cd, spellId=437930

Timers:
	Holy Fire, time=13.40, type=cd, spellId=437809, triggerDeltas = 0.00, 6.64, 14.56, 12.98, 14.56
		[  0.00] ENCOUNTER_START: 2957, Jammal'an and Ogom, 215, 20, 0
		[  6.64] SPELL_CAST_START: [Jammal'an the Prophet: Holy Fire] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437809, Holy Fire, 0, 0
			 Triggered 4x, delta times: 6.64, 14.56, 12.98, 14.56
	Holy Nova, time=17.30, type=cd, spellId=437817, triggerDeltas = 0.00, 8.26, 18.84, 18.40, 19.45
		[  0.00] ENCOUNTER_START: 2957, Jammal'an and Ogom, 215, 20, 0
		[  8.26] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
			 Triggered 4x, delta times: 8.26, 18.84, 18.40, 19.45
		[ 66.59] UNIT_DIED: [->Jammal'an the Prophet] "", nil, 0x0, Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, -1, false, 0, 0
	Mortal Lash, time=25.40, type=cd, spellId=437847, triggerDeltas = 0.00, 6.64, 25.90, 25.94
		[  0.00] ENCOUNTER_START: 2957, Jammal'an and Ogom, 215, 20, 0
		[  6.64] SPELL_CAST_SUCCESS: [Ogom the Wretched->Simplyorc: Mortal Lash] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 437847, Mortal Lash, 0, 0
			 Triggered 2x, delta times: 6.64, 25.90
		[ 58.48] SPELL_CAST_SUCCESS: [Ogom the Wretched->Mafakacoil: Mortal Lash] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 437847, Mortal Lash, 0, 0
		[ 66.59] SPELL_CAST_START: [Ogom the Wretched: Eating...] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437951, Eating..., 0, 0
	Agonizing Weakness, time=27.10, type=cd, spellId=437868, triggerDeltas = 0.00, 12.68, 27.97
		[  0.00] ENCOUNTER_START: 2957, Jammal'an and Ogom, 215, 20, 0
		[ 12.68] SPELL_CAST_START: [Ogom the Wretched: Agonizing Weakness] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437868, Agonizing Weakness, 0, 0
			 Triggered 2x, delta times: 12.68, 27.97
		[ 66.59] SPELL_CAST_START: [Ogom the Wretched: Eating...] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437951, Eating..., 0, 0
	Consecration, time=15.80, type=cd, spellId=437884, triggerDeltas = 66.59, 12.96, 16.16, 16.20, 16.16, 16.17
		[ 66.59] SPELL_CAST_START: [Ogom the Wretched: Eating...] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437951, Eating..., 0, 0
		[ 79.55] SPELL_CAST_SUCCESS: [Ogom the Wretched: Consecration] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437884, Consecration, 0, 0
			 Triggered 5x, delta times: 79.55, 16.16, 16.20, 16.16, 16.17
	Hammers of Justice, time=35.00, type=next, spellId=437915, triggerDeltas = 66.59, 34.76, 34.05
		[ 66.59] SPELL_CAST_START: [Ogom the Wretched: Eating...] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437951, Eating..., 0, 0
		[ 97.33] SPELL_CAST_START: [Ogom the Wretched: Hammers of Justice] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437915, Hammers of Justice, 0, 0
			 Triggered 2x, delta times: 97.33, 34.06
		[101.35] SPELL_CAST_SUCCESS: [Ogom the Wretched: Hammers of Justice] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437915, Hammers of Justice, 0, 0
			 Triggered 2x, delta times: 101.35, 34.05
	Divine Storm, time=32.40, type=cd, spellId=437920, triggerDeltas = 66.59, 17.68, 32.39, 31.78
		[ 66.59] SPELL_CAST_START: [Ogom the Wretched: Eating...] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437951, Eating..., 0, 0
		[ 82.78] SPELL_CAST_START: [Ogom the Wretched: Divine Storm] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437920, Divine Storm, 0, 0
			 Triggered 3x, delta times: 82.78, 32.37, 31.79
		[ 84.27] SPELL_CAST_SUCCESS: [Ogom the Wretched: Divine Storm] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437920, Divine Storm, 0, 0
			 Triggered 3x, delta times: 84.27, 32.39, 31.78

Announces:
	Stage 2, type=stage, spellId=<none>, triggerDeltas = 66.59
		[ 66.59] SPELL_CAST_START: [Ogom the Wretched: Eating...] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437951, Eating..., 0, 0
	Holy Fire on >%s<, type=target, spellId=437809, triggerDeltas = 7.64, 27.56, 14.54
		[  7.64] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Swain: Holy Fire] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, Player-5826-0254EA77, Swain, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
		[ 35.20] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Luschimage: Holy Fire] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, Player-5826-022F30B2, Luschimage, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
		[ 49.74] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Shabbyx: Holy Fire] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, Player-5826-02751148, Shabbyx, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
	Mortal Lash on >%s<, type=target, spellId=437847, triggerDeltas = 6.64, 25.90, 25.94
		[  6.64] SPELL_AURA_APPLIED: [Ogom the Wretched->Simplyorc: Mortal Lash] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 437847, Mortal Lash, 0, DEBUFF, 0
			 Triggered 2x, delta times: 6.64, 25.90
		[ 58.48] SPELL_AURA_APPLIED: [Ogom the Wretched->Mafakacoil: Mortal Lash] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 437847, Mortal Lash, 0, DEBUFF, 0
	Agonizing Weakness, type=spell, spellId=437868, triggerDeltas = 12.68, 27.97
		[ 12.68] SPELL_CAST_START: [Ogom the Wretched: Agonizing Weakness] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437868, Agonizing Weakness, 0, 0
			 Triggered 2x, delta times: 12.68, 27.97
	Consecration, type=spell, spellId=437884, triggerDeltas = 79.55, 16.16, 16.20, 16.16, 16.17
		[ 79.55] SPELL_CAST_SUCCESS: [Ogom the Wretched: Consecration] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437884, Consecration, 0, 0
			 Triggered 5x, delta times: 79.55, 16.16, 16.20, 16.16, 16.17
	Casting Hammers of Justice: 4.0 sec, type=cast, spellId=437915, triggerDeltas = 97.33, 34.06
		[ 97.33] SPELL_CAST_START: [Ogom the Wretched: Hammers of Justice] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437915, Hammers of Justice, 0, 0
			 Triggered 2x, delta times: 97.33, 34.06
	Casting Divine Storm: 1.5 sec, type=cast, spellId=437920, triggerDeltas = 82.78, 32.37, 31.79
		[ 82.78] SPELL_CAST_START: [Ogom the Wretched: Divine Storm] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437920, Divine Storm, 0, 0
			 Triggered 3x, delta times: 82.78, 32.37, 31.79

Special warnings:
	Smite - interrupt >%s<!, type=interrupt, spellId=437805, triggerDeltas = 3.42, 7.65, 4.83, 8.54, 0.66, 5.82, 4.88, 4.85, 9.71, 6.49, 4.87
		[  3.42] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
			 Triggered 11x, delta times: 3.42, 7.65, 4.83, 8.54, 0.66, 5.82, 4.88, 4.85, 9.71, 6.49, 4.87
	Holy Nova - dodge attack, type=dodge, spellId=437817, triggerDeltas = 8.26, 18.84, 18.40, 19.45
		[  8.26] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
			 Triggered 4x, delta times: 8.26, 18.84, 18.40, 19.45
	%s damage - move away, type=gtfo, spellId=437884, triggerDeltas = 81.54, 8.02, 14.18, 4.00
		[ 81.54] SPELL_MISSED: [Ogom the Wretched->Snuqz: Consecration] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, Player-5826-02520AE4, Snuqz, 0x511, 437887, Consecration, 0, 0
		[ 89.56] SPELL_DAMAGE: [Ogom the Wretched->Snuqz: Consecration] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, Player-5826-02520AE4, Snuqz, 0x511, 437887, Consecration, 0, 0
			 Triggered 3x, delta times: 89.56, 14.18, 4.00

Yells:
	None

Voice pack sounds:
	VoicePack/kickcast
		[  3.42] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
			 Triggered 11x, delta times: 3.42, 7.65, 4.83, 8.54, 0.66, 5.82, 4.88, 4.85, 9.71, 6.49, 4.87
	VoicePack/ptwo
		[ 66.59] SPELL_CAST_START: [Ogom the Wretched: Eating...] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437951, Eating..., 0, 0
	VoicePack/watchfeet
		[ 81.54] SPELL_MISSED: [Ogom the Wretched->Snuqz: Consecration] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, Player-5826-02520AE4, Snuqz, 0x511, 437887, Consecration, 0, 0
		[ 89.56] SPELL_DAMAGE: [Ogom the Wretched->Snuqz: Consecration] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, Player-5826-02520AE4, Snuqz, 0x511, 437887, Consecration, 0, 0
			 Triggered 3x, delta times: 89.56, 14.18, 4.00
	VoicePack/watchstep
		[  8.26] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
			 Triggered 4x, delta times: 8.26, 18.84, 18.40, 19.45

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 2957, Jammal'an and Ogom, 215, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_START 437805 437868 437817 437995 437928 437921 437809 437927 437915 437951 437920, SPELL_CAST_SUCCESS 437847 437930 437915 437884 437920, SPELL_AURA_APPLIED 437809 437847 437927 437930, UNIT_DIED, SPELL_DAMAGE 437887, SPELL_MISSED 437887
		StartTimer: 7.5, Holy Fire
		StartTimer: 6.0, Mortal Lash
		StartTimer: 8.0, Holy Nova
		StartTimer: 12.5, Agonizing Weakness
	[  3.42] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[  6.64] SPELL_CAST_SUCCESS: [Ogom the Wretched->Simplyorc: Mortal Lash] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 437847, Mortal Lash, 0, 0
		StartTimer: 25.4, Mortal Lash
	[  6.64] SPELL_CAST_START: [Jammal'an the Prophet: Holy Fire] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437809, Holy Fire, 0, 0
		StartTimer: 13.4, Holy Fire
	[  6.64] SPELL_AURA_APPLIED: [Ogom the Wretched->Simplyorc: Mortal Lash] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 437847, Mortal Lash, 0, DEBUFF, 0
		ShowAnnounce: Mortal Lash on Simplyorc
	[  7.64] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Swain: Holy Fire] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, Player-5826-0254EA77, Swain, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
		ShowAnnounce: Holy Fire on Simplyorc, Vivix, Mafakacoil, PlayerName, Swain
	[  8.26] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[ 11.07] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 12.68] SPELL_CAST_START: [Ogom the Wretched: Agonizing Weakness] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437868, Agonizing Weakness, 0, 0
		ShowAnnounce: Agonizing Weakness
		StartTimer: 27.1, Agonizing Weakness
	[ 15.90] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 21.20] SPELL_CAST_START: [Jammal'an the Prophet: Holy Fire] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437809, Holy Fire, 0, 0
		StartTimer: 13.4, Holy Fire
	[ 24.44] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 25.10] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 27.10] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[ 30.92] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 32.54] SPELL_CAST_SUCCESS: [Ogom the Wretched->Simplyorc: Mortal Lash] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 437847, Mortal Lash, 0, 0
		StartTimer: 25.4, Mortal Lash
	[ 32.54] SPELL_AURA_APPLIED: [Ogom the Wretched->Simplyorc: Mortal Lash] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 437847, Mortal Lash, 0, DEBUFF, 0
		ShowAnnounce: Mortal Lash on Simplyorc
	[ 34.18] SPELL_CAST_START: [Jammal'an the Prophet: Holy Fire] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437809, Holy Fire, 0, 0
		StartTimer: 13.4, Holy Fire
	[ 35.20] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Luschimage: Holy Fire] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, Player-5826-022F30B2, Luschimage, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
		ShowAnnounce: Holy Fire on Holyforce, Tandanu, Gotchya, Sandstahl, Luschimage
	[ 35.80] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 40.65] SPELL_CAST_START: [Ogom the Wretched: Agonizing Weakness] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437868, Agonizing Weakness, 0, 0
		ShowAnnounce: Agonizing Weakness
		StartTimer: 27.1, Agonizing Weakness
	[ 40.65] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 45.50] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[ 48.74] SPELL_CAST_START: [Jammal'an the Prophet: Holy Fire] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437809, Holy Fire, 0, 0
		StartTimer: 13.4, Holy Fire
	[ 49.74] SPELL_AURA_APPLIED: [Jammal'an the Prophet->Shabbyx: Holy Fire] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, Player-5826-02751148, Shabbyx, 0x512, 437809, Holy Fire, 0, DEBUFF, 0
		ShowAnnounce: Holy Fire on Mazl, Sandstahl, Stahlsand, PlayerName, Shabbyx
	[ 50.36] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 56.85] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 58.48] SPELL_CAST_SUCCESS: [Ogom the Wretched->Mafakacoil: Mortal Lash] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 437847, Mortal Lash, 0, 0
		StartTimer: 25.4, Mortal Lash
	[ 58.48] SPELL_AURA_APPLIED: [Ogom the Wretched->Mafakacoil: Mortal Lash] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 437847, Mortal Lash, 0, DEBUFF, 0
		ShowAnnounce: Mortal Lash on Mafakacoil
	[ 61.72] SPELL_CAST_START: [Jammal'an the Prophet: Smite] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437805, Smite, 0, 0
		ShowSpecialWarning: Smite - interrupt Jammal'an the Prophet!
		PlaySound: VoicePack/kickcast
	[ 64.95] SPELL_CAST_START: [Jammal'an the Prophet: Holy Nova] Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, "", nil, 0x0, 437817, Holy Nova, 0, 0
		ShowSpecialWarning: Holy Nova - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 17.3, Holy Nova
	[ 66.59] UNIT_DIED: [->Jammal'an the Prophet] "", nil, 0x0, Creature-0-5208-109-4570-218721-00003BC782, Jammal'an the Prophet, 0xa48, -1, false, 0, 0
		StopTimer: Timer437817cd
	[ 66.59] SPELL_CAST_START: [Ogom the Wretched: Eating...] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437951, Eating..., 0, 0
		ShowAnnounce: Stage 2
		PlaySound: VoicePack/ptwo
		StopTimer: Timer437847cd
		StopTimer: Timer437868cd
		StartTimer: 35.0, Hammers of Justice
		StartTimer: 13.0, Consecration
		StartTimer: 17.4, Divine Storm
	[ 79.55] SPELL_CAST_SUCCESS: [Ogom the Wretched: Consecration] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437884, Consecration, 0, 0
		StartTimer: 15.8, Consecration
		ShowAnnounce: Consecration
	[ 81.54] SPELL_MISSED: [Ogom the Wretched->Snuqz: Consecration] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, Player-5826-02520AE4, Snuqz, 0x511, 437887, Consecration, 0, 0
		AntiSpam: 1
		ShowSpecialWarning: Consecration damage - move away
		PlaySound: VoicePack/watchfeet
	[ 82.78] SPELL_CAST_START: [Ogom the Wretched: Divine Storm] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437920, Divine Storm, 0, 0
		ShowAnnounce: Casting Divine Storm: 1.5 sec
		UpdateTimer: Timer437920cd, 30.9, 32.4
	[ 84.27] SPELL_CAST_SUCCESS: [Ogom the Wretched: Divine Storm] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437920, Divine Storm, 0, 0
		StartTimer: 32.4, Divine Storm
	[ 89.56] SPELL_DAMAGE: [Ogom the Wretched->Snuqz: Consecration] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, Player-5826-02520AE4, Snuqz, 0x511, 437887, Consecration, 0, 0
		AntiSpam: 1
			Filtered: 2x SPELL_DAMAGE at 90.57, 91.56
		ShowSpecialWarning: Consecration damage - move away
		PlaySound: VoicePack/watchfeet
	[ 95.71] SPELL_CAST_SUCCESS: [Ogom the Wretched: Consecration] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437884, Consecration, 0, 0
		StartTimer: 15.8, Consecration
		ShowAnnounce: Consecration
	[ 97.33] SPELL_CAST_START: [Ogom the Wretched: Hammers of Justice] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437915, Hammers of Justice, 0, 0
		ShowAnnounce: Casting Hammers of Justice: 4.0 sec
		UpdateTimer: Timer437915next, 31, 35
	[101.35] SPELL_CAST_SUCCESS: [Ogom the Wretched: Hammers of Justice] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437915, Hammers of Justice, 0, 0
		StartTimer: 35.0, Hammers of Justice
	[103.74] SPELL_DAMAGE: [Ogom the Wretched->Snuqz: Consecration] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, Player-5826-02520AE4, Snuqz, 0x511, 437887, Consecration, 0, 0
		AntiSpam: 1
		ShowSpecialWarning: Consecration damage - move away
		PlaySound: VoicePack/watchfeet
	[107.74] SPELL_DAMAGE: [Ogom the Wretched->Snuqz: Consecration] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, Player-5826-02520AE4, Snuqz, 0x511, 437887, Consecration, 0, 0
		AntiSpam: 1
			Filtered: 3x SPELL_DAMAGE at 108.72, 109.73, 110.72
		ShowSpecialWarning: Consecration damage - move away
		PlaySound: VoicePack/watchfeet
	[111.91] SPELL_CAST_SUCCESS: [Ogom the Wretched: Consecration] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437884, Consecration, 0, 0
		StartTimer: 15.8, Consecration
		ShowAnnounce: Consecration
	[115.15] SPELL_CAST_START: [Ogom the Wretched: Divine Storm] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437920, Divine Storm, 0, 0
		ShowAnnounce: Casting Divine Storm: 1.5 sec
		UpdateTimer: Timer437920cd, 30.9, 32.4
	[116.66] SPELL_CAST_SUCCESS: [Ogom the Wretched: Divine Storm] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437920, Divine Storm, 0, 0
		StartTimer: 32.4, Divine Storm
	[128.07] SPELL_CAST_SUCCESS: [Ogom the Wretched: Consecration] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437884, Consecration, 0, 0
		StartTimer: 15.8, Consecration
		ShowAnnounce: Consecration
	[131.39] SPELL_CAST_START: [Ogom the Wretched: Hammers of Justice] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437915, Hammers of Justice, 0, 0
		ShowAnnounce: Casting Hammers of Justice: 4.0 sec
		UpdateTimer: Timer437915next, 31, 35
	[135.40] SPELL_CAST_SUCCESS: [Ogom the Wretched: Hammers of Justice] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437915, Hammers of Justice, 0, 0
		StartTimer: 35.0, Hammers of Justice
	[144.24] SPELL_CAST_SUCCESS: [Ogom the Wretched: Consecration] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437884, Consecration, 0, 0
		StartTimer: 15.8, Consecration
		ShowAnnounce: Consecration
	[146.94] SPELL_CAST_START: [Ogom the Wretched: Divine Storm] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437920, Divine Storm, 0, 0
		ShowAnnounce: Casting Divine Storm: 1.5 sec
		UpdateTimer: Timer437920cd, 30.9, 32.4
	[148.44] SPELL_CAST_SUCCESS: [Ogom the Wretched: Divine Storm] Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, "", nil, 0x0, 437920, Divine Storm, 0, 0
		StartTimer: 32.4, Divine Storm
	[150.73] UNIT_DIED: [->Ogom the Wretched] "", nil, 0x0, Creature-0-5208-109-4570-218718-00003BC782, Ogom the Wretched, 0xa48, -1, false, 0, 0
		EndCombat: All Mobs Down
]]
