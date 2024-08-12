DBM.Test:Report[[
Test: SoD/Onyxia/Onyxia
Mod:  DBM-Raids-Vanilla/OnyxiaVanilla

Findings:
	Unused event registration: CHAT_MSG_RAID_BOSS_EMOTE
	Unused event registration: LOADING_SCREEN_DISABLED
	Unused event registration: SPELL_CAST_START 18351 (Breath)
	Unused event registration: SPELL_CAST_START 18564 (Breath)
	Unused event registration: SPELL_CAST_START 18576 (Breath)
	Unused event registration: SPELL_CAST_START 18584 (Breath)
	Unused event registration: SPELL_CAST_START 18596 (Breath)
	Unused event registration: SPELL_CAST_START 18609 (Breath)
	Unused event registration: SPELL_CAST_START 18617 (Breath)
	Unused event registration: SPELL_DAMAGE 15847 (Tail Sweep)
	SpecialWarning for spell ID 18584 (Breath) is triggered by event SPELL_CAST_START 17086 (Breath)
	Timer for spell ID 18584 (Breath) is triggered by event SPELL_CAST_START 17086 (Breath)

Unused objects:
	None

Timers:
	Flame Breath, time=13.30, type=cd, spellId=18435, triggerDeltas = 14.56, 14.58, 14.58, 14.55, 19.41, 14.56, 268.72, 21.06, 9.63, 16.20
		[ 14.56] SPELL_CAST_START: [Onyxia: Flame Breath] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18435, Flame Breath, 0, 0
			 Triggered 10x, delta times: 14.56, 14.58, 14.58, 14.55, 19.41, 14.56, 268.72, 21.06, 9.63, 16.20
		[ 95.68] CHAT_MSG_MONSTER_YELL: This meaningless exertion bores me. I'll incinerate you all from above!, Onyxia, "", "", "", "", 0, 0, "", 0, 1891, nil, 0, false, false, false, false, 0
	Breath, time=5.00, type=cast, spellId=18584, triggerDeltas = 95.68, 28.94
		[ 95.68] CHAT_MSG_MONSTER_YELL: This meaningless exertion bores me. I'll incinerate you all from above!, Onyxia, "", "", "", "", 0, 0, "", 0, 1891, nil, 0, false, false, false, false, 0
		[124.62] SPELL_CAST_START: [Onyxia: Breath] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 17086, Breath, 0, 0

Announces:
	Stage 2 soon, type=prestage, spellId=<none>, triggerDeltas = 94.24
		[ 94.24] UNIT_HEALTH: target, 0
	Stage 2, type=stage, spellId=<none>, triggerDeltas = 95.68
		[ 95.68] CHAT_MSG_MONSTER_YELL: This meaningless exertion bores me. I'll incinerate you all from above!, Onyxia, "", "", "", "", 0, 0, "", 0, 1891, nil, 0, false, false, false, false, 0
	Stage 3 soon, type=prestage, spellId=<none>, triggerDeltas = 246.53
		[246.53] UNIT_HEALTH: target, 0
	Stage 3, type=stage, spellId=<none>, triggerDeltas = 283.45
		[283.45] CHAT_MSG_MONSTER_YELL: It seems you'll need another lesson, mortals!, Onyxia, "", "", "", "", 0, 0, "", 0, 2115, nil, 0, false, false, false, false, 0
	Fireball on >%s<, type=target, spellId=18392, triggerDeltas = 135.93, 3.00, 27.77, 3.01, 12.02, 3.01, 61.80, 3.02, 3.00, 3.00, 16.53, 1.50, 3.02, 3.00
		[135.93] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
			 Triggered 13x, delta times: 135.93, 3.00, 27.77, 3.01, 12.02, 3.01, 61.80, 3.02, 3.00, 3.00, 18.03, 3.02, 3.00
		[272.09] Scheduled at 270.59 by SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
	Wing Buffet, type=spell, spellId=18500, triggerDeltas = 17.80, 24.30, 27.49
		[ 17.80] SPELL_CAST_START: [Onyxia: Wing Buffet] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18500, Wing Buffet, 0, 0
			 Triggered 3x, delta times: 17.80, 24.30, 27.49
	Knock Away on >%s<, type=target, spellId=19633, triggerDeltas = 12.94, 22.68, 27.49, 19.42, 216.90, 48.61, 46.94, 37.48
		[ 12.94] SPELL_CAST_SUCCESS: [Onyxia->Glassy: Knock Away] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, Player-5826-01FA1F88, Glassy, 0x512, 19633, Knock Away, 0, 0
			 Triggered 7x, delta times: 12.94, 22.68, 27.49, 19.42, 216.90, 48.61, 46.94
		[432.46] SPELL_CAST_SUCCESS: [Onyxia->Skarpetki: Knock Away] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 19633, Knock Away, 0, 0

Special warnings:
	Bellowing Roar!, type=spell, spellId=18431, triggerDeltas = 288.10, 45.36, 56.66, 14.56, 25.86
		[288.10] SPELL_CAST_START: [Onyxia: Bellowing Roar] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18431, Bellowing Roar, 0, 0
			 Triggered 5x, delta times: 288.10, 45.36, 56.66, 14.56, 25.86
	Breath soon, type=soon, spellId=18584, triggerDeltas = 120.68
		[120.68] Scheduled at 95.68 by CHAT_MSG_MONSTER_YELL: This meaningless exertion bores me. I'll incinerate you all from above!, Onyxia, "", "", "", "", 0, 0, "", 0, 1891, nil, 0, false, false, false, false, 0
	Breath!, type=spell, spellId=18584, triggerDeltas = 124.62
		[124.62] SPELL_CAST_START: [Onyxia: Breath] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 17086, Breath, 0, 0

Yells:
	Fireball on PlayerName, type=yell, spellId=18392
		[276.61] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0

Voice pack sounds:
	VoicePack/breathsoon
		[124.62] SPELL_CAST_START: [Onyxia: Breath] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 17086, Breath, 0, 0
	VoicePack/fearsoon
		[288.10] SPELL_CAST_START: [Onyxia: Bellowing Roar] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18431, Bellowing Roar, 0, 0
			 Triggered 5x, delta times: 288.10, 45.36, 56.66, 14.56, 25.86

Icons:
	None

Event trace:
	[  0.00] ADDON_LOADED: DBM-Raids-Vanilla, 0
		RegisterEvents: Regular, CHAT_MSG_MONSTER_YELL
	[  0.00] ENCOUNTER_START: 1084, Onyxia, 186, 40, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_START 17086 18351 18564 18576 18584 18596 18609 18617 18435 18431 18500 18392, SPELL_CAST_SUCCESS 19633, SPELL_DAMAGE 15847, UNIT_DIED, CHAT_MSG_MONSTER_EMOTE, CHAT_MSG_RAID_BOSS_EMOTE, UNIT_HEALTH boss1 boss2 boss3 boss4 boss5 target focus, LOADING_SCREEN_DISABLED
		PlaySound: Interface\AddOns\DBM-Raids-Vanilla\VanillaOnyxia\sounds\dps-very-very-slowly.ogg
		ScheduleTask: (anonymous function) at 20.00 (+20.00)
			PlaySound: Interface\AddOns\DBM-Raids-Vanilla\VanillaOnyxia\sounds\hit-it-like-you-mean-it.ogg
		ScheduleTask: (anonymous function) at 30.00 (+30.00)
			PlaySound: Interface\AddOns\DBM-Raids-Vanilla\VanillaOnyxia\sounds\now-hit-it-very-hard-and-fast.ogg
	[ 12.94] SPELL_CAST_SUCCESS: [Onyxia->Glassy: Knock Away] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, Player-5826-01FA1F88, Glassy, 0x512, 19633, Knock Away, 0, 0
		ShowAnnounce: Knock Away on Glassy
	[ 14.56] SPELL_CAST_START: [Onyxia: Flame Breath] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18435, Flame Breath, 0, 0
		StartTimer: 13.3, Flame Breath
	[ 17.80] SPELL_CAST_START: [Onyxia: Wing Buffet] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18500, Wing Buffet, 0, 0
		ShowAnnounce: Wing Buffet
	[ 29.14] SPELL_CAST_START: [Onyxia: Flame Breath] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18435, Flame Breath, 0, 0
		StartTimer: 13.3, Flame Breath
	[ 35.62] SPELL_CAST_SUCCESS: [Onyxia->Glassy: Knock Away] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, Player-5826-01FA1F88, Glassy, 0x512, 19633, Knock Away, 0, 0
		ShowAnnounce: Knock Away on Glassy
	[ 42.10] SPELL_CAST_START: [Onyxia: Wing Buffet] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18500, Wing Buffet, 0, 0
		ShowAnnounce: Wing Buffet
	[ 43.72] SPELL_CAST_START: [Onyxia: Flame Breath] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18435, Flame Breath, 0, 0
		StartTimer: 13.3, Flame Breath
	[ 58.27] SPELL_CAST_START: [Onyxia: Flame Breath] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18435, Flame Breath, 0, 0
		StartTimer: 13.3, Flame Breath
	[ 63.11] SPELL_CAST_SUCCESS: [Onyxia->Glassy: Knock Away] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, Player-5826-01FA1F88, Glassy, 0x512, 19633, Knock Away, 0, 0
		ShowAnnounce: Knock Away on Glassy
	[ 69.59] SPELL_CAST_START: [Onyxia: Wing Buffet] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18500, Wing Buffet, 0, 0
		ShowAnnounce: Wing Buffet
	[ 77.68] SPELL_CAST_START: [Onyxia: Flame Breath] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18435, Flame Breath, 0, 0
		StartTimer: 13.3, Flame Breath
	[ 82.53] SPELL_CAST_SUCCESS: [Onyxia->Glassy: Knock Away] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, Player-5826-01FA1F88, Glassy, 0x512, 19633, Knock Away, 0, 0
		ShowAnnounce: Knock Away on Glassy
	[ 92.24] SPELL_CAST_START: [Onyxia: Flame Breath] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18435, Flame Breath, 0, 0
		StartTimer: 13.3, Flame Breath
	[ 94.24] UNIT_HEALTH: target, 0
		ShowAnnounce: Stage 2 soon
	[ 95.68] CHAT_MSG_MONSTER_YELL: This meaningless exertion bores me. I'll incinerate you all from above!, Onyxia, "", "", "", "", 0, 0, "", 0, 1891, nil, 0, false, false, false, false, 0
		ShowAnnounce: Stage 2
		StopTimer: Timer18435cd3
		PlaySound: Interface\AddOns\DBM-Raids-Vanilla\VanillaOnyxia\sounds\i-dont-see-enough-dots.ogg
		ScheduleTask: (anonymous function) at 105.68 (+10.00)
			PlaySound: Interface\AddOns\DBM-Raids-Vanilla\VanillaOnyxia\sounds\throw-more-dots.ogg
		ScheduleTask: (anonymous function) at 113.68 (+18.00)
			PlaySound: Interface\AddOns\DBM-Raids-Vanilla\VanillaOnyxia\sounds\whelps-left-side-even-side-handle-it.ogg
		StartTimer: 34.1, Breath
		ScheduleTask: specWarn18584soon:Schedule() at 120.68 (+25.00)
			ShowSpecialWarning: Breath soon
	[124.62] SPELL_CAST_START: [Onyxia: Breath] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 17086, Breath, 0, 0
		AntiSpam: 1
			Filtered: 1x CHAT_MSG_MONSTER_EMOTE at 124.8
		ShowSpecialWarning: Breath!
		PlaySound: VoicePack/breathsoon
		StartTimer: 5.0, Breath
	[135.93] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
			Filtered: 1x SPELL_CAST_START at 135.93
		ShowAnnounce: Fireball on Mafakacoil
	[138.93] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ShowAnnounce: Fireball on Mafakacoil
	[141.93] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 142.23 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 142.53 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 142.83 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 143.13 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 143.43 (+0.30)
	[144.93] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
			Filtered: 1x SPELL_CAST_START at 144.93
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 145.23 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 145.53 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 145.83 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 146.13 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 146.43 (+0.30)
	[147.93] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 148.23 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 148.53 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 148.83 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 149.13 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 149.43 (+0.30)
	[150.95] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 151.25 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 151.55 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 151.85 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 152.15 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 152.45 (+0.30)
	[160.21] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
			Filtered: 1x SPELL_CAST_START at 160.21
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 160.51 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 160.81 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 161.11 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 161.41 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 161.71 (+0.30)
	[163.20] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 163.50 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 163.80 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 164.10 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 164.40 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 164.70 (+0.30)
	[166.70] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ShowAnnounce: Fireball on Glassy
	[169.71] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
			Filtered: 1x SPELL_CAST_START at 169.71
		ShowAnnounce: Fireball on Glassy
	[172.71] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 173.01 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 173.31 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 173.61 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 173.91 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 174.21 (+0.30)
	[175.71] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 176.01 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 176.31 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 176.61 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 176.91 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 177.21 (+0.30)
	[178.73] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
			Filtered: 1x SPELL_CAST_START at 178.73
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 179.03 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 179.33 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 179.63 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 179.93 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 180.23 (+0.30)
	[181.73] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ShowAnnounce: Fireball on Mafakacoil
	[184.74] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ShowAnnounce: Fireball on Mafakacoil
	[187.75] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
			Filtered: 1x SPELL_CAST_START at 187.75
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 188.05 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 188.35 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 188.65 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 188.95 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 189.25 (+0.30)
	[190.74] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 191.04 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 191.34 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 191.64 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 191.94 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 192.24 (+0.30)
	[200.71] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
			Filtered: 1x SPELL_CAST_START at 200.71
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 201.01 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 201.31 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 201.61 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 201.91 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 202.21 (+0.30)
	[203.72] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 204.02 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 204.32 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 204.62 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 204.92 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 205.22 (+0.30)
	[206.72] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 207.02 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 207.32 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 207.62 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 207.92 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 208.22 (+0.30)
	[209.74] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
			Filtered: 1x SPELL_CAST_START at 209.74
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 210.04 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 210.34 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 210.64 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 210.94 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 211.24 (+0.30)
	[212.74] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 213.04 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 213.34 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 213.64 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 213.94 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 214.24 (+0.30)
	[215.74] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 216.04 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 216.34 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 216.64 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 216.94 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 217.24 (+0.30)
	[219.50] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
			Filtered: 1x SPELL_CAST_START at 219.5
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 219.80 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 220.10 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 220.40 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 220.70 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 221.00 (+0.30)
	[222.50] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 222.80 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 223.10 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 223.40 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 223.70 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 224.00 (+0.30)
	[225.50] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 225.80 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 226.10 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 226.40 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 226.70 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 227.00 (+0.30)
	[228.52] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
			Filtered: 1x SPELL_CAST_START at 228.52
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 228.82 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 229.12 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 229.42 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 229.72 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 230.02 (+0.30)
	[231.52] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 231.82 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 232.12 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 232.42 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 232.72 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 233.02 (+0.30)
	[234.51] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 234.81 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 235.11 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 235.41 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 235.71 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 236.01 (+0.30)
	[237.53] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
			Filtered: 1x SPELL_CAST_START at 237.53
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 237.83 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 238.13 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 238.43 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 238.73 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 239.03 (+0.30)
	[240.53] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 240.83 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 241.13 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 241.43 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 241.73 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 242.03 (+0.30)
	[243.53] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 243.83 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 244.13 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 244.43 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 244.73 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 245.03 (+0.30)
	[246.53] UNIT_HEALTH: target, 0
		ShowAnnounce: Stage 3 soon
	[246.54] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
			Filtered: 1x SPELL_CAST_START at 246.54
		ShowAnnounce: Fireball on Glassy
	[249.56] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ShowAnnounce: Fireball on Obile
	[252.56] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ShowAnnounce: Fireball on Mafakacoil
	[255.56] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
			Filtered: 1x SPELL_CAST_START at 255.56
		ShowAnnounce: Fireball on Mafakacoil
	[258.56] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 258.86 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 259.16 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 259.46 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 259.76 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 260.06 (+0.30)
	[261.58] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 261.88 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 262.18 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 262.48 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 262.78 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 263.08 (+0.30)
	[264.58] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
			Filtered: 1x SPELL_CAST_START at 264.58
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 264.88 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 265.18 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 265.48 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 265.78 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 266.08 (+0.30)
	[267.59] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 267.89 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 268.19 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 268.49 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 268.79 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 269.09 (+0.30)
	[270.59] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 270.89 (+0.30)
			ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 271.19 (+0.30)
				ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 271.49 (+0.30)
					ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 271.79 (+0.30)
						ScheduleTask: mod:BossTargetScanner("Creature-0-5209-249-24472-10184-000022AEFA", "FireballTarget", 0.3, 6.0) at 272.09 (+0.30)
							ShowAnnounce: Fireball on Cattivo
	[273.59] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
			Filtered: 1x SPELL_CAST_START at 273.59
		ShowAnnounce: Fireball on Cattivo
	[276.61] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ShowAnnounce: Fireball on PlayerName
		ShowYell: Fireball on PlayerName
	[279.61] SPELL_CAST_START: [Onyxia: Fireball] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18392, Fireball, 0, 0
		AntiSpam: 2
		ShowAnnounce: Fireball on Obile
	[283.45] CHAT_MSG_MONSTER_YELL: It seems you'll need another lesson, mortals!, Onyxia, "", "", "", "", 0, 0, "", 0, 2115, nil, 0, false, false, false, false, 0
		ShowAnnounce: Stage 3
		ScheduleTask: (anonymous function) at 298.45 (+15.00)
			PlaySound: Interface\AddOns\DBM-Raids-Vanilla\VanillaOnyxia\sounds\dps-very-very-slowly.ogg
		ScheduleTask: (anonymous function) at 318.45 (+35.00)
			PlaySound: Interface\AddOns\DBM-Raids-Vanilla\VanillaOnyxia\sounds\hit-it-like-you-mean-it.ogg
		ScheduleTask: (anonymous function) at 328.45 (+45.00)
			PlaySound: Interface\AddOns\DBM-Raids-Vanilla\VanillaOnyxia\sounds\now-hit-it-very-hard-and-fast.ogg
	[288.10] SPELL_CAST_START: [Onyxia: Bellowing Roar] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18431, Bellowing Roar, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_START at 288.1
		ShowSpecialWarning: Bellowing Roar!
		PlaySound: VoicePack/fearsoon
	[299.43] SPELL_CAST_SUCCESS: [Onyxia->Glassy: Knock Away] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, Player-5826-01FA1F88, Glassy, 0x512, 19633, Knock Away, 0, 0
		ShowAnnounce: Knock Away on Glassy
	[333.46] SPELL_CAST_START: [Onyxia: Bellowing Roar] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18431, Bellowing Roar, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_START at 333.46
		ShowSpecialWarning: Bellowing Roar!
		PlaySound: VoicePack/fearsoon
	[348.04] SPELL_CAST_SUCCESS: [Onyxia->Glassy: Knock Away] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, Player-5826-01FA1F88, Glassy, 0x512, 19633, Knock Away, 0, 0
		ShowAnnounce: Knock Away on Glassy
	[360.96] SPELL_CAST_START: [Onyxia: Flame Breath] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18435, Flame Breath, 0, 0
		StartTimer: 13.3, Flame Breath
	[382.02] SPELL_CAST_START: [Onyxia: Flame Breath] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18435, Flame Breath, 0, 0
		StartTimer: 13.3, Flame Breath
	[390.12] SPELL_CAST_START: [Onyxia: Bellowing Roar] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18431, Bellowing Roar, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_START at 390.12
		ShowSpecialWarning: Bellowing Roar!
		PlaySound: VoicePack/fearsoon
	[391.65] SPELL_CAST_START: [Onyxia: Flame Breath] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18435, Flame Breath, 0, 0
		StartTimer: 13.3, Flame Breath
	[393.68] UNIT_DIED: [->Tandanu] "", nil, 0x0, Player-5826-020CBDBB, Tandanu, 0x511, 3, false, 0, 0
		PlaySound: Interface\AddOns\DBM-Raids-Vanilla\VanillaOnyxia\sounds\thats-a-fucking-fifty-dkp-minus.ogg
	[394.98] SPELL_CAST_SUCCESS: [Onyxia->Glassy: Knock Away] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, Player-5826-01FA1F88, Glassy, 0x512, 19633, Knock Away, 0, 0
		ShowAnnounce: Knock Away on Glassy
	[404.68] SPELL_CAST_START: [Onyxia: Bellowing Roar] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18431, Bellowing Roar, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_START at 404.68
		ShowSpecialWarning: Bellowing Roar!
		PlaySound: VoicePack/fearsoon
	[407.85] SPELL_CAST_START: [Onyxia: Flame Breath] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18435, Flame Breath, 0, 0
		StartTimer: 13.3, Flame Breath
	[430.54] SPELL_CAST_START: [Onyxia: Bellowing Roar] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, "", nil, 0x0, 18431, Bellowing Roar, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_START at 430.54
		ShowSpecialWarning: Bellowing Roar!
		PlaySound: VoicePack/fearsoon
	[432.46] SPELL_CAST_SUCCESS: [Onyxia->Skarpetki: Knock Away] Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 19633, Knock Away, 0, 0
		ShowAnnounce: Knock Away on Skarpetki
	[448.04] UNIT_DIED: [->Onyxia] "", nil, 0x0, Creature-0-5209-249-24472-10184-000022AEFA, Onyxia, 0xa48, -1, false, 0, 0
		EndCombat: Main CID Down
]]
