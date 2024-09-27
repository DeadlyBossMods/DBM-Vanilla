DBM.Test:Report[[
Test: SoD/BWL/Broodlord/Heroic/Kill
Mod:  DBM-Raids-Vanilla/Broodlord

Findings:
	Unused event registration: SPELL_AURA_REMOVED 24573 (Mortal Strike)

Unused objects:
	None

Timers:
	Mortal Strike: %s, time=5.00, type=target, spellId=24573, triggerDeltas = 17.73, 81.80, 51.73
		[ 17.73] SPELL_AURA_APPLIED: [Broodlord Lashlayer->Tank2: Mortal Strike] Creature-0-1-469-1-12017-0000000001, Broodlord Lashlayer, 0xa48, Player-1-00000013, Tank2, 0x512, 24573, Mortal Strike, 0, DEBUFF, 0
			 Triggered 2x, delta times: 17.73, 133.53
		[ 99.53] SPELL_AURA_APPLIED: [Broodlord Lashlayer->Tank1: Mortal Strike] Creature-0-1-469-1-12017-0000000001, Broodlord Lashlayer, 0xa48, Player-1-00000011, Tank1, 0x512, 24573, Mortal Strike, 0, DEBUFF, 0

Announces:
	Stage 2 soon, type=prestage, spellId=<none>, triggerDeltas = 106.79
		[106.79] UNIT_HEALTH: target, 0
	Knock Away, type=spell, spellId=18670, triggerDeltas = 13.76, 34.00, 24.23, 43.70, 17.79
		[ 13.76] SPELL_CAST_SUCCESS: [Broodlord Lashlayer->Tank2: Knock Away] Creature-0-1-469-1-12017-0000000001, Broodlord Lashlayer, 0xa48, Player-1-00000013, Tank2, 0x512, 18670, Knock Away, 0, 0
		[ 47.76] SPELL_CAST_SUCCESS: [Broodlord Lashlayer->Tank1: Knock Away] Creature-0-1-469-1-12017-0000000001, Broodlord Lashlayer, 0xa48, Player-1-00000011, Tank1, 0x512, 18670, Knock Away, 0, 0
			 Triggered 4x, delta times: 47.76, 24.23, 43.70, 17.79
	Blast Wave, type=spell, spellId=23331, triggerDeltas = 15.38, 24.27, 38.81, 17.80, 37.25
		[ 15.38] SPELL_CAST_SUCCESS: [Broodlord Lashlayer: Blast Wave] Creature-0-1-469-1-12017-0000000001, Broodlord Lashlayer, 0xa48, "", nil, 0x0, 23331, Blast Wave, 0, 0
			 Triggered 5x, delta times: 15.38, 24.27, 38.81, 17.80, 37.25
	Mortal Strike on >%s<, type=target, spellId=24573, triggerDeltas = 17.73, 81.80, 51.73
		[ 17.73] SPELL_AURA_APPLIED: [Broodlord Lashlayer->Tank2: Mortal Strike] Creature-0-1-469-1-12017-0000000001, Broodlord Lashlayer, 0xa48, Player-1-00000013, Tank2, 0x512, 24573, Mortal Strike, 0, DEBUFF, 0
			 Triggered 2x, delta times: 17.73, 133.53
		[ 99.53] SPELL_AURA_APPLIED: [Broodlord Lashlayer->Tank1: Mortal Strike] Creature-0-1-469-1-12017-0000000001, Broodlord Lashlayer, 0xa48, Player-1-00000011, Tank1, 0x512, 24573, Mortal Strike, 0, DEBUFF, 0

Special warnings:
	None

Yells:
	None

Voice pack sounds:
	None

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 612, Broodlord Lashlayer, 186, 40, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_SUCCESS 23331 18670, SPELL_AURA_APPLIED 24573, SPELL_AURA_REMOVED 24573, UNIT_HEALTH boss1 boss2 boss3 boss4 boss5 target focus
	[ 13.76] SPELL_CAST_SUCCESS: [Broodlord Lashlayer->Tank2: Knock Away] Creature-0-1-469-1-12017-0000000001, Broodlord Lashlayer, 0xa48, Player-1-00000013, Tank2, 0x512, 18670, Knock Away, 0, 0
		ShowAnnounce: Knock Away
	[ 15.38] SPELL_CAST_SUCCESS: [Broodlord Lashlayer: Blast Wave] Creature-0-1-469-1-12017-0000000001, Broodlord Lashlayer, 0xa48, "", nil, 0x0, 23331, Blast Wave, 0, 0
		ShowAnnounce: Blast Wave
	[ 17.73] SPELL_AURA_APPLIED: [Broodlord Lashlayer->Tank2: Mortal Strike] Creature-0-1-469-1-12017-0000000001, Broodlord Lashlayer, 0xa48, Player-1-00000013, Tank2, 0x512, 24573, Mortal Strike, 0, DEBUFF, 0
		ShowAnnounce: Mortal Strike on Tank2
		StartTimer: 5.0, Mortal Strike: Tank2
	[ 39.65] SPELL_CAST_SUCCESS: [Broodlord Lashlayer: Blast Wave] Creature-0-1-469-1-12017-0000000001, Broodlord Lashlayer, 0xa48, "", nil, 0x0, 23331, Blast Wave, 0, 0
		ShowAnnounce: Blast Wave
	[ 47.76] SPELL_CAST_SUCCESS: [Broodlord Lashlayer->Tank1: Knock Away] Creature-0-1-469-1-12017-0000000001, Broodlord Lashlayer, 0xa48, Player-1-00000011, Tank1, 0x512, 18670, Knock Away, 0, 0
		ShowAnnounce: Knock Away
	[ 71.99] SPELL_CAST_SUCCESS: [Broodlord Lashlayer->Tank1: Knock Away] Creature-0-1-469-1-12017-0000000001, Broodlord Lashlayer, 0xa48, Player-1-00000011, Tank1, 0x512, 18670, Knock Away, 0, 0
		ShowAnnounce: Knock Away
	[ 78.46] SPELL_CAST_SUCCESS: [Broodlord Lashlayer: Blast Wave] Creature-0-1-469-1-12017-0000000001, Broodlord Lashlayer, 0xa48, "", nil, 0x0, 23331, Blast Wave, 0, 0
		ShowAnnounce: Blast Wave
	[ 96.26] SPELL_CAST_SUCCESS: [Broodlord Lashlayer: Blast Wave] Creature-0-1-469-1-12017-0000000001, Broodlord Lashlayer, 0xa48, "", nil, 0x0, 23331, Blast Wave, 0, 0
		ShowAnnounce: Blast Wave
	[ 99.53] SPELL_AURA_APPLIED: [Broodlord Lashlayer->Tank1: Mortal Strike] Creature-0-1-469-1-12017-0000000001, Broodlord Lashlayer, 0xa48, Player-1-00000011, Tank1, 0x512, 24573, Mortal Strike, 0, DEBUFF, 0
		ShowAnnounce: Mortal Strike on Tank1
		StartTimer: 5.0, Mortal Strike: Tank1
	[106.79] UNIT_HEALTH: target, 0
		ShowAnnounce: Stage 2 soon
	[115.69] SPELL_CAST_SUCCESS: [Broodlord Lashlayer->Tank1: Knock Away] Creature-0-1-469-1-12017-0000000001, Broodlord Lashlayer, 0xa48, Player-1-00000011, Tank1, 0x512, 18670, Knock Away, 0, 0
		ShowAnnounce: Knock Away
	[133.48] SPELL_CAST_SUCCESS: [Broodlord Lashlayer->Tank1: Knock Away] Creature-0-1-469-1-12017-0000000001, Broodlord Lashlayer, 0xa48, Player-1-00000011, Tank1, 0x512, 18670, Knock Away, 0, 0
		ShowAnnounce: Knock Away
	[133.51] SPELL_CAST_SUCCESS: [Broodlord Lashlayer: Blast Wave] Creature-0-1-469-1-12017-0000000001, Broodlord Lashlayer, 0xa48, "", nil, 0x0, 23331, Blast Wave, 0, 0
		ShowAnnounce: Blast Wave
	[151.26] SPELL_AURA_APPLIED: [Broodlord Lashlayer->Tank2: Mortal Strike] Creature-0-1-469-1-12017-0000000001, Broodlord Lashlayer, 0xa48, Player-1-00000013, Tank2, 0x512, 24573, Mortal Strike, 0, DEBUFF, 0
		ShowAnnounce: Mortal Strike on Tank2
		StartTimer: 5.0, Mortal Strike: Tank2
	[152.58] UNIT_DIED: [->Broodlord Lashlayer] "", nil, 0x0, Creature-0-1-469-1-12017-0000000001, Broodlord Lashlayer, 0xa48, -1, false, 0, 0
		EndCombat: Main CID Down
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 24573
]]
