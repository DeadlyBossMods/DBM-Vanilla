DBM.Test:Report[[
Test: SoD/AQ40/Ouro/Hardmode
Mod:  DBM-Raids-Vanilla/Ouro

Findings:
	Unused event registration: SPELL_CAST_SUCCESS 26058 (Summon Ouro Mounds)
	Timer for spell ID 1215744 (Blinding Admiration) is triggered by event SPELL_DAMAGE 1215745 (Blinding Admiration)

Unused objects:
	[Announce] Emerge, type=nil, spellId=<none>
	[Announce] Submerge, type=nil, spellId=<none>
	[Timer] Emerge, time=30.00, type=cd, spellId=<none>

Timers:
	Submerge, time=30.00, type=cd, spellId=<none>, triggerDeltas = 0.00
		[  0.00] ENCOUNTER_START: 716, Ouro, 186, 40, 0
		[129.41] SPELL_AURA_APPLIED: [Ouro->Ouro: Berserk] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, 26615, Berserk, 0, BUFF, 0
	Sand Blast, time=23.00, type=next, spellId=26102, triggerDeltas = 0.00, 24.25, 22.61, 22.67, 22.67, 24.24, 34.03, 27.49
		[  0.00] ENCOUNTER_START: 716, Ouro, 186, 40, 0
		[ 24.25] SPELL_CAST_START: [Ouro: Sand Blast] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26102, Sand Blast, 0, 0
			 Triggered 7x, delta times: 24.25, 22.61, 22.67, 22.67, 24.24, 34.03, 27.49
	Sweep, time=20.50, type=next, spellId=26103, triggerDeltas = 0.00, 22.62, 30.72, 30.77, 30.71, 30.78, 30.73
		[  0.00] ENCOUNTER_START: 716, Ouro, 186, 40, 0
		[ 22.62] SPELL_CAST_START: [Ouro: Sweep] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26103, Sweep, 0, 0
			 Triggered 6x, delta times: 22.62, 30.72, 30.77, 30.71, 30.78, 30.73
	Blinding Admiration, time=30.00, type=next, spellId=1215744, triggerDeltas = 29.61, 30.73, 30.77, 30.71, 30.79, 30.73
		[ 29.61] SPELL_DAMAGE: [Curse of Madness: Blinding Admiration] Creature-0-1-531-1-236173-000000001B, Curse of Madness, 0xa48, "", nil, 0x0, 1215745, Blinding Admiration, 0, 0
			 Triggered 5x, delta times: 29.61, 30.73, 30.77, 61.50, 30.73
		[121.82] SPELL_DAMAGE: [Curse of Madness->Pet3: Blinding Admiration] Creature-0-1-531-1-236173-000000005E, Curse of Madness, 0xa48, Pet-0-1-531-1-416-0000000003, Pet3, 0x1112, 1215745, Blinding Admiration, 0, 0

Announces:
	Sweep, type=spell, spellId=26103, triggerDeltas = 22.62, 30.72, 30.77, 30.71, 30.78, 30.73
		[ 22.62] SPELL_CAST_START: [Ouro: Sweep] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26103, Sweep, 0, 0
			 Triggered 6x, delta times: 22.62, 30.72, 30.77, 30.71, 30.78, 30.73
	Berserk soon, type=soon, spellId=26615, triggerDeltas = 177.84
		[177.84] UNIT_HEALTH: target, 0
	Berserk, type=spell, spellId=26615, triggerDeltas = 129.41
		[129.41] SPELL_AURA_APPLIED: [Ouro->Ouro: Berserk] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, 26615, Berserk, 0, BUFF, 0

Special warnings:
	Look away, type=nil, spellId=<none>, triggerDeltas = 55.61, 30.73, 30.77, 30.71, 30.79
		[ 55.61] Scheduled at 29.61 by SPELL_DAMAGE: [Curse of Madness: Blinding Admiration] Creature-0-1-531-1-236173-000000001B, Curse of Madness, 0xa48, "", nil, 0x0, 1215745, Blinding Admiration, 0, 0
		[ 86.34] Scheduled at 60.34 by SPELL_DAMAGE: [Curse of Madness: Blinding Admiration] Creature-0-1-531-1-236173-0000000035, Curse of Madness, 0xa48, "", nil, 0x0, 1215745, Blinding Admiration, 0, 0
		[117.11] Scheduled at 91.11 by SPELL_DAMAGE: [Curse of Madness: Blinding Admiration] Creature-0-1-531-1-236173-000000004D, Curse of Madness, 0xa48, "", nil, 0x0, 1215745, Blinding Admiration, 0, 0
		[147.82] Scheduled at 121.82 by SPELL_DAMAGE: [Curse of Madness->Pet3: Blinding Admiration] Creature-0-1-531-1-236173-000000005E, Curse of Madness, 0xa48, Pet-0-1-531-1-416-0000000003, Pet3, 0x1112, 1215745, Blinding Admiration, 0, 0
		[178.61] Scheduled at 152.61 by SPELL_DAMAGE: [Curse of Madness: Blinding Admiration] Creature-0-1-531-1-236173-0000000073, Curse of Madness, 0xa48, "", nil, 0x0, 1215745, Blinding Admiration, 0, 0
	Sand Blast!, type=spell, spellId=26102, triggerDeltas = 24.25, 22.61, 22.67, 22.67, 24.24, 34.03, 27.49
		[ 24.25] SPELL_CAST_START: [Ouro: Sand Blast] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26102, Sand Blast, 0, 0
			 Triggered 7x, delta times: 24.25, 22.61, 22.67, 22.67, 24.24, 34.03, 27.49

Yells:
	None

Voice pack sounds:
	VoicePack/safenow
		[ 29.61] SPELL_DAMAGE: [Curse of Madness: Blinding Admiration] Creature-0-1-531-1-236173-000000001B, Curse of Madness, 0xa48, "", nil, 0x0, 1215745, Blinding Admiration, 0, 0
			 Triggered 5x, delta times: 29.61, 30.73, 30.77, 61.50, 30.73
		[121.82] SPELL_DAMAGE: [Curse of Madness->Pet3: Blinding Admiration] Creature-0-1-531-1-236173-000000005E, Curse of Madness, 0xa48, Pet-0-1-531-1-416-0000000003, Pet3, 0x1112, 1215745, Blinding Admiration, 0, 0
	VoicePack/stunsoon
		[ 24.25] SPELL_CAST_START: [Ouro: Sand Blast] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26102, Sand Blast, 0, 0
			 Triggered 7x, delta times: 24.25, 22.61, 22.67, 22.67, 24.24, 34.03, 27.49
	VoicePack/turnaway
		[ 55.61] Scheduled at 29.61 by SPELL_DAMAGE: [Curse of Madness: Blinding Admiration] Creature-0-1-531-1-236173-000000001B, Curse of Madness, 0xa48, "", nil, 0x0, 1215745, Blinding Admiration, 0, 0
		[ 86.34] Scheduled at 60.34 by SPELL_DAMAGE: [Curse of Madness: Blinding Admiration] Creature-0-1-531-1-236173-0000000035, Curse of Madness, 0xa48, "", nil, 0x0, 1215745, Blinding Admiration, 0, 0
		[117.11] Scheduled at 91.11 by SPELL_DAMAGE: [Curse of Madness: Blinding Admiration] Creature-0-1-531-1-236173-000000004D, Curse of Madness, 0xa48, "", nil, 0x0, 1215745, Blinding Admiration, 0, 0
		[147.82] Scheduled at 121.82 by SPELL_DAMAGE: [Curse of Madness->Pet3: Blinding Admiration] Creature-0-1-531-1-236173-000000005E, Curse of Madness, 0xa48, Pet-0-1-531-1-416-0000000003, Pet3, 0x1112, 1215745, Blinding Admiration, 0, 0
		[178.61] Scheduled at 152.61 by SPELL_DAMAGE: [Curse of Madness: Blinding Admiration] Creature-0-1-531-1-236173-0000000073, Curse of Madness, 0xa48, "", nil, 0x0, 1215745, Blinding Admiration, 0, 0

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 716, Ouro, 186, 40, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_AURA_APPLIED 26615, SPELL_CAST_START 26102 26103, SPELL_CAST_SUCCESS 26058, SPELL_DAMAGE 1215745
		StartTimer: 22.0, Sweep
		StartTimer: 20.0, Sand Blast
		StartTimer: 184.0, Submerge
		RegisterEvents: ShortTerm, UNIT_HEALTH
		RegisterEvents: Regular, UNIT_HEALTH boss1 boss2 boss3 boss4 boss5 target focus
	[ 22.62] SPELL_CAST_START: [Ouro: Sweep] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26103, Sweep, 0, 0
		ShowAnnounce: Sweep
		StartTimer: 20.5, Sweep
	[ 24.25] SPELL_CAST_START: [Ouro: Sand Blast] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26102, Sand Blast, 0, 0
		ShowSpecialWarning: Sand Blast!
		PlaySound: VoicePack/stunsoon
		StartTimer: 23.0, Sand Blast
	[ 29.61] SPELL_DAMAGE: [Curse of Madness: Blinding Admiration] Creature-0-1-531-1-236173-000000001B, Curse of Madness, 0xa48, "", nil, 0x0, 1215745, Blinding Admiration, 0, 0
		AntiSpam: BlindingAdmiration
			Filtered: 12x SPELL_DAMAGE at 29.61, 29.61, 29.61, 29.63, 29.63, 29.63, 29.63, 29.63, 29.63, 29.63, 29.63, 29.63
		StartTimer: 30.0, Blinding Admiration
		ScheduleTask: specWarn:Schedule() at 55.61 (+26.00)
			ShowSpecialWarning: Look away
		ScheduleTask: specWarn:ScheduleVoice("turnaway") at 55.61 (+26.00)
			PlaySound: VoicePack/turnaway
		PlaySound: VoicePack/safenow
	[ 46.86] SPELL_CAST_START: [Ouro: Sand Blast] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26102, Sand Blast, 0, 0
		ShowSpecialWarning: Sand Blast!
		PlaySound: VoicePack/stunsoon
		StartTimer: 23.0, Sand Blast
	[ 53.34] SPELL_CAST_START: [Ouro: Sweep] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26103, Sweep, 0, 0
		ShowAnnounce: Sweep
		StartTimer: 20.5, Sweep
	[ 60.34] SPELL_DAMAGE: [Curse of Madness: Blinding Admiration] Creature-0-1-531-1-236173-0000000035, Curse of Madness, 0xa48, "", nil, 0x0, 1215745, Blinding Admiration, 0, 0
		AntiSpam: BlindingAdmiration
			Filtered: 13x SPELL_DAMAGE at 60.34, 60.34, 60.34, 60.34, 60.34, 60.34, 60.37, 60.37, 60.37, 60.37, 60.37, 60.37, 60.37
		StartTimer: 30.0, Blinding Admiration
		ScheduleTask: specWarn:Schedule() at 86.34 (+26.00)
			ShowSpecialWarning: Look away
		ScheduleTask: specWarn:ScheduleVoice("turnaway") at 86.34 (+26.00)
			PlaySound: VoicePack/turnaway
		PlaySound: VoicePack/safenow
	[ 69.53] SPELL_CAST_START: [Ouro: Sand Blast] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26102, Sand Blast, 0, 0
		ShowSpecialWarning: Sand Blast!
		PlaySound: VoicePack/stunsoon
		StartTimer: 23.0, Sand Blast
	[ 84.11] SPELL_CAST_START: [Ouro: Sweep] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26103, Sweep, 0, 0
		ShowAnnounce: Sweep
		StartTimer: 20.5, Sweep
	[ 91.11] SPELL_DAMAGE: [Curse of Madness: Blinding Admiration] Creature-0-1-531-1-236173-000000004D, Curse of Madness, 0xa48, "", nil, 0x0, 1215745, Blinding Admiration, 0, 0
		AntiSpam: BlindingAdmiration
			Filtered: 7x SPELL_DAMAGE at 91.11, 91.11, 91.11, 91.11, 91.11, 91.12, 91.12
		StartTimer: 30.0, Blinding Admiration
		ScheduleTask: specWarn:Schedule() at 117.11 (+26.00)
			ShowSpecialWarning: Look away
		ScheduleTask: specWarn:ScheduleVoice("turnaway") at 117.11 (+26.00)
			PlaySound: VoicePack/turnaway
		PlaySound: VoicePack/safenow
	[ 92.20] SPELL_CAST_START: [Ouro: Sand Blast] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26102, Sand Blast, 0, 0
		ShowSpecialWarning: Sand Blast!
		PlaySound: VoicePack/stunsoon
		StartTimer: 23.0, Sand Blast
	[114.82] SPELL_CAST_START: [Ouro: Sweep] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26103, Sweep, 0, 0
		ShowAnnounce: Sweep
		StartTimer: 20.5, Sweep
	[116.44] SPELL_CAST_START: [Ouro: Sand Blast] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26102, Sand Blast, 0, 0
		ShowSpecialWarning: Sand Blast!
		PlaySound: VoicePack/stunsoon
		StartTimer: 23.0, Sand Blast
	[121.82] SPELL_DAMAGE: [Curse of Madness->Pet3: Blinding Admiration] Creature-0-1-531-1-236173-000000005E, Curse of Madness, 0xa48, Pet-0-1-531-1-416-0000000003, Pet3, 0x1112, 1215745, Blinding Admiration, 0, 0
		AntiSpam: BlindingAdmiration
			Filtered: 8x SPELL_DAMAGE at 121.82, 121.82, 121.82, 121.83, 121.84, 121.84, 121.84, 121.84
		StartTimer: 30.0, Blinding Admiration
		ScheduleTask: specWarn:Schedule() at 147.82 (+26.00)
			ShowSpecialWarning: Look away
		ScheduleTask: specWarn:ScheduleVoice("turnaway") at 147.82 (+26.00)
			PlaySound: VoicePack/turnaway
		PlaySound: VoicePack/safenow
	[129.41] SPELL_AURA_APPLIED: [Ouro->Ouro: Berserk] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, 26615, Berserk, 0, BUFF, 0
		ShowAnnounce: Berserk
		StopTimer: TimerSubmerge
	[145.60] SPELL_CAST_START: [Ouro: Sweep] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26103, Sweep, 0, 0
		ShowAnnounce: Sweep
		StartTimer: 20.5, Sweep
	[150.47] SPELL_CAST_START: [Ouro: Sand Blast] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26102, Sand Blast, 0, 0
		ShowSpecialWarning: Sand Blast!
		PlaySound: VoicePack/stunsoon
		StartTimer: 23.0, Sand Blast
	[152.61] SPELL_DAMAGE: [Curse of Madness: Blinding Admiration] Creature-0-1-531-1-236173-0000000073, Curse of Madness, 0xa48, "", nil, 0x0, 1215745, Blinding Admiration, 0, 0
		AntiSpam: BlindingAdmiration
			Filtered: 3x SPELL_DAMAGE at 152.62, 152.62, 152.62
		StartTimer: 30.0, Blinding Admiration
		ScheduleTask: specWarn:Schedule() at 178.61 (+26.00)
			ShowSpecialWarning: Look away
		ScheduleTask: specWarn:ScheduleVoice("turnaway") at 178.61 (+26.00)
			PlaySound: VoicePack/turnaway
		PlaySound: VoicePack/safenow
	[176.33] SPELL_CAST_START: [Ouro: Sweep] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26103, Sweep, 0, 0
		ShowAnnounce: Sweep
		StartTimer: 20.5, Sweep
	[177.84] UNIT_HEALTH: target, 0
		ShowAnnounce: Berserk soon
		UnregisterEvents: ShortTerm, UNIT_HEALTH boss1 boss2 boss3 boss4 boss5 target focus
		UnregisterEvents: Regular, UNIT_HEALTH boss1 boss2 boss3 boss4 boss5 target focus
	[177.96] SPELL_CAST_START: [Ouro: Sand Blast] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26102, Sand Blast, 0, 0
		ShowSpecialWarning: Sand Blast!
		PlaySound: VoicePack/stunsoon
		StartTimer: 23.0, Sand Blast
	[183.34] SPELL_DAMAGE: [Curse of Madness: Blinding Admiration] Creature-0-1-531-1-236173-0000000088, Curse of Madness, 0xa48, "", nil, 0x0, 1215745, Blinding Admiration, 0, 0
		AntiSpam: BlindingAdmiration
			Filtered: 2x SPELL_DAMAGE at 183.34, 183.34
		StartTimer: 30.0, Blinding Admiration
		ScheduleTask: specWarn:Schedule() at 209.34 (+26.00)
			Unscheduled by ENCOUNTER_END at 194.84
		ScheduleTask: specWarn:ScheduleVoice("turnaway") at 209.34 (+26.00)
			Unscheduled by ENCOUNTER_END at 194.84
		PlaySound: VoicePack/safenow
	[194.84] ENCOUNTER_END: 716, Ouro, 186, 40, 1, 0
		EndCombat: ENCOUNTER_END
		UnscheduleTask: specWarn:ScheduleVoice("turnaway") scheduled by ScheduleTask at 183.34
		UnscheduleTask: specWarn:Schedule() scheduled by ScheduleTask at 183.34
		AntiSpam: 716
]]
