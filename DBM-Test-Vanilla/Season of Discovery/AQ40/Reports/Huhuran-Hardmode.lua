DBM.Test:Report[[
Test: SoD/AQ40/Huhuran/Hardmode
Mod:  DBM-Raids-Vanilla/Huhuran

Findings:
	Unused event registration: SPELL_AURA_APPLIED 1215752 (Noxious Poison)
	Unused event registration: SPELL_AURA_APPLIED 26051 (Frenzy)
	Unused event registration: SPELL_AURA_APPLIED 26053 (Noxious Poison)
	Unused event registration: SPELL_AURA_APPLIED 26068 (Berserk)
	Unused event registration: SPELL_AURA_REMOVED 1215752 (Noxious Poison)
	Unused event registration: SPELL_AURA_REMOVED 1215753 (Wyvern Sting)
	Unused event registration: SPELL_AURA_REMOVED 1215757 (Acid Spit)
	Unused event registration: SPELL_AURA_REMOVED 26051 (Frenzy)
	Unused event registration: SPELL_AURA_REMOVED 26053 (Noxious Poison)
	Unused event registration: SPELL_AURA_REMOVED 26180 (Wyvern Sting)
	Unused event registration: SPELL_CAST_SUCCESS 1215755 (Frenzy)
	Unused event registration: UNIT_HEALTH
	Announce for spell ID 26050 (Acid Spit) is triggered by event SPELL_AURA_APPLIED 1215757 (Acid Spit)
	Announce for spell ID 26050 (Acid Spit) is triggered by event SPELL_AURA_APPLIED_DOSE 1215757 (Acid Spit)
	Timer for spell ID 26050 (Acid Spit) is triggered by event SPELL_AURA_APPLIED 1215757 (Acid Spit)
	Timer for spell ID 26050 (Acid Spit) is triggered by event SPELL_AURA_APPLIED_DOSE 1215757 (Acid Spit)
	SpecialWarning for spell ID 26051 (Frenzy) is triggered by event SPELL_AURA_APPLIED 1215755 (Frenzy)
	Timer for spell ID 26051 (Frenzy) is triggered by event SPELL_AURA_APPLIED 1215755 (Frenzy)
	Announce for spell ID 26053 (Noxious Poison) is triggered by event SPELL_CAST_SUCCESS 1215752 (Noxious Poison)
	Timer for spell ID 26053 (Noxious Poison) is triggered by event SPELL_CAST_SUCCESS 1215752 (Noxious Poison)
	Announce for spell ID 26068 (Berserk) is triggered by event SPELL_AURA_APPLIED 1215885 (Berserk)

Unused objects:
	[Announce] Frenzy, type=spell, spellId=26051
	[Announce] Berserk soon, type=soon, spellId=26068
	[Special Warning] %d stacks of Acid Spit on you, type=stack, spellId=26050
	[Special Warning] Acid Spit on >%s< - taunt now, type=taunt, spellId=26050
	[Timer] Noxious Poison fades, time=8.00, type=fades, spellId=26053

Timers:
	Acid Spit: %s, time=30.00, type=target, spellId=26050, triggerDeltas = 6.44, 6.47, 8.13, 17.78, 4.87, 1.62, 3.23, 3.24, 12.31, 8.73, 16.19, 21.03, 11.37, 3.22, 6.47, 7.86
		[  6.44] SPELL_AURA_APPLIED: [Princess Huhuran->Dps6: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000008, Dps6, 0x512, 1215757, Acid Spit, 0, DEBUFF, 0
			 Triggered 2x, delta times: 6.44, 57.65
		[ 12.91] SPELL_AURA_APPLIED_DOSE: [Princess Huhuran->Dps6: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000008, Dps6, 0x512, 1215757, Acid Spit, 0, DEBUFF, 2, 0
			 Triggered 3x, delta times: 12.91, 8.13, 51.78
		[ 38.82] SPELL_AURA_APPLIED: [Princess Huhuran->Tank1: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000003, Tank1, 0x512, 1215757, Acid Spit, 0, DEBUFF, 0
			 Triggered 2x, delta times: 38.82, 50.19
		[ 43.69] SPELL_AURA_APPLIED_DOSE: [Princess Huhuran->Tank1: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000003, Tank1, 0x512, 1215757, Acid Spit, 0, DEBUFF, 2, 0
			 Triggered 4x, delta times: 43.69, 1.62, 3.23, 3.24
		[110.04] SPELL_AURA_APPLIED: [Princess Huhuran->Dps8: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000010, Dps8, 0x512, 26050, Acid Spit, 0, DEBUFF, 0
		[121.41] SPELL_AURA_APPLIED: [Princess Huhuran->Tank1: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000003, Tank1, 0x512, 26050, Acid Spit, 0, DEBUFF, 0
		[124.63] SPELL_AURA_APPLIED_DOSE: [Princess Huhuran->Tank1: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000003, Tank1, 0x512, 26050, Acid Spit, 0, DEBUFF, 2, 0
			 Triggered 2x, delta times: 124.63, 6.47
		[132.08] SPELL_AURA_REMOVED: [Princess Huhuran->Dps8: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000010, Dps8, 0x512, 26050, Acid Spit, 0, DEBUFF, 0
		[138.96] SPELL_AURA_APPLIED: [Princess Huhuran->Dps6: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000008, Dps6, 0x512, 26050, Acid Spit, 0, DEBUFF, 0
		[156.40] SPELL_AURA_REMOVED: [Princess Huhuran->Dps6: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000008, Dps6, 0x512, 26050, Acid Spit, 0, DEBUFF, 0
	Frenzy ends, time=8.00, type=active, spellId=26051, triggerDeltas = 8.07, 17.81, 16.21, 24.26, 34.00
		[  8.07] SPELL_AURA_APPLIED: [Princess Huhuran->Princess Huhuran: Frenzy] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, 1215755, Frenzy, 0, BUFF, 0
			 Triggered 5x, delta times: 8.07, 17.81, 16.21, 24.26, 34.00
		[ 44.46] SPELL_AURA_REMOVED: [Princess Huhuran->Princess Huhuran: Frenzy] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, 1215755, Frenzy, 0, BUFF, 0
			 Triggered 3x, delta times: 44.46, 27.14, 31.70
	Frenzy, time=11.80, type=cd, spellId=26051, triggerDeltas = 0.00, 8.07, 17.81, 16.21, 24.26, 34.00
		[  0.00] ENCOUNTER_START: 714, Princess Huhuran, 186, 40, 0
		[  8.07] SPELL_AURA_APPLIED: [Princess Huhuran->Princess Huhuran: Frenzy] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, 1215755, Frenzy, 0, BUFF, 0
			 Triggered 5x, delta times: 8.07, 17.81, 16.21, 24.26, 34.00
		[101.96] SPELL_AURA_APPLIED: [Princess Huhuran->Princess Huhuran: Berserk] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, 1215885, Berserk, 0, BUFF, 0
	Noxious Poison, time=11.00, type=cd, spellId=26053, triggerDeltas = 0.00, 33.96, 16.19, 14.59, 50.17, 12.95
		[  0.00] ENCOUNTER_START: 714, Princess Huhuran, 186, 40, 0
		[ 33.96] SPELL_CAST_SUCCESS: [Princess Huhuran->Dps14: Noxious Poison] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000017, Dps14, 0x512, 1215752, Noxious Poison, 0, 0
		[ 50.15] SPELL_CAST_SUCCESS: [Princess Huhuran->Tank1: Noxious Poison] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000003, Tank1, 0x512, 1215752, Noxious Poison, 0, 0
		[ 64.74] SPELL_CAST_SUCCESS: [Princess Huhuran->Pet2: Noxious Poison] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Pet-0-1-531-1-416-0000000002, Pet2, 0x1112, 1215752, Noxious Poison, 0, 0
		[114.91] SPELL_CAST_SUCCESS: [Princess Huhuran->Dps9: Noxious Poison] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000011, Dps9, 0x512, 26053, Noxious Poison, 0, 0
		[127.86] SPELL_CAST_SUCCESS: [Princess Huhuran->Dps3: Noxious Poison] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000004, Dps3, 0x512, 26053, Noxious Poison, 0, 0
	Wyvern Sting, time=25.00, type=cd, spellId=26180, triggerDeltas = 0.00, 26.98, 27.54, 27.52, 42.37, 29.66
		[  0.00] ENCOUNTER_START: 714, Princess Huhuran, 186, 40, 0
		[ 26.98] Scheduled at 25.98 by SPELL_AURA_APPLIED: [Princess Huhuran->Dps5: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000007, Dps5, 0x512, 1215753, Wyvern Sting, 0, DEBUFF, 0
		[ 54.52] Scheduled at 53.52 by SPELL_AURA_APPLIED: [Princess Huhuran->Dps3: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000004, Dps3, 0x512, 1215753, Wyvern Sting, 0, DEBUFF, 0
		[ 82.04] Scheduled at 81.04 by SPELL_AURA_APPLIED: [Princess Huhuran->Dps5: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000007, Dps5, 0x512, 1215753, Wyvern Sting, 0, DEBUFF, 0
		[101.96] SPELL_AURA_APPLIED: [Princess Huhuran->Princess Huhuran: Berserk] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, 1215885, Berserk, 0, BUFF, 0
		[124.41] Scheduled at 123.41 by SPELL_AURA_APPLIED: [Princess Huhuran->Healer3: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000018, Healer3, 0x512, 26180, Wyvern Sting, 0, DEBUFF, 0
		[154.07] Scheduled at 153.07 by SPELL_AURA_APPLIED: [Princess Huhuran->Dps1: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000001, Dps1, 0x512, 26180, Wyvern Sting, 0, DEBUFF, 0
	Wyvern Sting fades, time=12.00, type=fades, spellId=26180, triggerDeltas = 152.88
		[152.88] SPELL_AURA_APPLIED: [Princess Huhuran->Healer1: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000005, Healer1, 0x511, 26180, Wyvern Sting, 0, DEBUFF, 0

Announces:
	Acid Spit on >%s< (%d), type=stack, spellId=26050, triggerDeltas = 6.44, 6.47, 8.13, 17.78, 4.87, 1.62, 3.23, 3.24, 12.31, 8.73, 16.19, 21.03, 11.37, 3.22, 6.47, 7.86
		[  6.44] SPELL_AURA_APPLIED: [Princess Huhuran->Dps6: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000008, Dps6, 0x512, 1215757, Acid Spit, 0, DEBUFF, 0
			 Triggered 2x, delta times: 6.44, 57.65
		[ 12.91] SPELL_AURA_APPLIED_DOSE: [Princess Huhuran->Dps6: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000008, Dps6, 0x512, 1215757, Acid Spit, 0, DEBUFF, 2, 0
			 Triggered 3x, delta times: 12.91, 8.13, 51.78
		[ 38.82] SPELL_AURA_APPLIED: [Princess Huhuran->Tank1: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000003, Tank1, 0x512, 1215757, Acid Spit, 0, DEBUFF, 0
			 Triggered 2x, delta times: 38.82, 50.19
		[ 43.69] SPELL_AURA_APPLIED_DOSE: [Princess Huhuran->Tank1: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000003, Tank1, 0x512, 1215757, Acid Spit, 0, DEBUFF, 2, 0
			 Triggered 4x, delta times: 43.69, 1.62, 3.23, 3.24
		[110.04] SPELL_AURA_APPLIED: [Princess Huhuran->Dps8: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000010, Dps8, 0x512, 26050, Acid Spit, 0, DEBUFF, 0
		[121.41] SPELL_AURA_APPLIED: [Princess Huhuran->Tank1: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000003, Tank1, 0x512, 26050, Acid Spit, 0, DEBUFF, 0
		[124.63] SPELL_AURA_APPLIED_DOSE: [Princess Huhuran->Tank1: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000003, Tank1, 0x512, 26050, Acid Spit, 0, DEBUFF, 2, 0
			 Triggered 2x, delta times: 124.63, 6.47
		[138.96] SPELL_AURA_APPLIED: [Princess Huhuran->Dps6: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000008, Dps6, 0x512, 26050, Acid Spit, 0, DEBUFF, 0
	Noxious Poison, type=spell, spellId=26053, triggerDeltas = 33.96, 16.19, 14.59, 50.17, 12.95
		[ 33.96] SPELL_CAST_SUCCESS: [Princess Huhuran->Dps14: Noxious Poison] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000017, Dps14, 0x512, 1215752, Noxious Poison, 0, 0
		[ 50.15] SPELL_CAST_SUCCESS: [Princess Huhuran->Tank1: Noxious Poison] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000003, Tank1, 0x512, 1215752, Noxious Poison, 0, 0
		[ 64.74] SPELL_CAST_SUCCESS: [Princess Huhuran->Pet2: Noxious Poison] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Pet-0-1-531-1-416-0000000002, Pet2, 0x1112, 1215752, Noxious Poison, 0, 0
		[114.91] SPELL_CAST_SUCCESS: [Princess Huhuran->Dps9: Noxious Poison] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000011, Dps9, 0x512, 26053, Noxious Poison, 0, 0
		[127.86] SPELL_CAST_SUCCESS: [Princess Huhuran->Dps3: Noxious Poison] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000004, Dps3, 0x512, 26053, Noxious Poison, 0, 0
	Berserk, type=spell, spellId=26068, triggerDeltas = 101.96
		[101.96] SPELL_AURA_APPLIED: [Princess Huhuran->Princess Huhuran: Berserk] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, 1215885, Berserk, 0, BUFF, 0
	Wyvern Sting on >%s<, type=target, spellId=26180, triggerDeltas = 26.98, 27.54, 27.52, 42.37, 29.66
		[ 26.98] Scheduled at 25.98 by SPELL_AURA_APPLIED: [Princess Huhuran->Dps5: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000007, Dps5, 0x512, 1215753, Wyvern Sting, 0, DEBUFF, 0
		[ 54.52] Scheduled at 53.52 by SPELL_AURA_APPLIED: [Princess Huhuran->Dps3: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000004, Dps3, 0x512, 1215753, Wyvern Sting, 0, DEBUFF, 0
		[ 82.04] Scheduled at 81.04 by SPELL_AURA_APPLIED: [Princess Huhuran->Dps5: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000007, Dps5, 0x512, 1215753, Wyvern Sting, 0, DEBUFF, 0
		[124.41] Scheduled at 123.41 by SPELL_AURA_APPLIED: [Princess Huhuran->Healer3: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000018, Healer3, 0x512, 26180, Wyvern Sting, 0, DEBUFF, 0
		[154.07] Scheduled at 153.07 by SPELL_AURA_APPLIED: [Princess Huhuran->Dps1: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000001, Dps1, 0x512, 26180, Wyvern Sting, 0, DEBUFF, 0

Special warnings:
	Frenzy on >%s< - dispel now, type=dispel, spellId=26051, triggerDeltas = 8.07, 17.81, 16.21, 24.26, 34.00
		[  8.07] SPELL_AURA_APPLIED: [Princess Huhuran->Princess Huhuran: Frenzy] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, 1215755, Frenzy, 0, BUFF, 0
			 Triggered 5x, delta times: 8.07, 17.81, 16.21, 24.26, 34.00

Yells:
	None

Voice pack sounds:
	VoicePack/trannow
		[  8.07] SPELL_AURA_APPLIED: [Princess Huhuran->Princess Huhuran: Frenzy] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, 1215755, Frenzy, 0, BUFF, 0
			 Triggered 5x, delta times: 8.07, 17.81, 16.21, 24.26, 34.00

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 714, Princess Huhuran, 186, 40, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_AURA_APPLIED 26180 26053 26051 26068 26050 1215757 1215752 1215753 1215755 1215885, SPELL_AURA_APPLIED_DOSE 26050 1215757, SPELL_AURA_REMOVED 26180 26053 26050 1215757 1215752 1215753 26051 1215755, SPELL_CAST_SUCCESS 26053 1215752 1215755, UNIT_HEALTH boss1 boss2 boss3 boss4 boss5 target focus
		StartTimer: 9.6, Frenzy
		StartTimer: 11.0, Noxious Poison
		StartTimer: 20.0, Wyvern Sting
	[  6.44] SPELL_AURA_APPLIED: [Princess Huhuran->Dps6: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000008, Dps6, 0x512, 1215757, Acid Spit, 0, DEBUFF, 0
		StartTimer: 30.0, Acid Spit: Dps6
		ShowAnnounce: Acid Spit on Dps6 (1)
	[  8.07] SPELL_AURA_APPLIED: [Princess Huhuran->Princess Huhuran: Frenzy] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, 1215755, Frenzy, 0, BUFF, 0
		StartTimer: 8.0, Frenzy ends
		StartTimer: 11.8, Frenzy
		ShowSpecialWarning: Frenzy on Princess Huhuran - dispel now
		PlaySound: VoicePack/trannow
	[ 12.91] SPELL_AURA_APPLIED_DOSE: [Princess Huhuran->Dps6: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000008, Dps6, 0x512, 1215757, Acid Spit, 0, DEBUFF, 2, 0
		StartTimer: 30.0, Acid Spit: Dps6
		ShowAnnounce: Acid Spit on Dps6 (2)
	[ 21.04] SPELL_AURA_APPLIED_DOSE: [Princess Huhuran->Dps6: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000008, Dps6, 0x512, 1215757, Acid Spit, 0, DEBUFF, 3, 0
		StartTimer: 30.0, Acid Spit: Dps6
		ShowAnnounce: Acid Spit on Dps6 (3)
	[ 25.88] SPELL_AURA_APPLIED: [Princess Huhuran->Princess Huhuran: Frenzy] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, 1215755, Frenzy, 0, BUFF, 0
		StartTimer: 8.0, Frenzy ends
		StartTimer: 11.8, Frenzy
		ShowSpecialWarning: Frenzy on Princess Huhuran - dispel now
		PlaySound: VoicePack/trannow
	[ 25.98] SPELL_AURA_APPLIED: [Princess Huhuran->Dps5: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000007, Dps5, 0x512, 1215753, Wyvern Sting, 0, DEBUFF, 0
		ScheduleTask: (anonymous function) at 26.98 (+1.00)
			ShowAnnounce: Wyvern Sting on Dps5
			StartTimer: 25.0, Wyvern Sting
	[ 33.96] SPELL_CAST_SUCCESS: [Princess Huhuran->Dps14: Noxious Poison] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000017, Dps14, 0x512, 1215752, Noxious Poison, 0, 0
		ShowAnnounce: Noxious Poison
		StartTimer: 11.0, Noxious Poison
	[ 38.82] SPELL_AURA_APPLIED: [Princess Huhuran->Tank1: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000003, Tank1, 0x512, 1215757, Acid Spit, 0, DEBUFF, 0
		StartTimer: 30.0, Acid Spit: Tank1
		ShowAnnounce: Acid Spit on Tank1 (1)
	[ 42.09] SPELL_AURA_APPLIED: [Princess Huhuran->Princess Huhuran: Frenzy] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, 1215755, Frenzy, 0, BUFF, 0
		StartTimer: 8.0, Frenzy ends
		StartTimer: 11.8, Frenzy
		ShowSpecialWarning: Frenzy on Princess Huhuran - dispel now
		PlaySound: VoicePack/trannow
	[ 43.69] SPELL_AURA_APPLIED_DOSE: [Princess Huhuran->Tank1: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000003, Tank1, 0x512, 1215757, Acid Spit, 0, DEBUFF, 2, 0
		StartTimer: 30.0, Acid Spit: Tank1
		ShowAnnounce: Acid Spit on Tank1 (2)
	[ 44.46] SPELL_AURA_REMOVED: [Princess Huhuran->Princess Huhuran: Frenzy] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, 1215755, Frenzy, 0, BUFF, 0
		StopTimer: Timer26051active3
	[ 45.31] SPELL_AURA_APPLIED_DOSE: [Princess Huhuran->Tank1: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000003, Tank1, 0x512, 1215757, Acid Spit, 0, DEBUFF, 3, 0
		StartTimer: 30.0, Acid Spit: Tank1
		ShowAnnounce: Acid Spit on Tank1 (3)
	[ 48.54] SPELL_AURA_APPLIED_DOSE: [Princess Huhuran->Tank1: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000003, Tank1, 0x512, 1215757, Acid Spit, 0, DEBUFF, 4, 0
		StartTimer: 30.0, Acid Spit: Tank1
		ShowAnnounce: Acid Spit on Tank1 (4)
	[ 50.15] SPELL_CAST_SUCCESS: [Princess Huhuran->Tank1: Noxious Poison] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000003, Tank1, 0x512, 1215752, Noxious Poison, 0, 0
		ShowAnnounce: Noxious Poison
		StartTimer: 11.0, Noxious Poison
	[ 51.78] SPELL_AURA_APPLIED_DOSE: [Princess Huhuran->Tank1: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000003, Tank1, 0x512, 1215757, Acid Spit, 0, DEBUFF, 5, 0
		StartTimer: 30.0, Acid Spit: Tank1
		ShowAnnounce: Acid Spit on Tank1 (5)
	[ 53.47] SPELL_AURA_APPLIED: [Princess Huhuran->Dps5: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000007, Dps5, 0x512, 1215753, Wyvern Sting, 0, DEBUFF, 0
		ScheduleTask: (anonymous function) at 54.47 (+1.00)
			Unscheduled by SPELL_AURA_APPLIED at 53.48
	[ 53.48] SPELL_AURA_APPLIED: [Princess Huhuran->Dps14: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000017, Dps14, 0x512, 1215753, Wyvern Sting, 0, DEBUFF, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 53.47
		ScheduleTask: (anonymous function) at 54.48 (+1.00)
			Unscheduled by SPELL_AURA_APPLIED at 53.50
	[ 53.50] SPELL_AURA_APPLIED: [Princess Huhuran->Dps12: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000015, Dps12, 0x512, 1215753, Wyvern Sting, 0, DEBUFF, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 53.48
		ScheduleTask: (anonymous function) at 54.50 (+1.00)
			Unscheduled by SPELL_AURA_APPLIED at 53.52
	[ 53.52] SPELL_AURA_APPLIED: [Princess Huhuran->Dps3: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000004, Dps3, 0x512, 1215753, Wyvern Sting, 0, DEBUFF, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 53.50
		ScheduleTask: (anonymous function) at 54.52 (+1.00)
			ShowAnnounce: Wyvern Sting on Dps5, Dps14, Dps12, Dps3
			StartTimer: 25.0, Wyvern Sting
	[ 64.09] SPELL_AURA_APPLIED: [Princess Huhuran->Dps6: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000008, Dps6, 0x512, 1215757, Acid Spit, 0, DEBUFF, 0
		StartTimer: 30.0, Acid Spit: Dps6
		ShowAnnounce: Acid Spit on Dps6 (1)
	[ 64.74] SPELL_CAST_SUCCESS: [Princess Huhuran->Pet2: Noxious Poison] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Pet-0-1-531-1-416-0000000002, Pet2, 0x1112, 1215752, Noxious Poison, 0, 0
		ShowAnnounce: Noxious Poison
		StartTimer: 11.0, Noxious Poison
	[ 66.35] SPELL_AURA_APPLIED: [Princess Huhuran->Princess Huhuran: Frenzy] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, 1215755, Frenzy, 0, BUFF, 0
		StartTimer: 8.0, Frenzy ends
		StartTimer: 11.8, Frenzy
		ShowSpecialWarning: Frenzy on Princess Huhuran - dispel now
		PlaySound: VoicePack/trannow
	[ 71.60] SPELL_AURA_REMOVED: [Princess Huhuran->Princess Huhuran: Frenzy] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, 1215755, Frenzy, 0, BUFF, 0
		StopTimer: Timer26051active3
	[ 72.82] SPELL_AURA_APPLIED_DOSE: [Princess Huhuran->Dps6: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000008, Dps6, 0x512, 1215757, Acid Spit, 0, DEBUFF, 2, 0
		StartTimer: 30.0, Acid Spit: Dps6
		ShowAnnounce: Acid Spit on Dps6 (2)
	[ 80.99] SPELL_AURA_APPLIED: [Princess Huhuran->Dps12: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000015, Dps12, 0x512, 1215753, Wyvern Sting, 0, DEBUFF, 0
		ScheduleTask: (anonymous function) at 81.99 (+1.00)
			Unscheduled by SPELL_AURA_APPLIED at 81.02
	[ 81.02] SPELL_AURA_APPLIED: [Princess Huhuran->Dps6: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000008, Dps6, 0x512, 1215753, Wyvern Sting, 0, DEBUFF, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 80.99
		ScheduleTask: (anonymous function) at 82.02 (+1.00)
			Unscheduled by SPELL_AURA_APPLIED at 81.04
	[ 81.04] SPELL_AURA_APPLIED: [Princess Huhuran->Dps8: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000010, Dps8, 0x512, 1215753, Wyvern Sting, 0, DEBUFF, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 81.02
		ScheduleTask: (anonymous function) at 82.04 (+1.00)
			Unscheduled by SPELL_AURA_APPLIED at 81.04
	[ 81.04] SPELL_AURA_APPLIED: [Princess Huhuran->Dps5: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000007, Dps5, 0x512, 1215753, Wyvern Sting, 0, DEBUFF, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 81.04
		ScheduleTask: (anonymous function) at 82.04 (+1.00)
			ShowAnnounce: Wyvern Sting on Dps12, Dps6, Dps8, Dps5
			StartTimer: 25.0, Wyvern Sting
	[ 89.01] SPELL_AURA_APPLIED: [Princess Huhuran->Tank1: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000003, Tank1, 0x512, 1215757, Acid Spit, 0, DEBUFF, 0
		StartTimer: 30.0, Acid Spit: Tank1
		ShowAnnounce: Acid Spit on Tank1 (1)
	[100.35] SPELL_AURA_APPLIED: [Princess Huhuran->Princess Huhuran: Frenzy] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, 1215755, Frenzy, 0, BUFF, 0
		StartTimer: 8.0, Frenzy ends
		StartTimer: 11.8, Frenzy
		ShowSpecialWarning: Frenzy on Princess Huhuran - dispel now
		PlaySound: VoicePack/trannow
	[101.96] SPELL_AURA_APPLIED: [Princess Huhuran->Princess Huhuran: Berserk] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, 1215885, Berserk, 0, BUFF, 0
		ShowAnnounce: Berserk
		StopTimer: Timer26180cd
		StopTimer: Timer26051cd3
	[103.30] SPELL_AURA_REMOVED: [Princess Huhuran->Princess Huhuran: Frenzy] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, 1215755, Frenzy, 0, BUFF, 0
		StopTimer: Timer26051active3
	[110.04] SPELL_AURA_APPLIED: [Princess Huhuran->Dps8: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000010, Dps8, 0x512, 26050, Acid Spit, 0, DEBUFF, 0
		StartTimer: 30.0, Acid Spit: Dps8
		ShowAnnounce: Acid Spit on Dps8 (1)
	[114.91] SPELL_CAST_SUCCESS: [Princess Huhuran->Dps9: Noxious Poison] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000011, Dps9, 0x512, 26053, Noxious Poison, 0, 0
		ShowAnnounce: Noxious Poison
		StartTimer: 11.0, Noxious Poison
	[121.41] SPELL_AURA_APPLIED: [Princess Huhuran->Tank1: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000003, Tank1, 0x512, 26050, Acid Spit, 0, DEBUFF, 0
		StartTimer: 30.0, Acid Spit: Tank1
		ShowAnnounce: Acid Spit on Tank1 (1)
	[123.12] SPELL_AURA_APPLIED: [Princess Huhuran->Dps14: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000017, Dps14, 0x512, 26180, Wyvern Sting, 0, DEBUFF, 0
		ScheduleTask: (anonymous function) at 124.12 (+1.00)
			Unscheduled by SPELL_AURA_APPLIED at 123.13
	[123.13] SPELL_AURA_APPLIED: [Princess Huhuran->Dps12: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000015, Dps12, 0x512, 26180, Wyvern Sting, 0, DEBUFF, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 123.12
		ScheduleTask: (anonymous function) at 124.13 (+1.00)
			Unscheduled by SPELL_AURA_APPLIED at 123.17
	[123.17] SPELL_AURA_APPLIED: [Princess Huhuran->Dps15: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000019, Dps15, 0x512, 26180, Wyvern Sting, 0, DEBUFF, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 123.13
		ScheduleTask: (anonymous function) at 124.17 (+1.00)
			Unscheduled by SPELL_AURA_APPLIED at 123.17
	[123.17] SPELL_AURA_APPLIED: [Princess Huhuran->Dps5: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000007, Dps5, 0x512, 26180, Wyvern Sting, 0, DEBUFF, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 123.17
		ScheduleTask: (anonymous function) at 124.17 (+1.00)
			Unscheduled by SPELL_AURA_APPLIED at 123.17
	[123.17] SPELL_AURA_APPLIED: [Princess Huhuran->Dps3: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000004, Dps3, 0x512, 26180, Wyvern Sting, 0, DEBUFF, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 123.17
		ScheduleTask: (anonymous function) at 124.17 (+1.00)
			Unscheduled by SPELL_AURA_APPLIED at 123.17
	[123.17] SPELL_AURA_APPLIED: [Princess Huhuran->Dps13: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000016, Dps13, 0x512, 26180, Wyvern Sting, 0, DEBUFF, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 123.17
		ScheduleTask: (anonymous function) at 124.17 (+1.00)
			Unscheduled by SPELL_AURA_APPLIED at 123.17
	[123.17] SPELL_AURA_APPLIED: [Princess Huhuran->Dps6: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000008, Dps6, 0x512, 26180, Wyvern Sting, 0, DEBUFF, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 123.17
		ScheduleTask: (anonymous function) at 124.17 (+1.00)
			Unscheduled by SPELL_AURA_APPLIED at 123.41
	[123.41] SPELL_AURA_APPLIED: [Princess Huhuran->Healer3: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000018, Healer3, 0x512, 26180, Wyvern Sting, 0, DEBUFF, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 123.17
		ScheduleTask: (anonymous function) at 124.41 (+1.00)
			ShowAnnounce: Wyvern Sting on Dps14, Dps12, Dps15, Dps5, Dps3, Dps13, Dps6, Healer3
			StartTimer: 25.0, Wyvern Sting
	[124.63] SPELL_AURA_APPLIED_DOSE: [Princess Huhuran->Tank1: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000003, Tank1, 0x512, 26050, Acid Spit, 0, DEBUFF, 2, 0
		StartTimer: 30.0, Acid Spit: Tank1
		ShowAnnounce: Acid Spit on Tank1 (2)
	[127.86] SPELL_CAST_SUCCESS: [Princess Huhuran->Dps3: Noxious Poison] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000004, Dps3, 0x512, 26053, Noxious Poison, 0, 0
		ShowAnnounce: Noxious Poison
		StartTimer: 11.0, Noxious Poison
	[131.10] SPELL_AURA_APPLIED_DOSE: [Princess Huhuran->Tank1: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000003, Tank1, 0x512, 26050, Acid Spit, 0, DEBUFF, 3, 0
		StartTimer: 30.0, Acid Spit: Tank1
		ShowAnnounce: Acid Spit on Tank1 (3)
	[132.08] SPELL_AURA_REMOVED: [Princess Huhuran->Dps8: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000010, Dps8, 0x512, 26050, Acid Spit, 0, DEBUFF, 0
		StopTimer: Timer26050target2\tDps8
	[138.96] SPELL_AURA_APPLIED: [Princess Huhuran->Dps6: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000008, Dps6, 0x512, 26050, Acid Spit, 0, DEBUFF, 0
		StartTimer: 30.0, Acid Spit: Dps6
		ShowAnnounce: Acid Spit on Dps6 (1)
	[152.33] SPELL_AURA_APPLIED: [Princess Huhuran->Tank1: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000003, Tank1, 0x512, 26180, Wyvern Sting, 0, DEBUFF, 0
		ScheduleTask: (anonymous function) at 153.33 (+1.00)
			Unscheduled by SPELL_AURA_APPLIED at 152.82
	[152.82] SPELL_AURA_APPLIED: [Princess Huhuran->Healer2: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000014, Healer2, 0x512, 26180, Wyvern Sting, 0, DEBUFF, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 152.33
		ScheduleTask: (anonymous function) at 153.82 (+1.00)
			Unscheduled by SPELL_AURA_APPLIED at 152.82
	[152.82] SPELL_AURA_APPLIED: [Princess Huhuran->Dps9: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000011, Dps9, 0x512, 26180, Wyvern Sting, 0, DEBUFF, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 152.82
		ScheduleTask: (anonymous function) at 153.82 (+1.00)
			Unscheduled by SPELL_AURA_APPLIED at 152.82
	[152.82] SPELL_AURA_APPLIED: [Princess Huhuran->Dps11: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000013, Dps11, 0x512, 26180, Wyvern Sting, 0, DEBUFF, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 152.82
		ScheduleTask: (anonymous function) at 153.82 (+1.00)
			Unscheduled by SPELL_AURA_APPLIED at 152.88
	[152.88] SPELL_AURA_APPLIED: [Princess Huhuran->Healer1: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000005, Healer1, 0x511, 26180, Wyvern Sting, 0, DEBUFF, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 152.82
		ScheduleTask: (anonymous function) at 153.88 (+1.00)
			Unscheduled by SPELL_AURA_APPLIED at 152.92
		StartTimer: 12.0, Wyvern Sting fades
	[152.92] SPELL_AURA_APPLIED: [Princess Huhuran->Dps2: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000002, Dps2, 0x512, 26180, Wyvern Sting, 0, DEBUFF, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 152.88
		ScheduleTask: (anonymous function) at 153.92 (+1.00)
			Unscheduled by SPELL_AURA_APPLIED at 152.97
	[152.97] SPELL_AURA_APPLIED: [Princess Huhuran->Pet3: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Pet-0-1-531-1-416-0000000003, Pet3, 0x1112, 26180, Wyvern Sting, 0, DEBUFF, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 152.92
		ScheduleTask: (anonymous function) at 153.97 (+1.00)
			Unscheduled by SPELL_AURA_APPLIED at 153.07
	[153.07] SPELL_AURA_APPLIED: [Princess Huhuran->Dps1: Wyvern Sting] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000001, Dps1, 0x512, 26180, Wyvern Sting, 0, DEBUFF, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 152.97
		ScheduleTask: (anonymous function) at 154.07 (+1.00)
			ShowAnnounce: Wyvern Sting on Tank1, Healer2, Dps9, Dps11, PlayerName, Dps2, Pet3, Dps1
			StartTimer: 25.0, Wyvern Sting
	[156.40] SPELL_AURA_REMOVED: [Princess Huhuran->Dps6: Acid Spit] Creature-0-1-531-1-15509-0000000001, Princess Huhuran, 0xa48, Player-1-00000008, Dps6, 0x512, 26050, Acid Spit, 0, DEBUFF, 0
		StopTimer: Timer26050target2\tDps6
	[157.38] ENCOUNTER_END: 714, Princess Huhuran, 186, 40, 1, 0
		EndCombat: ENCOUNTER_END
		AntiSpam: 714
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 26180 26053 26050 1215757 1215752 1215753 26051 1215755
]]
