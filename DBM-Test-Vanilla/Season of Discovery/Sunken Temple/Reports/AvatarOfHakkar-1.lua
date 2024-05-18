DBM.Test:Report[[
Test: SoD/ST/AvatarOfHakkar/1
Mod:  DBM-Raids-Vanilla/AvatarofHakkarSoD

Findings:
	Timer for spell ID 443975 (Spirit Chains) is triggered by event SPELL_CAST_SUCCESS 443964 (Spirit Chains)
	Timer for spell ID 444039 (Insanity) is triggered by event SPELL_CAST_SUCCESS 444761 (Hakkar)
	Timer for spell ID 444046 (Curse of Tongues) is triggered by event SPELL_CAST_SUCCESS 444761 (Hakkar)
	Timer for spell ID 444050 (Blood Nova) is triggered by event SPELL_CAST_SUCCESS 444761 (Hakkar)
	Timer for spell ID 444132 (Drain Blood) is triggered by event SPELL_CAST_SUCCESS 444761 (Hakkar)
	Timer for spell ID 444253 (Corrupted Blood) is triggered by event SPELL_CAST_SUCCESS 444761 (Hakkar)
	Yell for spell ID 444253 (Corrupted Blood) is triggered by event SPELL_AURA_APPLIED 444255 (Corrupted Blood)
	Announce for spell ID 444253 (Corrupted Blood) is triggered by event SPELL_AURA_APPLIED 444255 (Corrupted Blood)
	SpecialWarning for spell ID 444253 (Corrupted Blood) is triggered by event SPELL_AURA_APPLIED 444255 (Corrupted Blood)
	Unused event registration: SPELL_AURA_APPLIED 443964 (Spirit Chains)
	Unused event registration: SPELL_AURA_APPLIED 444046 (Curse of Tongues)
	Unused event registration: SPELL_AURA_APPLIED 444165 (Skeletal)

Unused objects:
	[Special Warning] Spirit Chains - move away from others, type=moveaway, spellId=443975
	[Special Warning] Curse of Tongues on you, type=you, spellId=444046
	[Special Warning] Skeletal on you, type=you, spellId=444165
	[Yell] Spirit Chains on PlayerName, type=yell, spellId=443975

Timers:
	Bubbling Blood, time=9.70, type=cd, spellId=443940
		[  0.00] ENCOUNTER_START: 2956, Avatar of Hakkar, 215, 20, 0
		[ 16.73] SPELL_CAST_START: [Hakkari Bloodkeeper: Bubbling Blood] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, "", nil, 0x0, 443940, Bubbling Blood, 0, 0
			 Triggered 4x, delta times: 16.73, 11.73, 10.93, 9.73
		[ 52.34] SPELL_CAST_SUCCESS: [Avatar of Hakkar: Hakkar] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444761, Hakkar, 0, 0
	Spirit Chains, time=16.20, type=cd, spellId=443975
		[  0.00] ENCOUNTER_START: 2956, Avatar of Hakkar, 215, 20, 0
		[ 21.58] SPELL_CAST_SUCCESS: [Hakkari Bloodkeeper: Spirit Chains] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, "", nil, 0x0, 443964, Spirit Chains, 0, 0
			 Triggered 2x, delta times: 21.58, 16.20
		[ 52.34] SPELL_CAST_SUCCESS: [Avatar of Hakkar: Hakkar] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444761, Hakkar, 0, 0
	Frightsome Howl, time=16.20, type=cd, spellId=443990
		[  0.00] ENCOUNTER_START: 2956, Avatar of Hakkar, 215, 20, 0
	Insanity (%s), time=27.50, type=cdcount, spellId=444039
		[ 52.34] SPELL_CAST_SUCCESS: [Avatar of Hakkar: Hakkar] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444761, Hakkar, 0, 0
		[ 65.27] SPELL_CAST_START: [Avatar of Hakkar: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444039, Insanity, 0, 0
			 Triggered 6x, delta times: 65.27, 27.50, 27.49, 34.00, 27.52, 27.54
	Curse of Tongues (%s), time=32.30, type=cdcount, spellId=444046
		[ 52.34] SPELL_CAST_SUCCESS: [Avatar of Hakkar: Hakkar] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444761, Hakkar, 0, 0
		[ 71.75] SPELL_CAST_START: [Avatar of Hakkar: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444046, Curse of Tongues, 0, 0
			 Triggered 6x, delta times: 71.75, 32.35, 32.08, 31.02, 31.41, 31.65
	Blood Nova (%s), time=8.00, type=cdcount, spellId=444050
		[ 52.34] SPELL_CAST_SUCCESS: [Avatar of Hakkar: Hakkar] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444761, Hakkar, 0, 0
		[ 60.41] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
			 Triggered 21x, delta times: 60.41, 9.66, 6.54, 6.61, 7.95, 8.09, 8.08, 9.25, 6.91, 8.11, 8.09, 12.94, 8.09, 8.07, 8.11, 12.70, 6.77, 8.09, 8.10, 11.30, 8.07
	Drain Blood (%s), time=34.00, type=cdcount, spellId=444132
		[ 52.34] SPELL_CAST_SUCCESS: [Avatar of Hakkar: Hakkar] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444761, Hakkar, 0, 0
		[ 78.11] SPELL_CAST_START: [Avatar of Hakkar: Drain Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444132, Drain Blood, 0, 0
			 Triggered 5x, delta times: 78.11, 34.06, 35.63, 35.60, 34.01
	Corrupted Blood (%s), time=16.20, type=cdcount, spellId=444253
		[ 52.34] SPELL_CAST_SUCCESS: [Avatar of Hakkar: Hakkar] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444761, Hakkar, 0, 0
		[ 68.52] SPELL_CAST_START: [Avatar of Hakkar: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444253, Corrupted Blood, 0, 0
			 Triggered 10x, delta times: 68.52, 16.18, 16.16, 17.77, 16.20, 21.06, 16.15, 16.23, 17.83, 16.17

Announces:
	Bubbling Blood, type=spell, spellId=443940
		[ 16.73] SPELL_CAST_START: [Hakkari Bloodkeeper: Bubbling Blood] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, "", nil, 0x0, 443940, Bubbling Blood, 0, 0
			 Triggered 4x, delta times: 16.73, 11.73, 10.93, 9.73
	Spirit Chains on >%s<, type=target, spellId=443975
		Unknown trigger
	Insanity on >%s<, type=target, spellId=444039
		[ 66.79] SPELL_AURA_APPLIED: [Avatar of Hakkar->Stahlsand: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02229CFC, Stahlsand, 0x512, 444039, Insanity, 0, BUFF, 0
		[ 94.29] SPELL_AURA_APPLIED: [Avatar of Hakkar->Shabbyx: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02751148, Shabbyx, 0x512, 444039, Insanity, 0, BUFF, 0
		[121.76] SPELL_AURA_APPLIED: [Avatar of Hakkar->Mafakacoil: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 444039, Insanity, 0, BUFF, 0
		[155.78] SPELL_AURA_APPLIED: [Avatar of Hakkar->Swain: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0254EA77, Swain, 0x512, 444039, Insanity, 0, BUFF, 0
		[183.28] SPELL_AURA_APPLIED: [Avatar of Hakkar->Bruzo: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 444039, Insanity, 0, BUFF, 0
		[210.84] SPELL_AURA_APPLIED: [Avatar of Hakkar->Biztog: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Pet-0-5250-0-3577-416-0200A0B145, Biztog, 0x1112, 444039, Insanity, 0, BUFF, 0
	Curse of Tongues on >%s<, type=target, spellId=444046
		Unknown trigger
	Blood Nova (%s), type=count, spellId=444050
		[ 60.41] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
			 Triggered 21x, delta times: 60.41, 9.66, 6.54, 6.61, 7.95, 8.09, 8.08, 9.25, 6.91, 8.11, 8.09, 12.94, 8.09, 8.07, 8.11, 12.70, 6.77, 8.09, 8.10, 11.30, 8.07
	Drain Blood (%s), type=count, spellId=444132
		[ 78.11] SPELL_CAST_START: [Avatar of Hakkar: Drain Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444132, Drain Blood, 0, 0
			 Triggered 4x, delta times: 78.11, 34.06, 35.63, 69.61
	Skeletal on >%s<, type=target, spellId=444165
		Unknown trigger
	Corrupted Blood on >%s<, type=target, spellId=444253
		[ 70.72] SPELL_AURA_APPLIED: [Avatar of Hakkar->Vivix: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-021B5C9D, Vivix, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		[ 85.93] SPELL_AURA_APPLIED: [Avatar of Hakkar->Shabbyx: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02751148, Shabbyx, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		Unknown trigger
		[136.09] SPELL_AURA_APPLIED: [Avatar of Hakkar->Bruzo: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
			 Triggered 2x, delta times: 136.09, 21.07
		[174.19] SPELL_AURA_APPLIED: [Avatar of Hakkar->Stahlsand: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02229CFC, Stahlsand, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		[190.34] SPELL_AURA_APPLIED: [Avatar of Hakkar->Arthritîs: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02233DFA, Arthritîs, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
			 Triggered 2x, delta times: 190.34, 33.96
		[208.22] SPELL_AURA_APPLIED: [Avatar of Hakkar->Luschimage: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-022F30B2, Luschimage, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		Unknown trigger
	>%s< cast Corrupted Blood on >%s<, type=targetsource, spellId=444253
		[230.31] SPELL_AURA_APPLIED: [Discokeks->Arthritîs: Corrupted Blood] Player-5826-0239D943, Discokeks, 0x512, Player-5826-02233DFA, Arthritîs, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0

Special warnings:
	%s damage - move away, type=gtfo, spellId=443953
		[ 31.34] SPELL_AURA_APPLIED: [->Holyforce: Bubbling Blood] "", nil, 0x0, Player-5826-01FA3CB9, Holyforce, 0x511, 443953, Bubbling Blood, 0, DEBUFF, 0
			 Triggered 2x, delta times: 31.34, 24.17
	Frightsome Howl - interrupt >%s<!, type=interrupt, spellId=443990
		[ 26.43] SPELL_CAST_START: [Hakkari Bloodkeeper: Frightsome Howl] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, "", nil, 0x0, 443990, Frightsome Howl, 0, 0
	Drain Blood - move to >%s<, type=moveto, spellId=444132
		[183.40] SPELL_CAST_START: [Avatar of Hakkar: Drain Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444132, Drain Blood, 0, 0
	Corrupted Blood - move away from others, type=moveaway, spellId=444253
		[174.13] SPELL_AURA_APPLIED: [Avatar of Hakkar->Holyforce: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-01FA3CB9, Holyforce, 0x511, 444255, Corrupted Blood, 0, DEBUFF, 0

Yells:
	Corrupted Blood on PlayerName, type=yell, spellId=444253
		[174.13] SPELL_AURA_APPLIED: [Avatar of Hakkar->Holyforce: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-01FA3CB9, Holyforce, 0x511, 444255, Corrupted Blood, 0, DEBUFF, 0

Voice pack sounds:
	VoicePack/kickcast
		[ 26.43] SPELL_CAST_START: [Hakkari Bloodkeeper: Frightsome Howl] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, "", nil, 0x0, 443990, Frightsome Howl, 0, 0
	VoicePack/movetotank
		[183.40] SPELL_CAST_START: [Avatar of Hakkar: Drain Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444132, Drain Blood, 0, 0
	VoicePack/scatter
		[174.13] SPELL_AURA_APPLIED: [Avatar of Hakkar->Holyforce: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-01FA3CB9, Holyforce, 0x511, 444255, Corrupted Blood, 0, DEBUFF, 0
	VoicePack/watchfeet
		[ 31.34] SPELL_AURA_APPLIED: [->Holyforce: Bubbling Blood] "", nil, 0x0, Player-5826-01FA3CB9, Holyforce, 0x511, 443953, Bubbling Blood, 0, DEBUFF, 0
			 Triggered 2x, delta times: 31.34, 24.17

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 2956, Avatar of Hakkar, 215, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_START 443940 443990 444050 444039 444253 444046 444132, SPELL_CAST_SUCCESS 443964 444761, SPELL_AURA_APPLIED 443964 444039 444255 444165 444046 443953
		StartTimer: 20.6, Bubbling Blood
		StartTimer: 25.5, Spirit Chains
		StartTimer: 31.9, Frightsome Howl
	[ 16.73] SPELL_CAST_START: [Hakkari Bloodkeeper: Bubbling Blood] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, "", nil, 0x0, 443940, Bubbling Blood, 0, 0
		ShowAnnounce: Bubbling Blood
		StartTimer: 9.7, Bubbling Blood
	[ 21.58] SPELL_CAST_SUCCESS: [Hakkari Bloodkeeper: Spirit Chains] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, "", nil, 0x0, 443964, Spirit Chains, 0, 0
		StartTimer: 16.2, Spirit Chains
	Unknown trigger
		ShowAnnounce: Spirit Chains on Simplyorc
	[ 26.43] SPELL_CAST_START: [Hakkari Bloodkeeper: Frightsome Howl] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, "", nil, 0x0, 443990, Frightsome Howl, 0, 0
		ShowSpecialWarning: Frightsome Howl - interrupt Hakkari Bloodkeeper!
		PlaySound: VoicePack/kickcast
	[ 28.46] SPELL_CAST_START: [Hakkari Bloodkeeper: Bubbling Blood] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, "", nil, 0x0, 443940, Bubbling Blood, 0, 0
		ShowAnnounce: Bubbling Blood
		StartTimer: 9.7, Bubbling Blood
	[ 31.34] SPELL_AURA_APPLIED: [->Holyforce: Bubbling Blood] "", nil, 0x0, Player-5826-01FA3CB9, Holyforce, 0x511, 443953, Bubbling Blood, 0, DEBUFF, 0
		AntiSpam: 1
		ShowSpecialWarning: Bubbling Blood damage - move away
		PlaySound: VoicePack/watchfeet
	[ 37.78] SPELL_CAST_SUCCESS: [Hakkari Bloodkeeper: Spirit Chains] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, "", nil, 0x0, 443964, Spirit Chains, 0, 0
		StartTimer: 16.2, Spirit Chains
	Unknown trigger
		ShowAnnounce: Spirit Chains on Shabbyx
	[ 39.39] SPELL_CAST_START: [Hakkari Bloodkeeper: Bubbling Blood] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, "", nil, 0x0, 443940, Bubbling Blood, 0, 0
		ShowAnnounce: Bubbling Blood
		StartTimer: 9.7, Bubbling Blood
	[ 49.12] SPELL_CAST_START: [Hakkari Bloodkeeper: Bubbling Blood] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, "", nil, 0x0, 443940, Bubbling Blood, 0, 0
		ShowAnnounce: Bubbling Blood
		StartTimer: 9.7, Bubbling Blood
	[ 52.34] SPELL_CAST_SUCCESS: [Avatar of Hakkar: Hakkar] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444761, Hakkar, 0, 0
		StopTimer: Timer443940cd
		StopTimer: Timer443975cd
		StartTimer: 6.4, Blood Nova (1)
		StartTimer: 12.9, Insanity (1)
		StartTimer: 16.1, Corrupted Blood (1)
		StartTimer: 19.4, Curse of Tongues (1)
		StartTimer: 25.9, Drain Blood (1)
	[ 55.51] SPELL_AURA_APPLIED: [->Holyforce: Bubbling Blood] "", nil, 0x0, Player-5826-01FA3CB9, Holyforce, 0x511, 443953, Bubbling Blood, 0, DEBUFF, 0
		AntiSpam: 1
			Filtered: 1x SPELL_AURA_APPLIED at 56.16
		ShowSpecialWarning: Bubbling Blood damage - move away
		PlaySound: VoicePack/watchfeet
	[ 60.41] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (1)
		StartTimer: 8, Blood Nova (2)
	[ 65.27] SPELL_CAST_START: [Avatar of Hakkar: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444039, Insanity, 0, 0
		StartTimer: 27.5, Insanity (2)
	[ 66.79] SPELL_AURA_APPLIED: [Avatar of Hakkar->Stahlsand: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02229CFC, Stahlsand, 0x512, 444039, Insanity, 0, BUFF, 0
		ShowAnnounce: Insanity on Stahlsand
	[ 68.52] SPELL_CAST_START: [Avatar of Hakkar: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444253, Corrupted Blood, 0, 0
		StartTimer: 16.2, Corrupted Blood (2)
	[ 70.07] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (2)
		StartTimer: 8, Blood Nova (3)
	[ 70.72] SPELL_AURA_APPLIED: [Avatar of Hakkar->Vivix: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-021B5C9D, Vivix, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		ShowAnnounce: Corrupted Blood on Mazl, Vivix
	[ 71.75] SPELL_CAST_START: [Avatar of Hakkar: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444046, Curse of Tongues, 0, 0
		StartTimer: 32.3, Curse of Tongues (2)
	[ 76.61] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (3)
		StartTimer: 8, Blood Nova (4)
	[ 78.11] SPELL_CAST_START: [Avatar of Hakkar: Drain Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444132, Drain Blood, 0, 0
		ShowAnnounce: Drain Blood (1)
		StartTimer: 34, Drain Blood (2)
	[ 83.22] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (4)
		StartTimer: 8, Blood Nova (5)
	Unknown trigger
		ShowAnnounce: Skeletal on Mazl, Simplyorc, Vivix
	[ 84.70] SPELL_CAST_START: [Avatar of Hakkar: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444253, Corrupted Blood, 0, 0
		StartTimer: 16.2, Corrupted Blood (3)
	[ 85.93] SPELL_AURA_APPLIED: [Avatar of Hakkar->Shabbyx: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02751148, Shabbyx, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		ShowAnnounce: Corrupted Blood on Shabbyx, Snuqz
	[ 91.17] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (5)
		StartTimer: 8, Blood Nova (6)
	[ 92.77] SPELL_CAST_START: [Avatar of Hakkar: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444039, Insanity, 0, 0
		StartTimer: 27.5, Insanity (3)
	[ 94.29] SPELL_AURA_APPLIED: [Avatar of Hakkar->Shabbyx: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02751148, Shabbyx, 0x512, 444039, Insanity, 0, BUFF, 0
		ShowAnnounce: Insanity on Shabbyx
	[ 99.26] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (6)
		StartTimer: 8, Blood Nova (7)
	[100.86] SPELL_CAST_START: [Avatar of Hakkar: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444253, Corrupted Blood, 0, 0
		StartTimer: 16.2, Corrupted Blood (4)
	Unknown trigger
		ShowAnnounce: Corrupted Blood on Simplyorc
	[104.10] SPELL_CAST_START: [Avatar of Hakkar: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444046, Curse of Tongues, 0, 0
		StartTimer: 32.3, Curse of Tongues (3)
	Unknown trigger
		ShowAnnounce: Curse of Tongues on Simplyorc
	[107.34] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (7)
		StartTimer: 8, Blood Nova (8)
	[112.17] SPELL_CAST_START: [Avatar of Hakkar: Drain Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444132, Drain Blood, 0, 0
		ShowAnnounce: Drain Blood (2)
		StartTimer: 34, Drain Blood (3)
	[116.59] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (8)
		StartTimer: 8, Blood Nova (9)
	Unknown trigger
		ShowAnnounce: Skeletal on Simplyorc, Snuqz
	[118.63] SPELL_CAST_START: [Avatar of Hakkar: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444253, Corrupted Blood, 0, 0
		StartTimer: 16.2, Corrupted Blood (5)
	[120.26] SPELL_CAST_START: [Avatar of Hakkar: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444039, Insanity, 0, 0
		StartTimer: 27.5, Insanity (4)
	[121.76] SPELL_AURA_APPLIED: [Avatar of Hakkar->Mafakacoil: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 444039, Insanity, 0, BUFF, 0
		ShowAnnounce: Insanity on Mafakacoil
	Unknown trigger
		ShowAnnounce: Corrupted Blood on Discokeks
	[123.50] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (9)
		StartTimer: 8, Blood Nova (10)
	[131.61] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (10)
		StartTimer: 8, Blood Nova (11)
	[134.83] SPELL_CAST_START: [Avatar of Hakkar: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444253, Corrupted Blood, 0, 0
		StartTimer: 16.2, Corrupted Blood (6)
	[136.09] SPELL_AURA_APPLIED: [Avatar of Hakkar->Bruzo: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		ShowAnnounce: Corrupted Blood on Bruzo, Snuqz
	[136.18] SPELL_CAST_START: [Avatar of Hakkar: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444046, Curse of Tongues, 0, 0
		StartTimer: 32.3, Curse of Tongues (4)
	Unknown trigger
		ShowAnnounce: Curse of Tongues on Simplyorc
	[139.70] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (11)
		StartTimer: 8, Blood Nova (12)
	[147.80] SPELL_CAST_START: [Avatar of Hakkar: Drain Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444132, Drain Blood, 0, 0
		ShowAnnounce: Drain Blood (3)
		StartTimer: 34, Drain Blood (4)
	[152.64] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (12)
		StartTimer: 8, Blood Nova (13)
	Unknown trigger
		ShowAnnounce: Skeletal on Bruzo, Discokeks, Shabbyx, Simplyorc, Snuqz
	[154.26] SPELL_CAST_START: [Avatar of Hakkar: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444039, Insanity, 0, 0
		StartTimer: 27.5, Insanity (5)
	[155.78] SPELL_AURA_APPLIED: [Avatar of Hakkar->Swain: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0254EA77, Swain, 0x512, 444039, Insanity, 0, BUFF, 0
		ShowAnnounce: Insanity on Swain
	[155.89] SPELL_CAST_START: [Avatar of Hakkar: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444253, Corrupted Blood, 0, 0
		StartTimer: 16.2, Corrupted Blood (7)
	[157.16] SPELL_AURA_APPLIED: [Avatar of Hakkar->Bruzo: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		ShowAnnounce: Corrupted Blood on Bruzo, Shabbyx
	[160.73] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (13)
		StartTimer: 8, Blood Nova (14)
	[167.20] SPELL_CAST_START: [Avatar of Hakkar: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444046, Curse of Tongues, 0, 0
		StartTimer: 32.3, Curse of Tongues (5)
	Unknown trigger
		ShowAnnounce: Curse of Tongues on Shelisea, Simplyorc
	[168.80] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (14)
		StartTimer: 8, Blood Nova (15)
	[172.04] SPELL_CAST_START: [Avatar of Hakkar: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444253, Corrupted Blood, 0, 0
		StartTimer: 16.2, Corrupted Blood (8)
	[174.13] SPELL_AURA_APPLIED: [Avatar of Hakkar->Holyforce: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-01FA3CB9, Holyforce, 0x511, 444255, Corrupted Blood, 0, DEBUFF, 0
		ShowSpecialWarning: Corrupted Blood - move away from others
		PlaySound: VoicePack/scatter
		ShowYell: Corrupted Blood on Moobie
	[174.19] SPELL_AURA_APPLIED: [Avatar of Hakkar->Stahlsand: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02229CFC, Stahlsand, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		ShowAnnounce: Corrupted Blood on Holyforce, Stahlsand
	[176.91] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (15)
		StartTimer: 8, Blood Nova (16)
	[181.78] SPELL_CAST_START: [Avatar of Hakkar: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444039, Insanity, 0, 0
		StartTimer: 27.5, Insanity (6)
	[183.28] SPELL_AURA_APPLIED: [Avatar of Hakkar->Bruzo: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 444039, Insanity, 0, BUFF, 0
		ShowAnnounce: Insanity on Bruzo
	[183.40] SPELL_CAST_START: [Avatar of Hakkar: Drain Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444132, Drain Blood, 0, 0
		ShowSpecialWarning: Drain Blood - move to Front
		PlaySound: VoicePack/movetotank
		StartTimer: 34, Drain Blood (5)
	[188.27] SPELL_CAST_START: [Avatar of Hakkar: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444253, Corrupted Blood, 0, 0
		StartTimer: 16.2, Corrupted Blood (9)
	Unknown trigger
		ShowAnnounce: Skeletal on Bruzo, Shabbyx, Simplyorc, Stahlsand
	[189.61] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (16)
		StartTimer: 8, Blood Nova (17)
	[190.34] SPELL_AURA_APPLIED: [Avatar of Hakkar->Arthritîs: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02233DFA, Arthritîs, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		ShowAnnounce: Corrupted Blood on Arthritîs, Stolzenburg
	[196.38] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (17)
		StartTimer: 8, Blood Nova (18)
	[198.61] SPELL_CAST_START: [Avatar of Hakkar: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444046, Curse of Tongues, 0, 0
		StartTimer: 32.3, Curse of Tongues (6)
	Unknown trigger
		ShowAnnounce: Curse of Tongues on Shabbyx, Simplyorc
	[204.47] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (18)
		StartTimer: 8, Blood Nova (19)
	[206.10] SPELL_CAST_START: [Avatar of Hakkar: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444253, Corrupted Blood, 0, 0
		StartTimer: 16.2, Corrupted Blood (10)
	[208.22] SPELL_AURA_APPLIED: [Avatar of Hakkar->Luschimage: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-022F30B2, Luschimage, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		ShowAnnounce: Corrupted Blood on Luschimage, Snuqz
	[209.32] SPELL_CAST_START: [Avatar of Hakkar: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444039, Insanity, 0, 0
		StartTimer: 27.5, Insanity (7)
	[210.84] SPELL_AURA_APPLIED: [Avatar of Hakkar->Biztog: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Pet-0-5250-0-3577-416-0200A0B145, Biztog, 0x1112, 444039, Insanity, 0, BUFF, 0
		ShowAnnounce: Insanity on Biztog
	[212.57] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (19)
		StartTimer: 8, Blood Nova (20)
	[217.41] SPELL_CAST_START: [Avatar of Hakkar: Drain Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444132, Drain Blood, 0, 0
		ShowAnnounce: Drain Blood (5)
		StartTimer: 34, Drain Blood (6)
	[222.27] SPELL_CAST_START: [Avatar of Hakkar: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444253, Corrupted Blood, 0, 0
		StartTimer: 16.2, Corrupted Blood (11)
	Unknown trigger
		ShowAnnounce: Skeletal on Arthritîs, Simplyorc, Snuqz, Stolzenburg
	[223.87] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (20)
		StartTimer: 8, Blood Nova (21)
	[224.30] SPELL_AURA_APPLIED: [Avatar of Hakkar->Arthritîs: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02233DFA, Arthritîs, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		ShowAnnounce: Corrupted Blood on Arthritîs, Discokeks
	[230.26] SPELL_CAST_START: [Avatar of Hakkar: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444046, Curse of Tongues, 0, 0
		StartTimer: 32.3, Curse of Tongues (7)
	[230.31] SPELL_AURA_APPLIED: [Discokeks->Arthritîs: Corrupted Blood] Player-5826-0239D943, Discokeks, 0x512, Player-5826-02233DFA, Arthritîs, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		AntiSpam: spreadDiscokeks
		ShowAnnounce: Discokeks cast Corrupted Blood on Arthritîs
	Unknown trigger
		ShowAnnounce: Corrupted Blood on Arthritîs
		ShowAnnounce: Curse of Tongues on Shabbyx, Simplyorc
	[231.94] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (21)
		StartTimer: 8, Blood Nova (22)
	[232.13] ENCOUNTER_END: 2956, Avatar of Hakkar, 215, 20, 1, 0
		EndCombat: ENCOUNTER_END
]]
