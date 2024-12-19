DBM.Test:Report[[
Test: SoD/AQ40/CThun/Hardmode
Mod:  DBM-Raids-Vanilla/CThun

Findings:
	None

Unused objects:
	[Special Warning] Eye Beam on you, type=you, spellId=26134
	[Yell] Eye Beam on PlayerName, type=yell, spellId=26134

Timers:
	Claw Tentacle, time=8.00, type=cd, spellId=<none>, triggerDeltas = 0.00, 8.00, 7.99, 8.00, 8.00, 8.01, 8.00, 7.98, 7.99, 8.00, 8.00, 8.02, 8.00, 7.99, 8.00
		[  0.00] ENCOUNTER_START: 717, C'thun, 186, 40, 0
		[  8.00] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-0000000009, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
			 Triggered 14x, delta times: 8.00, 7.99, 8.00, 8.00, 8.01, 8.00, 7.98, 7.99, 8.00, 8.00, 8.02, 8.00, 7.99, 8.00
		[115.26] UNIT_DIED: [->Eye of C'Thun] "", nil, 0x0, Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, -1, false, 0, 0
	Eye Tentacles, time=45.00, type=cd, spellId=<none>, triggerDeltas = 0.00, 45.00, 45.02, 25.24, 41.39, 29.98, 24.01, 81.67, 29.99, 14.89, 81.41, 22.05
		[  0.00] ENCOUNTER_START: 717, C'thun, 186, 40, 0
		[ 45.00] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-000000002A, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
			 Triggered 7x, delta times: 45.00, 45.02, 66.63, 29.98, 105.68, 29.99, 96.30
		[115.26] UNIT_DIED: [->Eye of C'Thun] "", nil, 0x0, Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, -1, false, 0, 0
		[210.64] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 4525, nil, 0, false, false, false, false, 0
		[337.19] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 4556, nil, 0, false, false, false, false, 0
		[440.65] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 4582, nil, 0, false, false, false, false, 0
	Giant Claw Tentacle, time=60.00, type=cd, spellId=<none>, triggerDeltas = 115.26, 11.37, 84.01, 51.68, 50.02, 24.85, 51.40, 50.02, 2.04
		[115.26] UNIT_DIED: [->Eye of C'Thun] "", nil, 0x0, Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, -1, false, 0, 0
		[126.63] SPELL_CAST_SUCCESS: [Giant Claw Tentacle: Birth] Creature-0-1-531-1-15728-000000006B, Giant Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
			 Triggered 5x, delta times: 126.63, 135.69, 50.02, 76.25, 50.02
		[210.64] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 4525, nil, 0, false, false, false, false, 0
		[337.19] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 4556, nil, 0, false, false, false, false, 0
		[440.65] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 4582, nil, 0, false, false, false, false, 0
	Giant Eye Tentacle, time=60.00, type=cd, spellId=<none>, triggerDeltas = 115.26, 41.74, 53.64, 82.39, 35.02, 9.14, 103.46
		[115.26] UNIT_DIED: [->Eye of C'Thun] "", nil, 0x0, Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, -1, false, 0, 0
		[157.00] SPELL_CAST_SUCCESS: [Giant Eye Tentacle: Birth] Creature-0-1-531-1-15334-0000000084, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
			 Triggered 3x, delta times: 157.00, 136.03, 35.02
		[210.64] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 4525, nil, 0, false, false, false, false, 0
		[337.19] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 4556, nil, 0, false, false, false, false, 0
		[440.65] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 4582, nil, 0, false, false, false, false, 0
	Weaken ends, time=45.00, type=cd, spellId=<none>, triggerDeltas = 210.64, 126.55, 103.46
		[210.64] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 4525, nil, 0, false, false, false, false, 0
		[337.19] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 4556, nil, 0, false, false, false, false, 0
		[440.65] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 4582, nil, 0, false, false, false, false, 0
	Dark Glare ends, time=39.00, type=active, spellId=26029, triggerDeltas = 48.00
		[ 48.00] Scheduled at 0.00 by ENCOUNTER_START: 717, C'thun, 186, 40, 0
	Dark Glare, time=86.00, type=next, spellId=26029, triggerDeltas = 0.00, 48.00
		[  0.00] ENCOUNTER_START: 717, C'thun, 186, 40, 0
		[ 48.00] Scheduled at 0.00 by ENCOUNTER_START: 717, C'thun, 186, 40, 0
		[115.26] UNIT_DIED: [->Eye of C'Thun] "", nil, 0x0, Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, -1, false, 0, 0

Announces:
	Claw Tentacle, type=nil, spellId=<none>, triggerDeltas = 8.00, 7.99, 8.00, 8.00, 8.01, 8.00, 7.98, 7.99, 8.00, 8.00, 8.02, 8.00, 7.99, 8.00
		[  8.00] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-0000000009, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
			 Triggered 14x, delta times: 8.00, 7.99, 8.00, 8.00, 8.01, 8.00, 7.98, 7.99, 8.00, 8.00, 8.02, 8.00, 7.99, 8.00
	Eye Tentacles, type=nil, spellId=<none>, triggerDeltas = 45.00, 45.02, 66.63, 29.98, 105.68, 29.99, 96.30
		[ 45.00] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-000000002A, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
			 Triggered 7x, delta times: 45.00, 45.02, 66.63, 29.98, 105.68, 29.99, 96.30
	Giant Claw Tentacle, type=nil, spellId=<none>, triggerDeltas = 126.63, 135.69, 50.02, 76.25, 50.02
		[126.63] SPELL_CAST_SUCCESS: [Giant Claw Tentacle: Birth] Creature-0-1-531-1-15728-000000006B, Giant Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
			 Triggered 5x, delta times: 126.63, 135.69, 50.02, 76.25, 50.02
	Giant Eye Tentacle, type=nil, spellId=<none>, triggerDeltas = 157.00, 136.03, 35.02
		[157.00] SPELL_CAST_SUCCESS: [Giant Eye Tentacle: Birth] Creature-0-1-531-1-15334-0000000084, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
			 Triggered 3x, delta times: 157.00, 136.03, 35.02
	Stage 2, type=stage, spellId=<none>, triggerDeltas = 115.26
		[115.26] UNIT_DIED: [->Eye of C'Thun] "", nil, 0x0, Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, -1, false, 0, 0

Special warnings:
	C'Thun Weakened!, type=nil, spellId=<none>, triggerDeltas = 210.64, 126.55, 103.46
		[210.64] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 4525, nil, 0, false, false, false, false, 0
		[337.19] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 4556, nil, 0, false, false, false, false, 0
		[440.65] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 4582, nil, 0, false, false, false, false, 0
	Dark Glare - dodge attack, type=dodge, spellId=26029, triggerDeltas = 48.00
		[ 48.00] Scheduled at 0.00 by ENCOUNTER_START: 717, C'thun, 186, 40, 0

Yells:
	None

Voice pack sounds:
	VoicePack/laserrun
		[ 48.00] Scheduled at 0.00 by ENCOUNTER_START: 717, C'thun, 186, 40, 0
	VoicePack/targetchange
		[210.64] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 4525, nil, 0, false, false, false, false, 0
		[337.19] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 4556, nil, 0, false, false, false, false, 0
		[440.65] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 4582, nil, 0, false, false, false, false, 0

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 717, C'thun, 186, 40, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_START 26134 341722, SPELL_CAST_SUCCESS 26586, SPELL_AURA_APPLIED 26476, SPELL_AURA_REMOVED 26476, CHAT_MSG_MONSTER_EMOTE, UNIT_DIED
		StartTimer: 9.0, Claw Tentacle
		StartTimer: 45.0, Eye Tentacles
		StartTimer: 48.0, Dark Glare
		ScheduleTask: mod:DarkGlare() at 48.00 (+48.00)
			ShowSpecialWarning: Dark Glare - dodge attack
			PlaySound: VoicePack/laserrun
			StartTimer: 39.0, Dark Glare ends
			StartTimer: 86.0, Dark Glare
			ScheduleTask: mod:DarkGlare() at 134.00 (+86.00)
				Unscheduled by UNIT_DIED at 115.26
	[  0.00] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 341722, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 0.10 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 0.20 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 0.30 (+0.10)
	[  3.20] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 341722, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 3.30 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 3.40 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 3.50 (+0.10)
	[  6.43] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 341722, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 6.53 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 6.63 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 6.73 (+0.10)
	[  8.00] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-0000000009, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		StopTimer: TimerClawTentacle
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[ 15.99] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-0000000010, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		StopTimer: TimerClawTentacle
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[ 22.60] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 22.70 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 22.80 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 22.90 (+0.10)
	[ 23.99] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-0000000018, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[ 25.82] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 25.92 (+0.10)
	[ 29.05] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 29.15 (+0.10)
	[ 31.99] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-000000001F, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[ 32.32] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 32.42 (+0.10)
	[ 35.54] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 35.64 (+0.10)
	[ 38.78] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 38.88 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 38.98 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 39.08 (+0.10)
	[ 40.00] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-0000000026, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[ 42.01] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 42.11 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 42.21 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 42.31 (+0.10)
	[ 45.00] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-000000002A, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 45, 45, 45, 45, 45, 45, 45
		ShowAnnounce: Eye Tentacles
		StartTimer: 45.0, Eye Tentacles
	[ 48.00] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-000000002D, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[ 55.98] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-0000000034, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		StopTimer: TimerClawTentacle
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[ 63.97] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-0000000039, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[ 71.97] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-000000003E, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[ 79.97] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-0000000046, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[ 87.99] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-000000004D, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[ 88.94] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 89.04 (+0.10)
	[ 90.02] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-000000004E, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 90.02, 90.02, 90.02, 90.03, 90.03, 90.03, 90.03
		ShowAnnounce: Eye Tentacles
		StartTimer: 45.0, Eye Tentacles
	[ 92.19] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 92.29 (+0.10)
	[ 95.43] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 95.53 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 95.63 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 95.73 (+0.10)
	[ 95.99] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-0000000052, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[ 98.68] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 98.78 (+0.10)
	[101.93] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 102.03 (+0.10)
	[103.98] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-0000000059, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[105.17] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 105.27 (+0.10)
	[108.42] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 108.52 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 108.62 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 108.72 (+0.10)
	[111.65] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 111.75 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 111.85 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 111.95 (+0.10)
	[111.98] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-000000005F, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[114.87] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 114.97 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 115.07 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 115.17 (+0.10)
	[115.26] UNIT_DIED: [->Eye of C'Thun] "", nil, 0x0, Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, -1, false, 0, 0
		ShowAnnounce: Stage 2
		StopTimer: Timer26029next
		StopTimer: TimerEyeTentacle
		StopTimer: TimerClawTentacle
		StartTimer: 40.5, Eye Tentacles
		StartTimer: 10.5, Giant Claw Tentacle
		StartTimer: 41.3, Giant Eye Tentacle
		UnscheduleTask: mod:DarkGlare() scheduled by ScheduleTask at 48.00
	[126.63] SPELL_CAST_SUCCESS: [Giant Claw Tentacle: Birth] Creature-0-1-531-1-15728-000000006B, Giant Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15728
		ShowAnnounce: Giant Claw Tentacle
		StartTimer: 60.0, Giant Claw Tentacle
	[150.43] SPELL_AURA_APPLIED: [C'Thun->Dps10: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000012, Dps10, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: EnterStomach, Dps10
	[156.65] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-0000000083, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 156.65, 156.65, 156.65, 156.65, 156.65, 156.65, 156.65
		ShowAnnounce: Eye Tentacles
		StartTimer: 30.0, Eye Tentacles
	[157.00] SPELL_CAST_SUCCESS: [Giant Eye Tentacle: Birth] Creature-0-1-531-1-15334-0000000084, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15334
		ShowAnnounce: Giant Eye Tentacle
		StartTimer: 60.0, Giant Eye Tentacle
	[160.45] SPELL_AURA_APPLIED: [C'Thun->Dps14: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000020, Dps14, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: EnterStomach, Dps14
	[160.63] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000084, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000084", "EyeBeamTarget", 0.1, 3.0) at 160.73 (+0.10)
	[162.25] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000084, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000084", "EyeBeamTarget", 0.1, 3.0) at 162.35 (+0.10)
	[166.58] SPELL_AURA_REMOVED: [C'Thun->Dps10: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000012, Dps10, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: LeaveStomach, Dps10
	[166.72] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000084, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000084", "EyeBeamTarget", 0.1, 3.0) at 166.82 (+0.10)
	[170.44] SPELL_AURA_APPLIED: [C'Thun->Healer4: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000019, Healer4, 0x511, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: EnterStomach, PlayerName
	[180.42] SPELL_AURA_APPLIED: [C'Thun->Dps4: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000004, Dps4, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: EnterStomach, Dps4
	[182.55] UNIT_DIED: [->Flesh Tentacle] "", nil, 0x0, Creature-0-1-531-1-15802-0000000064, Flesh Tentacle, 0xa48, -1, false, 0, 0
		ScheduleTask: (anonymous function) at 212.55 (+30.00)
	[186.63] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-000000009B, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 1x SPELL_CAST_SUCCESS at 186.63
		StopTimer: TimerEyeTentacle
		ShowAnnounce: Eye Tentacles
		StartTimer: 30.0, Eye Tentacles
	[190.44] SPELL_AURA_APPLIED: [C'Thun->Dps13: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000017, Dps13, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: EnterStomach, Dps13
	[195.75] SPELL_AURA_REMOVED: [C'Thun->Dps14: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000020, Dps14, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: LeaveStomach, Dps14
	[195.75] SPELL_AURA_REMOVED: [C'Thun->Healer4: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000019, Healer4, 0x511, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: LeaveStomach, PlayerName
	[195.89] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-000000009E, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000009E", "EyeBeamTarget", 0.1, 3.0) at 195.99 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000009E", "EyeBeamTarget", 0.1, 3.0) at 196.09 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000009E", "EyeBeamTarget", 0.1, 3.0) at 196.19 (+0.10)
	[199.11] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-000000009E, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000009E", "EyeBeamTarget", 0.1, 3.0) at 199.21 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000009E", "EyeBeamTarget", 0.1, 3.0) at 199.31 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000009E", "EyeBeamTarget", 0.1, 3.0) at 199.41 (+0.10)
	[200.43] SPELL_AURA_APPLIED: [C'Thun->Dps3: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000003, Dps3, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: EnterStomach, Dps3
	[203.98] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-000000009E, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000009E", "EyeBeamTarget", 0.1, 3.0) at 204.08 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000009E", "EyeBeamTarget", 0.1, 3.0) at 204.18 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000009E", "EyeBeamTarget", 0.1, 3.0) at 204.28 (+0.10)
	[210.42] UNIT_DIED: [->Flesh Tentacle] "", nil, 0x0, Creature-0-1-531-1-15802-000000019A, Flesh Tentacle, 0xa48, -1, false, 0, 0
		ScheduleTask: (anonymous function) at 240.42 (+30.00)
	[210.44] SPELL_AURA_APPLIED: [C'Thun->Dps12: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000014, Dps12, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: EnterStomach, Dps12
	[210.64] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 4525, nil, 0, false, false, false, false, 0
		ShowSpecialWarning: C'Thun Weakened!
		PlaySound: VoicePack/targetchange
		StopTimer: TimerEyeTentacle
		StopTimer: TimerGiantEyeTentacle
		StartTimer: 45.0, Weaken ends
		StartTimer: 83.0, Eye Tentacles
		StartTimer: 53.0, Giant Claw Tentacle
		StartTimer: 83.7, Giant Eye Tentacle
	[214.71] SPELL_AURA_REMOVED: [C'Thun->Dps13: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000017, Dps13, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: LeaveStomach, Dps13
	[214.71] SPELL_AURA_REMOVED: [C'Thun->Dps4: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000004, Dps4, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: LeaveStomach, Dps4
	[214.71] SPELL_AURA_REMOVED: [C'Thun->Dps3: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000003, Dps3, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: LeaveStomach, Dps3
	[219.83] SPELL_AURA_REMOVED: [C'Thun->Dps12: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000014, Dps12, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: LeaveStomach, Dps12
	[262.32] SPELL_CAST_SUCCESS: [Giant Claw Tentacle: Birth] Creature-0-1-531-1-15728-00000000CE, Giant Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15728
		StopTimer: TimerGiantClawTentacle
		ShowAnnounce: Giant Claw Tentacle
		StartTimer: 60.0, Giant Claw Tentacle
	[292.31] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-00000000E5, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 292.31, 292.31, 292.31, 292.31, 292.31, 292.31, 292.31
		StopTimer: TimerEyeTentacle
		ShowAnnounce: Eye Tentacles
		StartTimer: 30.0, Eye Tentacles
	[293.03] SPELL_CAST_SUCCESS: [Giant Eye Tentacle: Birth] Creature-0-1-531-1-15334-00000000E6, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15334
		StopTimer: TimerGiantEyeTentacle
		ShowAnnounce: Giant Eye Tentacle
		StartTimer: 60.0, Giant Eye Tentacle
	[296.65] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000000E6, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000E6", "EyeBeamTarget", 0.1, 3.0) at 296.75 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000E6", "EyeBeamTarget", 0.1, 3.0) at 296.85 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000E6", "EyeBeamTarget", 0.1, 3.0) at 296.95 (+0.10)
	[303.67] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000000E6, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000E6", "EyeBeamTarget", 0.1, 3.0) at 303.77 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000E6", "EyeBeamTarget", 0.1, 3.0) at 303.87 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000E6", "EyeBeamTarget", 0.1, 3.0) at 303.97 (+0.10)
	[306.12] SPELL_AURA_APPLIED: [C'Thun->Dps14: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000020, Dps14, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: EnterStomach, Dps14
	[312.34] SPELL_CAST_SUCCESS: [Giant Claw Tentacle: Birth] Creature-0-1-531-1-15728-00000000F3, Giant Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15728
		StopTimer: TimerGiantClawTentacle
		ShowAnnounce: Giant Claw Tentacle
		StartTimer: 60.0, Giant Claw Tentacle
	[316.12] SPELL_AURA_APPLIED: [C'Thun->Dps3: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000003, Dps3, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: EnterStomach, Dps3
	[322.30] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-00000000FB, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 322.3, 322.3, 322.3, 322.3, 322.3, 322.3, 322.3
		ShowAnnounce: Eye Tentacles
		StartTimer: 30.0, Eye Tentacles
	[323.06] UNIT_DIED: [->Flesh Tentacle] "", nil, 0x0, Creature-0-1-531-1-15802-00000000CA, Flesh Tentacle, 0xa48, -1, false, 0, 0
		ScheduleTask: (anonymous function) at 353.06 (+30.00)
	[326.15] SPELL_AURA_APPLIED: [C'Thun->Dps10: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000012, Dps10, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: EnterStomach, Dps10
	[328.05] SPELL_CAST_SUCCESS: [Giant Eye Tentacle: Birth] Creature-0-1-531-1-15334-0000000100, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15334
		StopTimer: TimerGiantEyeTentacle
		ShowAnnounce: Giant Eye Tentacle
		StartTimer: 60.0, Giant Eye Tentacle
	[331.85] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000100, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000100", "EyeBeamTarget", 0.1, 3.0) at 331.95 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000100", "EyeBeamTarget", 0.1, 3.0) at 332.05 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000100", "EyeBeamTarget", 0.1, 3.0) at 332.15 (+0.10)
	[336.11] SPELL_AURA_APPLIED: [C'Thun->Dps4: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000004, Dps4, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: EnterStomach, Dps4
	[337.13] UNIT_DIED: [->Flesh Tentacle] "", nil, 0x0, Creature-0-1-531-1-15802-00000001CA, Flesh Tentacle, 0xa48, -1, false, 0, 0
		ScheduleTask: (anonymous function) at 367.13 (+30.00)
	[337.19] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 4556, nil, 0, false, false, false, false, 0
		ShowSpecialWarning: C'Thun Weakened!
		PlaySound: VoicePack/targetchange
		StopTimer: TimerEyeTentacle
		StopTimer: TimerGiantClawTentacle
		StopTimer: TimerGiantEyeTentacle
		StartTimer: 45.0, Weaken ends
		StartTimer: 83.0, Eye Tentacles
		StartTimer: 53.0, Giant Claw Tentacle
		StartTimer: 83.7, Giant Eye Tentacle
	[339.81] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000100, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000100", "EyeBeamTarget", 0.1, 3.0) at 339.91 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000100", "EyeBeamTarget", 0.1, 3.0) at 340.01 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000100", "EyeBeamTarget", 0.1, 3.0) at 340.11 (+0.10)
	[341.10] SPELL_AURA_REMOVED: [C'Thun->Dps10: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000012, Dps10, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: LeaveStomach, Dps10
	[341.10] SPELL_AURA_REMOVED: [C'Thun->Dps3: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000003, Dps3, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: LeaveStomach, Dps3
	[348.33] SPELL_AURA_REMOVED: [C'Thun->Dps4: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000004, Dps4, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: LeaveStomach, Dps4
	[388.59] SPELL_CAST_SUCCESS: [Giant Claw Tentacle: Birth] Creature-0-1-531-1-15728-000000012F, Giant Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15728
		StopTimer: TimerGiantClawTentacle
		ShowAnnounce: Giant Claw Tentacle
		StartTimer: 60.0, Giant Claw Tentacle
	[402.40] SPELL_AURA_APPLIED: [C'Thun->Dps3: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000003, Dps3, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: EnterStomach, Dps3
	[412.41] SPELL_AURA_APPLIED: [C'Thun->Healer4: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000019, Healer4, 0x511, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: EnterStomach, PlayerName
	[414.76] UNIT_DIED: [->Flesh Tentacle] "", nil, 0x0, Creature-0-1-531-1-15802-000000012A, Flesh Tentacle, 0xa48, -1, false, 0, 0
		ScheduleTask: (anonymous function) at 444.76 (+30.00)
	[418.60] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-0000000143, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 2x SPELL_CAST_SUCCESS at 418.6, 418.6
		StopTimer: TimerEyeTentacle
		ShowAnnounce: Eye Tentacles
		StartTimer: 30.0, Eye Tentacles
	[420.92] SPELL_AURA_REMOVED: [C'Thun->Dps3: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000003, Dps3, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: LeaveStomach, Dps3
	[422.42] SPELL_AURA_APPLIED: [C'Thun->Dps11: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000013, Dps11, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: EnterStomach, Dps11
	[423.00] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000144, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000144", "EyeBeamTarget", 0.1, 3.0) at 423.10 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000144", "EyeBeamTarget", 0.1, 3.0) at 423.20 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000144", "EyeBeamTarget", 0.1, 3.0) at 423.30 (+0.10)
	[425.84] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000144, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000144", "EyeBeamTarget", 0.1, 3.0) at 425.94 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000144", "EyeBeamTarget", 0.1, 3.0) at 426.04 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000144", "EyeBeamTarget", 0.1, 3.0) at 426.14 (+0.10)
	[428.40] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000144, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000144", "EyeBeamTarget", 0.1, 3.0) at 428.50 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000144", "EyeBeamTarget", 0.1, 3.0) at 428.60 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000144", "EyeBeamTarget", 0.1, 3.0) at 428.70 (+0.10)
	[430.67] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000144, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000144", "EyeBeamTarget", 0.1, 3.0) at 430.77 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000144", "EyeBeamTarget", 0.1, 3.0) at 430.87 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000144", "EyeBeamTarget", 0.1, 3.0) at 430.97 (+0.10)
	[432.41] SPELL_AURA_APPLIED: [C'Thun->Healer2: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000016, Healer2, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: EnterStomach, Healer2
	[433.91] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000144, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000144", "EyeBeamTarget", 0.1, 3.0) at 434.01 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000144", "EyeBeamTarget", 0.1, 3.0) at 434.11 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000144", "EyeBeamTarget", 0.1, 3.0) at 434.21 (+0.10)
	[436.65] SPELL_AURA_REMOVED: [C'Thun->Healer4: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000019, Healer4, 0x511, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: LeaveStomach, PlayerName
	[438.61] SPELL_CAST_SUCCESS: [Giant Claw Tentacle: Birth] Creature-0-1-531-1-15728-0000000150, Giant Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15728
		StopTimer: TimerGiantClawTentacle
		ShowAnnounce: Giant Claw Tentacle
		StartTimer: 60.0, Giant Claw Tentacle
	[440.46] UNIT_DIED: [->Flesh Tentacle] "", nil, 0x0, Creature-0-1-531-1-15802-000000020A, Flesh Tentacle, 0xa48, -1, false, 0, 0
		ScheduleTask: (anonymous function) at 470.46 (+30.00)
			Unscheduled by ENCOUNTER_END at 468.61
	[440.65] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 4582, nil, 0, false, false, false, false, 0
		ShowSpecialWarning: C'Thun Weakened!
		PlaySound: VoicePack/targetchange
		StopTimer: TimerEyeTentacle
		StopTimer: TimerGiantClawTentacle
		StartTimer: 45.0, Weaken ends
		StartTimer: 83.0, Eye Tentacles
		StartTimer: 53.0, Giant Claw Tentacle
		StartTimer: 83.7, Giant Eye Tentacle
	[442.40] SPELL_AURA_APPLIED: [C'Thun->Dps1: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000001, Dps1, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: EnterStomach, Dps1
	[446.34] SPELL_AURA_REMOVED: [C'Thun->Healer2: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000016, Healer2, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: LeaveStomach, Healer2
	[446.34] SPELL_AURA_REMOVED: [C'Thun->Dps11: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000013, Dps11, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: LeaveStomach, Dps11
	[455.31] SPELL_AURA_REMOVED: [C'Thun->Dps1: Digestive Acid] Creature-0-1-531-1-15727-0000000001, C'Thun, 0xa48, Player-1-00000001, Dps1, 0x512, 26476, Digestive Acid, 0, DEBUFF, 0
		ModTrace: LeaveStomach, Dps1
	[468.61] ENCOUNTER_END: 717, C'thun, 186, 40, 1, 0
		EndCombat: ENCOUNTER_END
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 440.46
		AntiSpam: 717
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 26476
]]
