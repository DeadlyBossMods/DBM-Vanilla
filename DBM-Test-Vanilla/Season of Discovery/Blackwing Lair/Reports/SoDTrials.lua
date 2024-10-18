DBM.Test:Report[[
Test: SoD/BWL/SoDTrials/Synthetic/Week1
Mod:  DBM-Raids-Vanilla/SoDBWLTrials

Findings:
	Unused event registration: SPELL_AURA_APPLIED 466448 (Toxic Pool)
	Unused event registration: SPELL_PERIODIC_DAMAGE 466448 (Toxic Pool)
	Unused event registration: SPELL_PERIODIC_MISSED 466448 (Toxic Pool)
	Announce for spell ID 466357 (Arcane Bomb) is triggered by event SPELL_AURA_APPLIED 466435 (Nature's Fury)
	SpecialWarning for spell ID 466357 (Arcane Bomb) is triggered by event SPELL_AURA_APPLIED 466435 (Nature's Fury)
	Yell for spell ID 466357 (Arcane Bomb) is triggered by event SPELL_AURA_APPLIED 466435 (Nature's Fury)
	Announce for spell ID 466435 (Nature's Fury) is triggered by event SPELL_AURA_APPLIED 466357 (Arcane Bomb)
	SpecialWarning for spell ID 466435 (Nature's Fury) is triggered by event SPELL_AURA_APPLIED 466357 (Arcane Bomb)
	Yell for spell ID 466435 (Nature's Fury) is triggered by event SPELL_AURA_APPLIED 466357 (Arcane Bomb)

Unused objects:
	[Special Warning] %s damage - move away, type=gtfo, spellId=466448

Timers:
	Bombs, time=47.36, type=cd, spellId=<none>, triggerDeltas = 1.00, 9.00, 9.00, 9.00, 9.00, 47.66, 163.34
		[  1.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
		[ 10.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
			 Triggered 2x, delta times: 10.00, 18.00
		[ 19.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player3: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000003, Player3, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[ 37.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466357, Arcane Bomb, 0, DEBUFF, 0
		[ 84.66] Scheduled at 37.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466357, Arcane Bomb, 0, DEBUFF, 0
		[128.00] LOADING_SCREEN_DISABLED: , 0
			 Triggered 2x, delta times: 128.00, 120.00
	Arcane Bomb, time=47.36, type=next, spellId=466357, triggerDeltas = 46.05, 9.00
		[ 46.05] Scheduled at 46.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
		[ 55.05] Scheduled at 55.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466357, Arcane Bomb, 0, DEBUFF, 0
	Nature's Fury, time=47.36, type=next, spellId=466435, triggerDeltas = 64.05, 9.00
		[ 64.05] Scheduled at 64.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
		[ 73.05] Scheduled at 73.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-2-00000002, Player2, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0

Announces:
	Blue Bomb on >%s<, type=target, spellId=466357, triggerDeltas = 19.00, 18.00, 18.05
		[ 19.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player3: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000003, Player3, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[ 37.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466357, Arcane Bomb, 0, DEBUFF, 0
		[ 55.05] Scheduled at 55.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466357, Arcane Bomb, 0, DEBUFF, 0
	Green Bomb on >%s<, type=target, spellId=466435, triggerDeltas = 19.00, 9.00, 9.00, 27.05, 9.00
		[ 19.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player3: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000003, Player3, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[ 28.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[ 37.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466357, Arcane Bomb, 0, DEBUFF, 0
		[ 64.05] Scheduled at 64.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
		[ 73.05] Scheduled at 73.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-2-00000002, Player2, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0

Special warnings:
	Blue and Green on >%s<, type=nil, spellId=<none>, triggerDeltas = 10.00
		[ 10.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
	Blue and Green on YOU, type=nil, spellId=<none>, triggerDeltas = 1.00
		[  1.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
	Blue Bomb on >%s<, type=target, spellId=466357, triggerDeltas = 19.00, 36.05
		[ 19.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player3: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000003, Player3, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[ 55.05] Scheduled at 55.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466357, Arcane Bomb, 0, DEBUFF, 0
	Blue Bomb on you, type=you, spellId=466357, triggerDeltas = 28.00, 18.05
		[ 28.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[ 46.05] Scheduled at 46.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
	Green Bomb - move away from others, type=moveaway, spellId=466435, triggerDeltas = 37.00, 27.05
		[ 37.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466357, Arcane Bomb, 0, DEBUFF, 0
		[ 64.05] Scheduled at 64.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0

Yells:
	{rt8} and {rt6}: %d, type=fade, spellId=<none>
		[  5.00] Scheduled at 1.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
			 Triggered 4x, delta times: 5.00, 1.00, 1.00, 1.00
	{rt8}{rt8}{rt8} and {rt6}{rt6}{rt6}, type=shortyell, spellId=<none>
		[  1.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
		[  3.00] Scheduled at 1.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
	{rt%2$d}%1$d, type=iconfade, spellId=466357
		[ 32.00] Scheduled at 28.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
			 Triggered 4x, delta times: 32.00, 1.00, 1.00, 1.00
		[ 50.05] Scheduled at 46.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
			 Triggered 4x, delta times: 50.05, 1.00, 1.00, 1.00
	{rt%1$d}{rt%1$d}{rt%1$d}, type=icontarget, spellId=466357
		[ 28.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[ 46.05] Scheduled at 46.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
	{rt%2$d}%1$d, type=iconfade, spellId=466435
		[ 42.00] Scheduled at 37.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466357, Arcane Bomb, 0, DEBUFF, 0
			 Triggered 3x, delta times: 42.00, 1.00, 1.00
		[ 69.05] Scheduled at 64.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
			 Triggered 3x, delta times: 69.05, 1.00, 1.00
	{rt%1$d}{rt%1$d}{rt%1$d}, type=icontarget, spellId=466435
		[ 37.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466357, Arcane Bomb, 0, DEBUFF, 0
		[ 64.05] Scheduled at 64.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0

Voice pack sounds:
	VoicePack/gather
		[  1.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
		[ 28.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[ 46.05] Scheduled at 46.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
	VoicePack/helpsoak
		[ 10.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[ 19.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player3: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000003, Player3, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[ 55.05] Scheduled at 55.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466357, Arcane Bomb, 0, DEBUFF, 0
	VoicePack/runout
		[ 37.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466357, Arcane Bomb, 0, DEBUFF, 0
		[ 64.05] Scheduled at 64.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0

Icons:
	None

Event trace:
	[  0.00] ADDON_LOADED: DBM-Raids-Vanilla, 0
		RegisterEvents: Regular, SPELL_AURA_APPLIED 466357 466435 466448, SPELL_PERIODIC_DAMAGE 466448, SPELL_PERIODIC_MISSED 466448
	[  1.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
		ScheduleTask: mod:Bombs() at 1.05 (+0.05)
			Unscheduled by SPELL_AURA_APPLIED at 1.00
	[  1.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
		UnscheduleTask: mod:Bombs() scheduled by ScheduleTask at 1.00
		ShowSpecialWarning: Blue and Green on YOU
		PlaySound: VoicePack/gather
		ShowYell: {rt8}{rt8}{rt8} and {rt6}{rt6}{rt6}
		ScheduleTask: yellBombsshortyell:Schedule() at 3.00 (+2.00)
			ShowYell: {rt8}{rt8}{rt8} and {rt6}{rt6}{rt6}
		ScheduleTask: yellBombsfade:ScheduleCountdown(1.0) at 8.00 (+7.00)
			ShowYell: {rt8} and {rt6}: 1
		ScheduleTask: yellBombsfade:ScheduleCountdown(2.0) at 7.00 (+6.00)
			ShowYell: {rt8} and {rt6}: 2
		ScheduleTask: yellBombsfade:ScheduleCountdown(3.0) at 6.00 (+5.00)
			ShowYell: {rt8} and {rt6}: 3
		ScheduleTask: yellBombsfade:ScheduleCountdown(4.0) at 5.00 (+4.00)
			ShowYell: {rt8} and {rt6}: 4
		StartTimer: 47.4, Bombs
		ScheduleTask: mod:BombTimerLoop() at 48.66 (+47.66)
			Unscheduled by SPELL_AURA_APPLIED at 10.00
	[ 10.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466357, Arcane Bomb, 0, DEBUFF, 0
		ScheduleTask: mod:Bombs() at 10.05 (+0.05)
			Unscheduled by SPELL_AURA_APPLIED at 10.00
	[ 10.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		UnscheduleTask: mod:Bombs() scheduled by ScheduleTask at 10.00
		ShowSpecialWarning: Blue and Green on >Player2<
		PlaySound: VoicePack/helpsoak
		StartTimer: 47.4, Bombs
		UnscheduleTask: mod:BombTimerLoop() scheduled by ScheduleTask at 1.00
		ScheduleTask: mod:BombTimerLoop() at 57.66 (+47.66)
			Unscheduled by SPELL_AURA_APPLIED at 19.00
	[ 19.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466357, Arcane Bomb, 0, DEBUFF, 0
		ScheduleTask: mod:Bombs() at 19.05 (+0.05)
			Unscheduled by SPELL_AURA_APPLIED at 19.00
	[ 19.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player3: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000003, Player3, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		UnscheduleTask: mod:Bombs() scheduled by ScheduleTask at 19.00
		ShowSpecialWarning: Blue Bomb on Player2
		PlaySound: VoicePack/helpsoak
		ShowAnnounce: Blue Bomb on Player2
		ShowAnnounce: Green Bomb on Player3
		StartTimer: 47.4, Bombs
		UnscheduleTask: mod:BombTimerLoop() scheduled by ScheduleTask at 10.00
		ScheduleTask: mod:BombTimerLoop() at 66.66 (+47.66)
			Unscheduled by SPELL_AURA_APPLIED at 28.00
	[ 28.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
		ScheduleTask: mod:Bombs() at 28.05 (+0.05)
			Unscheduled by SPELL_AURA_APPLIED at 28.00
	[ 28.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		UnscheduleTask: mod:Bombs() scheduled by ScheduleTask at 28.00
		ShowYell: {rt6}{rt6}{rt6}
		ScheduleTask: yell466357iconfade:ScheduleCountdown(1.0, 6.0) at 35.00 (+7.00)
			ShowYell: {rt6}1
		ScheduleTask: yell466357iconfade:ScheduleCountdown(2.0, 6.0) at 34.00 (+6.00)
			ShowYell: {rt6}2
		ScheduleTask: yell466357iconfade:ScheduleCountdown(3.0, 6.0) at 33.00 (+5.00)
			ShowYell: {rt6}3
		ScheduleTask: yell466357iconfade:ScheduleCountdown(4.0, 6.0) at 32.00 (+4.00)
			ShowYell: {rt6}4
		ShowSpecialWarning: Blue Bomb on you
		PlaySound: VoicePack/gather
		ShowAnnounce: Green Bomb on Player2
		StartTimer: 47.4, Bombs
		UnscheduleTask: mod:BombTimerLoop() scheduled by ScheduleTask at 19.00
		ScheduleTask: mod:BombTimerLoop() at 75.66 (+47.66)
			Unscheduled by SPELL_AURA_APPLIED at 37.00
	[ 37.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
		ScheduleTask: mod:Bombs() at 37.05 (+0.05)
			Unscheduled by SPELL_AURA_APPLIED at 37.00
	[ 37.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466357, Arcane Bomb, 0, DEBUFF, 0
		UnscheduleTask: mod:Bombs() scheduled by ScheduleTask at 37.00
		ShowAnnounce: Blue Bomb on Player2
		ShowYell: {rt8}{rt8}{rt8}
		ScheduleTask: yell466435iconfade:ScheduleCountdown(1.0, 8.0) at 44.00 (+7.00)
			ShowYell: {rt8}1
		ScheduleTask: yell466435iconfade:ScheduleCountdown(2.0, 8.0) at 43.00 (+6.00)
			ShowYell: {rt8}2
		ScheduleTask: yell466435iconfade:ScheduleCountdown(3.0, 8.0) at 42.00 (+5.00)
			ShowYell: {rt8}3
		ShowSpecialWarning: Green Bomb - move away from others
		PlaySound: VoicePack/runout
		ShowAnnounce: Green Bomb on PlayerName
		StartTimer: 47.4, Bombs
		UnscheduleTask: mod:BombTimerLoop() scheduled by ScheduleTask at 28.00
		ScheduleTask: mod:BombTimerLoop() at 84.66 (+47.66)
			ScheduleTask: mod:BombTimerLoop() at 132.02 (+47.36)
				ScheduleTask: mod:BombTimerLoop() at 179.38 (+47.36)
					ScheduleTask: mod:BombTimerLoop() at 226.74 (+47.36)
						ScheduleTask: mod:BombTimerLoop() at 274.10 (+47.36)
			StartTimer: 47.4, Bombs
			UpdateTimer: TimerBombs, 0.3066664888896, 47.36
	[ 46.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
		ScheduleTask: mod:Bombs() at 46.05 (+0.05)
			ShowYell: {rt6}{rt6}{rt6}
			ScheduleTask: yell466357iconfade:ScheduleCountdown(1.0, 6.0) at 53.05 (+7.00)
				ShowYell: {rt6}1
			ScheduleTask: yell466357iconfade:ScheduleCountdown(2.0, 6.0) at 52.05 (+6.00)
				ShowYell: {rt6}2
			ScheduleTask: yell466357iconfade:ScheduleCountdown(3.0, 6.0) at 51.05 (+5.00)
				ShowYell: {rt6}3
			ScheduleTask: yell466357iconfade:ScheduleCountdown(4.0, 6.0) at 50.05 (+4.00)
				ShowYell: {rt6}4
			ShowSpecialWarning: Blue Bomb on you
			PlaySound: VoicePack/gather
			StartTimer: 47.4, Arcane Bomb
	[ 55.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Player2, 0x512, 466357, Arcane Bomb, 0, DEBUFF, 0
		ScheduleTask: mod:Bombs() at 55.05 (+0.05)
			ShowSpecialWarning: Blue Bomb on Player2
			PlaySound: VoicePack/helpsoak
			ShowAnnounce: Blue Bomb on Player2
			StartTimer: 47.4, Arcane Bomb
	[ 64.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
		ScheduleTask: mod:Bombs() at 64.05 (+0.05)
			ShowYell: {rt8}{rt8}{rt8}
			ScheduleTask: yell466435iconfade:ScheduleCountdown(1.0, 8.0) at 71.05 (+7.00)
				ShowYell: {rt8}1
			ScheduleTask: yell466435iconfade:ScheduleCountdown(2.0, 8.0) at 70.05 (+6.00)
				ShowYell: {rt8}2
			ScheduleTask: yell466435iconfade:ScheduleCountdown(3.0, 8.0) at 69.05 (+5.00)
				ShowYell: {rt8}3
			ShowSpecialWarning: Green Bomb - move away from others
			PlaySound: VoicePack/runout
			ShowAnnounce: Green Bomb on PlayerName
			StartTimer: 47.4, Nature's Fury
	[ 73.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player2: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-2-00000002, Player2, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		ScheduleTask: mod:Bombs() at 73.05 (+0.05)
			ShowAnnounce: Green Bomb on Player2
			StartTimer: 47.4, Nature's Fury
	[128.00] LOADING_SCREEN_DISABLED: , 0
		StopTimer: TimerBombs
	[248.00] LOADING_SCREEN_DISABLED: , 0
		StartTimer: 47.4, Bombs
		UpdateTimer: TimerBombs, 21.55999921415, 47.36
]]
