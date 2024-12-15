DBM.Test:Report[[
Test: SoD/AQ40/ThreeBugs/Hardmode
Mod:  DBM-Raids-Vanilla/ThreeBugs

Findings:
	Unused event registration: SPELL_AURA_APPLIED 25786 (Toxic Vapors)
	Unused event registration: SPELL_AURA_APPLIED 25989 (Toxin)
	Unused event registration: SPELL_PERIODIC_DAMAGE 25786 (Toxic Vapors)
	Unused event registration: SPELL_PERIODIC_DAMAGE 25989 (Toxin)
	Unused event registration: SPELL_PERIODIC_MISSED 25786 (Toxic Vapors)
	Unused event registration: SPELL_PERIODIC_MISSED 25989 (Toxin)

Unused objects:
	[Announce] Casting Great Heal: 2.0 sec, type=cast, spellId=25807
	[Special Warning] %s damage - move away, type=gtfo, spellId=25786

Timers:
	Exploding Ghosts, time=30.00, type=cd, spellId=<none>, triggerDeltas = 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00
		Unknown trigger
	Fear, time=20.50, type=cd, spellId=26580, triggerDeltas = 0.00, 16.12, 34.03, 30.80
		[  0.00] ENCOUNTER_START: 710, Silithid Royalty, 186, 40, 0
		[ 16.12] SPELL_CAST_SUCCESS: [Princess Yauj: Fear] Creature-0-1-531-1-15543-0000000001, Princess Yauj, 0xa48, "", nil, 0x0, 26580, Fear, 0, 0
			 Triggered 3x, delta times: 16.12, 34.03, 30.80
		[ 89.07] UNIT_DIED: [->Princess Yauj] "", nil, 0x0, Creature-0-1-531-1-15543-0000000001, Princess Yauj, 0xa48, -1, false, 0, 0

Announces:
	Toxic Volley, type=spell, spellId=25812, triggerDeltas = 32.32, 11.37, 19.43, 14.59, 14.60, 29.14, 21.04, 12.98, 12.96, 19.39, 19.42, 19.44, 22.65, 11.34, 22.68
		[ 32.32] SPELL_CAST_SUCCESS: [Lord Kri: Toxic Volley] Creature-0-1-531-1-15511-0000000001, Lord Kri, 0xa48, "", nil, 0x0, 25812, Toxic Volley, 0, 0
			 Triggered 15x, delta times: 32.32, 11.37, 19.43, 14.59, 14.60, 29.14, 21.04, 12.98, 12.96, 19.39, 19.42, 19.44, 22.65, 11.34, 22.68
	Fear, type=spell, spellId=26580, triggerDeltas = 16.12, 34.03, 30.80
		[ 16.12] SPELL_CAST_SUCCESS: [Princess Yauj: Fear] Creature-0-1-531-1-15543-0000000001, Princess Yauj, 0xa48, "", nil, 0x0, 26580, Fear, 0, 0
			 Triggered 3x, delta times: 16.12, 34.03, 30.80

Special warnings:
	Exploding ghosts - dodge, type=nil, spellId=<none>, triggerDeltas = 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00
		Unknown trigger
	Great Heal - interrupt >%s<!, type=interrupt, spellId=25807, triggerDeltas = 12.90, 11.32, 11.35, 11.35, 12.96, 11.33, 12.99
		[ 12.90] SPELL_CAST_START: [Princess Yauj: Great Heal] Creature-0-1-531-1-15543-0000000001, Princess Yauj, 0xa48, "", nil, 0x0, 25807, Great Heal, 0, 0
			 Triggered 7x, delta times: 12.90, 11.32, 11.35, 11.35, 12.96, 11.33, 12.99

Yells:
	None

Voice pack sounds:
	VoicePack/ghostsoon
		Unknown trigger
	VoicePack/kickcast
		[ 12.90] SPELL_CAST_START: [Princess Yauj: Great Heal] Creature-0-1-531-1-15543-0000000001, Princess Yauj, 0xa48, "", nil, 0x0, 25807, Great Heal, 0, 0
			 Triggered 7x, delta times: 12.90, 11.32, 11.35, 11.35, 12.96, 11.33, 12.99

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 710, Silithid Royalty, 186, 40, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_SUCCESS 26580 25812, SPELL_CAST_START 25807, UNIT_DIED
		StartTimer: 10.0, Fear
		RegisterEvents: ShortTerm, SPELL_AURA_APPLIED 25786 25989, SPELL_PERIODIC_DAMAGE 25786 25989, SPELL_PERIODIC_MISSED 25786 25989
		RegisterEvents: Regular, SPELL_AURA_APPLIED 25786 25989, SPELL_PERIODIC_DAMAGE 25786 25989, SPELL_PERIODIC_MISSED 25786 25989
	[ 12.90] SPELL_CAST_START: [Princess Yauj: Great Heal] Creature-0-1-531-1-15543-0000000001, Princess Yauj, 0xa48, "", nil, 0x0, 25807, Great Heal, 0, 0
		ShowSpecialWarning: Great Heal - interrupt Princess Yauj!
		PlaySound: VoicePack/kickcast
	[ 16.12] SPELL_CAST_SUCCESS: [Princess Yauj: Fear] Creature-0-1-531-1-15543-0000000001, Princess Yauj, 0xa48, "", nil, 0x0, 26580, Fear, 0, 0
		AntiSpam: 1
		ShowAnnounce: Fear
		StartTimer: 20.5, Fear
	[ 24.22] SPELL_CAST_START: [Princess Yauj: Great Heal] Creature-0-1-531-1-15543-0000000001, Princess Yauj, 0xa48, "", nil, 0x0, 25807, Great Heal, 0, 0
		ShowSpecialWarning: Great Heal - interrupt Princess Yauj!
		PlaySound: VoicePack/kickcast
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[ 32.32] SPELL_CAST_SUCCESS: [Lord Kri: Toxic Volley] Creature-0-1-531-1-15511-0000000001, Lord Kri, 0xa48, "", nil, 0x0, 25812, Toxic Volley, 0, 0
		ShowAnnounce: Toxic Volley
	[ 35.57] SPELL_CAST_START: [Princess Yauj: Great Heal] Creature-0-1-531-1-15543-0000000001, Princess Yauj, 0xa48, "", nil, 0x0, 25807, Great Heal, 0, 0
		ShowSpecialWarning: Great Heal - interrupt Princess Yauj!
		PlaySound: VoicePack/kickcast
	[ 43.69] SPELL_CAST_SUCCESS: [Lord Kri: Toxic Volley] Creature-0-1-531-1-15511-0000000001, Lord Kri, 0xa48, "", nil, 0x0, 25812, Toxic Volley, 0, 0
		ShowAnnounce: Toxic Volley
	[ 46.92] SPELL_CAST_START: [Princess Yauj: Great Heal] Creature-0-1-531-1-15543-0000000001, Princess Yauj, 0xa48, "", nil, 0x0, 25807, Great Heal, 0, 0
		ShowSpecialWarning: Great Heal - interrupt Princess Yauj!
		PlaySound: VoicePack/kickcast
	[ 50.15] SPELL_CAST_SUCCESS: [Princess Yauj: Fear] Creature-0-1-531-1-15543-0000000001, Princess Yauj, 0xa48, "", nil, 0x0, 26580, Fear, 0, 0
		AntiSpam: 1
		ShowAnnounce: Fear
		StartTimer: 20.5, Fear
	[ 59.88] SPELL_CAST_START: [Princess Yauj: Great Heal] Creature-0-1-531-1-15543-0000000001, Princess Yauj, 0xa48, "", nil, 0x0, 25807, Great Heal, 0, 0
		ShowSpecialWarning: Great Heal - interrupt Princess Yauj!
		PlaySound: VoicePack/kickcast
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[ 63.12] SPELL_CAST_SUCCESS: [Lord Kri: Toxic Volley] Creature-0-1-531-1-15511-0000000001, Lord Kri, 0xa48, "", nil, 0x0, 25812, Toxic Volley, 0, 0
		ShowAnnounce: Toxic Volley
	[ 71.21] SPELL_CAST_START: [Princess Yauj: Great Heal] Creature-0-1-531-1-15543-0000000001, Princess Yauj, 0xa48, "", nil, 0x0, 25807, Great Heal, 0, 0
		ShowSpecialWarning: Great Heal - interrupt Princess Yauj!
		PlaySound: VoicePack/kickcast
	[ 77.71] SPELL_CAST_SUCCESS: [Lord Kri: Toxic Volley] Creature-0-1-531-1-15511-0000000001, Lord Kri, 0xa48, "", nil, 0x0, 25812, Toxic Volley, 0, 0
		ShowAnnounce: Toxic Volley
	[ 80.95] SPELL_CAST_SUCCESS: [Princess Yauj: Fear] Creature-0-1-531-1-15543-0000000001, Princess Yauj, 0xa48, "", nil, 0x0, 26580, Fear, 0, 0
		AntiSpam: 1
		ShowAnnounce: Fear
		StartTimer: 20.5, Fear
	[ 84.20] SPELL_CAST_START: [Princess Yauj: Great Heal] Creature-0-1-531-1-15543-0000000001, Princess Yauj, 0xa48, "", nil, 0x0, 25807, Great Heal, 0, 0
		ShowSpecialWarning: Great Heal - interrupt Princess Yauj!
		PlaySound: VoicePack/kickcast
	[ 89.07] UNIT_DIED: [->Princess Yauj] "", nil, 0x0, Creature-0-1-531-1-15543-0000000001, Princess Yauj, 0xa48, -1, false, 0, 0
		StopTimer: Timer26580cd
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[ 92.31] SPELL_CAST_SUCCESS: [Lord Kri: Toxic Volley] Creature-0-1-531-1-15511-0000000001, Lord Kri, 0xa48, "", nil, 0x0, 25812, Toxic Volley, 0, 0
		ShowAnnounce: Toxic Volley
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[121.45] SPELL_CAST_SUCCESS: [Lord Kri: Toxic Volley] Creature-0-1-531-1-15511-0000000001, Lord Kri, 0xa48, "", nil, 0x0, 25812, Toxic Volley, 0, 0
		ShowAnnounce: Toxic Volley
	[142.49] SPELL_CAST_SUCCESS: [Lord Kri: Toxic Volley] Creature-0-1-531-1-15511-0000000001, Lord Kri, 0xa48, "", nil, 0x0, 25812, Toxic Volley, 0, 0
		ShowAnnounce: Toxic Volley
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[155.47] SPELL_CAST_SUCCESS: [Lord Kri: Toxic Volley] Creature-0-1-531-1-15511-0000000001, Lord Kri, 0xa48, "", nil, 0x0, 25812, Toxic Volley, 0, 0
		ShowAnnounce: Toxic Volley
	[168.43] SPELL_CAST_SUCCESS: [Lord Kri: Toxic Volley] Creature-0-1-531-1-15511-0000000001, Lord Kri, 0xa48, "", nil, 0x0, 25812, Toxic Volley, 0, 0
		ShowAnnounce: Toxic Volley
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[187.82] SPELL_CAST_SUCCESS: [Lord Kri: Toxic Volley] Creature-0-1-531-1-15511-0000000001, Lord Kri, 0xa48, "", nil, 0x0, 25812, Toxic Volley, 0, 0
		ShowAnnounce: Toxic Volley
	[207.24] SPELL_CAST_SUCCESS: [Lord Kri: Toxic Volley] Creature-0-1-531-1-15511-0000000001, Lord Kri, 0xa48, "", nil, 0x0, 25812, Toxic Volley, 0, 0
		ShowAnnounce: Toxic Volley
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[226.68] SPELL_CAST_SUCCESS: [Lord Kri: Toxic Volley] Creature-0-1-531-1-15511-0000000001, Lord Kri, 0xa48, "", nil, 0x0, 25812, Toxic Volley, 0, 0
		ShowAnnounce: Toxic Volley
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[249.33] SPELL_CAST_SUCCESS: [Lord Kri: Toxic Volley] Creature-0-1-531-1-15511-0000000001, Lord Kri, 0xa48, "", nil, 0x0, 25812, Toxic Volley, 0, 0
		ShowAnnounce: Toxic Volley
	[260.67] SPELL_CAST_SUCCESS: [Lord Kri: Toxic Volley] Creature-0-1-531-1-15511-0000000001, Lord Kri, 0xa48, "", nil, 0x0, 25812, Toxic Volley, 0, 0
		ShowAnnounce: Toxic Volley
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[283.35] SPELL_CAST_SUCCESS: [Lord Kri: Toxic Volley] Creature-0-1-531-1-15511-0000000001, Lord Kri, 0xa48, "", nil, 0x0, 25812, Toxic Volley, 0, 0
		ShowAnnounce: Toxic Volley
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[309.34] UNIT_DIED: [->Lord Kri] "", nil, 0x0, Creature-0-1-531-1-15511-0000000001, Lord Kri, 0xa48, -1, false, 0, 0
		EndCombat: All Mobs Down
		ScheduleTask: mod:UnregisterShortTermEvents() at 369.34 (+60.00)
	[309.36] ENCOUNTER_END: 710, Silithid Royalty, 186, 40, 1, 0
		AntiSpam: 710
	Unknown trigger
		ScheduleTask: mod:UnregisterShortTermEvents() at 60.00 (+60.00)
		UnscheduleTask: mod:UnregisterShortTermEvents() scheduled by ScheduleTask at 309.34
		UnscheduleTask: mod:UnregisterShortTermEvents() scheduled by ScheduleTask at <unknown>
]]
