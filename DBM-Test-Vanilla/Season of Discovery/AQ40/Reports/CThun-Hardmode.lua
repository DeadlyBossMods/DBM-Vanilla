DBM.Test:Report[[
Test: SoD/AQ40/CThun/Hardmode
Mod:  DBM-Raids-Vanilla/CThun

Findings:
	Unused event registration: SPELL_AURA_APPLIED 26476 (Digestive Acid)
	Unused event registration: SPELL_AURA_REMOVED 26476 (Digestive Acid)
	DBM still reported a mod in combat 6.2 seconds after log playback

Unused objects:
	None

Timers:
	Claw Tentacle, time=8.00, type=cd, spellId=<none>, triggerDeltas = 0.00, 8.00, 8.01, 8.02, 8.00, 7.97, 8.02, 7.97, 8.01, 7.98, 8.01, 8.00, 8.01, 8.01, 8.00, 8.01, 8.01, 7.99, 7.99
		[  0.00] ENCOUNTER_START: 717, C'thun, 186, 40, 0
		[  8.00] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-0000000007, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
			 Triggered 18x, delta times: 8.00, 8.01, 8.02, 8.00, 7.97, 8.02, 7.97, 8.01, 7.98, 8.01, 8.00, 8.01, 8.01, 8.00, 8.01, 8.01, 7.99, 7.99
		[150.39] UNIT_DIED: [->Eye of C'Thun] "", nil, 0x0, Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, -1, false, 0, 0
	Eye Tentacles, time=45.00, type=cd, spellId=<none>, triggerDeltas = 0.00, 45.00, 45.00, 45.01, 15.38, 42.10, 26.66, 3.31, 30.00, 30.02, 26.47, 18.59, 14.93, 11.50, 18.50, 30.01, 15.06, 14.94, 8.77, 21.25, 29.98, 29.99, 8.61, 20.17, 1.24, 23.59, 6.39
		[  0.00] ENCOUNTER_START: 717, C'thun, 186, 40, 0
		[ 45.00] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-0000000027, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
			 Triggered 21x, delta times: 45.00, 45.00, 45.01, 57.48, 29.97, 30.00, 30.02, 26.47, 33.52, 11.50, 18.50, 30.01, 15.06, 14.94, 30.02, 29.98, 29.99, 8.61, 21.41, 23.59, 6.39
		[150.39] UNIT_DIED: [->Eye of C'Thun] "", nil, 0x0, Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, -1, false, 0, 0
		[219.15] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10212, nil, 0, false, false, false, false, 0
		[327.54] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10263, nil, 0, false, false, false, false, 0
		[441.25] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10320, nil, 0, false, false, false, false, 0
		[551.25] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10388, nil, 0, false, false, false, false, 0
	Giant Claw Tentacle, time=60.00, type=cd, spellId=<none>, triggerDeltas = 150.39, 12.07, 45.03, 11.66, 89.85, 18.54, 90.00, 23.71, 89.84, 20.16, 10.72, 12.91
		[150.39] UNIT_DIED: [->Eye of C'Thun] "", nil, 0x0, Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, -1, false, 0, 0
		[162.46] SPELL_CAST_SUCCESS: [Giant Claw Tentacle: Birth] Creature-0-1-531-1-15728-0000000085, Giant Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
			 Triggered 7x, delta times: 162.46, 45.03, 101.51, 108.54, 113.55, 30.88, 12.91
		[219.15] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10212, nil, 0, false, false, false, false, 0
		[327.54] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10263, nil, 0, false, false, false, false, 0
		[441.25] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10320, nil, 0, false, false, false, false, 0
		[551.25] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10388, nil, 0, false, false, false, false, 0
	Giant Eye Tentacle, time=60.00, type=cd, spellId=<none>, triggerDeltas = 150.39, 32.71, 35.00, 1.05, 33.96, 34.99, 35.00, 4.44, 30.58, 35.01, 34.97, 13.15, 21.86, 35.00, 34.98, 18.16, 16.86
		[150.39] UNIT_DIED: [->Eye of C'Thun] "", nil, 0x0, Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, -1, false, 0, 0
		[183.10] SPELL_CAST_SUCCESS: [Giant Eye Tentacle: Birth] Creature-0-1-531-1-15334-0000000099, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
			 Triggered 12x, delta times: 183.10, 35.00, 35.01, 34.99, 35.00, 35.02, 35.01, 34.97, 35.01, 35.00, 34.98, 35.02
		[219.15] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10212, nil, 0, false, false, false, false, 0
		[327.54] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10263, nil, 0, false, false, false, false, 0
		[441.25] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10320, nil, 0, false, false, false, false, 0
		[551.25] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10388, nil, 0, false, false, false, false, 0
	Weaken ends, time=45.00, type=cd, spellId=<none>, triggerDeltas = 219.15, 108.39, 113.71, 110.00
		[219.15] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10212, nil, 0, false, false, false, false, 0
		[327.54] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10263, nil, 0, false, false, false, false, 0
		[441.25] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10320, nil, 0, false, false, false, false, 0
		[551.25] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10388, nil, 0, false, false, false, false, 0
	Dark Glare ends, time=39.00, type=active, spellId=26029, triggerDeltas = 48.00, 86.00
		[ 48.00] Scheduled at 0.00 by ENCOUNTER_START: 717, C'thun, 186, 40, 0
			 Triggered 2x, delta times: 48.00, 86.00
	Dark Glare, time=86.00, type=next, spellId=26029, triggerDeltas = 0.00, 48.00, 86.00
		[  0.00] ENCOUNTER_START: 717, C'thun, 186, 40, 0
		[ 48.00] Scheduled at 0.00 by ENCOUNTER_START: 717, C'thun, 186, 40, 0
			 Triggered 2x, delta times: 48.00, 86.00
		[150.39] UNIT_DIED: [->Eye of C'Thun] "", nil, 0x0, Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, -1, false, 0, 0

Announces:
	Claw Tentacle, type=nil, spellId=<none>, triggerDeltas = 8.00, 8.01, 8.02, 8.00, 7.97, 8.02, 7.97, 8.01, 7.98, 8.01, 8.00, 8.01, 8.01, 8.00, 8.01, 8.01, 7.99, 7.99
		[  8.00] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-0000000007, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
			 Triggered 18x, delta times: 8.00, 8.01, 8.02, 8.00, 7.97, 8.02, 7.97, 8.01, 7.98, 8.01, 8.00, 8.01, 8.01, 8.00, 8.01, 8.01, 7.99, 7.99
	Eye Tentacles, type=nil, spellId=<none>, triggerDeltas = 45.00, 45.00, 45.01, 57.48, 29.97, 30.00, 30.02, 26.47, 33.52, 11.50, 18.50, 30.01, 15.06, 14.94, 30.02, 29.98, 29.99, 8.61, 21.41, 23.59, 6.39
		[ 45.00] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-0000000027, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
			 Triggered 21x, delta times: 45.00, 45.00, 45.01, 57.48, 29.97, 30.00, 30.02, 26.47, 33.52, 11.50, 18.50, 30.01, 15.06, 14.94, 30.02, 29.98, 29.99, 8.61, 21.41, 23.59, 6.39
	Giant Claw Tentacle, type=nil, spellId=<none>, triggerDeltas = 162.46, 45.03, 101.51, 108.54, 113.55, 30.88, 12.91
		[162.46] SPELL_CAST_SUCCESS: [Giant Claw Tentacle: Birth] Creature-0-1-531-1-15728-0000000085, Giant Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
			 Triggered 7x, delta times: 162.46, 45.03, 101.51, 108.54, 113.55, 30.88, 12.91
	Giant Eye Tentacle, type=nil, spellId=<none>, triggerDeltas = 183.10, 35.00, 35.01, 34.99, 35.00, 35.02, 35.01, 34.97, 35.01, 35.00, 34.98, 35.02
		[183.10] SPELL_CAST_SUCCESS: [Giant Eye Tentacle: Birth] Creature-0-1-531-1-15334-0000000099, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
			 Triggered 12x, delta times: 183.10, 35.00, 35.01, 34.99, 35.00, 35.02, 35.01, 34.97, 35.01, 35.00, 34.98, 35.02
	Stage 2, type=stage, spellId=<none>, triggerDeltas = 150.39
		[150.39] UNIT_DIED: [->Eye of C'Thun] "", nil, 0x0, Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, -1, false, 0, 0

Special warnings:
	C'Thun Weakened!, type=nil, spellId=<none>, triggerDeltas = 219.15, 108.39, 113.71, 110.00
		[219.15] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10212, nil, 0, false, false, false, false, 0
		[327.54] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10263, nil, 0, false, false, false, false, 0
		[441.25] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10320, nil, 0, false, false, false, false, 0
		[551.25] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10388, nil, 0, false, false, false, false, 0
	Dark Glare - dodge attack, type=dodge, spellId=26029, triggerDeltas = 48.00, 86.00
		[ 48.00] Scheduled at 0.00 by ENCOUNTER_START: 717, C'thun, 186, 40, 0
			 Triggered 2x, delta times: 48.00, 86.00
	Eye Beam on you, type=you, spellId=26134, triggerDeltas = 228.54
		[228.54] Scheduled at 228.44 by SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000000B4, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0

Yells:
	Eye Beam on PlayerName, type=yell, spellId=26134
		[228.54] Scheduled at 228.44 by SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000000B4, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0

Voice pack sounds:
	VoicePack/laserrun
		[ 48.00] Scheduled at 0.00 by ENCOUNTER_START: 717, C'thun, 186, 40, 0
			 Triggered 2x, delta times: 48.00, 86.00
	VoicePack/targetchange
		[219.15] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10212, nil, 0, false, false, false, false, 0
		[327.54] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10263, nil, 0, false, false, false, false, 0
		[441.25] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10320, nil, 0, false, false, false, false, 0
		[551.25] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10388, nil, 0, false, false, false, false, 0
	VoicePack/targetyou
		[228.54] Scheduled at 228.44 by SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000000B4, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0

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
				ShowSpecialWarning: Dark Glare - dodge attack
				PlaySound: VoicePack/laserrun
				StartTimer: 39.0, Dark Glare ends
				StartTimer: 86.0, Dark Glare
				ScheduleTask: mod:DarkGlare() at 220.00 (+86.00)
					Unscheduled by UNIT_DIED at 150.39
	[  0.00] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 341722, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 0.10 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 0.20 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 0.30 (+0.10)
	[  4.83] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 341722, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 4.93 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 5.03 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 5.13 (+0.10)
	[  8.00] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-0000000007, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		StopTimer: TimerClawTentacle
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[  8.05] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 341722, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 8.15 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 8.25 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 8.35 (+0.10)
	[ 16.01] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-000000000F, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[ 22.63] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 22.73 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 22.83 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 22.93 (+0.10)
	[ 24.03] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-0000000016, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[ 25.87] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 25.97 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 26.07 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 26.17 (+0.10)
	[ 29.12] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 29.22 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 29.32 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 29.42 (+0.10)
	[ 32.03] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-000000001C, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[ 32.37] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 32.47 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 32.57 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 32.67 (+0.10)
	[ 35.61] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 35.71 (+0.10)
	[ 38.83] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 38.93 (+0.10)
	[ 40.00] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-0000000024, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[ 42.06] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 42.16 (+0.10)
	[ 45.00] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-0000000027, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 45, 45, 45, 45, 45, 45, 45
		ShowAnnounce: Eye Tentacles
		StartTimer: 45.0, Eye Tentacles
	[ 48.02] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-000000002A, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[ 55.99] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-000000002F, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		StopTimer: TimerClawTentacle
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[ 64.00] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-0000000037, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[ 71.98] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-000000003F, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		StopTimer: TimerClawTentacle
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[ 79.99] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-0000000046, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[ 87.99] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-000000004C, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[ 89.07] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 89.17 (+0.10)
	[ 90.00] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-000000004E, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 90, 90, 90, 90, 90, 90, 90.01
		ShowAnnounce: Eye Tentacles
		StartTimer: 45.0, Eye Tentacles
	[ 92.34] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 92.44 (+0.10)
	[ 95.57] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 95.67 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 95.77 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 95.87 (+0.10)
	[ 96.00] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-0000000053, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[ 98.80] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 98.90 (+0.10)
	[102.01] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 102.11 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 102.21 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 102.31 (+0.10)
	[104.01] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-000000005A, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[105.25] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 105.35 (+0.10)
	[108.47] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 108.57 (+0.10)
	[111.70] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 111.80 (+0.10)
	[112.01] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-0000000060, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[113.33] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 113.43 (+0.10)
	[116.58] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 116.68 (+0.10)
	[119.83] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 119.93 (+0.10)
	[120.02] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-0000000066, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[123.05] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 123.15 (+0.10)
	[126.29] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 126.39 (+0.10)
	[128.03] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-000000006C, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[129.54] SPELL_CAST_START: [Eye of C'Thun: Eye Beam] Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15589-0000000001", "EyeBeamTarget", 0.1, 3.0) at 129.64 (+0.10)
	[135.01] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-0000000071, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 135.01, 135.01, 135.01, 135.01, 135.01, 135.01, 135.01
		ShowAnnounce: Eye Tentacles
		StartTimer: 45.0, Eye Tentacles
	[136.02] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-0000000072, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[144.01] SPELL_CAST_SUCCESS: [Claw Tentacle: Birth] Creature-0-1-531-1-15725-0000000077, Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15725
		ShowAnnounce: Claw Tentacle
		StartTimer: 8.0, Claw Tentacle
	[150.39] UNIT_DIED: [->Eye of C'Thun] "", nil, 0x0, Creature-0-1-531-1-15589-0000000001, Eye of C'Thun, 0xa48, -1, false, 0, 0
		ShowAnnounce: Stage 2
		StopTimer: Timer26029next
		StopTimer: TimerEyeTentacle
		StopTimer: TimerClawTentacle
		StartTimer: 40.5, Eye Tentacles
		StartTimer: 10.5, Giant Claw Tentacle
		StartTimer: 41.3, Giant Eye Tentacle
		UnscheduleTask: mod:DarkGlare() scheduled by ScheduleTask at 134.00
	[162.46] SPELL_CAST_SUCCESS: [Giant Claw Tentacle: Birth] Creature-0-1-531-1-15728-0000000085, Giant Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15728
		ShowAnnounce: Giant Claw Tentacle
		StartTimer: 60.0, Giant Claw Tentacle
	[183.10] SPELL_CAST_SUCCESS: [Giant Eye Tentacle: Birth] Creature-0-1-531-1-15334-0000000099, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15334
		StopTimer: TimerGiantEyeTentacle
		ShowAnnounce: Giant Eye Tentacle
		StartTimer: 60.0, Giant Eye Tentacle
	[186.31] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000099, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000099", "EyeBeamTarget", 0.1, 3.0) at 186.41 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000099", "EyeBeamTarget", 0.1, 3.0) at 186.51 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000099", "EyeBeamTarget", 0.1, 3.0) at 186.61 (+0.10)
	[189.57] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000099, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000099", "EyeBeamTarget", 0.1, 3.0) at 189.67 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000099", "EyeBeamTarget", 0.1, 3.0) at 189.77 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000099", "EyeBeamTarget", 0.1, 3.0) at 189.87 (+0.10)
	[192.49] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-00000000A1, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 192.49, 192.49, 192.49, 192.49, 192.49, 192.49, 192.49
		ShowAnnounce: Eye Tentacles
		StartTimer: 30.0, Eye Tentacles
	[192.80] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000099, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000099", "EyeBeamTarget", 0.1, 3.0) at 192.90 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000099", "EyeBeamTarget", 0.1, 3.0) at 193.00 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000099", "EyeBeamTarget", 0.1, 3.0) at 193.10 (+0.10)
	[196.05] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000099, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000099", "EyeBeamTarget", 0.1, 3.0) at 196.15 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000099", "EyeBeamTarget", 0.1, 3.0) at 196.25 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000099", "EyeBeamTarget", 0.1, 3.0) at 196.35 (+0.10)
	[199.30] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000099, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000099", "EyeBeamTarget", 0.1, 3.0) at 199.40 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000099", "EyeBeamTarget", 0.1, 3.0) at 199.50 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000099", "EyeBeamTarget", 0.1, 3.0) at 199.60 (+0.10)
	[207.49] SPELL_CAST_SUCCESS: [Giant Claw Tentacle: Birth] Creature-0-1-531-1-15728-00000000AB, Giant Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15728
		StopTimer: TimerGiantClawTentacle
		ShowAnnounce: Giant Claw Tentacle
		StartTimer: 60.0, Giant Claw Tentacle
	[218.10] SPELL_CAST_SUCCESS: [Giant Eye Tentacle: Birth] Creature-0-1-531-1-15334-00000000B4, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15334
		StopTimer: TimerGiantEyeTentacle
		ShowAnnounce: Giant Eye Tentacle
		StartTimer: 60.0, Giant Eye Tentacle
	[219.15] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10212, nil, 0, false, false, false, false, 0
		ShowSpecialWarning: C'Thun Weakened!
		PlaySound: VoicePack/targetchange
		StopTimer: TimerEyeTentacle
		StopTimer: TimerGiantClawTentacle
		StopTimer: TimerGiantEyeTentacle
		StartTimer: 45.0, Weaken ends
		StartTimer: 83.0, Eye Tentacles
		StartTimer: 53.0, Giant Claw Tentacle
		StartTimer: 83.7, Giant Eye Tentacle
	[221.96] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000000B4, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000B4", "EyeBeamTarget", 0.1, 3.0) at 222.06 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000B4", "EyeBeamTarget", 0.1, 3.0) at 222.16 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000B4", "EyeBeamTarget", 0.1, 3.0) at 222.26 (+0.10)
	[222.46] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-00000000B7, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 222.47, 222.47, 222.47, 222.47, 222.47, 222.47, 222.47
		StopTimer: TimerEyeTentacle
		ShowAnnounce: Eye Tentacles
		StartTimer: 30.0, Eye Tentacles
	[225.20] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000000B4, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000B4", "EyeBeamTarget", 0.1, 3.0) at 225.30 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000B4", "EyeBeamTarget", 0.1, 3.0) at 225.40 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000B4", "EyeBeamTarget", 0.1, 3.0) at 225.50 (+0.10)
	[228.44] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000000B4, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000B4", "EyeBeamTarget", 0.1, 3.0) at 228.54 (+0.10)
			ShowSpecialWarning: Eye Beam on you
			PlaySound: VoicePack/targetyou
			ShowYell: Eye Beam on PlayerName
	[231.67] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000000B4, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000B4", "EyeBeamTarget", 0.1, 3.0) at 231.77 (+0.10)
	[235.30] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000000B4, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000B4", "EyeBeamTarget", 0.1, 3.0) at 235.40 (+0.10)
	[238.14] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000000B4, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000B4", "EyeBeamTarget", 0.1, 3.0) at 238.24 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000B4", "EyeBeamTarget", 0.1, 3.0) at 238.34 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000B4", "EyeBeamTarget", 0.1, 3.0) at 238.44 (+0.10)
	[252.46] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-00000000D1, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 252.46, 252.46, 252.46, 252.46, 252.46, 252.46, 252.46
		ShowAnnounce: Eye Tentacles
		StartTimer: 30.0, Eye Tentacles
	[253.11] SPELL_CAST_SUCCESS: [Giant Eye Tentacle: Birth] Creature-0-1-531-1-15334-00000000D2, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15334
		StopTimer: TimerGiantEyeTentacle
		ShowAnnounce: Giant Eye Tentacle
		StartTimer: 60.0, Giant Eye Tentacle
	[255.98] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000000D2, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000D2", "EyeBeamTarget", 0.1, 3.0) at 256.08 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000D2", "EyeBeamTarget", 0.1, 3.0) at 256.18 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000D2", "EyeBeamTarget", 0.1, 3.0) at 256.28 (+0.10)
	[259.23] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000000D2, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000D2", "EyeBeamTarget", 0.1, 3.0) at 259.33 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000D2", "EyeBeamTarget", 0.1, 3.0) at 259.43 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000D2", "EyeBeamTarget", 0.1, 3.0) at 259.53 (+0.10)
	[262.46] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000000D2, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000D2", "EyeBeamTarget", 0.1, 3.0) at 262.56 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000D2", "EyeBeamTarget", 0.1, 3.0) at 262.66 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000D2", "EyeBeamTarget", 0.1, 3.0) at 262.76 (+0.10)
	[265.70] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000000D2, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000D2", "EyeBeamTarget", 0.1, 3.0) at 265.80 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000D2", "EyeBeamTarget", 0.1, 3.0) at 265.90 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000D2", "EyeBeamTarget", 0.1, 3.0) at 266.00 (+0.10)
	[268.92] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000000D2, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000D2", "EyeBeamTarget", 0.1, 3.0) at 269.02 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000D2", "EyeBeamTarget", 0.1, 3.0) at 269.12 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000D2", "EyeBeamTarget", 0.1, 3.0) at 269.22 (+0.10)
	[272.17] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000000D2, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000D2", "EyeBeamTarget", 0.1, 3.0) at 272.27 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000D2", "EyeBeamTarget", 0.1, 3.0) at 272.37 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000D2", "EyeBeamTarget", 0.1, 3.0) at 272.47 (+0.10)
	[282.48] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-00000000E2, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 282.48, 282.48, 282.48, 282.48, 282.48, 282.48, 282.48
		ShowAnnounce: Eye Tentacles
		StartTimer: 30.0, Eye Tentacles
	[288.10] SPELL_CAST_SUCCESS: [Giant Eye Tentacle: Birth] Creature-0-1-531-1-15334-00000000E7, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15334
		StopTimer: TimerGiantEyeTentacle
		ShowAnnounce: Giant Eye Tentacle
		StartTimer: 60.0, Giant Eye Tentacle
	[291.59] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000000E7, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000E7", "EyeBeamTarget", 0.1, 3.0) at 291.69 (+0.10)
	[294.83] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000000E7, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000E7", "EyeBeamTarget", 0.1, 3.0) at 294.93 (+0.10)
	[298.07] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000000E7, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000E7", "EyeBeamTarget", 0.1, 3.0) at 298.17 (+0.10)
	[301.32] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000000E7, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000000E7", "EyeBeamTarget", 0.1, 3.0) at 301.42 (+0.10)
	[308.95] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-00000000F7, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 15x SPELL_CAST_SUCCESS at 308.95, 308.95, 308.95, 308.95, 308.95, 308.96, 308.96, 312.49, 312.49, 312.49, 312.5, 312.5, 312.5, 312.5, 312.5
		StopTimer: TimerEyeTentacle
		ShowAnnounce: Eye Tentacles
		StartTimer: 30.0, Eye Tentacles
	[309.00] SPELL_CAST_SUCCESS: [Giant Claw Tentacle: Birth] Creature-0-1-531-1-15728-00000000F7, Giant Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15728
		ShowAnnounce: Giant Claw Tentacle
		StartTimer: 60.0, Giant Claw Tentacle
	[323.10] SPELL_CAST_SUCCESS: [Giant Eye Tentacle: Birth] Creature-0-1-531-1-15334-0000000101, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15334
		StopTimer: TimerGiantEyeTentacle
		ShowAnnounce: Giant Eye Tentacle
		StartTimer: 60.0, Giant Eye Tentacle
	[326.44] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000101, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000101", "EyeBeamTarget", 0.1, 3.0) at 326.54 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000101", "EyeBeamTarget", 0.1, 3.0) at 326.64 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000101", "EyeBeamTarget", 0.1, 3.0) at 326.74 (+0.10)
	[327.54] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10263, nil, 0, false, false, false, false, 0
		ShowSpecialWarning: C'Thun Weakened!
		PlaySound: VoicePack/targetchange
		StopTimer: TimerEyeTentacle
		StopTimer: TimerGiantClawTentacle
		StopTimer: TimerGiantEyeTentacle
		StartTimer: 45.0, Weaken ends
		StartTimer: 83.0, Eye Tentacles
		StartTimer: 53.0, Giant Claw Tentacle
		StartTimer: 83.7, Giant Eye Tentacle
	[329.65] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000101, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000101", "EyeBeamTarget", 0.1, 3.0) at 329.75 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000101", "EyeBeamTarget", 0.1, 3.0) at 329.85 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000101", "EyeBeamTarget", 0.1, 3.0) at 329.95 (+0.10)
	[332.88] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000101, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000101", "EyeBeamTarget", 0.1, 3.0) at 332.98 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000101", "EyeBeamTarget", 0.1, 3.0) at 333.08 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000101", "EyeBeamTarget", 0.1, 3.0) at 333.18 (+0.10)
	[336.11] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000101, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000101", "EyeBeamTarget", 0.1, 3.0) at 336.21 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000101", "EyeBeamTarget", 0.1, 3.0) at 336.31 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000101", "EyeBeamTarget", 0.1, 3.0) at 336.41 (+0.10)
	[339.35] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000101, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000101", "EyeBeamTarget", 0.1, 3.0) at 339.45 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000101", "EyeBeamTarget", 0.1, 3.0) at 339.55 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000101", "EyeBeamTarget", 0.1, 3.0) at 339.65 (+0.10)
	[342.47] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-0000000110, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 342.47, 342.47, 342.47, 342.47, 342.47, 342.47, 342.47
		StopTimer: TimerEyeTentacle
		ShowAnnounce: Eye Tentacles
		StartTimer: 30.0, Eye Tentacles
	[342.58] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000101, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000101", "EyeBeamTarget", 0.1, 3.0) at 342.68 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000101", "EyeBeamTarget", 0.1, 3.0) at 342.78 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000101", "EyeBeamTarget", 0.1, 3.0) at 342.88 (+0.10)
	[345.84] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000101, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000101", "EyeBeamTarget", 0.1, 3.0) at 345.94 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000101", "EyeBeamTarget", 0.1, 3.0) at 346.04 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000101", "EyeBeamTarget", 0.1, 3.0) at 346.14 (+0.10)
	[353.97] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-000000011A, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 353.97, 353.97, 353.97, 353.97, 353.97, 353.97, 353.97
		StopTimer: TimerEyeTentacle
		ShowAnnounce: Eye Tentacles
		StartTimer: 30.0, Eye Tentacles
	[358.12] SPELL_CAST_SUCCESS: [Giant Eye Tentacle: Birth] Creature-0-1-531-1-15334-000000011E, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15334
		StopTimer: TimerGiantEyeTentacle
		ShowAnnounce: Giant Eye Tentacle
		StartTimer: 60.0, Giant Eye Tentacle
	[361.23] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-000000011E, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000011E", "EyeBeamTarget", 0.1, 3.0) at 361.33 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000011E", "EyeBeamTarget", 0.1, 3.0) at 361.43 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000011E", "EyeBeamTarget", 0.1, 3.0) at 361.53 (+0.10)
	[364.47] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-000000011E, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000011E", "EyeBeamTarget", 0.1, 3.0) at 364.57 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000011E", "EyeBeamTarget", 0.1, 3.0) at 364.67 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000011E", "EyeBeamTarget", 0.1, 3.0) at 364.77 (+0.10)
	[367.72] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-000000011E, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000011E", "EyeBeamTarget", 0.1, 3.0) at 367.82 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000011E", "EyeBeamTarget", 0.1, 3.0) at 367.92 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000011E", "EyeBeamTarget", 0.1, 3.0) at 368.02 (+0.10)
	[370.95] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-000000011E, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000011E", "EyeBeamTarget", 0.1, 3.0) at 371.05 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000011E", "EyeBeamTarget", 0.1, 3.0) at 371.15 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000011E", "EyeBeamTarget", 0.1, 3.0) at 371.25 (+0.10)
	[372.47] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-0000000129, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 372.48, 372.48, 372.48, 372.48, 372.48, 372.48, 372.48
		StopTimer: TimerEyeTentacle
		ShowAnnounce: Eye Tentacles
		StartTimer: 30.0, Eye Tentacles
	[374.19] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-000000011E, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000011E", "EyeBeamTarget", 0.1, 3.0) at 374.29 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000011E", "EyeBeamTarget", 0.1, 3.0) at 374.39 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000011E", "EyeBeamTarget", 0.1, 3.0) at 374.49 (+0.10)
	[393.13] SPELL_CAST_SUCCESS: [Giant Eye Tentacle: Birth] Creature-0-1-531-1-15334-000000013B, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15334
		StopTimer: TimerGiantEyeTentacle
		ShowAnnounce: Giant Eye Tentacle
		StartTimer: 60.0, Giant Eye Tentacle
	[396.48] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-000000013B, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000013B", "EyeBeamTarget", 0.1, 3.0) at 396.58 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000013B", "EyeBeamTarget", 0.1, 3.0) at 396.68 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000013B", "EyeBeamTarget", 0.1, 3.0) at 396.78 (+0.10)
	[399.30] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-000000013B, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000013B", "EyeBeamTarget", 0.1, 3.0) at 399.40 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000013B", "EyeBeamTarget", 0.1, 3.0) at 399.50 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000013B", "EyeBeamTarget", 0.1, 3.0) at 399.60 (+0.10)
	[402.48] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-0000000143, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 402.48, 402.48, 402.48, 402.48, 402.48, 402.48, 402.48
		ShowAnnounce: Eye Tentacles
		StartTimer: 30.0, Eye Tentacles
	[402.94] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-000000013B, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000013B", "EyeBeamTarget", 0.1, 3.0) at 403.04 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000013B", "EyeBeamTarget", 0.1, 3.0) at 403.14 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000013B", "EyeBeamTarget", 0.1, 3.0) at 403.24 (+0.10)
	[406.18] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-000000013B, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000013B", "EyeBeamTarget", 0.1, 3.0) at 406.28 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000013B", "EyeBeamTarget", 0.1, 3.0) at 406.38 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000013B", "EyeBeamTarget", 0.1, 3.0) at 406.48 (+0.10)
	[409.41] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-000000013B, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000013B", "EyeBeamTarget", 0.1, 3.0) at 409.51 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000013B", "EyeBeamTarget", 0.1, 3.0) at 409.61 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000013B", "EyeBeamTarget", 0.1, 3.0) at 409.71 (+0.10)
	[417.54] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-0000000150, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 417.54, 417.54, 417.54, 417.54, 417.54, 417.54, 417.54
		StopTimer: TimerEyeTentacle
		ShowAnnounce: Eye Tentacles
		StartTimer: 30.0, Eye Tentacles
	[417.54] SPELL_CAST_SUCCESS: [Giant Claw Tentacle: Birth] Creature-0-1-531-1-15728-0000000150, Giant Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15728
		ShowAnnounce: Giant Claw Tentacle
		StartTimer: 60.0, Giant Claw Tentacle
	[428.10] SPELL_CAST_SUCCESS: [Giant Eye Tentacle: Birth] Creature-0-1-531-1-15334-0000000157, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15334
		StopTimer: TimerGiantEyeTentacle
		ShowAnnounce: Giant Eye Tentacle
		StartTimer: 60.0, Giant Eye Tentacle
	[430.87] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000157, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 430.97 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 431.07 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 431.17 (+0.10)
	[432.48] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-000000015B, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 432.48, 432.48, 432.48, 432.48, 432.48, 432.48, 432.48
		StopTimer: TimerEyeTentacle
		ShowAnnounce: Eye Tentacles
		StartTimer: 30.0, Eye Tentacles
	[434.11] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000157, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 434.21 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 434.31 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 434.41 (+0.10)
	[436.15] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000157, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 436.25 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 436.35 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 436.45 (+0.10)
	[438.97] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000157, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 439.07 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 439.17 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 439.27 (+0.10)
	[441.25] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10320, nil, 0, false, false, false, false, 0
		ShowSpecialWarning: C'Thun Weakened!
		PlaySound: VoicePack/targetchange
		StopTimer: TimerEyeTentacle
		StopTimer: TimerGiantClawTentacle
		StopTimer: TimerGiantEyeTentacle
		StartTimer: 45.0, Weaken ends
		StartTimer: 83.0, Eye Tentacles
		StartTimer: 53.0, Giant Claw Tentacle
		StartTimer: 83.7, Giant Eye Tentacle
	[442.22] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000157, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 442.32 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 442.42 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 442.52 (+0.10)
	[444.80] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000157, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 444.90 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 445.00 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 445.10 (+0.10)
	[447.04] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000157, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 447.14 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 447.24 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 447.34 (+0.10)
	[450.28] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000157, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 450.38 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 450.48 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 450.58 (+0.10)
	[452.91] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000157, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 453.01 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 453.11 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 453.21 (+0.10)
	[455.15] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000157, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 455.25 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 455.35 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 455.45 (+0.10)
	[458.37] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000157, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 458.47 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 458.57 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 458.67 (+0.10)
	[461.61] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000157, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 461.71 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 461.81 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000157", "EyeBeamTarget", 0.1, 3.0) at 461.91 (+0.10)
	[462.50] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-0000000170, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 15x SPELL_CAST_SUCCESS at 462.5, 462.5, 462.5, 462.5, 462.5, 462.5, 462.5, 462.52, 462.52, 462.52, 462.52, 462.52, 462.52, 462.52, 462.52
		StopTimer: TimerEyeTentacle
		ShowAnnounce: Eye Tentacles
		StartTimer: 30.0, Eye Tentacles
	[463.11] SPELL_CAST_SUCCESS: [Giant Eye Tentacle: Birth] Creature-0-1-531-1-15334-0000000171, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15334
		StopTimer: TimerGiantEyeTentacle
		ShowAnnounce: Giant Eye Tentacle
		StartTimer: 60.0, Giant Eye Tentacle
	[466.49] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000171, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000171", "EyeBeamTarget", 0.1, 3.0) at 466.59 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000171", "EyeBeamTarget", 0.1, 3.0) at 466.69 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000171", "EyeBeamTarget", 0.1, 3.0) at 466.79 (+0.10)
	[469.73] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000171, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000171", "EyeBeamTarget", 0.1, 3.0) at 469.83 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000171", "EyeBeamTarget", 0.1, 3.0) at 469.93 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000171", "EyeBeamTarget", 0.1, 3.0) at 470.03 (+0.10)
	[472.97] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000171, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000171", "EyeBeamTarget", 0.1, 3.0) at 473.07 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000171", "EyeBeamTarget", 0.1, 3.0) at 473.17 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000171", "EyeBeamTarget", 0.1, 3.0) at 473.27 (+0.10)
	[475.00] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000171, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000171", "EyeBeamTarget", 0.1, 3.0) at 475.10 (+0.10)
	[477.84] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000171, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000171", "EyeBeamTarget", 0.1, 3.0) at 477.94 (+0.10)
	[481.07] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-0000000171, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-0000000171", "EyeBeamTarget", 0.1, 3.0) at 481.17 (+0.10)
	[492.48] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-0000000188, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 492.48, 492.48, 492.48, 492.48, 492.48, 492.48, 492.48
		StopTimer: TimerEyeTentacle
		ShowAnnounce: Eye Tentacles
		StartTimer: 30.0, Eye Tentacles
	[498.11] SPELL_CAST_SUCCESS: [Giant Eye Tentacle: Birth] Creature-0-1-531-1-15334-000000018D, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15334
		StopTimer: TimerGiantEyeTentacle
		ShowAnnounce: Giant Eye Tentacle
		StartTimer: 60.0, Giant Eye Tentacle
	[502.12] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-000000018D, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000018D", "EyeBeamTarget", 0.1, 3.0) at 502.22 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000018D", "EyeBeamTarget", 0.1, 3.0) at 502.32 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000018D", "EyeBeamTarget", 0.1, 3.0) at 502.42 (+0.10)
	[504.63] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-000000018D, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000018D", "EyeBeamTarget", 0.1, 3.0) at 504.73 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000018D", "EyeBeamTarget", 0.1, 3.0) at 504.83 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000018D", "EyeBeamTarget", 0.1, 3.0) at 504.93 (+0.10)
	[506.99] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-000000018D, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000018D", "EyeBeamTarget", 0.1, 3.0) at 507.09 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000018D", "EyeBeamTarget", 0.1, 3.0) at 507.19 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000018D", "EyeBeamTarget", 0.1, 3.0) at 507.29 (+0.10)
	[510.22] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-000000018D, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000018D", "EyeBeamTarget", 0.1, 3.0) at 510.32 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000018D", "EyeBeamTarget", 0.1, 3.0) at 510.42 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000018D", "EyeBeamTarget", 0.1, 3.0) at 510.52 (+0.10)
	[513.44] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-000000018D, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000018D", "EyeBeamTarget", 0.1, 3.0) at 513.54 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000018D", "EyeBeamTarget", 0.1, 3.0) at 513.64 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-000000018D", "EyeBeamTarget", 0.1, 3.0) at 513.74 (+0.10)
	[522.47] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-000000019E, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 522.47, 522.47, 522.47, 522.47, 522.47, 522.47, 522.47
		ShowAnnounce: Eye Tentacles
		StartTimer: 30.0, Eye Tentacles
	[531.08] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-00000001A4, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 531.08, 531.08, 531.08, 531.08, 531.08, 531.08, 531.08
		StopTimer: TimerEyeTentacle
		ShowAnnounce: Eye Tentacles
		StartTimer: 30.0, Eye Tentacles
	[531.09] SPELL_CAST_SUCCESS: [Giant Claw Tentacle: Birth] Creature-0-1-531-1-15728-00000001A4, Giant Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15728
		ShowAnnounce: Giant Claw Tentacle
		StartTimer: 60.0, Giant Claw Tentacle
	[533.09] SPELL_CAST_SUCCESS: [Giant Eye Tentacle: Birth] Creature-0-1-531-1-15334-00000001A5, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15334
		StopTimer: TimerGiantEyeTentacle
		ShowAnnounce: Giant Eye Tentacle
		StartTimer: 60.0, Giant Eye Tentacle
	[536.07] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000001A5, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 536.17 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 536.27 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 536.37 (+0.10)
	[539.31] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000001A5, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 539.41 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 539.51 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 539.61 (+0.10)
	[542.55] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000001A5, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 542.65 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 542.75 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 542.85 (+0.10)
	[545.77] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000001A5, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 545.87 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 545.97 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 546.07 (+0.10)
	[549.01] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000001A5, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 549.11 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 549.21 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 549.31 (+0.10)
	[551.25] CHAT_MSG_MONSTER_EMOTE: %s is weakened!, C'Thun, "", "", C'Thun, "", 0, 0, "", 0, 10388, nil, 0, false, false, false, false, 0
		ShowSpecialWarning: C'Thun Weakened!
		PlaySound: VoicePack/targetchange
		StopTimer: TimerEyeTentacle
		StopTimer: TimerGiantClawTentacle
		StopTimer: TimerGiantEyeTentacle
		StartTimer: 45.0, Weaken ends
		StartTimer: 83.0, Eye Tentacles
		StartTimer: 53.0, Giant Claw Tentacle
		StartTimer: 83.7, Giant Eye Tentacle
	[552.24] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000001A5, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 552.34 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 552.44 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 552.54 (+0.10)
	[552.49] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-00000001AF, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 552.49, 552.49, 552.49, 552.49, 552.49, 552.49, 552.49
		StopTimer: TimerEyeTentacle
		ShowAnnounce: Eye Tentacles
		StartTimer: 30.0, Eye Tentacles
	[555.48] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000001A5, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 555.58 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 555.68 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 555.78 (+0.10)
	[558.73] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000001A5, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 558.83 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 558.93 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 559.03 (+0.10)
	[560.33] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000001A5, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 560.43 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 560.53 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 560.63 (+0.10)
	[561.97] SPELL_CAST_SUCCESS: [Giant Claw Tentacle: Birth] Creature-0-1-531-1-15728-00000001B5, Giant Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15728
		StopTimer: TimerGiantClawTentacle
		ShowAnnounce: Giant Claw Tentacle
		StartTimer: 60.0, Giant Claw Tentacle
	[563.57] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000001A5, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 563.67 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 563.77 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 563.87 (+0.10)
	[566.80] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000001A5, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 566.90 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 567.00 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001A5", "EyeBeamTarget", 0.1, 3.0) at 567.10 (+0.10)
	[568.11] SPELL_CAST_SUCCESS: [Giant Eye Tentacle: Birth] Creature-0-1-531-1-15334-00000001B9, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15334
		StopTimer: TimerGiantEyeTentacle
		ShowAnnounce: Giant Eye Tentacle
		StartTimer: 60.0, Giant Eye Tentacle
	[571.64] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000001B9, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001B9", "EyeBeamTarget", 0.1, 3.0) at 571.74 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001B9", "EyeBeamTarget", 0.1, 3.0) at 571.84 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001B9", "EyeBeamTarget", 0.1, 3.0) at 571.94 (+0.10)
	[574.86] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000001B9, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001B9", "EyeBeamTarget", 0.1, 3.0) at 574.96 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001B9", "EyeBeamTarget", 0.1, 3.0) at 575.06 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001B9", "EyeBeamTarget", 0.1, 3.0) at 575.16 (+0.10)
	[574.88] SPELL_CAST_SUCCESS: [Giant Claw Tentacle: Birth] Creature-0-1-531-1-15728-00000001BF, Giant Claw Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15728
		StopTimer: TimerGiantClawTentacle
		ShowAnnounce: Giant Claw Tentacle
		StartTimer: 60.0, Giant Claw Tentacle
	[576.08] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-00000001C0, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 576.08, 576.08, 576.08, 576.08, 576.08, 576.08, 576.08
		StopTimer: TimerEyeTentacle
		ShowAnnounce: Eye Tentacles
		StartTimer: 30.0, Eye Tentacles
	[578.11] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000001B9, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001B9", "EyeBeamTarget", 0.1, 3.0) at 578.21 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001B9", "EyeBeamTarget", 0.1, 3.0) at 578.31 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001B9", "EyeBeamTarget", 0.1, 3.0) at 578.41 (+0.10)
	[581.37] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000001B9, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001B9", "EyeBeamTarget", 0.1, 3.0) at 581.47 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001B9", "EyeBeamTarget", 0.1, 3.0) at 581.57 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001B9", "EyeBeamTarget", 0.1, 3.0) at 581.67 (+0.10)
	[582.47] SPELL_CAST_SUCCESS: [Eye Tentacle: Birth] Creature-0-1-531-1-15726-00000001C3, Eye Tentacle, 0xa48, "", nil, 0x0, 26586, Birth, 0, 0
		AntiSpam: 15726
			Filtered: 7x SPELL_CAST_SUCCESS at 582.47, 582.47, 582.47, 582.47, 582.47, 582.47, 582.47
		StopTimer: TimerEyeTentacle
		ShowAnnounce: Eye Tentacles
		StartTimer: 30.0, Eye Tentacles
	[584.60] SPELL_CAST_START: [Giant Eye Tentacle: Eye Beam] Creature-0-1-531-1-15334-00000001B9, Giant Eye Tentacle, 0xa48, "", nil, 0x0, 26134, Eye Beam, 0, 0
		ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001B9", "EyeBeamTarget", 0.1, 3.0) at 584.70 (+0.10)
			ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001B9", "EyeBeamTarget", 0.1, 3.0) at 584.80 (+0.10)
				ScheduleTask: mod:BossTargetScanner("Creature-0-1-531-1-15334-00000001B9", "EyeBeamTarget", 0.1, 3.0) at 584.90 (+0.10)
]]
