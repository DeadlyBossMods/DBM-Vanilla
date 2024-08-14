DBM.Test:Report[[
Test: SoD/MC/TheMoltenCore/Heat-3/Wipe
Mod:  DBM-Raids-Vanilla/MoltenCore

Findings:
	Unused event registration: SPELL_AURA_APPLIED 460890 (Melt Armor)
	Unused event registration: SPELL_AURA_APPLIED_DOSE 460890 (Melt Armor)
	Unused event registration: SPELL_AURA_REMOVED 460895 (Heart of Cinder)
	Unused event registration: SPELL_AURA_REMOVED 460898 (Heart of Ash)
	Announce for spell ID 460898 (Heart of Ash) is triggered by event SPELL_AURA_APPLIED 460895 (Heart of Cinder)
	SpecialWarning for spell ID 460898 (Heart of Ash) is triggered by event SPELL_AURA_APPLIED 460895 (Heart of Cinder)

Unused objects:
	[Announce] Melt Armor on >%s< (%d), type=stack, spellId=460890

Timers:
	Heart of Ash, time=35.00, type=cd, spellId=460898, triggerDeltas = 0.00, 22.60, 43.67, 35.60, 35.65
		[  0.00] ENCOUNTER_START: 3018, The Molten Core, 226, 20, 0
		[ 22.60] SPELL_AURA_APPLIED: [Dps9->Dps9: Heart of Ash] Player-1-00000015, Dps9, 0x512, Player-1-00000015, Dps9, 0x512, 460898, Heart of Ash, 0, DEBUFF, 0
			 Triggered 2x, delta times: 22.60, 114.92
		[ 66.27] SPELL_AURA_APPLIED: [Healer5->Healer5: Heart of Ash] Player-1-00000019, Healer5, 0x511, Player-1-00000019, Healer5, 0x511, 460898, Heart of Ash, 0, DEBUFF, 0
		[101.87] SPELL_AURA_APPLIED: [Dps7->Dps7: Heart of Ash] Player-1-00000013, Dps7, 0x512, Player-1-00000013, Dps7, 0x512, 460898, Heart of Ash, 0, DEBUFF, 0

Announces:
	Heart of Ash on >%s<, type=target, spellId=460898, triggerDeltas = 22.60, 43.67, 35.60, 35.65
		[ 22.60] SPELL_AURA_APPLIED: [Tank1->Tank1: Heart of Cinder] Player-1-00000001, Tank1, 0x512, Player-1-00000001, Tank1, 0x512, 460895, Heart of Cinder, 0, DEBUFF, 0
		[ 66.27] SPELL_AURA_APPLIED: [Dps2->Dps2: Heart of Cinder] Player-1-00000003, Dps2, 0x512, Player-1-00000003, Dps2, 0x512, 460895, Heart of Cinder, 0, DEBUFF, 0
		[101.87] SPELL_AURA_APPLIED: [Healer2->Healer2: Heart of Cinder] Player-1-00000006, Healer2, 0x512, Player-1-00000006, Healer2, 0x512, 460895, Heart of Cinder, 0, DEBUFF, 0
		[137.52] SPELL_AURA_APPLIED: [Tank2->Tank2: Heart of Cinder] Player-1-00000011, Tank2, 0x512, Player-1-00000011, Tank2, 0x512, 460895, Heart of Cinder, 0, DEBUFF, 0
	Conjure Flame, type=spell, spellId=462619, triggerDeltas = 30.69, 42.05, 30.76
		[ 30.69] SPELL_CAST_SUCCESS: [The Molten Core: Conjure Flame] Creature-0-1-409-1-227939-0000000006, The Molten Core, 0xa48, "", nil, 0x0, 462619, Conjure Flame, 0, 0
			 Triggered 3x, delta times: 30.69, 42.05, 30.76

Special warnings:
	Heart of Ash - move to >%s<, type=moveto, spellId=460898, triggerDeltas = 66.27
		[ 66.27] SPELL_AURA_APPLIED: [Dps2->Dps2: Heart of Cinder] Player-1-00000003, Dps2, 0x512, Player-1-00000003, Dps2, 0x512, 460895, Heart of Cinder, 0, DEBUFF, 0

Yells:
	{rt%1$d}{rt%1$d}{rt%1$d}, type=icontarget, spellId=460898
		[ 66.27] Scheduled at 66.27 by SPELL_AURA_APPLIED: [Healer5->Healer5: Heart of Ash] Player-1-00000019, Healer5, 0x511, Player-1-00000019, Healer5, 0x511, 460898, Heart of Ash, 0, DEBUFF, 0
			 Triggered 6x, delta times: 66.27, 2.00, 2.00, 2.00, 2.00, 2.00

Voice pack sounds:
	VoicePack/bombyou
		[ 66.27] SPELL_AURA_APPLIED: [Healer5->Healer5: Heart of Ash] Player-1-00000019, Healer5, 0x511, Player-1-00000019, Healer5, 0x511, 460898, Heart of Ash, 0, DEBUFF, 0

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 3018, The Molten Core, 226, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_AURA_APPLIED 460890 460898 460895, SPELL_AURA_APPLIED_DOSE 460890, SPELL_AURA_REMOVED 460898 460895, SPELL_CAST_SUCCESS 462619
		StartTimer: 20.0, Heart of Ash
	[ 22.60] SPELL_AURA_APPLIED: [Dps9->Dps9: Heart of Ash] Player-1-00000015, Dps9, 0x512, Player-1-00000015, Dps9, 0x512, 460898, Heart of Ash, 0, DEBUFF, 0
		StartTimer: 35.0, Heart of Ash
	[ 22.60] SPELL_AURA_APPLIED: [Tank1->Tank1: Heart of Cinder] Player-1-00000001, Tank1, 0x512, Player-1-00000001, Tank1, 0x512, 460895, Heart of Cinder, 0, DEBUFF, 0
		ShowAnnounce: Heart of Ash on Dps9, Tank1
	[ 30.69] SPELL_CAST_SUCCESS: [The Molten Core: Conjure Flame] Creature-0-1-409-1-227939-0000000006, The Molten Core, 0xa48, "", nil, 0x0, 462619, Conjure Flame, 0, 0
		ShowAnnounce: Conjure Flame
	[ 66.27] SPELL_AURA_APPLIED: [Healer5->Healer5: Heart of Ash] Player-1-00000019, Healer5, 0x511, Player-1-00000019, Healer5, 0x511, 460898, Heart of Ash, 0, DEBUFF, 0
		ScheduleTask: yell460898icontarget:Schedule(8.0) at 66.27 (+0.00)
			ShowYell: {rt8}{rt8}{rt8}
		ScheduleTask: yell460898icontarget:Schedule(8.0) at 68.27 (+2.00)
			ShowYell: {rt8}{rt8}{rt8}
		ScheduleTask: yell460898icontarget:Schedule(8.0) at 70.27 (+4.00)
			ShowYell: {rt8}{rt8}{rt8}
		ScheduleTask: yell460898icontarget:Schedule(8.0) at 72.27 (+6.00)
			ShowYell: {rt8}{rt8}{rt8}
		ScheduleTask: yell460898icontarget:Schedule(8.0) at 74.27 (+8.00)
			ShowYell: {rt8}{rt8}{rt8}
		ScheduleTask: yell460898icontarget:Schedule(8.0) at 76.27 (+10.00)
			ShowYell: {rt8}{rt8}{rt8}
		PlaySound: VoicePack/bombyou
		StartTimer: 35.0, Heart of Ash
	[ 66.27] SPELL_AURA_APPLIED: [Dps2->Dps2: Heart of Cinder] Player-1-00000003, Dps2, 0x512, Player-1-00000003, Dps2, 0x512, 460895, Heart of Cinder, 0, DEBUFF, 0
		ShowAnnounce: Heart of Ash on PlayerName, Dps2
		ShowSpecialWarning: Heart of Ash - move to Dps2
	[ 72.74] SPELL_CAST_SUCCESS: [The Molten Core: Conjure Flame] Creature-0-1-409-1-227939-0000000006, The Molten Core, 0xa48, "", nil, 0x0, 462619, Conjure Flame, 0, 0
		ShowAnnounce: Conjure Flame
	[101.87] SPELL_AURA_APPLIED: [Dps7->Dps7: Heart of Ash] Player-1-00000013, Dps7, 0x512, Player-1-00000013, Dps7, 0x512, 460898, Heart of Ash, 0, DEBUFF, 0
		StartTimer: 35.0, Heart of Ash
	[101.87] SPELL_AURA_APPLIED: [Healer2->Healer2: Heart of Cinder] Player-1-00000006, Healer2, 0x512, Player-1-00000006, Healer2, 0x512, 460895, Heart of Cinder, 0, DEBUFF, 0
		ShowAnnounce: Heart of Ash on Dps7, Healer2
	[103.50] SPELL_CAST_SUCCESS: [The Molten Core: Conjure Flame] Creature-0-1-409-1-227939-0000000006, The Molten Core, 0xa48, "", nil, 0x0, 462619, Conjure Flame, 0, 0
		ShowAnnounce: Conjure Flame
	[137.52] SPELL_AURA_APPLIED: [Dps9->Dps9: Heart of Ash] Player-1-00000015, Dps9, 0x512, Player-1-00000015, Dps9, 0x512, 460898, Heart of Ash, 0, DEBUFF, 0
		StartTimer: 35.0, Heart of Ash
	[137.52] SPELL_AURA_APPLIED: [Tank2->Tank2: Heart of Cinder] Player-1-00000011, Tank2, 0x512, Player-1-00000011, Tank2, 0x512, 460895, Heart of Cinder, 0, DEBUFF, 0
		ShowAnnounce: Heart of Ash on Dps9, Tank2
	Unknown trigger
		EndCombat: checkWipe
]]
