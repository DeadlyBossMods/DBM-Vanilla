DBM.Test:Report[[
Test: SoD/AQ40/Skeram/Hardmode
Mod:  DBM-Raids-Vanilla/Skeram

Findings:
	Unused event registration: SPELL_AURA_REMOVED 785 (True Fulfillment)
	Announce for spell ID 20449 (Teleport) is triggered by event SPELL_CAST_SUCCESS 4801 (Teleport)
	Announce for spell ID 20449 (Teleport) is triggered by event SPELL_CAST_SUCCESS 8195 (Teleport)

Unused objects:
	None

Timers:
	Exploding Ghosts, time=30.00, type=cd, spellId=<none>, triggerDeltas = 0.00, 0.00, 0.00, 0.00, 0.00, 0.00
		Unknown trigger
	True Fulfillment ends, time=20.00, type=active, spellId=785, triggerDeltas = 20.57, 29.12, 1.31, 32.43, 6.47, 3.24, 22.57, 29.27, 0.00, 0.30, 27.51
		[ 20.57] SPELL_AURA_APPLIED: [The Prophet Skeram->Dps11: True Fulfillment] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, Player-1-00000016, Dps11, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
			 Triggered 2x, delta times: 20.57, 152.22
		[ 49.69] SPELL_AURA_APPLIED: [The Prophet Skeram->Dps5: True Fulfillment] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, Player-1-00000008, Dps5, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		[ 51.00] SPELL_AURA_APPLIED: [The Prophet Skeram->Dps9: True Fulfillment] Creature-0-1-531-1-176525-00000000AF, The Prophet Skeram, 0xa48, Player-1-00000013, Dps9, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		[ 83.43] SPELL_AURA_APPLIED: [The Prophet Skeram->Dps6: True Fulfillment] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, Player-1-00000010, Dps6, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		[ 89.90] SPELL_AURA_APPLIED: [The Prophet Skeram->Dps12: True Fulfillment] Creature-0-1-531-1-176525-00000000CA, The Prophet Skeram, 0xa48, Player-1-00000017, Dps12, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		[ 93.14] SPELL_AURA_APPLIED: [The Prophet Skeram->Dps13: True Fulfillment] Creature-0-1-531-1-176525-000000004A, The Prophet Skeram, 0xa48, Player-1-00000018, Dps13, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		[115.71] SPELL_AURA_APPLIED: [The Prophet Skeram->Dps12: True Fulfillment] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, Player-1-00000017, Dps12, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		[144.98] SPELL_AURA_APPLIED: [The Prophet Skeram->Dps4: True Fulfillment] Creature-0-1-531-1-176525-00000000EE, The Prophet Skeram, 0xa48, Player-1-00000007, Dps4, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		[144.98] SPELL_AURA_APPLIED: [The Prophet Skeram->Dps8: True Fulfillment] Creature-0-1-531-1-176525-0000000075, The Prophet Skeram, 0xa48, Player-1-00000012, Dps8, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		[145.28] SPELL_AURA_APPLIED: [The Prophet Skeram->Dps7: True Fulfillment] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, Player-1-00000011, Dps7, 0x512, 785, True Fulfillment, 0, DEBUFF, 0

Announces:
	Single exploding ghost spawned - dodge, type=nil, spellId=<none>, triggerDeltas = 0.00, 0.00
		Unknown trigger
	Summon Images soon, type=soon, spellId=747, triggerDeltas = 27.85
		[ 27.85] UNIT_HEALTH: target, 0
	Summon Images, type=spell, spellId=747, triggerDeltas = 31.08, 48.59, 56.68
		[ 31.08] SPELL_SUMMON: [The Prophet Skeram->The Prophet Skeram: Summon Images] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, Creature-0-1-531-1-176525-0000000026, The Prophet Skeram, 0xa48, 747, Summon Images, 0, 0
			 Triggered 3x, delta times: 31.08, 48.59, 56.68
	True Fulfillment on >%s<, type=target, spellId=785, triggerDeltas = 20.87, 29.12, 1.31, 32.43, 6.47, 3.24, 22.57, 29.57, 27.51
		[ 20.87] Scheduled at 20.57 by SPELL_AURA_APPLIED: [The Prophet Skeram->Dps11: True Fulfillment] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, Player-1-00000016, Dps11, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		[ 49.99] Scheduled at 49.69 by SPELL_AURA_APPLIED: [The Prophet Skeram->Dps5: True Fulfillment] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, Player-1-00000008, Dps5, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		[ 51.30] Scheduled at 51.00 by SPELL_AURA_APPLIED: [The Prophet Skeram->Dps9: True Fulfillment] Creature-0-1-531-1-176525-00000000AF, The Prophet Skeram, 0xa48, Player-1-00000013, Dps9, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		[ 83.73] Scheduled at 83.43 by SPELL_AURA_APPLIED: [The Prophet Skeram->Dps6: True Fulfillment] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, Player-1-00000010, Dps6, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		[ 90.20] Scheduled at 89.90 by SPELL_AURA_APPLIED: [The Prophet Skeram->Dps12: True Fulfillment] Creature-0-1-531-1-176525-00000000CA, The Prophet Skeram, 0xa48, Player-1-00000017, Dps12, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		[ 93.44] Scheduled at 93.14 by SPELL_AURA_APPLIED: [The Prophet Skeram->Dps13: True Fulfillment] Creature-0-1-531-1-176525-000000004A, The Prophet Skeram, 0xa48, Player-1-00000018, Dps13, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		[116.01] Scheduled at 115.71 by SPELL_AURA_APPLIED: [The Prophet Skeram->Dps12: True Fulfillment] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, Player-1-00000017, Dps12, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		[145.58] Scheduled at 145.28 by SPELL_AURA_APPLIED: [The Prophet Skeram->Dps7: True Fulfillment] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, Player-1-00000011, Dps7, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		[173.09] Scheduled at 172.79 by SPELL_AURA_APPLIED: [The Prophet Skeram->Dps11: True Fulfillment] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, Player-1-00000016, Dps11, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
	Teleport, type=spell, spellId=20449, triggerDeltas = 27.85, 25.89, 9.70, 27.58, 3.23, 16.20, 40.49, 6.22, 6.72
		[ 27.85] SPELL_CAST_SUCCESS: [The Prophet Skeram: Teleport] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 8195, Teleport, 0, 0
			 Triggered 3x, delta times: 27.85, 63.17, 66.14
		[ 53.74] SPELL_CAST_SUCCESS: [The Prophet Skeram: Teleport] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 20449, Teleport, 0, 0
			 Triggered 3x, delta times: 53.74, 40.51, 56.69
		[ 63.44] SPELL_CAST_SUCCESS: [The Prophet Skeram: Teleport] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 4801, Teleport, 0, 0
			 Triggered 3x, delta times: 63.44, 47.01, 53.43

Special warnings:
	Exploding ghosts - dodge, type=nil, spellId=<none>, triggerDeltas = 0.00, 0.00, 0.00, 0.00, 0.00, 0.00
		Unknown trigger
	Arcane Explosion - interrupt >%s<!, type=interrupt, spellId=26192, triggerDeltas = 6.83, 14.53, 16.20, 3.24, 9.68, 8.11, 11.34, 14.60, 13.53, 18.03, 6.69, 15.18, 4.89, 3.23, 9.73, 11.21, 9.84
		[  6.83] SPELL_CAST_START: [The Prophet Skeram: Arcane Explosion] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 26192, Arcane Explosion, 0, 0
			 Triggered 14x, delta times: 6.83, 14.53, 16.20, 12.92, 8.11, 11.34, 14.60, 13.53, 18.03, 6.69, 15.18, 17.85, 11.21, 9.84
		[ 40.80] SPELL_CAST_START: [The Prophet Skeram: Arcane Explosion] Creature-0-1-531-1-176525-0000000026, The Prophet Skeram, 0xa48, "", nil, 0x0, 26192, Arcane Explosion, 0, 0
			 Triggered 3x, delta times: 40.80, 102.05, 3.23

Yells:
	None

Voice pack sounds:
	VoicePack/ghostsoon
		Unknown trigger
	VoicePack/kickcast
		[  6.83] SPELL_CAST_START: [The Prophet Skeram: Arcane Explosion] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 26192, Arcane Explosion, 0, 0
			 Triggered 14x, delta times: 6.83, 14.53, 16.20, 12.92, 8.11, 11.34, 14.60, 13.53, 18.03, 6.69, 15.18, 17.85, 11.21, 9.84
		[ 40.80] SPELL_CAST_START: [The Prophet Skeram: Arcane Explosion] Creature-0-1-531-1-176525-0000000026, The Prophet Skeram, 0xa48, "", nil, 0x0, 26192, Arcane Explosion, 0, 0
			 Triggered 3x, delta times: 40.80, 102.05, 3.23

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 709, The Prophet Skeram, 186, 40, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_AURA_APPLIED 785, SPELL_AURA_REMOVED 785, SPELL_CAST_SUCCESS 20449 4801 8195, SPELL_CAST_START 26192, SPELL_SUMMON 747, UNIT_HEALTH boss1 boss2 boss3 boss4 boss5 target focus
	[  6.83] SPELL_CAST_START: [The Prophet Skeram: Arcane Explosion] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 26192, Arcane Explosion, 0, 0
		AntiSpam: ArcaneExplosion
		ShowSpecialWarning: Arcane Explosion - interrupt The Prophet Skeram!
		PlaySound: VoicePack/kickcast
	[ 20.57] SPELL_AURA_APPLIED: [The Prophet Skeram->Dps11: True Fulfillment] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, Player-1-00000016, Dps11, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		ScheduleTask: (anonymous function) at 23.57 (+3.00)
		ScheduleTask: announce785target:CombinedShow("Dps11") at 20.87 (+0.30)
			ShowAnnounce: True Fulfillment on Dps11
		StartTimer: 20.0, True Fulfillment ends
	[ 21.36] SPELL_CAST_START: [The Prophet Skeram: Arcane Explosion] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 26192, Arcane Explosion, 0, 0
		AntiSpam: ArcaneExplosion
		ShowSpecialWarning: Arcane Explosion - interrupt The Prophet Skeram!
		PlaySound: VoicePack/kickcast
	[ 27.85] UNIT_HEALTH: target, 0
		ShowAnnounce: Summon Images soon
	[ 27.85] SPELL_CAST_SUCCESS: [The Prophet Skeram: Teleport] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 8195, Teleport, 0, 0
		AntiSpam: 1
		ShowAnnounce: Teleport
	[ 31.08] SPELL_SUMMON: [The Prophet Skeram->The Prophet Skeram: Summon Images] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, Creature-0-1-531-1-176525-0000000026, The Prophet Skeram, 0xa48, 747, Summon Images, 0, 0
		AntiSpam: 2
			Filtered: 1x SPELL_SUMMON at 31.08
		ShowAnnounce: Summon Images
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[ 37.56] SPELL_CAST_START: [The Prophet Skeram: Arcane Explosion] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 26192, Arcane Explosion, 0, 0
		AntiSpam: ArcaneExplosion
		ShowSpecialWarning: Arcane Explosion - interrupt The Prophet Skeram!
		PlaySound: VoicePack/kickcast
	[ 40.80] SPELL_CAST_START: [The Prophet Skeram: Arcane Explosion] Creature-0-1-531-1-176525-0000000026, The Prophet Skeram, 0xa48, "", nil, 0x0, 26192, Arcane Explosion, 0, 0
		AntiSpam: ArcaneExplosion
		ShowSpecialWarning: Arcane Explosion - interrupt The Prophet Skeram!
		PlaySound: VoicePack/kickcast
	[ 49.69] SPELL_AURA_APPLIED: [The Prophet Skeram->Dps5: True Fulfillment] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, Player-1-00000008, Dps5, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		ScheduleTask: (anonymous function) at 52.69 (+3.00)
			Unscheduled by SPELL_AURA_APPLIED at 51.00
		ScheduleTask: announce785target:CombinedShow("Dps5") at 49.99 (+0.30)
			ShowAnnounce: True Fulfillment on Dps5
		StartTimer: 20.0, True Fulfillment ends
	[ 50.48] SPELL_CAST_START: [The Prophet Skeram: Arcane Explosion] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 26192, Arcane Explosion, 0, 0
		AntiSpam: ArcaneExplosion
		ShowSpecialWarning: Arcane Explosion - interrupt The Prophet Skeram!
		PlaySound: VoicePack/kickcast
	[ 51.00] SPELL_AURA_APPLIED: [The Prophet Skeram->Dps9: True Fulfillment] Creature-0-1-531-1-176525-00000000AF, The Prophet Skeram, 0xa48, Player-1-00000013, Dps9, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 49.69
		ScheduleTask: (anonymous function) at 54.00 (+3.00)
		ScheduleTask: announce785target:CombinedShow("Dps9") at 51.30 (+0.30)
			ShowAnnounce: True Fulfillment on Dps9
		StartTimer: 20.0, True Fulfillment ends
	[ 53.74] SPELL_CAST_SUCCESS: [The Prophet Skeram: Teleport] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 20449, Teleport, 0, 0
		AntiSpam: 1
		ShowAnnounce: Teleport
	[ 58.59] SPELL_CAST_START: [The Prophet Skeram: Arcane Explosion] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 26192, Arcane Explosion, 0, 0
		AntiSpam: ArcaneExplosion
		ShowSpecialWarning: Arcane Explosion - interrupt The Prophet Skeram!
		PlaySound: VoicePack/kickcast
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[ 63.44] SPELL_CAST_SUCCESS: [The Prophet Skeram: Teleport] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 4801, Teleport, 0, 0
		AntiSpam: 1
		ShowAnnounce: Teleport
	[ 69.93] SPELL_CAST_START: [The Prophet Skeram: Arcane Explosion] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 26192, Arcane Explosion, 0, 0
		AntiSpam: ArcaneExplosion
		ShowSpecialWarning: Arcane Explosion - interrupt The Prophet Skeram!
		PlaySound: VoicePack/kickcast
	[ 79.67] SPELL_SUMMON: [The Prophet Skeram->The Prophet Skeram: Summon Images] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, Creature-0-1-531-1-176525-000000004A, The Prophet Skeram, 0xa48, 747, Summon Images, 0, 0
		AntiSpam: 2
			Filtered: 1x SPELL_SUMMON at 79.67
		ShowAnnounce: Summon Images
	[ 83.43] SPELL_AURA_APPLIED: [The Prophet Skeram->Dps6: True Fulfillment] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, Player-1-00000010, Dps6, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		ScheduleTask: (anonymous function) at 86.43 (+3.00)
		ScheduleTask: announce785target:CombinedShow("Dps6") at 83.73 (+0.30)
			ShowAnnounce: True Fulfillment on Dps6
		StartTimer: 20.0, True Fulfillment ends
	[ 84.53] SPELL_CAST_START: [The Prophet Skeram: Arcane Explosion] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 26192, Arcane Explosion, 0, 0
		AntiSpam: ArcaneExplosion
			Filtered: 2x SPELL_CAST_START at 86.17, 86.17
		ShowSpecialWarning: Arcane Explosion - interrupt The Prophet Skeram!
		PlaySound: VoicePack/kickcast
	[ 89.90] SPELL_AURA_APPLIED: [The Prophet Skeram->Dps12: True Fulfillment] Creature-0-1-531-1-176525-00000000CA, The Prophet Skeram, 0xa48, Player-1-00000017, Dps12, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		ScheduleTask: (anonymous function) at 92.90 (+3.00)
		ScheduleTask: announce785target:CombinedShow("Dps12") at 90.20 (+0.30)
			ShowAnnounce: True Fulfillment on Dps12
		StartTimer: 20.0, True Fulfillment ends
	[ 91.02] SPELL_CAST_SUCCESS: [The Prophet Skeram: Teleport] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 8195, Teleport, 0, 0
		AntiSpam: 1
		ShowAnnounce: Teleport
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[ 93.14] SPELL_AURA_APPLIED: [The Prophet Skeram->Dps13: True Fulfillment] Creature-0-1-531-1-176525-000000004A, The Prophet Skeram, 0xa48, Player-1-00000018, Dps13, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		ScheduleTask: (anonymous function) at 96.14 (+3.00)
		ScheduleTask: announce785target:CombinedShow("Dps13") at 93.44 (+0.30)
			ShowAnnounce: True Fulfillment on Dps13
		StartTimer: 20.0, True Fulfillment ends
	[ 94.25] SPELL_CAST_SUCCESS: [The Prophet Skeram: Teleport] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 20449, Teleport, 0, 0
		AntiSpam: 1
		ShowAnnounce: Teleport
	[ 98.06] SPELL_CAST_START: [The Prophet Skeram: Arcane Explosion] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 26192, Arcane Explosion, 0, 0
		AntiSpam: ArcaneExplosion
		ShowSpecialWarning: Arcane Explosion - interrupt The Prophet Skeram!
		PlaySound: VoicePack/kickcast
	[110.45] SPELL_CAST_SUCCESS: [The Prophet Skeram: Teleport] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 4801, Teleport, 0, 0
		AntiSpam: 1
		ShowAnnounce: Teleport
	[115.71] SPELL_AURA_APPLIED: [The Prophet Skeram->Dps12: True Fulfillment] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, Player-1-00000017, Dps12, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		ScheduleTask: (anonymous function) at 118.71 (+3.00)
		ScheduleTask: announce785target:CombinedShow("Dps12") at 116.01 (+0.30)
			ShowAnnounce: True Fulfillment on Dps12
		StartTimer: 20.0, True Fulfillment ends
	[116.09] SPELL_CAST_START: [The Prophet Skeram: Arcane Explosion] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 26192, Arcane Explosion, 0, 0
		AntiSpam: ArcaneExplosion
		ShowSpecialWarning: Arcane Explosion - interrupt The Prophet Skeram!
		PlaySound: VoicePack/kickcast
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[122.78] SPELL_CAST_START: [The Prophet Skeram: Arcane Explosion] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 26192, Arcane Explosion, 0, 0
		AntiSpam: ArcaneExplosion
		ShowSpecialWarning: Arcane Explosion - interrupt The Prophet Skeram!
		PlaySound: VoicePack/kickcast
	Unknown trigger
		ShowAnnounce: Single exploding ghost spawned - dodge
	[136.35] SPELL_SUMMON: [The Prophet Skeram->The Prophet Skeram: Summon Images] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, Creature-0-1-531-1-176525-0000000075, The Prophet Skeram, 0xa48, 747, Summon Images, 0, 0
		AntiSpam: 2
			Filtered: 1x SPELL_SUMMON at 136.35
		ShowAnnounce: Summon Images
	[137.96] SPELL_CAST_START: [The Prophet Skeram: Arcane Explosion] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 26192, Arcane Explosion, 0, 0
		AntiSpam: ArcaneExplosion
		ShowSpecialWarning: Arcane Explosion - interrupt The Prophet Skeram!
		PlaySound: VoicePack/kickcast
	[142.85] SPELL_CAST_START: [The Prophet Skeram: Arcane Explosion] Creature-0-1-531-1-176525-00000000EE, The Prophet Skeram, 0xa48, "", nil, 0x0, 26192, Arcane Explosion, 0, 0
		AntiSpam: ArcaneExplosion
		ShowSpecialWarning: Arcane Explosion - interrupt The Prophet Skeram!
		PlaySound: VoicePack/kickcast
	[144.98] SPELL_AURA_APPLIED: [The Prophet Skeram->Dps4: True Fulfillment] Creature-0-1-531-1-176525-00000000EE, The Prophet Skeram, 0xa48, Player-1-00000007, Dps4, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		ScheduleTask: (anonymous function) at 147.98 (+3.00)
			Unscheduled by SPELL_AURA_APPLIED at 144.98
		StartTimer: 20.0, True Fulfillment ends
	[144.98] SPELL_AURA_APPLIED: [The Prophet Skeram->Dps8: True Fulfillment] Creature-0-1-531-1-176525-0000000075, The Prophet Skeram, 0xa48, Player-1-00000012, Dps8, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 144.98
		ScheduleTask: (anonymous function) at 147.98 (+3.00)
			Unscheduled by SPELL_AURA_APPLIED at 145.28
		StartTimer: 20.0, True Fulfillment ends
	[145.28] SPELL_AURA_APPLIED: [The Prophet Skeram->Dps7: True Fulfillment] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, Player-1-00000011, Dps7, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 144.98
		ScheduleTask: (anonymous function) at 148.28 (+3.00)
		ScheduleTask: announce785target:CombinedShow("Dps7") at 145.58 (+0.30)
			ShowAnnounce: True Fulfillment on Dps4, Dps8, Dps7
		StartTimer: 20.0, True Fulfillment ends
	[146.08] SPELL_CAST_START: [The Prophet Skeram: Arcane Explosion] Creature-0-1-531-1-176525-0000000075, The Prophet Skeram, 0xa48, "", nil, 0x0, 26192, Arcane Explosion, 0, 0
		AntiSpam: ArcaneExplosion
		ShowSpecialWarning: Arcane Explosion - interrupt The Prophet Skeram!
		PlaySound: VoicePack/kickcast
	[150.94] SPELL_CAST_SUCCESS: [The Prophet Skeram: Teleport] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 20449, Teleport, 0, 0
		AntiSpam: 1
		ShowAnnounce: Teleport
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[155.81] SPELL_CAST_START: [The Prophet Skeram: Arcane Explosion] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 26192, Arcane Explosion, 0, 0
		AntiSpam: ArcaneExplosion
		ShowSpecialWarning: Arcane Explosion - interrupt The Prophet Skeram!
		PlaySound: VoicePack/kickcast
	[157.16] SPELL_CAST_SUCCESS: [The Prophet Skeram: Teleport] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 8195, Teleport, 0, 0
		AntiSpam: 1
		ShowAnnounce: Teleport
	Unknown trigger
		ShowAnnounce: Single exploding ghost spawned - dodge
	[163.88] SPELL_CAST_SUCCESS: [The Prophet Skeram: Teleport] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 4801, Teleport, 0, 0
		AntiSpam: 1
		ShowAnnounce: Teleport
	[167.02] SPELL_CAST_START: [The Prophet Skeram: Arcane Explosion] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 26192, Arcane Explosion, 0, 0
		AntiSpam: ArcaneExplosion
		ShowSpecialWarning: Arcane Explosion - interrupt The Prophet Skeram!
		PlaySound: VoicePack/kickcast
	[172.79] SPELL_AURA_APPLIED: [The Prophet Skeram->Dps11: True Fulfillment] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, Player-1-00000016, Dps11, 0x512, 785, True Fulfillment, 0, DEBUFF, 0
		ScheduleTask: (anonymous function) at 175.79 (+3.00)
		ScheduleTask: announce785target:CombinedShow("Dps11") at 173.09 (+0.30)
			ShowAnnounce: True Fulfillment on Dps11
		StartTimer: 20.0, True Fulfillment ends
	[176.86] SPELL_CAST_START: [The Prophet Skeram: Arcane Explosion] Creature-0-1-531-1-15263-0000000002, The Prophet Skeram, 0xa48, "", nil, 0x0, 26192, Arcane Explosion, 0, 0
		AntiSpam: ArcaneExplosion
		ShowSpecialWarning: Arcane Explosion - interrupt The Prophet Skeram!
		PlaySound: VoicePack/kickcast
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[189.39] ENCOUNTER_END: 709, The Prophet Skeram, 186, 40, 1, 0
		EndCombat: ENCOUNTER_END
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 785
]]
