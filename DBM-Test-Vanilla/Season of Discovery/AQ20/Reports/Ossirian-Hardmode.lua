DBM.Test:Report[[
Test: SoD/AQ20/Ossirian/Hardmode
Mod:  DBM-Raids-Vanilla/Ossirian

Findings:
	Unused event registration: SPELL_AURA_APPLIED 25181 (Arcane Weakness)
	Unused event registration: SPELL_AURA_APPLIED 25183 (Shadow Weakness)

Unused objects:
	None

Timers:
	%s, time=45.00, type=cd, spellId=<none>, triggerDeltas = 7.46, 47.02, 47.44, 41.48
		[  7.46] SPELL_AURA_APPLIED: [Ossirian Crystal Trigger->Ossirian the Unscarred: Nature Weakness] Creature-0-1-509-1-15590-0000000002, Ossirian Crystal Trigger, 0xa48, Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, 25180, Nature Weakness, 0, DEBUFF, 0
		[ 54.48] SPELL_AURA_APPLIED: [Ossirian Crystal Trigger->Ossirian the Unscarred: Frost Weakness] Creature-0-1-509-1-15590-00000000A0, Ossirian Crystal Trigger, 0xa48, Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, 25178, Frost Weakness, 0, DEBUFF, 0
			 Triggered 2x, delta times: 54.48, 88.92
		[101.92] SPELL_AURA_APPLIED: [Ossirian Crystal Trigger->Ossirian the Unscarred: Fire Weakness] Creature-0-1-509-1-15590-000000006E, Ossirian Crystal Trigger, 0xa48, Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, 25177, Fire Weakness, 0, DEBUFF, 0
	Enveloping Winds: %s, time=10.00, type=target, spellId=25189, triggerDeltas = 22.65, 58.22, 33.93, 24.32, 33.94
		[ 22.65] SPELL_AURA_APPLIED: [Ossirian the Unscarred->Tank1: Enveloping Winds] Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, Player-1-00000004, Tank1, 0x512, 25189, Enveloping Winds, 0, DEBUFF, 0
			 Triggered 5x, delta times: 22.65, 58.22, 33.93, 24.32, 33.94
		[ 29.51] SPELL_AURA_REMOVED: [Ossirian the Unscarred->Tank1: Enveloping Winds] Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, Player-1-00000004, Tank1, 0x512, 25189, Enveloping Winds, 0, DEBUFF, 0
			 Triggered 3x, delta times: 29.51, 93.49, 53.00

Announces:
	%s, type=nil, spellId=<none>, triggerDeltas = 7.46, 47.02, 47.44, 41.48
		[  7.46] SPELL_AURA_APPLIED: [Ossirian Crystal Trigger->Ossirian the Unscarred: Nature Weakness] Creature-0-1-509-1-15590-0000000002, Ossirian Crystal Trigger, 0xa48, Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, 25180, Nature Weakness, 0, DEBUFF, 0
		[ 54.48] SPELL_AURA_APPLIED: [Ossirian Crystal Trigger->Ossirian the Unscarred: Frost Weakness] Creature-0-1-509-1-15590-00000000A0, Ossirian Crystal Trigger, 0xa48, Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, 25178, Frost Weakness, 0, DEBUFF, 0
			 Triggered 2x, delta times: 54.48, 88.92
		[101.92] SPELL_AURA_APPLIED: [Ossirian Crystal Trigger->Ossirian the Unscarred: Fire Weakness] Creature-0-1-509-1-15590-000000006E, Ossirian Crystal Trigger, 0xa48, Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, 25177, Fire Weakness, 0, DEBUFF, 0
	Strength of Ossirian, type=spell, spellId=25176, triggerDeltas = 52.46, 47.02
		[ 52.46] SPELL_AURA_APPLIED: [Ossirian the Unscarred->Ossirian the Unscarred: Strength of Ossirian] Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, 25176, Strength of Ossirian, 0, BUFF, 0
			 Triggered 2x, delta times: 52.46, 47.02
	Enveloping Winds on >%s<, type=target, spellId=25189, triggerDeltas = 22.65, 58.22, 33.93, 24.32, 33.94
		[ 22.65] SPELL_AURA_APPLIED: [Ossirian the Unscarred->Tank1: Enveloping Winds] Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, Player-1-00000004, Tank1, 0x512, 25189, Enveloping Winds, 0, DEBUFF, 0
			 Triggered 5x, delta times: 22.65, 58.22, 33.93, 24.32, 33.94

Special warnings:
	None

Yells:
	None

Voice pack sounds:
	None

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 723, Ossirian the Unscarred, 185, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_AURA_APPLIED 25176 25189 25177 25178 25180 25181 25183, SPELL_AURA_REMOVED 25189
	[  7.46] SPELL_AURA_APPLIED: [Ossirian Crystal Trigger->Ossirian the Unscarred: Nature Weakness] Creature-0-1-509-1-15590-0000000002, Ossirian Crystal Trigger, 0xa48, Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, 25180, Nature Weakness, 0, DEBUFF, 0
		ShowAnnounce: Nature Weakness
		StartTimer: 45.0, Nature Weakness
	[ 22.65] SPELL_AURA_APPLIED: [Ossirian the Unscarred->Tank1: Enveloping Winds] Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, Player-1-00000004, Tank1, 0x512, 25189, Enveloping Winds, 0, DEBUFF, 0
		ShowAnnounce: Enveloping Winds on Tank1
		StartTimer: 10.0, Enveloping Winds: Tank1
	[ 29.51] SPELL_AURA_REMOVED: [Ossirian the Unscarred->Tank1: Enveloping Winds] Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, Player-1-00000004, Tank1, 0x512, 25189, Enveloping Winds, 0, DEBUFF, 0
		StopTimer: Timer25189target\tTank1
	[ 52.46] SPELL_AURA_APPLIED: [Ossirian the Unscarred->Ossirian the Unscarred: Strength of Ossirian] Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, 25176, Strength of Ossirian, 0, BUFF, 0
		ShowAnnounce: Strength of Ossirian
	[ 54.48] SPELL_AURA_APPLIED: [Ossirian Crystal Trigger->Ossirian the Unscarred: Frost Weakness] Creature-0-1-509-1-15590-00000000A0, Ossirian Crystal Trigger, 0xa48, Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, 25178, Frost Weakness, 0, DEBUFF, 0
		ShowAnnounce: Frost Weakness
		StartTimer: 45.0, Frost Weakness
	[ 80.87] SPELL_AURA_APPLIED: [Ossirian the Unscarred->Tank1: Enveloping Winds] Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, Player-1-00000004, Tank1, 0x512, 25189, Enveloping Winds, 0, DEBUFF, 0
		ShowAnnounce: Enveloping Winds on Tank1
		StartTimer: 10.0, Enveloping Winds: Tank1
	[ 99.48] SPELL_AURA_APPLIED: [Ossirian the Unscarred->Ossirian the Unscarred: Strength of Ossirian] Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, 25176, Strength of Ossirian, 0, BUFF, 0
		ShowAnnounce: Strength of Ossirian
	[101.92] SPELL_AURA_APPLIED: [Ossirian Crystal Trigger->Ossirian the Unscarred: Fire Weakness] Creature-0-1-509-1-15590-000000006E, Ossirian Crystal Trigger, 0xa48, Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, 25177, Fire Weakness, 0, DEBUFF, 0
		ShowAnnounce: Fire Weakness
		StartTimer: 45.0, Fire Weakness
	[114.80] SPELL_AURA_APPLIED: [Ossirian the Unscarred->Tank1: Enveloping Winds] Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, Player-1-00000004, Tank1, 0x512, 25189, Enveloping Winds, 0, DEBUFF, 0
		ShowAnnounce: Enveloping Winds on Tank1
		StartTimer: 10.0, Enveloping Winds: Tank1
	[123.00] SPELL_AURA_REMOVED: [Ossirian the Unscarred->Tank1: Enveloping Winds] Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, Player-1-00000004, Tank1, 0x512, 25189, Enveloping Winds, 0, DEBUFF, 0
		StopTimer: Timer25189target\tTank1
	[139.12] SPELL_AURA_APPLIED: [Ossirian the Unscarred->Tank1: Enveloping Winds] Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, Player-1-00000004, Tank1, 0x512, 25189, Enveloping Winds, 0, DEBUFF, 0
		ShowAnnounce: Enveloping Winds on Tank1
		StartTimer: 10.0, Enveloping Winds: Tank1
	[143.40] SPELL_AURA_APPLIED: [Ossirian Crystal Trigger->Ossirian the Unscarred: Frost Weakness] Creature-0-1-509-1-15590-0000000045, Ossirian Crystal Trigger, 0xa48, Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, 25178, Frost Weakness, 0, DEBUFF, 0
		ShowAnnounce: Frost Weakness
		StartTimer: 45.0, Frost Weakness
	[173.06] SPELL_AURA_APPLIED: [Ossirian the Unscarred->Tank1: Enveloping Winds] Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, Player-1-00000004, Tank1, 0x512, 25189, Enveloping Winds, 0, DEBUFF, 0
		ShowAnnounce: Enveloping Winds on Tank1
		StartTimer: 10.0, Enveloping Winds: Tank1
	[176.00] SPELL_AURA_REMOVED: [Ossirian the Unscarred->Tank1: Enveloping Winds] Creature-0-1-509-1-15339-0000000001, Ossirian the Unscarred, 0xa48, Player-1-00000004, Tank1, 0x512, 25189, Enveloping Winds, 0, DEBUFF, 0
		StopTimer: Timer25189target\tTank1
	[179.23] ENCOUNTER_END: 723, Ossirian the Unscarred, 185, 20, 1, 0
		EndCombat: ENCOUNTER_END
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 25189
]]
