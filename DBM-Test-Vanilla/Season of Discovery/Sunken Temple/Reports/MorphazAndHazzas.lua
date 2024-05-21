DBM.Test:Report[[
Test: SoD/ST/MorphazAndHazzas
Mod:  DBM-Raids-Vanilla/MorphazandHazzasSoD

Findings:
	None

Unused objects:
	None

Timers:
	Lucid Dreaming, time=20.00, type=cast, spellId=445235, triggerDeltas = 38.87, 103.64
		[ 38.87] SPELL_CAST_START: [Hazzas: Lucid Dreaming] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 445235, Lucid Dreaming, 0, 0
		[142.51] SPELL_CAST_START: [Hazzas: Lucid Dreaming] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 449422, Lucid Dreaming, 0, 0
	Eternal Slumber, time=30.00, type=cast, spellId=446144, triggerDeltas = 59.95, 87.43
		[ 59.95] SPELL_CAST_START: [Hazzas: Eternal Slumber] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446144, Eternal Slumber, 0, 0
			 Triggered 2x, delta times: 59.95, 87.43
	Corrupted Breath, time=11.30, type=cd, spellId=446487, triggerDeltas = 0.00, 9.70, 21.06, 38.90, 14.58, 16.22, 17.78, 19.86
		[  0.00] ENCOUNTER_START: 2958, Morphaz and Hazzas, 215, 20, 0
		[  9.70] SPELL_CAST_SUCCESS: [Hazzas: Corrupted Breath] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446487, Corrupted Breath, 0, 0
			 Triggered 7x, delta times: 9.70, 21.06, 38.90, 14.58, 16.22, 17.78, 19.86
		[ 38.87] SPELL_CAST_START: [Hazzas: Lucid Dreaming] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 445235, Lucid Dreaming, 0, 0
		[142.51] SPELL_CAST_START: [Hazzas: Lucid Dreaming] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 449422, Lucid Dreaming, 0, 0

Announces:
	Dreamer's Lament (%s), type=count, spellId=446468, triggerDeltas = 12.95, 19.43, 27.57, 4.86, 21.05, 16.21, 17.79, 12.94
		[ 12.95] SPELL_CAST_START: [Hazzas: Dreamer's Lament] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446468, Dreamer's Lament, 0, 0
			 Triggered 8x, delta times: 12.95, 19.43, 27.57, 4.86, 21.05, 16.21, 17.79, 12.94
	Corrupted Breath on >%s< (%d), type=stack, spellId=446487, triggerDeltas = 9.70, 21.06, 38.90, 14.58, 16.23, 17.78, 19.87
		[  9.70] SPELL_AURA_APPLIED: [Hazzas->Simplyorc: Corrupted Breath] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 446487, Corrupted Breath, 0, DEBUFF, 0
			 Triggered 4x, delta times: 9.70, 21.06, 38.90, 68.46
		[ 84.24] SPELL_AURA_APPLIED_DOSE: [Hazzas->Simplyorc: Corrupted Breath] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 446487, Corrupted Breath, 0, DEBUFF, 2, 0
		[100.47] SPELL_AURA_APPLIED: [Hazzas->Mafakacoil: Corrupted Breath] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 446487, Corrupted Breath, 0, DEBUFF, 0
		[118.25] SPELL_AURA_APPLIED_DOSE: [Hazzas->Mafakacoil: Corrupted Breath] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 446487, Corrupted Breath, 0, DEBUFF, 2, 0
	Animate Flame, type=spell, spellId=446661, triggerDeltas = 35.62
		[ 35.62] SPELL_CAST_START: [Hazzas: Animate Flame] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446661, Animate Flame, 0, 0

Special warnings:
	Backfire! (%s), type=count, spellId=446489, triggerDeltas = 8.09, 59.44, 28.12, 26.66, 16.96
		[  8.09] SPELL_CAST_START: [Hazzas: Backfire] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446489, Backfire, 0, 0
			 Triggered 5x, delta times: 8.09, 59.44, 28.12, 26.66, 16.96

Yells:
	None

Voice pack sounds:
	VoicePack/carefly
		[  8.09] SPELL_CAST_START: [Hazzas: Backfire] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446489, Backfire, 0, 0
			 Triggered 5x, delta times: 8.09, 59.44, 28.12, 26.66, 16.96

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 2958, Morphaz and Hazzas, 215, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_START 446489 446468 446661 445235 449422 446144, SPELL_CAST_SUCCESS 446487, SPELL_AURA_APPLIED 446487, SPELL_AURA_APPLIED_DOSE 446487
		StartTimer: 10.6, Corrupted Breath
	[  8.09] SPELL_CAST_START: [Hazzas: Backfire] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446489, Backfire, 0, 0
		ShowSpecialWarning: Backfire! (1)
		PlaySound: VoicePack/carefly
	[  9.70] SPELL_CAST_SUCCESS: [Hazzas: Corrupted Breath] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446487, Corrupted Breath, 0, 0
		StartTimer: 11.3, Corrupted Breath
	[  9.70] SPELL_AURA_APPLIED: [Hazzas->Simplyorc: Corrupted Breath] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 446487, Corrupted Breath, 0, DEBUFF, 0
		ShowAnnounce: Corrupted Breath on Simplyorc (1)
	[ 12.95] SPELL_CAST_START: [Hazzas: Dreamer's Lament] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446468, Dreamer's Lament, 0, 0
		ShowAnnounce: Dreamer's Lament (1)
	[ 30.76] SPELL_CAST_SUCCESS: [Hazzas: Corrupted Breath] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446487, Corrupted Breath, 0, 0
		StartTimer: 11.3, Corrupted Breath
	[ 30.76] SPELL_AURA_APPLIED: [Hazzas->Simplyorc: Corrupted Breath] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 446487, Corrupted Breath, 0, DEBUFF, 0
		ShowAnnounce: Corrupted Breath on Simplyorc (1)
	[ 32.38] SPELL_CAST_START: [Hazzas: Dreamer's Lament] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446468, Dreamer's Lament, 0, 0
		ShowAnnounce: Dreamer's Lament (2)
	[ 35.62] SPELL_CAST_START: [Hazzas: Animate Flame] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446661, Animate Flame, 0, 0
		ShowAnnounce: Animate Flame
	[ 38.87] SPELL_CAST_START: [Hazzas: Lucid Dreaming] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 445235, Lucid Dreaming, 0, 0
		StopTimer: Timer446487cd
		StartTimer: 20.0, Lucid Dreaming
	[ 59.95] SPELL_CAST_START: [Hazzas: Dreamer's Lament] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446468, Dreamer's Lament, 0, 0
		ShowAnnounce: Dreamer's Lament (3)
	[ 59.95] SPELL_CAST_START: [Hazzas: Eternal Slumber] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446144, Eternal Slumber, 0, 0
		StartTimer: 30.0, Eternal Slumber
	[ 64.81] SPELL_CAST_START: [Hazzas: Dreamer's Lament] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446468, Dreamer's Lament, 0, 0
		ShowAnnounce: Dreamer's Lament (4)
	[ 67.53] SPELL_CAST_START: [Hazzas: Backfire] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446489, Backfire, 0, 0
		ShowSpecialWarning: Backfire! (2)
		PlaySound: VoicePack/carefly
	[ 69.66] SPELL_CAST_SUCCESS: [Hazzas: Corrupted Breath] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446487, Corrupted Breath, 0, 0
		StartTimer: 11.3, Corrupted Breath
	[ 69.66] SPELL_AURA_APPLIED: [Hazzas->Simplyorc: Corrupted Breath] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 446487, Corrupted Breath, 0, DEBUFF, 0
		ShowAnnounce: Corrupted Breath on Simplyorc (1)
	[ 84.24] SPELL_CAST_SUCCESS: [Hazzas: Corrupted Breath] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446487, Corrupted Breath, 0, 0
		StartTimer: 11.3, Corrupted Breath
	[ 84.24] SPELL_AURA_APPLIED_DOSE: [Hazzas->Simplyorc: Corrupted Breath] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 446487, Corrupted Breath, 0, DEBUFF, 2, 0
		ShowAnnounce: Corrupted Breath on Simplyorc (2)
	[ 85.86] SPELL_CAST_START: [Hazzas: Dreamer's Lament] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446468, Dreamer's Lament, 0, 0
		ShowAnnounce: Dreamer's Lament (5)
	[ 95.65] SPELL_CAST_START: [Hazzas: Backfire] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446489, Backfire, 0, 0
		ShowSpecialWarning: Backfire! (3)
		PlaySound: VoicePack/carefly
	[100.46] SPELL_CAST_SUCCESS: [Hazzas: Corrupted Breath] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446487, Corrupted Breath, 0, 0
		StartTimer: 11.3, Corrupted Breath
	[100.47] SPELL_AURA_APPLIED: [Hazzas->Mafakacoil: Corrupted Breath] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 446487, Corrupted Breath, 0, DEBUFF, 0
		ShowAnnounce: Corrupted Breath on Mafakacoil (1)
	[102.07] SPELL_CAST_START: [Hazzas: Dreamer's Lament] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446468, Dreamer's Lament, 0, 0
		ShowAnnounce: Dreamer's Lament (6)
	[118.24] SPELL_CAST_SUCCESS: [Hazzas: Corrupted Breath] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446487, Corrupted Breath, 0, 0
		StartTimer: 11.3, Corrupted Breath
	[118.25] SPELL_AURA_APPLIED_DOSE: [Hazzas->Mafakacoil: Corrupted Breath] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 446487, Corrupted Breath, 0, DEBUFF, 2, 0
		ShowAnnounce: Corrupted Breath on Mafakacoil (2)
	[119.86] SPELL_CAST_START: [Hazzas: Dreamer's Lament] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446468, Dreamer's Lament, 0, 0
		ShowAnnounce: Dreamer's Lament (7)
	[122.31] SPELL_CAST_START: [Hazzas: Backfire] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446489, Backfire, 0, 0
		ShowSpecialWarning: Backfire! (4)
		PlaySound: VoicePack/carefly
	[132.80] SPELL_CAST_START: [Hazzas: Dreamer's Lament] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446468, Dreamer's Lament, 0, 0
		ShowAnnounce: Dreamer's Lament (8)
	[138.10] SPELL_CAST_SUCCESS: [Hazzas: Corrupted Breath] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446487, Corrupted Breath, 0, 0
		StartTimer: 11.3, Corrupted Breath
	[138.12] SPELL_AURA_APPLIED: [Hazzas->Simplyorc: Corrupted Breath] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 446487, Corrupted Breath, 0, DEBUFF, 0
		ShowAnnounce: Corrupted Breath on Simplyorc (1)
	[139.27] SPELL_CAST_START: [Hazzas: Backfire] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446489, Backfire, 0, 0
		ShowSpecialWarning: Backfire! (5)
		PlaySound: VoicePack/carefly
	[142.51] SPELL_CAST_START: [Hazzas: Lucid Dreaming] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 449422, Lucid Dreaming, 0, 0
		StopTimer: Timer446487cd
		StartTimer: 4.0, Lucid Dreaming
	[147.38] SPELL_CAST_START: [Hazzas: Eternal Slumber] Creature-0-5208-109-4570-221943-00003BC782, Hazzas, 0xa48, "", nil, 0x0, 446144, Eternal Slumber, 0, 0
		StartTimer: 30.0, Eternal Slumber
	[163.16] ENCOUNTER_END: 2958, Morphaz and Hazzas, 215, 20, 1, 0
		EndCombat: ENCOUNTER_END
]]
