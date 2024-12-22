DBM.Test:Report[[
Test: SoD/Naxx/Razuvious/PTR
Mod:  DBM-Raids-Vanilla/RazuviousVanilla

Findings:
	Unused event registration: UNIT_DIED

Unused objects:
	None

Timers:
	Taunt, time=60.00, type=cd, spellId=29060, triggerDeltas = 33.77
		[ 33.77] SPELL_CAST_SUCCESS: [Deathknight Understudy->Instructor Razuvious: Taunt] Creature-0-1-533-1-16803-0000000087, Deathknight Understudy, 0x1112, Creature-0-1-533-1-16061-0000000001, Instructor Razuvious, 0xa48, 29060, Taunt, 0, 0
	Shield Wall fades, time=20.00, type=fades, spellId=29061, triggerDeltas = 35.42
		[ 35.42] SPELL_CAST_SUCCESS: [Deathknight Understudy: Shield Wall] Creature-0-1-533-1-16803-0000000087, Deathknight Understudy, 0x1112, "", nil, 0x0, 29061, Shield Wall, 0, 0
	Disrupting Shout, time=25.80, type=cd, spellId=29107, triggerDeltas = 0.00, 26.26, 25.91, 25.50, 25.90, 25.92, 26.33
		[  0.00] ENCOUNTER_START: 1113, Instructor Razuvious, 186, 40, 0
		[ 26.26] SPELL_CAST_SUCCESS: [Instructor Razuvious: Disrupting Shout] Creature-0-1-533-1-16061-0000000001, Instructor Razuvious, 0xa48, "", nil, 0x0, 29107, Disrupting Shout, 0, 0
			 Triggered 6x, delta times: 26.26, 25.91, 25.50, 25.90, 25.92, 26.33

Announces:
	Shield Wall ends in 5 seconds, type=nil, spellId=<none>, triggerDeltas = 50.42
		[ 50.42] Scheduled at 35.42 by SPELL_CAST_SUCCESS: [Deathknight Understudy: Shield Wall] Creature-0-1-533-1-16803-0000000087, Deathknight Understudy, 0x1112, "", nil, 0x0, 29061, Shield Wall, 0, 0
	Disrupting Shout soon, type=soon, spellId=29107, triggerDeltas = 19.00, 27.26, 25.91, 25.50, 25.90, 25.92, 26.33
		[ 19.00] Scheduled at 0.00 by ENCOUNTER_START: 1113, Instructor Razuvious, 186, 40, 0
		[ 46.26] Scheduled at 26.26 by SPELL_CAST_SUCCESS: [Instructor Razuvious: Disrupting Shout] Creature-0-1-533-1-16061-0000000001, Instructor Razuvious, 0xa48, "", nil, 0x0, 29107, Disrupting Shout, 0, 0
		[ 72.17] Scheduled at 52.17 by SPELL_CAST_SUCCESS: [Instructor Razuvious: Disrupting Shout] Creature-0-1-533-1-16061-0000000001, Instructor Razuvious, 0xa48, "", nil, 0x0, 29107, Disrupting Shout, 0, 0
		[ 97.67] Scheduled at 77.67 by SPELL_CAST_SUCCESS: [Instructor Razuvious: Disrupting Shout] Creature-0-1-533-1-16061-0000000001, Instructor Razuvious, 0xa48, "", nil, 0x0, 29107, Disrupting Shout, 0, 0
		[123.57] Scheduled at 103.57 by SPELL_CAST_SUCCESS: [Instructor Razuvious: Disrupting Shout] Creature-0-1-533-1-16061-0000000001, Instructor Razuvious, 0xa48, "", nil, 0x0, 29107, Disrupting Shout, 0, 0
		[149.49] Scheduled at 129.49 by SPELL_CAST_SUCCESS: [Instructor Razuvious: Disrupting Shout] Creature-0-1-533-1-16061-0000000001, Instructor Razuvious, 0xa48, "", nil, 0x0, 29107, Disrupting Shout, 0, 0
		[175.82] Scheduled at 155.82 by SPELL_CAST_SUCCESS: [Instructor Razuvious: Disrupting Shout] Creature-0-1-533-1-16061-0000000001, Instructor Razuvious, 0xa48, "", nil, 0x0, 29107, Disrupting Shout, 0, 0
	Disrupting Shout, type=spell, spellId=29107, triggerDeltas = 26.26, 25.91, 25.50, 25.90, 25.92, 26.33
		[ 26.26] SPELL_CAST_SUCCESS: [Instructor Razuvious: Disrupting Shout] Creature-0-1-533-1-16061-0000000001, Instructor Razuvious, 0xa48, "", nil, 0x0, 29107, Disrupting Shout, 0, 0
			 Triggered 6x, delta times: 26.26, 25.91, 25.50, 25.90, 25.92, 26.33

Special warnings:
	None

Yells:
	None

Voice pack sounds:
	None

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 1113, Instructor Razuvious, 186, 40, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_SUCCESS 29107 29060 29061, UNIT_DIED
		StartTimer: 26.3, Disrupting Shout
		ScheduleTask: announce29107soon:Schedule() at 19.00 (+19.00)
			ShowAnnounce: Disrupting Shout soon
	[ 26.26] SPELL_CAST_SUCCESS: [Instructor Razuvious: Disrupting Shout] Creature-0-1-533-1-16061-0000000001, Instructor Razuvious, 0xa48, "", nil, 0x0, 29107, Disrupting Shout, 0, 0
		StartTimer: 26.3, Disrupting Shout
		ShowAnnounce: Disrupting Shout
		ScheduleTask: announce29107soon:Schedule() at 46.26 (+20.00)
			ShowAnnounce: Disrupting Shout soon
	[ 33.77] SPELL_CAST_SUCCESS: [Deathknight Understudy->Instructor Razuvious: Taunt] Creature-0-1-533-1-16803-0000000087, Deathknight Understudy, 0x1112, Creature-0-1-533-1-16061-0000000001, Instructor Razuvious, 0xa48, 29060, Taunt, 0, 0
		StartTimer: 60.0, Taunt
	[ 35.42] SPELL_CAST_SUCCESS: [Deathknight Understudy: Shield Wall] Creature-0-1-533-1-16803-0000000087, Deathknight Understudy, 0x1112, "", nil, 0x0, 29061, Shield Wall, 0, 0
		StartTimer: 20.0, Shield Wall fades
		ScheduleTask: announce:Schedule() at 50.42 (+15.00)
			ShowAnnounce: Shield Wall ends in 5 seconds
	[ 52.17] SPELL_CAST_SUCCESS: [Instructor Razuvious: Disrupting Shout] Creature-0-1-533-1-16061-0000000001, Instructor Razuvious, 0xa48, "", nil, 0x0, 29107, Disrupting Shout, 0, 0
		StartTimer: 26.3, Disrupting Shout
		ShowAnnounce: Disrupting Shout
		ScheduleTask: announce29107soon:Schedule() at 72.17 (+20.00)
			ShowAnnounce: Disrupting Shout soon
	[ 77.67] SPELL_CAST_SUCCESS: [Instructor Razuvious: Disrupting Shout] Creature-0-1-533-1-16061-0000000001, Instructor Razuvious, 0xa48, "", nil, 0x0, 29107, Disrupting Shout, 0, 0
		StartTimer: 26.3, Disrupting Shout
		ShowAnnounce: Disrupting Shout
		ScheduleTask: announce29107soon:Schedule() at 97.67 (+20.00)
			ShowAnnounce: Disrupting Shout soon
	[103.57] SPELL_CAST_SUCCESS: [Instructor Razuvious: Disrupting Shout] Creature-0-1-533-1-16061-0000000001, Instructor Razuvious, 0xa48, "", nil, 0x0, 29107, Disrupting Shout, 0, 0
		StartTimer: 26.3, Disrupting Shout
		ShowAnnounce: Disrupting Shout
		ScheduleTask: announce29107soon:Schedule() at 123.57 (+20.00)
			ShowAnnounce: Disrupting Shout soon
	[129.49] SPELL_CAST_SUCCESS: [Instructor Razuvious: Disrupting Shout] Creature-0-1-533-1-16061-0000000001, Instructor Razuvious, 0xa48, "", nil, 0x0, 29107, Disrupting Shout, 0, 0
		StartTimer: 26.3, Disrupting Shout
		ShowAnnounce: Disrupting Shout
		ScheduleTask: announce29107soon:Schedule() at 149.49 (+20.00)
			ShowAnnounce: Disrupting Shout soon
	[155.82] SPELL_CAST_SUCCESS: [Instructor Razuvious: Disrupting Shout] Creature-0-1-533-1-16061-0000000001, Instructor Razuvious, 0xa48, "", nil, 0x0, 29107, Disrupting Shout, 0, 0
		StartTimer: 26.3, Disrupting Shout
		ShowAnnounce: Disrupting Shout
		ScheduleTask: announce29107soon:Schedule() at 175.82 (+20.00)
			ShowAnnounce: Disrupting Shout soon
	Unknown trigger
		EndCombat: checkWipe
]]
