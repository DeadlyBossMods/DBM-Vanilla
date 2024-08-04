DBM.Test:Report[[
Test: SoD/ST/ShadeOfEranikus
Mod:  DBM-Raids-Vanilla/ShadeofEranikusSoD

Findings:
	Unused event registration: SPELL_AURA_APPLIED 437425 (Lethargic Poison)
	Unused event registration: SPELL_CAST_SUCCESS 3391 (Thrash)
	Unused event registration: SPELL_DAMAGE 445575 (Acid Rain)
	Unused event registration: SPELL_MISSED 445575 (Acid Rain)

Unused objects:
	[Announce] Thrash, type=spell, spellId=3391
	[Special Warning] %s damage - move away, type=gtfo, spellId=445575

Timers:
	Deep Slumber (%s), time=19.40, type=cdcount, spellId=437301, triggerDeltas = 0.00, 14.25, 40.93, 19.00, 43.71, 19.41
		[  0.00] ENCOUNTER_START: 2959, Shade of Eranikus, 215, 20, 0
		[ 14.25] SPELL_CAST_START: [Shade of Eranikus: Deep Slumber] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437301, Deep Slumber, 0, 0
			 Triggered 5x, delta times: 14.25, 40.93, 19.00, 43.71, 19.41
	Corrosive Breath, time=19.30, type=cd, spellId=437353, triggerDeltas = 0.00, 6.17, 19.39, 40.95, 22.22, 40.48, 19.08
		[  0.00] ENCOUNTER_START: 2959, Shade of Eranikus, 215, 20, 0
		[  6.17] SPELL_CAST_START: [Shade of Eranikus: Corrosive Breath] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437353, Corrosive Breath, 0, 0
			 Triggered 6x, delta times: 6.17, 19.39, 40.95, 22.22, 40.48, 19.08
	Lethargic Poison, time=19.30, type=cd, spellId=437390, triggerDeltas = 0.00, 15.87, 40.93, 18.99, 43.71, 19.42
		[  0.00] ENCOUNTER_START: 2959, Shade of Eranikus, 215, 20, 0
		[ 15.87] SPELL_CAST_START: [Shade of Eranikus: Lethargic Poison] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437390, Lethargic Poison, 0, 0
			 Triggered 5x, delta times: 15.87, 40.93, 18.99, 43.71, 19.42
	Waking Nightmare (%s), time=66.30, type=cdcount, spellId=437398, triggerDeltas = 0.00, 32.06, 50.21
		[  0.00] ENCOUNTER_START: 2959, Shade of Eranikus, 215, 20, 0
		[ 32.06] SPELL_SUMMON: [Shade of Eranikus->Lumbering Dreamwalker: Dreamwalker] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Creature-0-5208-109-4570-218606-00003BDA4D, Lumbering Dreamwalker, 0xa48, 437416, Dreamwalker, 0, 0
		[ 82.27] SPELL_CAST_START: [Shade of Eranikus: Waking Nightmare] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437398, Waking Nightmare, 0, 0
	Deep Slumber ends, time=23.00, type=active, spellId=437410, triggerDeltas = 32.06, 61.52
		[ 32.06] SPELL_CAST_START: [Shade of Eranikus: Deep Slumber] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437410, Deep Slumber, 0, 0
			 Triggered 2x, delta times: 32.06, 61.52
	Bellowing Roar (%s), time=33.50, type=cdcount, spellId=445498, triggerDeltas = 0.00, 22.32, 101.45
		[  0.00] ENCOUNTER_START: 2959, Shade of Eranikus, 215, 20, 0
		[ 22.32] SPELL_CAST_START: [Shade of Eranikus: Bellowing Roar] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 445498, Bellowing Roar, 0, 0
			 Triggered 2x, delta times: 22.32, 101.45

Announces:
	Lethargic Poison on >%s<, type=target, spellId=437390, triggerDeltas = 17.12, 40.80, 18.97, 43.36, 20.60
		[ 17.12] SPELL_AURA_APPLIED: [Shade of Eranikus->Gigachaddmg: Lethargic Poison] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Player-5826-026CD99F, Gigachaddmg, 0x512, 437390, Lethargic Poison, 0, DEBUFF, 0
		[ 57.92] SPELL_AURA_APPLIED: [Shade of Eranikus->Mazl: Lethargic Poison] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Player-5826-02005C8A, Mazl, 0x512, 437390, Lethargic Poison, 0, DEBUFF, 0
		[ 76.89] SPELL_AURA_APPLIED: [Shade of Eranikus->Behlial: Lethargic Poison] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Player-5826-01FE80C7, Behlial, 0x512, 437390, Lethargic Poison, 0, DEBUFF, 0
		[120.25] SPELL_AURA_APPLIED: [Shade of Eranikus->Discokeks: Lethargic Poison] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Player-5826-0239D943, Discokeks, 0x512, 437390, Lethargic Poison, 0, DEBUFF, 0
		[140.85] Scheduled at 139.65 by SPELL_AURA_APPLIED: [Shade of Eranikus->Arthritîs: Lethargic Poison] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Player-5826-02233DFA, Arthritîs, 0x512, 437390, Lethargic Poison, 0, DEBUFF, 0

Special warnings:
	Deep Slumber (%s) - dodge attack, type=dodgecount, spellId=437301, triggerDeltas = 14.25, 40.93, 19.00, 43.71, 19.41
		[ 14.25] SPELL_CAST_START: [Shade of Eranikus: Deep Slumber] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437301, Deep Slumber, 0, 0
			 Triggered 5x, delta times: 14.25, 40.93, 19.00, 43.71, 19.41
	Corrosive Breath - defensive, type=defensive, spellId=437353, triggerDeltas = 6.17, 19.39, 40.95, 22.22, 40.48, 19.08
		[  6.17] SPELL_CAST_START: [Shade of Eranikus: Corrosive Breath] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437353, Corrosive Breath, 0, 0
			 Triggered 6x, delta times: 6.17, 19.39, 40.95, 22.22, 40.48, 19.08
	Corrosive Breath on >%s< - taunt now, type=taunt, spellId=437353, triggerDeltas = 29.56, 63.19, 59.55
		[ 29.56] SPELL_AURA_APPLIED: [Shade of Eranikus->Mafakacoil: Corrosive Breath] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 437353, Corrosive Breath, 0, DEBUFF, 0
			 Triggered 3x, delta times: 29.56, 63.19, 59.55
	Waking Nightmare - move to >%s<, type=moveto, spellId=437398, triggerDeltas = 82.27
		[ 82.27] SPELL_CAST_START: [Shade of Eranikus: Waking Nightmare] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437398, Waking Nightmare, 0, 0
	Lethargic Poison - interrupt >%s<! (%d), type=interruptcount, spellId=437425, triggerDeltas = 37.32, 0.00, 61.12, 0.40, 1.65
		[ 37.32] SPELL_CAST_START: [Lumbering Dreamwalker: Lethargic Poison] Creature-0-5208-109-4570-218606-00003BDA4D, Lumbering Dreamwalker, 0xa48, "", nil, 0x0, 437425, Lethargic Poison, 0, 0
			 Triggered 5x, delta times: 37.32, 0.00, 61.12, 0.40, 1.65
	Bellowing Roar - interrupt >%s<! (%d), type=interruptcount, spellId=445498, triggerDeltas = 22.32, 101.45
		[ 22.32] SPELL_CAST_START: [Shade of Eranikus: Bellowing Roar] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 445498, Bellowing Roar, 0, 0
			 Triggered 2x, delta times: 22.32, 101.45

Yells:
	None

Voice pack sounds:
	VoicePack/defensive
		[  6.17] SPELL_CAST_START: [Shade of Eranikus: Corrosive Breath] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437353, Corrosive Breath, 0, 0
			 Triggered 6x, delta times: 6.17, 19.39, 40.95, 22.22, 40.48, 19.08
	VoicePack/kick1r
		[ 37.32] SPELL_CAST_START: [Lumbering Dreamwalker: Lethargic Poison] Creature-0-5208-109-4570-218606-00003BDA4D, Lumbering Dreamwalker, 0xa48, "", nil, 0x0, 437425, Lethargic Poison, 0, 0
			 Triggered 4x, delta times: 37.32, 0.00, 61.12, 0.40
	VoicePack/kick2r
		[100.49] SPELL_CAST_START: [Lumbering Dreamwalker: Lethargic Poison] Creature-0-5208-109-4570-218606-0000BBDA8B, Lumbering Dreamwalker, 0xa48, "", nil, 0x0, 437425, Lethargic Poison, 0, 0
	VoicePack/kickcast
		[ 22.32] SPELL_CAST_START: [Shade of Eranikus: Bellowing Roar] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 445498, Bellowing Roar, 0, 0
			 Triggered 2x, delta times: 22.32, 101.45
	VoicePack/tauntboss
		[ 29.56] SPELL_AURA_APPLIED: [Shade of Eranikus->Mafakacoil: Corrosive Breath] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 437353, Corrosive Breath, 0, DEBUFF, 0
			 Triggered 3x, delta times: 29.56, 63.19, 59.55
	VoicePack/watchstep
		[ 14.25] SPELL_CAST_START: [Shade of Eranikus: Deep Slumber] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437301, Deep Slumber, 0, 0
			 Triggered 5x, delta times: 14.25, 40.93, 19.00, 43.71, 19.41

Icons:
	Icon 7, target=Creature-0-5208-109-4570-218606-0000BBDA4D, scanMethod=nil
		[ 32.06] SPELL_SUMMON: [Shade of Eranikus->Lumbering Dreamwalker: Dreamwalker] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Creature-0-5208-109-4570-218606-0000BBDA4D, Lumbering Dreamwalker, 0xa48, 437418, Dreamwalker, 0, 0
	Icon 7, target=Creature-0-5208-109-4570-218606-0000BBDA8B, scanMethod=nil
		[ 93.58] SPELL_SUMMON: [Shade of Eranikus->Lumbering Dreamwalker: Dreamwalker] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Creature-0-5208-109-4570-218606-0000BBDA8B, Lumbering Dreamwalker, 0xa48, 437418, Dreamwalker, 0, 0
	Icon 8, target=Creature-0-5208-109-4570-218606-00003BDA4D, scanMethod=nil
		[ 32.06] SPELL_SUMMON: [Shade of Eranikus->Lumbering Dreamwalker: Dreamwalker] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Creature-0-5208-109-4570-218606-00003BDA4D, Lumbering Dreamwalker, 0xa48, 437416, Dreamwalker, 0, 0
	Icon 8, target=Creature-0-5208-109-4570-218606-00003BDA8B, scanMethod=nil
		[ 93.58] SPELL_SUMMON: [Shade of Eranikus->Lumbering Dreamwalker: Dreamwalker] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Creature-0-5208-109-4570-218606-00003BDA8B, Lumbering Dreamwalker, 0xa48, 437416, Dreamwalker, 0, 0

Event trace:
	[  0.00] ENCOUNTER_START: 2959, Shade of Eranikus, 215, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_START 437353 437301 437390 445498 437398 437425 437410, SPELL_CAST_SUCCESS 3391, SPELL_SUMMON 437416 437418, SPELL_AURA_APPLIED 437353 437390 437425, SPELL_DAMAGE 445575, SPELL_MISSED 445575
		StartTimer: 6.4, Corrosive Breath
		StartTimer: 14.5, Deep Slumber (1)
		StartTimer: 16.1, Lethargic Poison
		StartTimer: 20.9, Bellowing Roar (1)
		StartTimer: 61.1, Waking Nightmare (1)
	[  6.17] SPELL_CAST_START: [Shade of Eranikus: Corrosive Breath] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437353, Corrosive Breath, 0, 0
		ShowSpecialWarning: Corrosive Breath - defensive
		PlaySound: VoicePack/defensive
		StartTimer: 19.3, Corrosive Breath
	[ 14.25] SPELL_CAST_START: [Shade of Eranikus: Deep Slumber] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437301, Deep Slumber, 0, 0
		ShowSpecialWarning: Deep Slumber (1) - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 19.4, Deep Slumber (2)
	[ 15.87] SPELL_CAST_START: [Shade of Eranikus: Lethargic Poison] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437390, Lethargic Poison, 0, 0
		StartTimer: 19.3, Lethargic Poison
	[ 17.12] SPELL_AURA_APPLIED: [Shade of Eranikus->Gigachaddmg: Lethargic Poison] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Player-5826-026CD99F, Gigachaddmg, 0x512, 437390, Lethargic Poison, 0, DEBUFF, 0
		ShowAnnounce: Lethargic Poison on PlayerName, Arthritîs, Bruzo, Gigachaddmg
	[ 22.32] SPELL_CAST_START: [Shade of Eranikus: Bellowing Roar] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 445498, Bellowing Roar, 0, 0
		ShowSpecialWarning: Bellowing Roar - interrupt Shade of Eranikus! (1)
		PlaySound: VoicePack/kickcast
		StartTimer: 33.5, Bellowing Roar (2)
	[ 25.56] SPELL_CAST_START: [Shade of Eranikus: Corrosive Breath] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437353, Corrosive Breath, 0, 0
		ShowSpecialWarning: Corrosive Breath - defensive
		PlaySound: VoicePack/defensive
		StartTimer: 19.3, Corrosive Breath
	[ 29.56] SPELL_AURA_APPLIED: [Shade of Eranikus->Mafakacoil: Corrosive Breath] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 437353, Corrosive Breath, 0, DEBUFF, 0
		ShowSpecialWarning: Corrosive Breath on Mafakacoil - taunt now
		PlaySound: VoicePack/tauntboss
	[ 32.06] SPELL_SUMMON: [Shade of Eranikus->Lumbering Dreamwalker: Dreamwalker] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Creature-0-5208-109-4570-218606-00003BDA4D, Lumbering Dreamwalker, 0xa48, 437416, Dreamwalker, 0, 0
		StopTimer: Timer437398cdcount\t1
		StartTimer: 60.1, Waking Nightmare (1)
		ScanForMobs: Creature-0-5208-109-4570-218606-00003BDA4D, 2, 8, 1
	[ 32.06] SPELL_SUMMON: [Shade of Eranikus->Lumbering Dreamwalker: Dreamwalker] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Creature-0-5208-109-4570-218606-0000BBDA4D, Lumbering Dreamwalker, 0xa48, 437418, Dreamwalker, 0, 0
		ScanForMobs: Creature-0-5208-109-4570-218606-0000BBDA4D, 2, 7, 1
	[ 32.06] SPELL_CAST_START: [Shade of Eranikus: Deep Slumber] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437410, Deep Slumber, 0, 0
		StartTimer: 23.0, Deep Slumber ends
	[ 37.32] SPELL_CAST_START: [Lumbering Dreamwalker: Lethargic Poison] Creature-0-5208-109-4570-218606-00003BDA4D, Lumbering Dreamwalker, 0xa48, "", nil, 0x0, 437425, Lethargic Poison, 0, 0
		ShowSpecialWarning: Lethargic Poison - interrupt Lumbering Dreamwalker! (1)
		PlaySound: VoicePack/kick1r
	[ 37.32] SPELL_CAST_START: [Lumbering Dreamwalker: Lethargic Poison] Creature-0-5208-109-4570-218606-0000BBDA4D, Lumbering Dreamwalker, 0xa48, "", nil, 0x0, 437425, Lethargic Poison, 0, 0
		ShowSpecialWarning: Lethargic Poison - interrupt Lumbering Dreamwalker! (1)
		PlaySound: VoicePack/kick1r
	[ 55.18] SPELL_CAST_START: [Shade of Eranikus: Deep Slumber] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437301, Deep Slumber, 0, 0
		ShowSpecialWarning: Deep Slumber (2) - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 19.4, Deep Slumber (3)
	[ 56.80] SPELL_CAST_START: [Shade of Eranikus: Lethargic Poison] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437390, Lethargic Poison, 0, 0
		StartTimer: 19.3, Lethargic Poison
	[ 57.92] SPELL_AURA_APPLIED: [Shade of Eranikus->Mazl: Lethargic Poison] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Player-5826-02005C8A, Mazl, 0x512, 437390, Lethargic Poison, 0, DEBUFF, 0
		ShowAnnounce: Lethargic Poison on Stolzenburg, Shelisea, Discokeks, Mazl
	[ 66.51] SPELL_CAST_START: [Shade of Eranikus: Corrosive Breath] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437353, Corrosive Breath, 0, 0
		ShowSpecialWarning: Corrosive Breath - defensive
		PlaySound: VoicePack/defensive
		StartTimer: 19.3, Corrosive Breath
	[ 74.18] SPELL_CAST_START: [Shade of Eranikus: Deep Slumber] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437301, Deep Slumber, 0, 0
		ShowSpecialWarning: Deep Slumber (3) - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 19.4, Deep Slumber (4)
	[ 75.79] SPELL_CAST_START: [Shade of Eranikus: Lethargic Poison] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437390, Lethargic Poison, 0, 0
		StartTimer: 19.3, Lethargic Poison
	[ 76.89] SPELL_AURA_APPLIED: [Shade of Eranikus->Behlial: Lethargic Poison] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Player-5826-01FE80C7, Behlial, 0x512, 437390, Lethargic Poison, 0, DEBUFF, 0
		ShowAnnounce: Lethargic Poison on Bruzo, Arthritîs, Holyforce, Behlial
	[ 82.27] SPELL_CAST_START: [Shade of Eranikus: Waking Nightmare] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437398, Waking Nightmare, 0, 0
		ShowSpecialWarning: Waking Nightmare - move to Deep Slumber
		PlaySound: DBM/SpecialWarningSound3
		StartTimer: 66.3, Waking Nightmare (2)
	[ 88.73] SPELL_CAST_START: [Shade of Eranikus: Corrosive Breath] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437353, Corrosive Breath, 0, 0
		ShowSpecialWarning: Corrosive Breath - defensive
		PlaySound: VoicePack/defensive
		StartTimer: 19.3, Corrosive Breath
	[ 92.75] SPELL_AURA_APPLIED: [Shade of Eranikus->Mafakacoil: Corrosive Breath] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 437353, Corrosive Breath, 0, DEBUFF, 0
		ShowSpecialWarning: Corrosive Breath on Mafakacoil - taunt now
		PlaySound: VoicePack/tauntboss
	[ 93.58] SPELL_SUMMON: [Shade of Eranikus->Lumbering Dreamwalker: Dreamwalker] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Creature-0-5208-109-4570-218606-00003BDA8B, Lumbering Dreamwalker, 0xa48, 437416, Dreamwalker, 0, 0
		ScanForMobs: Creature-0-5208-109-4570-218606-00003BDA8B, 2, 8, 1
	[ 93.58] SPELL_SUMMON: [Shade of Eranikus->Lumbering Dreamwalker: Dreamwalker] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Creature-0-5208-109-4570-218606-0000BBDA8B, Lumbering Dreamwalker, 0xa48, 437418, Dreamwalker, 0, 0
		ScanForMobs: Creature-0-5208-109-4570-218606-0000BBDA8B, 2, 7, 1
	[ 93.58] SPELL_CAST_START: [Shade of Eranikus: Deep Slumber] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437410, Deep Slumber, 0, 0
		StartTimer: 23.0, Deep Slumber ends
	[ 98.44] SPELL_CAST_START: [Lumbering Dreamwalker: Lethargic Poison] Creature-0-5208-109-4570-218606-0000BBDA8B, Lumbering Dreamwalker, 0xa48, "", nil, 0x0, 437425, Lethargic Poison, 0, 0
		ShowSpecialWarning: Lethargic Poison - interrupt Lumbering Dreamwalker! (1)
		PlaySound: VoicePack/kick1r
	[ 98.84] SPELL_CAST_START: [Lumbering Dreamwalker: Lethargic Poison] Creature-0-5208-109-4570-218606-00003BDA8B, Lumbering Dreamwalker, 0xa48, "", nil, 0x0, 437425, Lethargic Poison, 0, 0
		ShowSpecialWarning: Lethargic Poison - interrupt Lumbering Dreamwalker! (1)
		PlaySound: VoicePack/kick1r
	[100.49] SPELL_CAST_START: [Lumbering Dreamwalker: Lethargic Poison] Creature-0-5208-109-4570-218606-0000BBDA8B, Lumbering Dreamwalker, 0xa48, "", nil, 0x0, 437425, Lethargic Poison, 0, 0
		ShowSpecialWarning: Lethargic Poison - interrupt Lumbering Dreamwalker! (2)
		PlaySound: VoicePack/kick2r
	[117.89] SPELL_CAST_START: [Shade of Eranikus: Deep Slumber] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437301, Deep Slumber, 0, 0
		ShowSpecialWarning: Deep Slumber (4) - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 19.4, Deep Slumber (5)
	[119.50] SPELL_CAST_START: [Shade of Eranikus: Lethargic Poison] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437390, Lethargic Poison, 0, 0
		StartTimer: 19.3, Lethargic Poison
	[120.25] SPELL_AURA_APPLIED: [Shade of Eranikus->Discokeks: Lethargic Poison] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Player-5826-0239D943, Discokeks, 0x512, 437390, Lethargic Poison, 0, DEBUFF, 0
		ShowAnnounce: Lethargic Poison on Mafakacoil, Behlial, Arthritîs, Discokeks
	[123.77] SPELL_CAST_START: [Shade of Eranikus: Bellowing Roar] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 445498, Bellowing Roar, 0, 0
		ShowSpecialWarning: Bellowing Roar - interrupt Shade of Eranikus! (2)
		PlaySound: VoicePack/kickcast
		StartTimer: 33.5, Bellowing Roar (3)
	[129.21] SPELL_CAST_START: [Shade of Eranikus: Corrosive Breath] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437353, Corrosive Breath, 0, 0
		ShowSpecialWarning: Corrosive Breath - defensive
		PlaySound: VoicePack/defensive
		StartTimer: 19.3, Corrosive Breath
	[137.30] SPELL_CAST_START: [Shade of Eranikus: Deep Slumber] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437301, Deep Slumber, 0, 0
		ShowSpecialWarning: Deep Slumber (5) - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 19.4, Deep Slumber (6)
	[138.92] SPELL_CAST_START: [Shade of Eranikus: Lethargic Poison] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437390, Lethargic Poison, 0, 0
		StartTimer: 19.3, Lethargic Poison
	[139.65] SPELL_AURA_APPLIED: [Shade of Eranikus->Arthritîs: Lethargic Poison] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Player-5826-02233DFA, Arthritîs, 0x512, 437390, Lethargic Poison, 0, DEBUFF, 0
		ScheduleTask: announce437390target:PreciseShow(4.0, "Arthritîs") at 140.85 (+1.20)
			ShowAnnounce: Lethargic Poison on Stolzenburg, Bruzo, Arthritîs
	[148.29] SPELL_CAST_START: [Shade of Eranikus: Corrosive Breath] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, "", nil, 0x0, 437353, Corrosive Breath, 0, 0
		ShowSpecialWarning: Corrosive Breath - defensive
		PlaySound: VoicePack/defensive
		StartTimer: 19.3, Corrosive Breath
	[152.30] SPELL_AURA_APPLIED: [Shade of Eranikus->Mafakacoil: Corrosive Breath] Creature-0-5208-109-4570-218571-00003BC783, Shade of Eranikus, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 437353, Corrosive Breath, 0, DEBUFF, 0
		ShowSpecialWarning: Corrosive Breath on Mafakacoil - taunt now
		PlaySound: VoicePack/tauntboss
	[153.26] ENCOUNTER_END: 2959, Shade of Eranikus, 215, 20, 1, 0
		EndCombat: ENCOUNTER_END
]]
