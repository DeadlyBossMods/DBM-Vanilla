DBM.Test:Report[[
Test: SoD/ZG/Hakkar/Kill
Mod:  DBM-Raids-Vanilla/Hakkar

Findings:
	Unused event registration: SPELL_AURA_APPLIED 24328 (Corrupted Blood)
	Unused event registration: SPELL_AURA_APPLIED 24686 (Aspect of Mar'li)
	Unused event registration: SPELL_AURA_APPLIED 24687 (Aspect of Jeklik)
	Unused event registration: SPELL_AURA_APPLIED 24689 (Aspect of Thekal)
	Unused event registration: SPELL_AURA_APPLIED 24690 (Aspect of Arlokk)
	Unused event registration: SPELL_AURA_REMOVED 24328 (Corrupted Blood)
	Unused event registration: SPELL_AURA_REMOVED 24689 (Aspect of Thekal)
	Unused event registration: SPELL_CAST_SUCCESS 24686 (Aspect of Mar'li)
	Unused event registration: SPELL_CAST_SUCCESS 24687 (Aspect of Jeklik)
	Unused event registration: SPELL_CAST_SUCCESS 24688 (Aspect of Venoxis)
	Unused event registration: SPELL_CAST_SUCCESS 24689 (Aspect of Thekal)
	Unused event registration: SPELL_CAST_SUCCESS 24690 (Aspect of Arlokk)
	Timer for spell ID 24687 (Aspect of Jeklik) is triggered by event SPELL_AURA_APPLIED 468012 (Sonic Burst)
	Timer for spell ID 24687 (Aspect of Jeklik) is triggered by event SPELL_AURA_APPLIED 468408 (Bloodlust)
	Timer for spell ID 24687 (Aspect of Jeklik) is triggered by event SPELL_AURA_APPLIED 468491 (Aspect of Arlokk)
	SpecialWarning for spell ID 24689 (Aspect of Thekal) is triggered by event SPELL_AURA_APPLIED 468408 (Bloodlust)
	Timer for spell ID 24689 (Aspect of Thekal) is triggered by event SPELL_AURA_APPLIED 468408 (Bloodlust)

Unused objects:
	[Announce] Berserk in %s %s, type=nil, spellId=<none>
	[Announce] Berserk in %s %s, type=nil, spellId=<none>
	[Announce] Corrupted Blood on >%s<, type=target, spellId=24328
	[Announce] Aspect of Mar'li on >%s<, type=target, spellId=24686
	[Announce] Aspect of Thekal, type=spell, spellId=24689
	[Announce] Aspect of Arlokk on >%s<, type=target, spellId=24690
	[Special Warning] Corrupted Blood - move away from others, type=moveaway, spellId=24328
	[Yell] Corrupted Blood on PlayerName, type=yell, spellId=24328

Timers:
	Berserk, time=585.00, type=berserk, spellId=<none>, triggerDeltas = 0.00
		[  0.00] ENCOUNTER_START: 793, Hakkar, 226, 20, 0
	Blood Siphon, time=90.00, type=next, spellId=24324, triggerDeltas = 0.00, 90.35, 90.68
		[  0.00] ENCOUNTER_START: 793, Hakkar, 226, 20, 0
		[ 90.35] SPELL_CAST_SUCCESS: [Hakkar: Blood Siphon] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, "", nil, 0x0, 24324, Blood Siphon, 0, 0
			 Triggered 2x, delta times: 90.35, 90.68
	Cause Insanity, time=20.00, type=cd, spellId=24327, triggerDeltas = 20.73, 21.47, 41.70, 21.03, 21.07, 21.02, 42.15
		[ 20.73] SPELL_AURA_APPLIED: [Hakkar->Tank2: Cause Insanity] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Player-1-00000010, Tank2, 0x512, 24327, Cause Insanity, 0, DEBUFF, 0
			 Triggered 6x, delta times: 20.73, 63.17, 21.03, 21.07, 21.02, 42.15
		[ 42.20] SPELL_AURA_APPLIED: [Hakkar->Tank1: Cause Insanity] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Player-1-00000002, Tank1, 0x512, 24327, Cause Insanity, 0, DEBUFF, 0
	Cause Insanity: %s, time=10.00, type=target, spellId=24327, triggerDeltas = 20.73, 21.47, 41.70, 21.03, 21.07, 21.02, 42.15
		[ 20.73] SPELL_AURA_APPLIED: [Hakkar->Tank2: Cause Insanity] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Player-1-00000010, Tank2, 0x512, 24327, Cause Insanity, 0, DEBUFF, 0
			 Triggered 6x, delta times: 20.73, 63.17, 21.03, 21.07, 21.02, 42.15
		[ 42.20] SPELL_AURA_APPLIED: [Hakkar->Tank1: Cause Insanity] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Player-1-00000002, Tank1, 0x512, 24327, Cause Insanity, 0, DEBUFF, 0
	Special, time=20.00, type=nextspecial, spellId=24687, triggerDeltas = 19.99, 20.00, 20.00, 22.00, 20.00, 20.00, 18.00, 19.99, 20.01, 22.00
		[ 19.99] SPELL_AURA_APPLIED: [Hakkar->Hakkar: Bloodlust] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, 468408, Bloodlust, 0, BUFF, 0
			 Triggered 2x, delta times: 19.99, 120.00
		[ 39.99] SPELL_AURA_APPLIED: [Hakkar->Tank1: Sonic Burst] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Player-1-00000002, Tank1, 0x512, 468012, Sonic Burst, 0, DEBUFF, 0
			 Triggered 2x, delta times: 39.99, 119.99
		[ 59.99] SPELL_AURA_APPLIED: [Hakkar->Hakkar: Aspect of Arlokk] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, 468491, Aspect of Arlokk, 0, DEBUFF, 0
			 Triggered 2x, delta times: 59.99, 120.00
		[ 81.99] Scheduled at 59.99 by SPELL_AURA_APPLIED: [Hakkar->Hakkar: Aspect of Arlokk] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, 468491, Aspect of Arlokk, 0, DEBUFF, 0
			 Triggered 3x, delta times: 81.99, 20.00, 20.00
		[201.99] Scheduled at 179.99 by SPELL_AURA_APPLIED: [Hakkar->Hakkar: Aspect of Arlokk] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, 468491, Aspect of Arlokk, 0, DEBUFF, 0
	Aspect of Thekal ends, time=8.00, type=active, spellId=24689, triggerDeltas = 19.99, 120.00
		[ 19.99] SPELL_AURA_APPLIED: [Hakkar->Hakkar: Bloodlust] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, 468408, Bloodlust, 0, BUFF, 0
			 Triggered 2x, delta times: 19.99, 120.00
	Sonic Burst fades, time=10.00, type=fades, spellId=468012, triggerDeltas = 39.99, 119.99
		[ 39.99] SPELL_AURA_APPLIED: [Hakkar->Tank1: Sonic Burst] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Player-1-00000002, Tank1, 0x512, 468012, Sonic Burst, 0, DEBUFF, 0
			 Triggered 2x, delta times: 39.99, 119.99

Announces:
	Blood Siphon soon, type=soon, spellId=24324, triggerDeltas = 80.00, 90.35
		[ 80.00] Scheduled at 0.00 by ENCOUNTER_START: 793, Hakkar, 226, 20, 0
		[170.35] Scheduled at 90.35 by SPELL_CAST_SUCCESS: [Hakkar: Blood Siphon] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, "", nil, 0x0, 24324, Blood Siphon, 0, 0
	Cause Insanity on >%s<, type=target, spellId=24327, triggerDeltas = 20.73, 21.47, 41.70, 21.03, 21.07, 21.02, 42.15
		[ 20.73] SPELL_AURA_APPLIED: [Hakkar->Tank2: Cause Insanity] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Player-1-00000010, Tank2, 0x512, 24327, Cause Insanity, 0, DEBUFF, 0
			 Triggered 6x, delta times: 20.73, 63.17, 21.03, 21.07, 21.02, 42.15
		[ 42.20] SPELL_AURA_APPLIED: [Hakkar->Tank1: Cause Insanity] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Player-1-00000002, Tank1, 0x512, 24327, Cause Insanity, 0, DEBUFF, 0

Special warnings:
	Aspect of Thekal on >%s< - dispel now, type=dispel, spellId=24689, triggerDeltas = 19.99, 120.00
		[ 19.99] SPELL_AURA_APPLIED: [Hakkar->Hakkar: Bloodlust] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, 468408, Bloodlust, 0, BUFF, 0
			 Triggered 2x, delta times: 19.99, 120.00

Yells:
	None

Voice pack sounds:
	VoicePack/enrage
		[ 19.99] SPELL_AURA_APPLIED: [Hakkar->Hakkar: Bloodlust] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, 468408, Bloodlust, 0, BUFF, 0
			 Triggered 2x, delta times: 19.99, 120.00

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 793, Hakkar, 226, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_SUCCESS 24324 24686 24687 24688 24689 24690, SPELL_AURA_APPLIED 24327 24328 24686 24687 24689 24690 468408 468012 468491, SPELL_AURA_REMOVED 24328 24689
		StartTimer: 585.0, Berserk
		ScheduleTask: announce:Schedule(5.0, "min") at 285.00 (+285.00)
			Unscheduled by ENCOUNTER_END at 202.76
		ScheduleTask: announce:Schedule(3.0, "min") at 405.00 (+405.00)
			Unscheduled by ENCOUNTER_END at 202.76
		ScheduleTask: announce:Schedule(1.0, "min") at 525.00 (+525.00)
			Unscheduled by ENCOUNTER_END at 202.76
		ScheduleTask: announce:Schedule(30.0, "sec") at 555.00 (+555.00)
			Unscheduled by ENCOUNTER_END at 202.76
		ScheduleTask: announce:Schedule(10.0, "sec") at 575.00 (+575.00)
			Unscheduled by ENCOUNTER_END at 202.76
		ScheduleTask: announce24324soon:Schedule() at 80.00 (+80.00)
			ShowAnnounce: Blood Siphon soon
		StartTimer: 90.0, Blood Siphon
	[ 19.99] SPELL_AURA_APPLIED: [Hakkar->Hakkar: Bloodlust] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, 468408, Bloodlust, 0, BUFF, 0
		ShowSpecialWarning: Aspect of Thekal on Hakkar - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Aspect of Thekal ends
		StartTimer: 20.0, Special
		ScheduleTask: mod:AspectTimer(2.0) at 41.99 (+22.00)
			Unscheduled by SPELL_AURA_APPLIED at 39.99
	[ 20.73] SPELL_AURA_APPLIED: [Hakkar->Tank2: Cause Insanity] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Player-1-00000010, Tank2, 0x512, 24327, Cause Insanity, 0, DEBUFF, 0
		ShowAnnounce: Cause Insanity on Tank2
		StartTimer: 10.0, Cause Insanity: Tank2
		StartTimer: 20.0, Cause Insanity
	[ 39.99] SPELL_AURA_APPLIED: [Hakkar->Tank1: Sonic Burst] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Player-1-00000002, Tank1, 0x512, 468012, Sonic Burst, 0, DEBUFF, 0
		AntiSpam: Silence
			Filtered: 3x SPELL_AURA_APPLIED at 40, 40, 40
		StartTimer: 10.0, Sonic Burst fades
		StartTimer: 20.0, Special
		UnscheduleTask: mod:AspectTimer(2.0) scheduled by ScheduleTask at 19.99
		ScheduleTask: mod:AspectTimer(2.0) at 61.99 (+22.00)
			Unscheduled by SPELL_AURA_APPLIED at 59.99
	[ 42.20] SPELL_AURA_APPLIED: [Hakkar->Tank1: Cause Insanity] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Player-1-00000002, Tank1, 0x512, 24327, Cause Insanity, 0, DEBUFF, 0
		ShowAnnounce: Cause Insanity on Tank1
		StartTimer: 10.0, Cause Insanity: Tank1
		StartTimer: 20.0, Cause Insanity
	[ 59.99] SPELL_AURA_APPLIED: [Hakkar->Hakkar: Aspect of Arlokk] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, 468491, Aspect of Arlokk, 0, DEBUFF, 0
		AntiSpam: Aoe
			Filtered: 49x SPELL_AURA_APPLIED at 59.99, 59.99, 59.99, 59.99, 59.99, 59.99, 59.99, 59.99, 59.99, 60.01, 60.01, 60.01, 60.01, 60.01, 60.01, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02, 60.02
		StartTimer: 20.0, Special
		UnscheduleTask: mod:AspectTimer(2.0) scheduled by ScheduleTask at 39.99
		ScheduleTask: mod:AspectTimer(2.0) at 81.99 (+22.00)
			StartTimer: 18.0, Special
			ScheduleTask: mod:AspectTimer(2.0) at 101.99 (+20.00)
				StartTimer: 18.0, Special
				ScheduleTask: mod:AspectTimer(2.0) at 121.99 (+20.00)
					StartTimer: 18.0, Special
					ScheduleTask: mod:AspectTimer(2.0) at 141.99 (+20.00)
						Unscheduled by SPELL_AURA_APPLIED at 139.99
	[ 83.90] SPELL_AURA_APPLIED: [Hakkar->Tank2: Cause Insanity] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Player-1-00000010, Tank2, 0x512, 24327, Cause Insanity, 0, DEBUFF, 0
		ShowAnnounce: Cause Insanity on Tank2
		StartTimer: 10.0, Cause Insanity: Tank2
		StartTimer: 20.0, Cause Insanity
	[ 90.35] SPELL_CAST_SUCCESS: [Hakkar: Blood Siphon] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, "", nil, 0x0, 24324, Blood Siphon, 0, 0
		ScheduleTask: announce24324soon:Schedule() at 170.35 (+80.00)
			ShowAnnounce: Blood Siphon soon
		StartTimer: 90.0, Blood Siphon
	[104.93] SPELL_AURA_APPLIED: [Hakkar->Tank2: Cause Insanity] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Player-1-00000010, Tank2, 0x512, 24327, Cause Insanity, 0, DEBUFF, 0
		ShowAnnounce: Cause Insanity on Tank2
		StartTimer: 10.0, Cause Insanity: Tank2
		StartTimer: 20.0, Cause Insanity
	[126.00] SPELL_AURA_APPLIED: [Hakkar->Tank2: Cause Insanity] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Player-1-00000010, Tank2, 0x512, 24327, Cause Insanity, 0, DEBUFF, 0
		ShowAnnounce: Cause Insanity on Tank2
		StartTimer: 10.0, Cause Insanity: Tank2
		StartTimer: 20.0, Cause Insanity
	[139.99] SPELL_AURA_APPLIED: [Hakkar->Hakkar: Bloodlust] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, 468408, Bloodlust, 0, BUFF, 0
		ShowSpecialWarning: Aspect of Thekal on Hakkar - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Aspect of Thekal ends
		StartTimer: 20.0, Special
		UnscheduleTask: mod:AspectTimer(2.0) scheduled by ScheduleTask at 121.99
		ScheduleTask: mod:AspectTimer(2.0) at 161.99 (+22.00)
			Unscheduled by SPELL_AURA_APPLIED at 159.98
	[147.02] SPELL_AURA_APPLIED: [Hakkar->Tank2: Cause Insanity] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Player-1-00000010, Tank2, 0x512, 24327, Cause Insanity, 0, DEBUFF, 0
		ShowAnnounce: Cause Insanity on Tank2
		StartTimer: 10.0, Cause Insanity: Tank2
		StartTimer: 20.0, Cause Insanity
	[159.98] SPELL_AURA_APPLIED: [Hakkar->Tank1: Sonic Burst] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Player-1-00000002, Tank1, 0x512, 468012, Sonic Burst, 0, DEBUFF, 0
		AntiSpam: Silence
			Filtered: 6x SPELL_AURA_APPLIED at 159.98, 159.99, 160, 160, 160, 160
		StartTimer: 10.0, Sonic Burst fades
		StartTimer: 20.0, Special
		UnscheduleTask: mod:AspectTimer(2.0) scheduled by ScheduleTask at 139.99
		ScheduleTask: mod:AspectTimer(2.0) at 181.98 (+22.00)
			Unscheduled by SPELL_AURA_APPLIED at 179.99
	[179.99] SPELL_AURA_APPLIED: [Hakkar->Hakkar: Aspect of Arlokk] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, 468491, Aspect of Arlokk, 0, DEBUFF, 0
		AntiSpam: Aoe
			Filtered: 54x SPELL_AURA_APPLIED at 179.99, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180
		StartTimer: 20.0, Special
		UnscheduleTask: mod:AspectTimer(2.0) scheduled by ScheduleTask at 159.98
		ScheduleTask: mod:AspectTimer(2.0) at 201.99 (+22.00)
			StartTimer: 18.0, Special
			ScheduleTask: mod:AspectTimer(2.0) at 221.99 (+20.00)
				Unscheduled by ENCOUNTER_END at 202.76
	[181.03] SPELL_CAST_SUCCESS: [Hakkar: Blood Siphon] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, "", nil, 0x0, 24324, Blood Siphon, 0, 0
		ScheduleTask: announce24324soon:Schedule() at 261.03 (+80.00)
			Unscheduled by ENCOUNTER_END at 202.76
		StartTimer: 90.0, Blood Siphon
	[189.17] SPELL_AURA_APPLIED: [Hakkar->Tank2: Cause Insanity] Creature-0-1-309-1-14834-0000000005, Hakkar, 0xa48, Player-1-00000010, Tank2, 0x512, 24327, Cause Insanity, 0, DEBUFF, 0
		ShowAnnounce: Cause Insanity on Tank2
		StartTimer: 10.0, Cause Insanity: Tank2
		StartTimer: 20.0, Cause Insanity
	[202.76] ENCOUNTER_END: 793, Hakkar, 226, 20, 1, 0
		EndCombat: ENCOUNTER_END
		UnscheduleTask: announce:Schedule(1.0, "min") scheduled by ScheduleTask at 0.00
		UnscheduleTask: announce:Schedule(5.0, "min") scheduled by ScheduleTask at 0.00
		UnscheduleTask: mod:AspectTimer(2.0) scheduled by ScheduleTask at 201.99
		UnscheduleTask: announce:Schedule(10.0, "sec") scheduled by ScheduleTask at 0.00
		UnscheduleTask: announce:Schedule(30.0, "sec") scheduled by ScheduleTask at 0.00
		UnscheduleTask: announce:Schedule(3.0, "min") scheduled by ScheduleTask at 0.00
		UnscheduleTask: announce24324soon:Schedule() scheduled by ScheduleTask at 181.03
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 24328 24689
]]
