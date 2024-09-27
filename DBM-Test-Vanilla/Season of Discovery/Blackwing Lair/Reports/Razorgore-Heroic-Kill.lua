DBM.Test:Report[[
Test: SoD/BWL/Razorgore/Heroic/Kill
Mod:  DBM-Raids-Vanilla/Razorgore

Findings:
	Unused event registration: SPELL_CAST_START 22425 (Fireball Volley)
	Unused event registration: SPELL_CAST_SUCCESS 23040 (Warming Flames)

Unused objects:
	[Announce] Big Add, type=nil, spellId=<none>
	[Announce] Casting Fireball Volley: 2.0 sec, type=cast, spellId=22425
	[Special Warning] Fireball Volley - move to >%s<, type=moveto, spellId=22425

Timers:
	Adds spawning, time=47.00, type=cd, spellId=<none>, triggerDeltas = 0.00
		[  0.00] ENCOUNTER_START: 610, Razorgore the Untamed, 186, 40, 0
	Big Add, time=90.00, type=cd, spellId=<none>, triggerDeltas = 0.00
		[  0.00] ENCOUNTER_START: 610, Razorgore the Untamed, 186, 40, 0

Announces:
	Stage 2, type=stage, spellId=<none>, triggerDeltas = 438.81
		[438.81] CHAT_MSG_MONSTER_EMOTE: %s flee as the controlling power of the orb is drained., Nefarian's Troops, "", "", Razorgore the Untamed, "", 0, 0, "", 0, 2780, nil, 0, false, false, false, false, 0
	Destroy Egg (%s), type=count, spellId=19873, triggerDeltas = 93.93, 10.17, 10.19, 10.14, 10.17, 10.14, 10.09, 10.24, 10.21, 54.94, 10.24, 10.42, 10.06, 10.14, 10.17, 10.24, 10.23, 10.06, 10.15, 10.22, 10.19, 10.14, 10.17, 10.16, 10.19, 10.26, 10.06, 11.05, 10.05, 13.06
		[ 93.93] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
			 Triggered 30x, delta times: 93.93, 10.17, 10.19, 10.14, 10.17, 10.14, 10.09, 10.24, 10.21, 54.94, 10.24, 10.42, 10.06, 10.14, 10.17, 10.24, 10.23, 10.06, 10.15, 10.22, 10.19, 10.14, 10.17, 10.16, 10.19, 10.26, 10.06, 11.05, 10.05, 13.06
	Conflagration on >%s<, type=target, spellId=23023, triggerDeltas = 450.24, 22.67, 14.58, 25.88
		[450.24] Scheduled at 449.94 by SPELL_AURA_APPLIED: [Razorgore the Untamed->Tank1: Conflagration] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, Player-1-00000011, Tank1, 0x512, 23023, Conflagration, 0, DEBUFF, 0
		[472.91] Scheduled at 472.61 by SPELL_AURA_APPLIED: [Razorgore the Untamed->Tank1: Conflagration] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, Player-1-00000011, Tank1, 0x512, 23023, Conflagration, 0, DEBUFF, 0
		[487.49] Scheduled at 487.19 by SPELL_AURA_APPLIED: [Razorgore the Untamed->Tank1: Conflagration] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, Player-1-00000011, Tank1, 0x512, 23023, Conflagration, 0, DEBUFF, 0
		[513.37] Scheduled at 513.07 by SPELL_AURA_APPLIED: [Razorgore the Untamed->Tank1: Conflagration] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, Player-1-00000011, Tank1, 0x512, 23023, Conflagration, 0, DEBUFF, 0

Special warnings:
	None

Yells:
	None

Voice pack sounds:
	None

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 610, Razorgore the Untamed, 186, 40, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_START 22425, SPELL_CAST_SUCCESS 23040 19873, SPELL_AURA_APPLIED 23023, CHAT_MSG_MONSTER_EMOTE, UNIT_DIED
		StartTimer: 47.0, Adds spawning
		StartTimer: 90.0, Big Add
	[ 93.93] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (1/30)
	[104.10] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (2/30)
	[114.29] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (3/30)
	[124.43] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (4/30)
	[134.60] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (5/30)
	[144.74] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (6/30)
	[154.83] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (7/30)
	[165.07] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (8/30)
	[175.28] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (9/30)
	[230.22] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (10/30)
	[240.46] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (11/30)
	[250.88] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (12/30)
	[260.94] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (13/30)
	[271.08] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (14/30)
	[281.25] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (15/30)
	[291.49] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (16/30)
	[301.72] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (17/30)
	[311.78] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (18/30)
	[321.93] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (19/30)
	[332.15] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (20/30)
	[342.34] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (21/30)
	[352.48] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (22/30)
	[362.65] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (23/30)
	[372.81] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (24/30)
	[383.00] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (25/30)
	[393.26] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (26/30)
	[403.32] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (27/30)
	[414.37] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (28/30)
	[424.42] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (29/30)
	[437.48] SPELL_CAST_SUCCESS: [Razorgore the Untamed: Destroy Egg] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, "", nil, 0x0, 19873, Destroy Egg, 0, 0
		ShowAnnounce: Destroy Egg (30/30)
	[438.81] CHAT_MSG_MONSTER_EMOTE: %s flee as the controlling power of the orb is drained., Nefarian's Troops, "", "", Razorgore the Untamed, "", 0, 0, "", 0, 2780, nil, 0, false, false, false, false, 0
		ShowAnnounce: Stage 2
	[449.94] SPELL_AURA_APPLIED: [Razorgore the Untamed->Tank1: Conflagration] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, Player-1-00000011, Tank1, 0x512, 23023, Conflagration, 0, DEBUFF, 0
		ScheduleTask: announce23023target:CombinedShow("Tank1") at 450.24 (+0.30)
			ShowAnnounce: Conflagration on Tank1
	[472.61] SPELL_AURA_APPLIED: [Razorgore the Untamed->Tank1: Conflagration] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, Player-1-00000011, Tank1, 0x512, 23023, Conflagration, 0, DEBUFF, 0
		ScheduleTask: announce23023target:CombinedShow("Tank1") at 472.91 (+0.30)
			ShowAnnounce: Conflagration on Tank1
	[487.19] SPELL_AURA_APPLIED: [Razorgore the Untamed->Tank1: Conflagration] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, Player-1-00000011, Tank1, 0x512, 23023, Conflagration, 0, DEBUFF, 0
		ScheduleTask: announce23023target:CombinedShow("Tank1") at 487.49 (+0.30)
			ShowAnnounce: Conflagration on Tank1
	[513.07] SPELL_AURA_APPLIED: [Razorgore the Untamed->Tank1: Conflagration] Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, Player-1-00000011, Tank1, 0x512, 23023, Conflagration, 0, DEBUFF, 0
		ScheduleTask: announce23023target:CombinedShow("Tank1") at 513.37 (+0.30)
			ShowAnnounce: Conflagration on Tank1
	[520.71] UNIT_DIED: [->Razorgore the Untamed] "", nil, 0x0, Creature-0-1-469-1-12435-0000000001, Razorgore the Untamed, 0xa48, -1, false, 0, 0
		EndCombat: 
]]
