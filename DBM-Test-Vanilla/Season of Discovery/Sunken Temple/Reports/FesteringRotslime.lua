DBM.Test:Report[[
Test: SoD/ST/FesteringRotslime
Mod:  DBM-Raids-Vanilla/FesteringRotslimeSoD

Findings:
	Unused event registration: SPELL_AURA_APPLIED 448824 (Devour)
	Unused event registration: SPELL_MISSED 438136 (Nauseous Gas)

Unused objects:
	[Yell] Devour on PlayerName, type=yell, spellId=448824

Timers:
	Nauseous Gas (%s), time=8.00, type=cdcount, spellId=438130, triggerDeltas = 0.00, 9.31, 8.15, 8.08, 8.09, 8.11, 8.09, 8.09, 8.10, 8.10
		[ 0.00] ENCOUNTER_START: 2953, Festering Rotslime, 215, 20, 0
		[ 9.31] SPELL_CAST_SUCCESS: [Festering Rotslime: Nauseous Gas] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, "", nil, 0x0, 438130, Nauseous Gas, 0, 0
			 Triggered 9x, delta times: 9.31, 8.15, 8.08, 8.09, 8.11, 8.09, 8.09, 8.10, 8.10
	Gunk (%s), time=17.80, type=cdcount, spellId=438142, triggerDeltas = 0.00, 12.52, 17.89, 17.80, 19.45
		[ 0.00] ENCOUNTER_START: 2953, Festering Rotslime, 215, 20, 0
		[12.52] SPELL_CAST_START: [Festering Rotslime: Gunk] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, "", nil, 0x0, 438142, Gunk, 0, 0
			 Triggered 4x, delta times: 12.52, 17.89, 17.80, 19.45

Announces:
	Nauseous Gas (%s), type=count, spellId=438130, triggerDeltas = 9.31, 8.15, 8.08, 8.09, 8.11, 8.09, 8.09, 8.10, 8.10
		[ 9.31] SPELL_CAST_SUCCESS: [Festering Rotslime: Nauseous Gas] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, "", nil, 0x0, 438130, Nauseous Gas, 0, 0
			 Triggered 9x, delta times: 9.31, 8.15, 8.08, 8.09, 8.11, 8.09, 8.09, 8.10, 8.10
	Gunk (%s), type=count, spellId=438142, triggerDeltas = 12.52, 17.89, 17.80, 19.45
		[12.52] SPELL_CAST_START: [Festering Rotslime: Gunk] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, "", nil, 0x0, 438142, Gunk, 0, 0
			 Triggered 4x, delta times: 12.52, 17.89, 17.80, 19.45
	Slime Time (%s), type=count, spellId=446311, triggerDeltas = 24.01, 14.99, 18.00, 15.00
		[24.01] SPELL_AURA_APPLIED_DOSE: [Festering Rotslime->Festering Rotslime: Slime Time] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, 446311, Slime Time, 0, BUFF, 5, 0
			 Triggered 4x, delta times: 24.01, 14.99, 18.00, 15.00

Special warnings:
	%s damage - move away, type=gtfo, spellId=438136, triggerDeltas = 16.65, 18.15, 3.00
		[16.65] SPELL_DAMAGE: [Festering Rotslime->Tandanu: Nauseous Gas] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, Player-5826-020CBDBB, Tandanu, 0x511, 438136, Nauseous Gas, 0, 0
			 Triggered 3x, delta times: 16.65, 18.15, 3.00
	Slime Time faded, type=fades, spellId=446311, triggerDeltas = 11.16, 31.49, 33.12
		[11.16] SPELL_AURA_REMOVED: [Festering Rotslime->Festering Rotslime: Slime Time] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, 446311, Slime Time, 0, BUFF, 0
			 Triggered 3x, delta times: 11.16, 31.49, 33.12

Yells:
	None

Voice pack sounds:
	VoicePack/watchfeet
		[16.65] SPELL_DAMAGE: [Festering Rotslime->Tandanu: Nauseous Gas] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, Player-5826-020CBDBB, Tandanu, 0x511, 438136, Nauseous Gas, 0, 0
			 Triggered 3x, delta times: 16.65, 18.15, 3.00

Icons:
	None

Event trace:
	[ 0.00] ENCOUNTER_START: 2953, Festering Rotslime, 215, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_START 438142, SPELL_CAST_SUCCESS 438130, SPELL_DAMAGE 438136, SPELL_MISSED 438136, SPELL_AURA_APPLIED_DOSE 446311, SPELL_AURA_REMOVED 446311, SPELL_AURA_APPLIED 448824
		StartTimer: 8.0, Nauseous Gas (1)
		StartTimer: 12.8, Gunk (1)
	[ 9.31] SPELL_CAST_SUCCESS: [Festering Rotslime: Nauseous Gas] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, "", nil, 0x0, 438130, Nauseous Gas, 0, 0
		ShowAnnounce: Nauseous Gas (1)
		StartTimer: 8.0, Nauseous Gas (2)
	[11.16] SPELL_AURA_REMOVED: [Festering Rotslime->Festering Rotslime: Slime Time] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, 446311, Slime Time, 0, BUFF, 0
		ShowSpecialWarning: Slime Time faded
	[12.52] SPELL_CAST_START: [Festering Rotslime: Gunk] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, "", nil, 0x0, 438142, Gunk, 0, 0
		ShowAnnounce: Gunk (1)
		StartTimer: 17.8, Gunk (2)
	[16.65] SPELL_DAMAGE: [Festering Rotslime->Tandanu: Nauseous Gas] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, Player-5826-020CBDBB, Tandanu, 0x511, 438136, Nauseous Gas, 0, 0
		AntiSpam: 2
			Filtered: 1x SPELL_DAMAGE at 17.64
		ShowSpecialWarning: Nauseous Gas damage - move away
		PlaySound: VoicePack/watchfeet
	[17.46] SPELL_CAST_SUCCESS: [Festering Rotslime: Nauseous Gas] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, "", nil, 0x0, 438130, Nauseous Gas, 0, 0
		ShowAnnounce: Nauseous Gas (2)
		StartTimer: 8.0, Nauseous Gas (3)
	[24.01] SPELL_AURA_APPLIED_DOSE: [Festering Rotslime->Festering Rotslime: Slime Time] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, 446311, Slime Time, 0, BUFF, 5, 0
		ShowAnnounce: Slime Time (5)
	[25.54] SPELL_CAST_SUCCESS: [Festering Rotslime: Nauseous Gas] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, "", nil, 0x0, 438130, Nauseous Gas, 0, 0
		ShowAnnounce: Nauseous Gas (3)
		StartTimer: 8.0, Nauseous Gas (4)
	[30.41] SPELL_CAST_START: [Festering Rotslime: Gunk] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, "", nil, 0x0, 438142, Gunk, 0, 0
		ShowAnnounce: Gunk (2)
		StartTimer: 17.8, Gunk (3)
	[33.63] SPELL_CAST_SUCCESS: [Festering Rotslime: Nauseous Gas] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, "", nil, 0x0, 438130, Nauseous Gas, 0, 0
		ShowAnnounce: Nauseous Gas (4)
		StartTimer: 8.0, Nauseous Gas (5)
	[34.80] SPELL_DAMAGE: [Festering Rotslime->Tandanu: Nauseous Gas] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, Player-5826-020CBDBB, Tandanu, 0x511, 438136, Nauseous Gas, 0, 0
		AntiSpam: 2
			Filtered: 2x SPELL_DAMAGE at 35.8, 36.8
		ShowSpecialWarning: Nauseous Gas damage - move away
		PlaySound: VoicePack/watchfeet
	[37.80] SPELL_DAMAGE: [Festering Rotslime->Tandanu: Nauseous Gas] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, Player-5826-020CBDBB, Tandanu, 0x511, 438136, Nauseous Gas, 0, 0
		AntiSpam: 2
		ShowSpecialWarning: Nauseous Gas damage - move away
		PlaySound: VoicePack/watchfeet
	[39.00] SPELL_AURA_APPLIED_DOSE: [Festering Rotslime->Festering Rotslime: Slime Time] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, 446311, Slime Time, 0, BUFF, 10, 0
		ShowAnnounce: Slime Time (10)
	[41.74] SPELL_CAST_SUCCESS: [Festering Rotslime: Nauseous Gas] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, "", nil, 0x0, 438130, Nauseous Gas, 0, 0
		ShowAnnounce: Nauseous Gas (5)
		StartTimer: 8.0, Nauseous Gas (6)
	[42.65] SPELL_AURA_REMOVED: [Festering Rotslime->Festering Rotslime: Slime Time] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, 446311, Slime Time, 0, BUFF, 0
		ShowSpecialWarning: Slime Time faded
	[48.21] SPELL_CAST_START: [Festering Rotslime: Gunk] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, "", nil, 0x0, 438142, Gunk, 0, 0
		ShowAnnounce: Gunk (3)
		StartTimer: 17.8, Gunk (4)
	[49.83] SPELL_CAST_SUCCESS: [Festering Rotslime: Nauseous Gas] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, "", nil, 0x0, 438130, Nauseous Gas, 0, 0
		ShowAnnounce: Nauseous Gas (6)
		StartTimer: 8.0, Nauseous Gas (7)
	[57.00] SPELL_AURA_APPLIED_DOSE: [Festering Rotslime->Festering Rotslime: Slime Time] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, 446311, Slime Time, 0, BUFF, 5, 0
		ShowAnnounce: Slime Time (5)
	[57.92] SPELL_CAST_SUCCESS: [Festering Rotslime: Nauseous Gas] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, "", nil, 0x0, 438130, Nauseous Gas, 0, 0
		ShowAnnounce: Nauseous Gas (7)
		StartTimer: 8.0, Nauseous Gas (8)
	[66.02] SPELL_CAST_SUCCESS: [Festering Rotslime: Nauseous Gas] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, "", nil, 0x0, 438130, Nauseous Gas, 0, 0
		ShowAnnounce: Nauseous Gas (8)
		StartTimer: 8.0, Nauseous Gas (9)
	[67.66] SPELL_CAST_START: [Festering Rotslime: Gunk] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, "", nil, 0x0, 438142, Gunk, 0, 0
		ShowAnnounce: Gunk (4)
		StartTimer: 17.8, Gunk (5)
	[72.00] SPELL_AURA_APPLIED_DOSE: [Festering Rotslime->Festering Rotslime: Slime Time] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, 446311, Slime Time, 0, BUFF, 10, 0
		ShowAnnounce: Slime Time (10)
	[74.12] SPELL_CAST_SUCCESS: [Festering Rotslime: Nauseous Gas] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, "", nil, 0x0, 438130, Nauseous Gas, 0, 0
		ShowAnnounce: Nauseous Gas (9)
		StartTimer: 8.0, Nauseous Gas (10)
	[75.77] SPELL_AURA_REMOVED: [Festering Rotslime->Festering Rotslime: Slime Time] Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, 446311, Slime Time, 0, BUFF, 0
		ShowSpecialWarning: Slime Time faded
	[75.77] UNIT_DIED: [->Festering Rotslime] "", nil, 0x0, Vehicle-0-5208-109-4570-218819-00003BC782, Festering Rotslime, 0xa48, -1, false, 0, 0
		EndCombat: Main CID Down
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 446311
]]
