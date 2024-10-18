DBM.Test:Report[[
Test: SoD/BWL/SoDTrials/Synthetic/Week3
Mod:  DBM-Raids-Vanilla/SoDBWLTrials

Findings:
	Unused event registration: SPELL_AURA_APPLIED 466448 (Toxic Pool)
	Unused event registration: SPELL_PERIODIC_DAMAGE 466448 (Toxic Pool)
	Unused event registration: SPELL_PERIODIC_MISSED 466448 (Toxic Pool)

Unused objects:
	[Announce] Blue Bomb on >%s<, type=target, spellId=466357
	[Special Warning] Blue and Green on >%s<, type=nil, spellId=<none>
	[Special Warning] Blue and Green on YOU, type=nil, spellId=<none>
	[Special Warning] Blue Bomb on >%s<, type=target, spellId=466357
	[Special Warning] %s damage - move away, type=gtfo, spellId=466448
	[Yell] {rt8} and {rt6}: %d, type=fade, spellId=<none>
	[Yell] {rt8}{rt8}{rt8} and {rt6}{rt6}{rt6}, type=shortyell, spellId=<none>

Timers:
	Bombs, time=47.36, type=cd, spellId=<none>, triggerDeltas = 1.05, 5.00, 47.66, 6.34, 47.66, 47.36
		[  1.05] Scheduled at 1.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
		[  6.05] Scheduled at 6.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
			 Triggered 2x, delta times: 6.05, 47.66
		[ 60.05] Scheduled at 60.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
			 Triggered 3x, delta times: 60.05, 47.66, 47.36
	Arcane Bomb, time=47.36, type=next, spellId=466357, triggerDeltas = 151.05
		[151.05] Scheduled at 151.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
	Nature's Fury, time=47.36, type=next, spellId=466435, triggerDeltas = 80.05, 70.00
		[ 80.05] Scheduled at 80.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
		[150.05] Scheduled at 150.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0

Announces:
	Green Bomb on >%s<, type=target, spellId=466435, triggerDeltas = 6.05, 74.00, 70.00
		[  6.05] Scheduled at 6.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
		[ 80.05] Scheduled at 80.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
		[150.05] Scheduled at 150.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0

Special warnings:
	Blue Bomb on you, type=you, spellId=466357, triggerDeltas = 1.05, 59.00, 91.00
		[  1.05] Scheduled at 1.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
		[ 60.05] Scheduled at 60.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
		[151.05] Scheduled at 151.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
	Green Bomb - move away from others, type=moveaway, spellId=466435, triggerDeltas = 6.05, 74.00, 70.00
		[  6.05] Scheduled at 6.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
		[ 80.05] Scheduled at 80.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
		[150.05] Scheduled at 150.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0

Yells:
	{rt%2$d}%1$d, type=iconfade, spellId=466357
		[  5.05] Scheduled at 1.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
			 Triggered 4x, delta times: 5.05, 1.00, 1.00, 1.00
		[ 64.05] Scheduled at 60.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
			 Triggered 4x, delta times: 64.05, 1.00, 1.00, 1.00
		[155.05] Scheduled at 151.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
			 Triggered 4x, delta times: 155.05, 1.00, 1.00, 1.00
	{rt%1$d}{rt%1$d}{rt%1$d}, type=icontarget, spellId=466357
		[  1.05] Scheduled at 1.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
		[ 60.05] Scheduled at 60.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
		[151.05] Scheduled at 151.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
	{rt%2$d}%1$d, type=iconfade, spellId=466435
		[ 11.05] Scheduled at 6.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
			 Triggered 3x, delta times: 11.05, 1.00, 1.00
		[ 85.05] Scheduled at 80.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
			 Triggered 3x, delta times: 85.05, 1.00, 1.00
		[155.05] Scheduled at 150.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
			 Triggered 3x, delta times: 155.05, 1.00, 1.00
	{rt%1$d}{rt%1$d}{rt%1$d}, type=icontarget, spellId=466435
		[  6.05] Scheduled at 6.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
		[ 80.05] Scheduled at 80.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
		[150.05] Scheduled at 150.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0

Voice pack sounds:
	VoicePack/gather
		[  1.05] Scheduled at 1.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
		[ 60.05] Scheduled at 60.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
		[151.05] Scheduled at 151.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
	VoicePack/runout
		[  6.05] Scheduled at 6.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
		[ 80.05] Scheduled at 80.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
		[150.05] Scheduled at 150.00 by SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0

Icons:
	None

Event trace:
	[  0.00] ADDON_LOADED: DBM-Raids-Vanilla, 0
		RegisterEvents: Regular, SPELL_AURA_APPLIED 466357 466435 466448, SPELL_PERIODIC_DAMAGE 466448, SPELL_PERIODIC_MISSED 466448
	[  1.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
		ScheduleTask: mod:Bombs() at 1.05 (+0.05)
			ShowYell: {rt6}{rt6}{rt6}
			ScheduleTask: yell466357iconfade:ScheduleCountdown(1.0, 6.0) at 8.05 (+7.00)
				ShowYell: {rt6}1
			ScheduleTask: yell466357iconfade:ScheduleCountdown(2.0, 6.0) at 7.05 (+6.00)
				ShowYell: {rt6}2
			ScheduleTask: yell466357iconfade:ScheduleCountdown(3.0, 6.0) at 6.05 (+5.00)
				ShowYell: {rt6}3
			ScheduleTask: yell466357iconfade:ScheduleCountdown(4.0, 6.0) at 5.05 (+4.00)
				ShowYell: {rt6}4
			ShowSpecialWarning: Blue Bomb on you
			PlaySound: VoicePack/gather
			StartTimer: 47.4, Bombs
			ScheduleTask: mod:BombTimerLoop() at 48.71 (+47.66)
				Unscheduled by ExecuteScheduledTask at 6.05
	[  6.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
		ScheduleTask: mod:Bombs() at 6.05 (+0.05)
			ShowYell: {rt8}{rt8}{rt8}
			ScheduleTask: yell466435iconfade:ScheduleCountdown(1.0, 8.0) at 13.05 (+7.00)
				ShowYell: {rt8}1
			ScheduleTask: yell466435iconfade:ScheduleCountdown(2.0, 8.0) at 12.05 (+6.00)
				ShowYell: {rt8}2
			ScheduleTask: yell466435iconfade:ScheduleCountdown(3.0, 8.0) at 11.05 (+5.00)
				ShowYell: {rt8}3
			ShowSpecialWarning: Green Bomb - move away from others
			PlaySound: VoicePack/runout
			ShowAnnounce: Green Bomb on PlayerName
			StartTimer: 47.4, Bombs
			UnscheduleTask: mod:BombTimerLoop() scheduled by ScheduleTask at 1.05
			ScheduleTask: mod:BombTimerLoop() at 53.71 (+47.66)
				ScheduleTask: mod:BombTimerLoop() at 101.07 (+47.36)
					Unscheduled by ExecuteScheduledTask at 60.05
				StartTimer: 47.4, Bombs
				UpdateTimer: TimerBombs, 0.3066664888896, 47.36
	[ 60.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
		ScheduleTask: mod:Bombs() at 60.05 (+0.05)
			ShowYell: {rt6}{rt6}{rt6}
			ScheduleTask: yell466357iconfade:ScheduleCountdown(1.0, 6.0) at 67.05 (+7.00)
				ShowYell: {rt6}1
			ScheduleTask: yell466357iconfade:ScheduleCountdown(2.0, 6.0) at 66.05 (+6.00)
				ShowYell: {rt6}2
			ScheduleTask: yell466357iconfade:ScheduleCountdown(3.0, 6.0) at 65.05 (+5.00)
				ShowYell: {rt6}3
			ScheduleTask: yell466357iconfade:ScheduleCountdown(4.0, 6.0) at 64.05 (+4.00)
				ShowYell: {rt6}4
			ShowSpecialWarning: Blue Bomb on you
			PlaySound: VoicePack/gather
			StartTimer: 47.4, Bombs
			UnscheduleTask: mod:BombTimerLoop() scheduled by ScheduleTask at 53.71
			ScheduleTask: mod:BombTimerLoop() at 107.71 (+47.66)
				ScheduleTask: mod:BombTimerLoop() at 155.07 (+47.36)
					ScheduleTask: mod:BombTimerLoop() at 202.43 (+47.36)
					StartTimer: 47.4, Bombs
					UpdateTimer: TimerBombs, 0.31333297923207, 47.36
				StartTimer: 47.4, Bombs
				UpdateTimer: TimerBombs, 0.3066664888896, 47.36
	[ 80.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
		ScheduleTask: mod:Bombs() at 80.05 (+0.05)
			ShowYell: {rt8}{rt8}{rt8}
			ScheduleTask: yell466435iconfade:ScheduleCountdown(1.0, 8.0) at 87.05 (+7.00)
				ShowYell: {rt8}1
			ScheduleTask: yell466435iconfade:ScheduleCountdown(2.0, 8.0) at 86.05 (+6.00)
				ShowYell: {rt8}2
			ScheduleTask: yell466435iconfade:ScheduleCountdown(3.0, 8.0) at 85.05 (+5.00)
				ShowYell: {rt8}3
			ShowSpecialWarning: Green Bomb - move away from others
			PlaySound: VoicePack/runout
			ShowAnnounce: Green Bomb on PlayerName
			StartTimer: 47.4, Nature's Fury
	[150.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Nature's Fury] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466435, Nature's Fury, 0, DEBUFF, 0
		ScheduleTask: mod:Bombs() at 150.05 (+0.05)
			ShowYell: {rt8}{rt8}{rt8}
			ScheduleTask: yell466435iconfade:ScheduleCountdown(1.0, 8.0) at 157.05 (+7.00)
				ShowYell: {rt8}1
			ScheduleTask: yell466435iconfade:ScheduleCountdown(2.0, 8.0) at 156.05 (+6.00)
				ShowYell: {rt8}2
			ScheduleTask: yell466435iconfade:ScheduleCountdown(3.0, 8.0) at 155.05 (+5.00)
				ShowYell: {rt8}3
			ShowSpecialWarning: Green Bomb - move away from others
			PlaySound: VoicePack/runout
			ShowAnnounce: Green Bomb on PlayerName
			StartTimer: 47.4, Nature's Fury
	[151.00] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Player1: Arcane Bomb] Creature-0-1-469-1-231678-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Player1, 0x511, 466357, Arcane Bomb, 0, DEBUFF, 0
		ScheduleTask: mod:Bombs() at 151.05 (+0.05)
			ShowYell: {rt6}{rt6}{rt6}
			ScheduleTask: yell466357iconfade:ScheduleCountdown(1.0, 6.0) at 158.05 (+7.00)
				ShowYell: {rt6}1
			ScheduleTask: yell466357iconfade:ScheduleCountdown(2.0, 6.0) at 157.05 (+6.00)
				ShowYell: {rt6}2
			ScheduleTask: yell466357iconfade:ScheduleCountdown(3.0, 6.0) at 156.05 (+5.00)
				ShowYell: {rt6}3
			ScheduleTask: yell466357iconfade:ScheduleCountdown(4.0, 6.0) at 155.05 (+4.00)
				ShowYell: {rt6}4
			ShowSpecialWarning: Blue Bomb on you
			PlaySound: VoicePack/gather
			StartTimer: 47.4, Arcane Bomb
]]
