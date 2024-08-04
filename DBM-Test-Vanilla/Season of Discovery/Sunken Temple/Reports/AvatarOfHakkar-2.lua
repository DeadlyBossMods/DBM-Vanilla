DBM.Test:Report[[
Test: SoD/ST/AvatarOfHakkar/2
Mod:  DBM-Raids-Vanilla/AvatarofHakkarSoD

Findings:
	Unused event registration: SPELL_AURA_APPLIED 443953 (Bubbling Blood)

Unused objects:
	[Special Warning] %s damage - move away, type=gtfo, spellId=443953

Timers:
	Bubbling Blood, time=9.70, type=cd, spellId=443940, triggerDeltas = 0.00, 16.73, 11.73, 10.93, 9.73
		[  0.00] ENCOUNTER_START: 2956, Avatar of Hakkar, 215, 20, 0
		[ 16.73] SPELL_CAST_START: [Hakkari Bloodkeeper: Bubbling Blood] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, "", nil, 0x0, 443940, Bubbling Blood, 0, 0
			 Triggered 4x, delta times: 16.73, 11.73, 10.93, 9.73
		[ 52.34] SPELL_CAST_SUCCESS: [Avatar of Hakkar: Hakkar] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444761, Hakkar, 0, 0
	Spirit Chains, time=16.20, type=cd, spellId=443975, triggerDeltas = 0.00, 21.58, 16.20
		[  0.00] ENCOUNTER_START: 2956, Avatar of Hakkar, 215, 20, 0
		[ 21.58] SPELL_CAST_SUCCESS: [Hakkari Bloodkeeper: Spirit Chains] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, "", nil, 0x0, 443964, Spirit Chains, 0, 0
			 Triggered 2x, delta times: 21.58, 16.20
		[ 52.34] SPELL_CAST_SUCCESS: [Avatar of Hakkar: Hakkar] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444761, Hakkar, 0, 0
	Frightsome Howl, time=16.20, type=cd, spellId=443990, triggerDeltas = 0.00
		[  0.00] ENCOUNTER_START: 2956, Avatar of Hakkar, 215, 20, 0
	Insanity (%s), time=27.50, type=cdcount, spellId=444039, triggerDeltas = 52.34, 12.93, 27.50, 27.49, 34.00, 27.52, 27.54
		[ 52.34] SPELL_CAST_SUCCESS: [Avatar of Hakkar: Hakkar] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444761, Hakkar, 0, 0
		[ 65.27] SPELL_CAST_START: [Avatar of Hakkar: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444039, Insanity, 0, 0
			 Triggered 6x, delta times: 65.27, 27.50, 27.49, 34.00, 27.52, 27.54
	Curse of Tongues (%s), time=32.30, type=cdcount, spellId=444046, triggerDeltas = 52.34, 19.41, 32.35, 32.08, 31.02, 31.41, 31.65
		[ 52.34] SPELL_CAST_SUCCESS: [Avatar of Hakkar: Hakkar] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444761, Hakkar, 0, 0
		[ 71.75] SPELL_CAST_START: [Avatar of Hakkar: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444046, Curse of Tongues, 0, 0
			 Triggered 6x, delta times: 71.75, 32.35, 32.08, 31.02, 31.41, 31.65
	Blood Nova (%s), time=8.00, type=cdcount, spellId=444050, triggerDeltas = 52.34, 8.07, 9.66, 6.54, 6.61, 7.95, 8.09, 8.08, 9.25, 6.91, 8.11, 8.09, 12.94, 8.09, 8.07, 8.11, 12.70, 6.77, 8.09, 8.10, 11.30, 8.07
		[ 52.34] SPELL_CAST_SUCCESS: [Avatar of Hakkar: Hakkar] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444761, Hakkar, 0, 0
		[ 60.41] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
			 Triggered 21x, delta times: 60.41, 9.66, 6.54, 6.61, 7.95, 8.09, 8.08, 9.25, 6.91, 8.11, 8.09, 12.94, 8.09, 8.07, 8.11, 12.70, 6.77, 8.09, 8.10, 11.30, 8.07
	Drain Blood (%s), time=34.00, type=cdcount, spellId=444132, triggerDeltas = 52.34, 25.77, 34.06, 35.63, 35.60, 34.01
		[ 52.34] SPELL_CAST_SUCCESS: [Avatar of Hakkar: Hakkar] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444761, Hakkar, 0, 0
		[ 78.11] SPELL_CAST_START: [Avatar of Hakkar: Drain Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444132, Drain Blood, 0, 0
			 Triggered 5x, delta times: 78.11, 34.06, 35.63, 35.60, 34.01
	Corrupted Blood (%s), time=16.20, type=cdcount, spellId=444253, triggerDeltas = 52.34, 16.18, 16.18, 16.16, 17.77, 16.20, 21.06, 16.15, 16.23, 17.83, 16.17
		[ 52.34] SPELL_CAST_SUCCESS: [Avatar of Hakkar: Hakkar] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444761, Hakkar, 0, 0
		[ 68.52] SPELL_CAST_START: [Avatar of Hakkar: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444253, Corrupted Blood, 0, 0
			 Triggered 10x, delta times: 68.52, 16.18, 16.16, 17.77, 16.20, 21.06, 16.15, 16.23, 17.83, 16.17

Announces:
	Bubbling Blood, type=spell, spellId=443940, triggerDeltas = 16.73, 11.73, 10.93, 9.73
		[ 16.73] SPELL_CAST_START: [Hakkari Bloodkeeper: Bubbling Blood] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, "", nil, 0x0, 443940, Bubbling Blood, 0, 0
			 Triggered 4x, delta times: 16.73, 11.73, 10.93, 9.73
	Spirit Chains on >%s<, type=target, spellId=443975, triggerDeltas = 21.58, 16.20
		[ 21.58] SPELL_AURA_APPLIED: [Hakkari Bloodkeeper->Simplyorc: Spirit Chains] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 443964, Spirit Chains, 0, DEBUFF, 0
		[ 37.78] SPELL_AURA_APPLIED: [Hakkari Bloodkeeper->Shabbyx: Spirit Chains] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, Player-5826-02751148, Shabbyx, 0x512, 443964, Spirit Chains, 0, DEBUFF, 0
	Insanity on >%s<, type=target, spellId=444039, triggerDeltas = 66.79, 27.50, 27.47, 34.02, 27.50, 27.56
		[ 66.79] SPELL_AURA_APPLIED: [Avatar of Hakkar->Stahlsand: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02229CFC, Stahlsand, 0x512, 444039, Insanity, 0, BUFF, 0
		[ 94.29] SPELL_AURA_APPLIED: [Avatar of Hakkar->Shabbyx: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02751148, Shabbyx, 0x512, 444039, Insanity, 0, BUFF, 0
		[121.76] SPELL_AURA_APPLIED: [Avatar of Hakkar->Mafakacoil: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 444039, Insanity, 0, BUFF, 0
		[155.78] SPELL_AURA_APPLIED: [Avatar of Hakkar->Swain: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0254EA77, Swain, 0x512, 444039, Insanity, 0, BUFF, 0
		[183.28] SPELL_AURA_APPLIED: [Avatar of Hakkar->Bruzo: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 444039, Insanity, 0, BUFF, 0
		[210.84] SPELL_AURA_APPLIED: [Avatar of Hakkar->Biztog: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Pet-0-5250-0-3577-416-0200A0B145, Biztog, 0x1112, 444039, Insanity, 0, BUFF, 0
	Curse of Tongues on >%s<, type=target, spellId=444046, triggerDeltas = 105.40, 32.08, 31.02, 31.43, 31.63
		[105.40] Scheduled at 105.10 by SPELL_AURA_APPLIED: [Avatar of Hakkar->Simplyorc: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 444046, Curse of Tongues, 0, DEBUFF, 0
		[137.48] Scheduled at 137.18 by SPELL_AURA_APPLIED: [Avatar of Hakkar->Simplyorc: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 444046, Curse of Tongues, 0, DEBUFF, 0
		[168.50] Scheduled at 168.20 by SPELL_AURA_APPLIED: [Avatar of Hakkar->Shelisea: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0222D437, Shelisea, 0x512, 444046, Curse of Tongues, 0, DEBUFF, 0
		[199.93] Scheduled at 199.63 by SPELL_AURA_APPLIED: [Avatar of Hakkar->Shabbyx: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02751148, Shabbyx, 0x512, 444046, Curse of Tongues, 0, DEBUFF, 0
		[231.56] Scheduled at 231.26 by SPELL_AURA_APPLIED: [Avatar of Hakkar->Shabbyx: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02751148, Shabbyx, 0x512, 444046, Curse of Tongues, 0, DEBUFF, 0
	Blood Nova (%s), type=count, spellId=444050, triggerDeltas = 60.41, 9.66, 6.54, 6.61, 7.95, 8.09, 8.08, 9.25, 6.91, 8.11, 8.09, 12.94, 8.09, 8.07, 8.11, 12.70, 6.77, 8.09, 8.10, 11.30, 8.07
		[ 60.41] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
			 Triggered 21x, delta times: 60.41, 9.66, 6.54, 6.61, 7.95, 8.09, 8.08, 9.25, 6.91, 8.11, 8.09, 12.94, 8.09, 8.07, 8.11, 12.70, 6.77, 8.09, 8.10, 11.30, 8.07
	Drain Blood (%s), type=count, spellId=444132, triggerDeltas = 78.11, 69.69, 35.60, 34.01
		[ 78.11] SPELL_CAST_START: [Avatar of Hakkar: Drain Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444132, Drain Blood, 0, 0
			 Triggered 4x, delta times: 78.11, 69.69, 35.60, 34.01
	Skeletal on >%s<, type=target, spellId=444165, triggerDeltas = 83.95, 34.13, 35.58, 35.66, 33.86
		[ 83.95] Scheduled at 83.25 by SPELL_AURA_APPLIED: [Avatar of Hakkar->Vivix: Skeletal] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-021B5C9D, Vivix, 0x512, 444165, Skeletal, 0, DEBUFF, 0
		[118.08] Scheduled at 117.38 by SPELL_AURA_APPLIED: [Avatar of Hakkar->Snuqz: Skeletal] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02520AE4, Snuqz, 0x512, 444165, Skeletal, 0, DEBUFF, 0
		[153.66] Scheduled at 152.96 by SPELL_AURA_APPLIED: [Avatar of Hakkar->Shabbyx: Skeletal] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02751148, Shabbyx, 0x512, 444165, Skeletal, 0, DEBUFF, 0
		[189.32] Scheduled at 188.62 by SPELL_AURA_APPLIED: [Avatar of Hakkar->Shabbyx: Skeletal] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02751148, Shabbyx, 0x512, 444165, Skeletal, 0, DEBUFF, 0
		[223.18] Scheduled at 222.48 by SPELL_AURA_APPLIED: [Avatar of Hakkar->Snuqz: Skeletal] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02520AE4, Snuqz, 0x512, 444165, Skeletal, 0, DEBUFF, 0
	Corrupted Blood on >%s<, type=target, spellId=444253, triggerDeltas = 70.72, 15.21, 17.38, 18.64, 14.14, 21.07, 17.03, 16.15, 17.88, 16.08, 6.31
		[ 70.72] SPELL_AURA_APPLIED: [Avatar of Hakkar->Vivix: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-021B5C9D, Vivix, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		[ 85.93] SPELL_AURA_APPLIED: [Avatar of Hakkar->Shabbyx: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02751148, Shabbyx, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		[103.31] Scheduled at 102.11 by SPELL_AURA_APPLIED: [Avatar of Hakkar->Simplyorc: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 444255, Corrupted Blood, 0, DEBUFF, 0
		[121.95] Scheduled at 120.75 by SPELL_AURA_APPLIED: [Avatar of Hakkar->Discokeks: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0239D943, Discokeks, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		[136.09] SPELL_AURA_APPLIED: [Avatar of Hakkar->Bruzo: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
			 Triggered 2x, delta times: 136.09, 21.07
		[174.19] SPELL_AURA_APPLIED: [Avatar of Hakkar->Stahlsand: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02229CFC, Stahlsand, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		[190.34] SPELL_AURA_APPLIED: [Avatar of Hakkar->Arthritîs: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02233DFA, Arthritîs, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
			 Triggered 2x, delta times: 190.34, 33.96
		[208.22] SPELL_AURA_APPLIED: [Avatar of Hakkar->Luschimage: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-022F30B2, Luschimage, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		[230.61] Scheduled at 230.31 by SPELL_AURA_APPLIED: [Discokeks->Arthritîs: Corrupted Blood] Player-5826-0239D943, Discokeks, 0x512, Player-5826-02233DFA, Arthritîs, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
	>%s< cast Corrupted Blood on >%s<, type=targetsource, spellId=444253, triggerDeltas = 230.31
		[230.31] SPELL_AURA_APPLIED: [Discokeks->Arthritîs: Corrupted Blood] Player-5826-0239D943, Discokeks, 0x512, Player-5826-02233DFA, Arthritîs, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0

Special warnings:
	Spirit Chains - move away from others, type=moveaway, spellId=443975, triggerDeltas = 21.58
		[ 21.58] SPELL_AURA_APPLIED: [Hakkari Bloodkeeper->Simplyorc: Spirit Chains] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 443964, Spirit Chains, 0, DEBUFF, 0
	Frightsome Howl - interrupt >%s<!, type=interrupt, spellId=443990, triggerDeltas = 26.43
		[ 26.43] SPELL_CAST_START: [Hakkari Bloodkeeper: Frightsome Howl] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, "", nil, 0x0, 443990, Frightsome Howl, 0, 0
	Curse of Tongues on you, type=you, spellId=444046, triggerDeltas = 105.10, 32.08, 31.02, 31.43, 31.63
		[105.10] SPELL_AURA_APPLIED: [Avatar of Hakkar->Simplyorc: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 444046, Curse of Tongues, 0, DEBUFF, 0
			 Triggered 5x, delta times: 105.10, 32.08, 31.02, 31.43, 31.63
	Drain Blood - move to >%s<, type=moveto, spellId=444132, triggerDeltas = 112.17
		[112.17] SPELL_CAST_START: [Avatar of Hakkar: Drain Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444132, Drain Blood, 0, 0
	Skeletal on you, type=you, spellId=444165, triggerDeltas = 82.73, 34.08, 35.61, 35.60, 34.01
		[ 82.73] SPELL_AURA_APPLIED: [Avatar of Hakkar->Simplyorc: Skeletal] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 444165, Skeletal, 0, DEBUFF, 0
			 Triggered 5x, delta times: 82.73, 34.08, 35.61, 35.60, 34.01
	Corrupted Blood - move away from others, type=moveaway, spellId=444253, triggerDeltas = 102.11
		[102.11] SPELL_AURA_APPLIED: [Avatar of Hakkar->Simplyorc: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 444255, Corrupted Blood, 0, DEBUFF, 0

Yells:
	Spirit Chains on PlayerName, type=yell, spellId=443975
		[ 21.58] SPELL_AURA_APPLIED: [Hakkari Bloodkeeper->Simplyorc: Spirit Chains] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 443964, Spirit Chains, 0, DEBUFF, 0
	Corrupted Blood on PlayerName, type=yell, spellId=444253
		[102.11] SPELL_AURA_APPLIED: [Avatar of Hakkar->Simplyorc: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 444255, Corrupted Blood, 0, DEBUFF, 0

Voice pack sounds:
	VoicePack/kickcast
		[ 26.43] SPELL_CAST_START: [Hakkari Bloodkeeper: Frightsome Howl] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, "", nil, 0x0, 443990, Frightsome Howl, 0, 0
	VoicePack/movetotank
		[112.17] SPELL_CAST_START: [Avatar of Hakkar: Drain Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444132, Drain Blood, 0, 0
	VoicePack/scatter
		[ 21.58] SPELL_AURA_APPLIED: [Hakkari Bloodkeeper->Simplyorc: Spirit Chains] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 443964, Spirit Chains, 0, DEBUFF, 0
		[102.11] SPELL_AURA_APPLIED: [Avatar of Hakkar->Simplyorc: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 444255, Corrupted Blood, 0, DEBUFF, 0
	VoicePack/targetyou
		[ 82.73] SPELL_AURA_APPLIED: [Avatar of Hakkar->Simplyorc: Skeletal] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 444165, Skeletal, 0, DEBUFF, 0
			 Triggered 5x, delta times: 82.73, 34.08, 35.61, 35.60, 34.01
		[105.10] SPELL_AURA_APPLIED: [Avatar of Hakkar->Simplyorc: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 444046, Curse of Tongues, 0, DEBUFF, 0
			 Triggered 5x, delta times: 105.10, 32.08, 31.02, 31.43, 31.63

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
	[ 21.58] SPELL_AURA_APPLIED: [Hakkari Bloodkeeper->Simplyorc: Spirit Chains] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 443964, Spirit Chains, 0, DEBUFF, 0
		ShowAnnounce: Spirit Chains on PlayerName
		ShowSpecialWarning: Spirit Chains - move away from others
		PlaySound: VoicePack/scatter
		ShowYell: Spirit Chains on PlayerName
	[ 26.43] SPELL_CAST_START: [Hakkari Bloodkeeper: Frightsome Howl] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, "", nil, 0x0, 443990, Frightsome Howl, 0, 0
		ShowSpecialWarning: Frightsome Howl - interrupt Hakkari Bloodkeeper!
		PlaySound: VoicePack/kickcast
	[ 28.46] SPELL_CAST_START: [Hakkari Bloodkeeper: Bubbling Blood] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, "", nil, 0x0, 443940, Bubbling Blood, 0, 0
		ShowAnnounce: Bubbling Blood
		StartTimer: 9.7, Bubbling Blood
	[ 37.78] SPELL_CAST_SUCCESS: [Hakkari Bloodkeeper: Spirit Chains] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, "", nil, 0x0, 443964, Spirit Chains, 0, 0
		StartTimer: 16.2, Spirit Chains
	[ 37.78] SPELL_AURA_APPLIED: [Hakkari Bloodkeeper->Shabbyx: Spirit Chains] Creature-0-5208-109-4570-221396-00003BDC57, Hakkari Bloodkeeper, 0xa48, Player-5826-02751148, Shabbyx, 0x512, 443964, Spirit Chains, 0, DEBUFF, 0
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
	[ 60.41] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (1)
		StartTimer: 8.0, Blood Nova (2)
	[ 65.27] SPELL_CAST_START: [Avatar of Hakkar: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444039, Insanity, 0, 0
		StartTimer: 27.5, Insanity (2)
	[ 66.79] SPELL_AURA_APPLIED: [Avatar of Hakkar->Stahlsand: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02229CFC, Stahlsand, 0x512, 444039, Insanity, 0, BUFF, 0
		ShowAnnounce: Insanity on Stahlsand
	[ 68.52] SPELL_CAST_START: [Avatar of Hakkar: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444253, Corrupted Blood, 0, 0
		StartTimer: 16.2, Corrupted Blood (2)
	[ 70.07] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (2)
		StartTimer: 8.0, Blood Nova (3)
	[ 70.72] SPELL_AURA_APPLIED: [Avatar of Hakkar->Vivix: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-021B5C9D, Vivix, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		ShowAnnounce: Corrupted Blood on Mazl, Vivix
	[ 71.75] SPELL_CAST_START: [Avatar of Hakkar: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444046, Curse of Tongues, 0, 0
		StartTimer: 32.3, Curse of Tongues (2)
	[ 76.61] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (3)
		StartTimer: 8.0, Blood Nova (4)
	[ 78.11] SPELL_CAST_START: [Avatar of Hakkar: Drain Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444132, Drain Blood, 0, 0
		ShowAnnounce: Drain Blood (1)
		StartTimer: 34.0, Drain Blood (2)
	[ 82.73] SPELL_AURA_APPLIED: [Avatar of Hakkar->Simplyorc: Skeletal] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 444165, Skeletal, 0, DEBUFF, 0
		ShowSpecialWarning: Skeletal on you
		PlaySound: VoicePack/targetyou
	[ 83.22] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (4)
		StartTimer: 8.0, Blood Nova (5)
	[ 83.25] SPELL_AURA_APPLIED: [Avatar of Hakkar->Vivix: Skeletal] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-021B5C9D, Vivix, 0x512, 444165, Skeletal, 0, DEBUFF, 0
		ScheduleTask: announce444165target:CombinedShow("Vivix") at 83.95 (+0.70)
			ShowAnnounce: Skeletal on PlayerName, Mazl, Vivix
	[ 84.70] SPELL_CAST_START: [Avatar of Hakkar: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444253, Corrupted Blood, 0, 0
		StartTimer: 16.2, Corrupted Blood (3)
	[ 85.93] SPELL_AURA_APPLIED: [Avatar of Hakkar->Shabbyx: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02751148, Shabbyx, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		ShowAnnounce: Corrupted Blood on Snuqz, Shabbyx
	[ 91.17] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (5)
		StartTimer: 8.0, Blood Nova (6)
	[ 92.77] SPELL_CAST_START: [Avatar of Hakkar: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444039, Insanity, 0, 0
		StartTimer: 27.5, Insanity (3)
	[ 94.29] SPELL_AURA_APPLIED: [Avatar of Hakkar->Shabbyx: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02751148, Shabbyx, 0x512, 444039, Insanity, 0, BUFF, 0
		ShowAnnounce: Insanity on Shabbyx
	[ 99.26] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (6)
		StartTimer: 8.0, Blood Nova (7)
	[100.86] SPELL_CAST_START: [Avatar of Hakkar: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444253, Corrupted Blood, 0, 0
		StartTimer: 16.2, Corrupted Blood (4)
	[102.11] SPELL_AURA_APPLIED: [Avatar of Hakkar->Simplyorc: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 444255, Corrupted Blood, 0, DEBUFF, 0
		ScheduleTask: announce444253target:PreciseShow(2.0, "PlayerName") at 103.31 (+1.20)
			ShowAnnounce: Corrupted Blood on PlayerName
		ShowSpecialWarning: Corrupted Blood - move away from others
		PlaySound: VoicePack/scatter
		ShowYell: Corrupted Blood on PlayerName
	[104.10] SPELL_CAST_START: [Avatar of Hakkar: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444046, Curse of Tongues, 0, 0
		StartTimer: 32.3, Curse of Tongues (3)
	[105.10] SPELL_AURA_APPLIED: [Avatar of Hakkar->Simplyorc: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 444046, Curse of Tongues, 0, DEBUFF, 0
		ScheduleTask: announce444046target:CombinedShow("PlayerName") at 105.40 (+0.30)
			ShowAnnounce: Curse of Tongues on PlayerName
		ShowSpecialWarning: Curse of Tongues on you
		PlaySound: VoicePack/targetyou
	[107.34] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (7)
		StartTimer: 8.0, Blood Nova (8)
	[112.17] SPELL_CAST_START: [Avatar of Hakkar: Drain Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444132, Drain Blood, 0, 0
		ShowSpecialWarning: Drain Blood - move to Front
		PlaySound: VoicePack/movetotank
		StartTimer: 34.0, Drain Blood (3)
	[116.59] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (8)
		StartTimer: 8.0, Blood Nova (9)
	[116.81] SPELL_AURA_APPLIED: [Avatar of Hakkar->Simplyorc: Skeletal] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 444165, Skeletal, 0, DEBUFF, 0
		ShowSpecialWarning: Skeletal on you
		PlaySound: VoicePack/targetyou
	[117.38] SPELL_AURA_APPLIED: [Avatar of Hakkar->Snuqz: Skeletal] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02520AE4, Snuqz, 0x512, 444165, Skeletal, 0, DEBUFF, 0
		ScheduleTask: announce444165target:CombinedShow("Snuqz") at 118.08 (+0.70)
			ShowAnnounce: Skeletal on PlayerName, Snuqz
	[118.63] SPELL_CAST_START: [Avatar of Hakkar: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444253, Corrupted Blood, 0, 0
		StartTimer: 16.2, Corrupted Blood (5)
	[120.26] SPELL_CAST_START: [Avatar of Hakkar: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444039, Insanity, 0, 0
		StartTimer: 27.5, Insanity (4)
	[120.75] SPELL_AURA_APPLIED: [Avatar of Hakkar->Discokeks: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0239D943, Discokeks, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		ScheduleTask: announce444253target:PreciseShow(2.0, "Discokeks") at 121.95 (+1.20)
			ShowAnnounce: Corrupted Blood on Discokeks
	[121.76] SPELL_AURA_APPLIED: [Avatar of Hakkar->Mafakacoil: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 444039, Insanity, 0, BUFF, 0
		ShowAnnounce: Insanity on Mafakacoil
	[123.50] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (9)
		StartTimer: 8.0, Blood Nova (10)
	[131.61] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (10)
		StartTimer: 8.0, Blood Nova (11)
	[134.83] SPELL_CAST_START: [Avatar of Hakkar: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444253, Corrupted Blood, 0, 0
		StartTimer: 16.2, Corrupted Blood (6)
	[136.09] SPELL_AURA_APPLIED: [Avatar of Hakkar->Bruzo: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		ShowAnnounce: Corrupted Blood on Snuqz, Bruzo
	[136.18] SPELL_CAST_START: [Avatar of Hakkar: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444046, Curse of Tongues, 0, 0
		StartTimer: 32.3, Curse of Tongues (4)
	[137.18] SPELL_AURA_APPLIED: [Avatar of Hakkar->Simplyorc: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 444046, Curse of Tongues, 0, DEBUFF, 0
		ScheduleTask: announce444046target:CombinedShow("PlayerName") at 137.48 (+0.30)
			ShowAnnounce: Curse of Tongues on PlayerName
		ShowSpecialWarning: Curse of Tongues on you
		PlaySound: VoicePack/targetyou
	[139.70] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (11)
		StartTimer: 8.0, Blood Nova (12)
	[147.80] SPELL_CAST_START: [Avatar of Hakkar: Drain Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444132, Drain Blood, 0, 0
		ShowAnnounce: Drain Blood (3)
		StartTimer: 34.0, Drain Blood (4)
	[152.42] SPELL_AURA_APPLIED: [Avatar of Hakkar->Simplyorc: Skeletal] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 444165, Skeletal, 0, DEBUFF, 0
		ShowSpecialWarning: Skeletal on you
		PlaySound: VoicePack/targetyou
	[152.64] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (12)
		StartTimer: 8.0, Blood Nova (13)
	[152.96] SPELL_AURA_APPLIED: [Avatar of Hakkar->Shabbyx: Skeletal] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02751148, Shabbyx, 0x512, 444165, Skeletal, 0, DEBUFF, 0
		ScheduleTask: announce444165target:CombinedShow("Shabbyx") at 153.66 (+0.70)
			ShowAnnounce: Skeletal on PlayerName, Discokeks, Snuqz, Bruzo, Shabbyx
	[154.26] SPELL_CAST_START: [Avatar of Hakkar: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444039, Insanity, 0, 0
		StartTimer: 27.5, Insanity (5)
	[155.78] SPELL_AURA_APPLIED: [Avatar of Hakkar->Swain: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0254EA77, Swain, 0x512, 444039, Insanity, 0, BUFF, 0
		ShowAnnounce: Insanity on Swain
	[155.89] SPELL_CAST_START: [Avatar of Hakkar: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444253, Corrupted Blood, 0, 0
		StartTimer: 16.2, Corrupted Blood (7)
	[157.16] SPELL_AURA_APPLIED: [Avatar of Hakkar->Bruzo: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		ShowAnnounce: Corrupted Blood on Shabbyx, Bruzo
	[160.73] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (13)
		StartTimer: 8.0, Blood Nova (14)
	[167.20] SPELL_CAST_START: [Avatar of Hakkar: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444046, Curse of Tongues, 0, 0
		StartTimer: 32.3, Curse of Tongues (5)
	[168.20] SPELL_AURA_APPLIED: [Avatar of Hakkar->Simplyorc: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 444046, Curse of Tongues, 0, DEBUFF, 0
		ShowSpecialWarning: Curse of Tongues on you
		PlaySound: VoicePack/targetyou
	[168.20] SPELL_AURA_APPLIED: [Avatar of Hakkar->Shelisea: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0222D437, Shelisea, 0x512, 444046, Curse of Tongues, 0, DEBUFF, 0
		ScheduleTask: announce444046target:CombinedShow("Shelisea") at 168.50 (+0.30)
			ShowAnnounce: Curse of Tongues on PlayerName, Shelisea
	[168.80] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (14)
		StartTimer: 8.0, Blood Nova (15)
	[172.04] SPELL_CAST_START: [Avatar of Hakkar: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444253, Corrupted Blood, 0, 0
		StartTimer: 16.2, Corrupted Blood (8)
	[174.19] SPELL_AURA_APPLIED: [Avatar of Hakkar->Stahlsand: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02229CFC, Stahlsand, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		ShowAnnounce: Corrupted Blood on Holyforce, Stahlsand
	[176.91] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (15)
		StartTimer: 8.0, Blood Nova (16)
	[181.78] SPELL_CAST_START: [Avatar of Hakkar: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444039, Insanity, 0, 0
		StartTimer: 27.5, Insanity (6)
	[183.28] SPELL_AURA_APPLIED: [Avatar of Hakkar->Bruzo: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 444039, Insanity, 0, BUFF, 0
		ShowAnnounce: Insanity on Bruzo
	[183.40] SPELL_CAST_START: [Avatar of Hakkar: Drain Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444132, Drain Blood, 0, 0
		ShowAnnounce: Drain Blood (4)
		StartTimer: 34.0, Drain Blood (5)
	[188.02] SPELL_AURA_APPLIED: [Avatar of Hakkar->Simplyorc: Skeletal] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 444165, Skeletal, 0, DEBUFF, 0
		ShowSpecialWarning: Skeletal on you
		PlaySound: VoicePack/targetyou
	[188.27] SPELL_CAST_START: [Avatar of Hakkar: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444253, Corrupted Blood, 0, 0
		StartTimer: 16.2, Corrupted Blood (9)
	[188.62] SPELL_AURA_APPLIED: [Avatar of Hakkar->Shabbyx: Skeletal] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02751148, Shabbyx, 0x512, 444165, Skeletal, 0, DEBUFF, 0
		ScheduleTask: announce444165target:CombinedShow("Shabbyx") at 189.32 (+0.70)
			ShowAnnounce: Skeletal on PlayerName, Bruzo, Stahlsand, Shabbyx
	[189.61] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (16)
		StartTimer: 8.0, Blood Nova (17)
	[190.34] SPELL_AURA_APPLIED: [Avatar of Hakkar->Arthritîs: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02233DFA, Arthritîs, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		ShowAnnounce: Corrupted Blood on Stolzenburg, Arthritîs
	[196.38] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (17)
		StartTimer: 8.0, Blood Nova (18)
	[198.61] SPELL_CAST_START: [Avatar of Hakkar: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444046, Curse of Tongues, 0, 0
		StartTimer: 32.3, Curse of Tongues (6)
	[199.63] SPELL_AURA_APPLIED: [Avatar of Hakkar->Simplyorc: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 444046, Curse of Tongues, 0, DEBUFF, 0
		ShowSpecialWarning: Curse of Tongues on you
		PlaySound: VoicePack/targetyou
	[199.63] SPELL_AURA_APPLIED: [Avatar of Hakkar->Shabbyx: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02751148, Shabbyx, 0x512, 444046, Curse of Tongues, 0, DEBUFF, 0
		ScheduleTask: announce444046target:CombinedShow("Shabbyx") at 199.93 (+0.30)
			ShowAnnounce: Curse of Tongues on PlayerName, Shabbyx
	[204.47] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (18)
		StartTimer: 8.0, Blood Nova (19)
	[206.10] SPELL_CAST_START: [Avatar of Hakkar: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444253, Corrupted Blood, 0, 0
		StartTimer: 16.2, Corrupted Blood (10)
	[208.22] SPELL_AURA_APPLIED: [Avatar of Hakkar->Luschimage: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-022F30B2, Luschimage, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		ShowAnnounce: Corrupted Blood on Snuqz, Luschimage
	[209.32] SPELL_CAST_START: [Avatar of Hakkar: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444039, Insanity, 0, 0
		StartTimer: 27.5, Insanity (7)
	[210.84] SPELL_AURA_APPLIED: [Avatar of Hakkar->Biztog: Insanity] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Pet-0-5250-0-3577-416-0200A0B145, Biztog, 0x1112, 444039, Insanity, 0, BUFF, 0
		ShowAnnounce: Insanity on Biztog
	[212.57] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (19)
		StartTimer: 8.0, Blood Nova (20)
	[217.41] SPELL_CAST_START: [Avatar of Hakkar: Drain Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444132, Drain Blood, 0, 0
		ShowAnnounce: Drain Blood (5)
		StartTimer: 34.0, Drain Blood (6)
	[222.03] SPELL_AURA_APPLIED: [Avatar of Hakkar->Simplyorc: Skeletal] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 444165, Skeletal, 0, DEBUFF, 0
		ShowSpecialWarning: Skeletal on you
		PlaySound: VoicePack/targetyou
	[222.27] SPELL_CAST_START: [Avatar of Hakkar: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444253, Corrupted Blood, 0, 0
		StartTimer: 16.2, Corrupted Blood (11)
	[222.48] SPELL_AURA_APPLIED: [Avatar of Hakkar->Snuqz: Skeletal] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02520AE4, Snuqz, 0x512, 444165, Skeletal, 0, DEBUFF, 0
		ScheduleTask: announce444165target:CombinedShow("Snuqz") at 223.18 (+0.70)
			ShowAnnounce: Skeletal on PlayerName, Stolzenburg, Arthritîs, Snuqz
	[223.87] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (20)
		StartTimer: 8.0, Blood Nova (21)
	[224.30] SPELL_AURA_APPLIED: [Avatar of Hakkar->Arthritîs: Corrupted Blood] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02233DFA, Arthritîs, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		ShowAnnounce: Corrupted Blood on Discokeks, Arthritîs
	[230.26] SPELL_CAST_START: [Avatar of Hakkar: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444046, Curse of Tongues, 0, 0
		StartTimer: 32.3, Curse of Tongues (7)
	[230.31] SPELL_AURA_APPLIED: [Discokeks->Arthritîs: Corrupted Blood] Player-5826-0239D943, Discokeks, 0x512, Player-5826-02233DFA, Arthritîs, 0x512, 444255, Corrupted Blood, 0, DEBUFF, 0
		ScheduleTask: announce444253target:CombinedShow("Arthritîs") at 230.61 (+0.30)
			ShowAnnounce: Corrupted Blood on Arthritîs
		AntiSpam: spreadDiscokeks
		ShowAnnounce: Discokeks cast Corrupted Blood on Arthritîs
	[231.26] SPELL_AURA_APPLIED: [Avatar of Hakkar->Simplyorc: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-0201D763, Simplyorc, 0x511, 444046, Curse of Tongues, 0, DEBUFF, 0
		ShowSpecialWarning: Curse of Tongues on you
		PlaySound: VoicePack/targetyou
	[231.26] SPELL_AURA_APPLIED: [Avatar of Hakkar->Shabbyx: Curse of Tongues] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, Player-5826-02751148, Shabbyx, 0x512, 444046, Curse of Tongues, 0, DEBUFF, 0
		ScheduleTask: announce444046target:CombinedShow("Shabbyx") at 231.56 (+0.30)
			ShowAnnounce: Curse of Tongues on PlayerName, Shabbyx
	[231.94] SPELL_CAST_START: [Avatar of Hakkar: Blood Nova] Vehicle-0-5208-109-4570-221394-00003BDC8E, Avatar of Hakkar, 0xa48, "", nil, 0x0, 444050, Blood Nova, 0, 0
		ShowAnnounce: Blood Nova (21)
		StartTimer: 8.0, Blood Nova (22)
	[232.13] ENCOUNTER_END: 2956, Avatar of Hakkar, 215, 20, 1, 0
		EndCombat: ENCOUNTER_END
]]
