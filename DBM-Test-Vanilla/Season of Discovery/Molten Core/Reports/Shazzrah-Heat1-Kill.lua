DBM.Test:Report[[
Test: SoD/MC/Shazzrah/Heat-1/Kill
Mod:  DBM-Raids-Vanilla/Shazzrah

Findings:
	Unused event registration: SPELL_AURA_APPLIED 460856 (Reflect Magic)
	Unused event registration: SPELL_CAST_START 460856 (Reflect Magic)
	Unused event registration: SPELL_CAST_SUCCESS 461343 (Shazzrah's Curse)

Unused objects:
	[Special Warning] Deaden Magic on >%s< - dispel now, type=dispel, spellId=19714
	[Special Warning] Reflect Magic - stop casting, type=cast, spellId=460856
	[Special Warning] Reflect Magic on >%s< - dispel now, type=dispel, spellId=460856

Timers:
	Shazzrah's Curse, time=22.00, type=cd, spellId=19713, triggerDeltas = 0.00, 9.32, 19.40, 21.01, 17.82, 20.05, 19.16, 20.67
		[  0.00] ENCOUNTER_START: 667, Shazzrah, 226, 20, 0
		[  9.32] SPELL_CAST_SUCCESS: [Shazzrah: Shazzrah's Curse] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 19713, Shazzrah's Curse, 0, 0
			 Triggered 7x, delta times: 9.32, 19.40, 21.01, 17.82, 20.05, 19.16, 20.67
	Deaden Magic ends, time=30.00, type=active, spellId=19714, triggerDeltas = 7.68, 4.84, 4.87, 4.86, 4.83, 6.48, 6.45, 4.87, 4.85, 4.87, 6.47, 6.48, 6.47, 4.84, 4.85, 5.27, 6.06, 4.85, 6.87, 4.46, 6.50, 6.47, 6.49
		[  7.68] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
			 Triggered 23x, delta times: 7.68, 4.84, 4.87, 4.86, 4.83, 6.48, 6.45, 4.87, 4.85, 4.87, 6.47, 6.48, 6.47, 4.84, 4.85, 5.27, 6.06, 4.85, 6.87, 4.46, 6.50, 6.47, 6.49
		[  9.42] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
			 Triggered 23x, delta times: 9.42, 6.04, 2.40, 6.64, 5.04, 7.11, 4.61, 5.25, 3.42, 6.06, 5.18, 7.03, 7.45, 6.01, 2.17, 5.15, 6.41, 6.02, 6.75, 4.24, 8.41, 4.50, 7.14
	Counterspell, time=15.00, type=cd, spellId=19715, triggerDeltas = 0.00, 10.91, 12.95, 8.86, 12.16, 9.72, 11.34, 12.92, 10.12, 10.91, 9.72, 9.73, 11.34
		[  0.00] ENCOUNTER_START: 667, Shazzrah, 226, 20, 0
		[ 10.91] SPELL_CAST_SUCCESS: [Shazzrah: Counterspell] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 19715, Counterspell, 0, 0
			 Triggered 12x, delta times: 10.91, 12.95, 8.86, 12.16, 9.72, 11.34, 12.92, 10.12, 10.91, 9.72, 9.73, 11.34
	Gate of Shazzrah, time=41.30, type=cd, spellId=23138, triggerDeltas = 0.00, 27.09, 30.75, 29.11, 24.27
		[  0.00] ENCOUNTER_START: 667, Shazzrah, 226, 20, 0
		[ 27.09] SPELL_CAST_SUCCESS: [Shazzrah: Gate of Shazzrah] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 23138, Gate of Shazzrah, 0, 0
			 Triggered 4x, delta times: 27.09, 30.75, 29.11, 24.27
	Reflect Magic, time=22.60, type=cd, spellId=460856, triggerDeltas = 0.00
		[  0.00] ENCOUNTER_START: 667, Shazzrah, 226, 20, 0

Announces:
	Shazzrah's Curse, type=spell, spellId=19713, triggerDeltas = 9.32, 19.40, 21.01, 17.82, 20.05, 19.16, 20.67
		[  9.32] SPELL_CAST_SUCCESS: [Shazzrah: Shazzrah's Curse] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 19713, Shazzrah's Curse, 0, 0
			 Triggered 7x, delta times: 9.32, 19.40, 21.01, 17.82, 20.05, 19.16, 20.67
	Deaden Magic on >%s<, type=target, spellId=19714, triggerDeltas = 7.68, 4.84, 4.87, 4.86, 4.83, 6.48, 6.45, 4.87, 4.85, 4.87, 6.47, 6.48, 6.47, 4.84, 4.85, 5.27, 6.06, 4.85, 6.87, 4.46, 6.50, 6.47, 6.49
		[  7.68] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
			 Triggered 23x, delta times: 7.68, 4.84, 4.87, 4.86, 4.83, 6.48, 6.45, 4.87, 4.85, 4.87, 6.47, 6.48, 6.47, 4.84, 4.85, 5.27, 6.06, 4.85, 6.87, 4.46, 6.50, 6.47, 6.49
	Counterspell, type=spell, spellId=19715, triggerDeltas = 10.91, 12.95, 8.86, 12.16, 9.72, 11.34, 12.92, 10.12, 10.91, 9.72, 9.73, 11.34
		[ 10.91] SPELL_CAST_SUCCESS: [Shazzrah: Counterspell] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 19715, Counterspell, 0, 0
			 Triggered 12x, delta times: 10.91, 12.95, 8.86, 12.16, 9.72, 11.34, 12.92, 10.12, 10.91, 9.72, 9.73, 11.34

Special warnings:
	Gate of Shazzrah on >%s< - taunt now, type=taunt, spellId=23138, triggerDeltas = 27.09, 30.75, 29.11, 24.27
		[ 27.09] SPELL_CAST_SUCCESS: [Shazzrah: Gate of Shazzrah] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 23138, Gate of Shazzrah, 0, 0
			 Triggered 4x, delta times: 27.09, 30.75, 29.11, 24.27

Yells:
	None

Voice pack sounds:
	VoicePack/tauntboss
		[ 27.09] SPELL_CAST_SUCCESS: [Shazzrah: Gate of Shazzrah] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 23138, Gate of Shazzrah, 0, 0
			 Triggered 4x, delta times: 27.09, 30.75, 29.11, 24.27

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 667, Shazzrah, 226, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_START 460856, SPELL_AURA_APPLIED 19714 460856, SPELL_AURA_REMOVED 19714, SPELL_CAST_SUCCESS 19713 19715 23138 461343
		StartTimer: 6.0, Shazzrah's Curse
		StartTimer: 9.6, Counterspell
		StartTimer: 16.1, Reflect Magic
		StartTimer: 22.6, Gate of Shazzrah
	[  7.68] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		ShowAnnounce: Deaden Magic on Shazzrah
		StartTimer: 30.0, Deaden Magic ends
	[  9.32] SPELL_CAST_SUCCESS: [Shazzrah: Shazzrah's Curse] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 19713, Shazzrah's Curse, 0, 0
		ShowAnnounce: Shazzrah's Curse
		StartTimer: 22.0, Shazzrah's Curse
	[  9.42] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		StopTimer: Timer19714active3
	[ 10.91] SPELL_CAST_SUCCESS: [Shazzrah: Counterspell] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 19715, Counterspell, 0, 0
		ShowAnnounce: Counterspell
		StartTimer: 9.6, Counterspell
	[ 12.52] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		ShowAnnounce: Deaden Magic on Shazzrah
		StartTimer: 30.0, Deaden Magic ends
	[ 15.46] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		StopTimer: Timer19714active3
	[ 17.39] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		ShowAnnounce: Deaden Magic on Shazzrah
		StartTimer: 30.0, Deaden Magic ends
	[ 17.86] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		StopTimer: Timer19714active3
	[ 22.25] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		ShowAnnounce: Deaden Magic on Shazzrah
		StartTimer: 30.0, Deaden Magic ends
	[ 23.86] SPELL_CAST_SUCCESS: [Shazzrah: Counterspell] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 19715, Counterspell, 0, 0
		ShowAnnounce: Counterspell
		StartTimer: 9.6, Counterspell
	[ 24.50] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		StopTimer: Timer19714active3
	[ 27.08] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		ShowAnnounce: Deaden Magic on Shazzrah
		StartTimer: 30.0, Deaden Magic ends
	[ 27.09] SPELL_CAST_SUCCESS: [Shazzrah: Gate of Shazzrah] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 23138, Gate of Shazzrah, 0, 0
		ShowSpecialWarning: Gate of Shazzrah on Shazzrah - taunt now
		PlaySound: VoicePack/tauntboss
		StartTimer: 25.8, Gate of Shazzrah
	[ 28.72] SPELL_CAST_SUCCESS: [Shazzrah: Shazzrah's Curse] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 19713, Shazzrah's Curse, 0, 0
		ShowAnnounce: Shazzrah's Curse
		StartTimer: 22.0, Shazzrah's Curse
	[ 29.54] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		StopTimer: Timer19714active3
	[ 32.72] SPELL_CAST_SUCCESS: [Shazzrah: Counterspell] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 19715, Counterspell, 0, 0
		ShowAnnounce: Counterspell
		StartTimer: 9.6, Counterspell
	[ 33.56] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		ShowAnnounce: Deaden Magic on Shazzrah
		StartTimer: 30.0, Deaden Magic ends
	[ 36.65] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		StopTimer: Timer19714active3
	[ 40.01] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		ShowAnnounce: Deaden Magic on Shazzrah
		StartTimer: 30.0, Deaden Magic ends
	[ 41.26] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		StopTimer: Timer19714active3
	[ 44.88] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		ShowAnnounce: Deaden Magic on Shazzrah
		StartTimer: 30.0, Deaden Magic ends
	[ 44.88] SPELL_CAST_SUCCESS: [Shazzrah: Counterspell] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 19715, Counterspell, 0, 0
		ShowAnnounce: Counterspell
		StartTimer: 9.6, Counterspell
	[ 46.51] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		StopTimer: Timer19714active3
	[ 49.73] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		ShowAnnounce: Deaden Magic on Shazzrah
		StartTimer: 30.0, Deaden Magic ends
	[ 49.73] SPELL_CAST_SUCCESS: [Shazzrah: Shazzrah's Curse] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 19713, Shazzrah's Curse, 0, 0
		ShowAnnounce: Shazzrah's Curse
		StartTimer: 22.0, Shazzrah's Curse
	[ 49.93] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		StopTimer: Timer19714active3
	[ 54.60] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		ShowAnnounce: Deaden Magic on Shazzrah
		StartTimer: 30.0, Deaden Magic ends
	[ 54.60] SPELL_CAST_SUCCESS: [Shazzrah: Counterspell] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 19715, Counterspell, 0, 0
		ShowAnnounce: Counterspell
		StartTimer: 9.6, Counterspell
	[ 55.99] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		StopTimer: Timer19714active3
	[ 57.84] SPELL_CAST_SUCCESS: [Shazzrah: Gate of Shazzrah] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 23138, Gate of Shazzrah, 0, 0
		ShowSpecialWarning: Gate of Shazzrah on Shazzrah - taunt now
		PlaySound: VoicePack/tauntboss
		StartTimer: 25.8, Gate of Shazzrah
	[ 61.07] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		ShowAnnounce: Deaden Magic on Shazzrah
		StartTimer: 30.0, Deaden Magic ends
	[ 61.17] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		StopTimer: Timer19714active3
	[ 65.94] SPELL_CAST_SUCCESS: [Shazzrah: Counterspell] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 19715, Counterspell, 0, 0
		ShowAnnounce: Counterspell
		StartTimer: 9.6, Counterspell
	[ 67.55] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		ShowAnnounce: Deaden Magic on Shazzrah
		StartTimer: 30.0, Deaden Magic ends
	[ 67.55] SPELL_CAST_SUCCESS: [Shazzrah: Shazzrah's Curse] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 19713, Shazzrah's Curse, 0, 0
		ShowAnnounce: Shazzrah's Curse
		StartTimer: 22.0, Shazzrah's Curse
	[ 68.20] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		StopTimer: Timer19714active3
	[ 74.02] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		ShowAnnounce: Deaden Magic on Shazzrah
		StartTimer: 30.0, Deaden Magic ends
	[ 75.65] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		StopTimer: Timer19714active3
	[ 78.86] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		ShowAnnounce: Deaden Magic on Shazzrah
		StartTimer: 30.0, Deaden Magic ends
	[ 78.86] SPELL_CAST_SUCCESS: [Shazzrah: Counterspell] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 19715, Counterspell, 0, 0
		ShowAnnounce: Counterspell
		StartTimer: 9.6, Counterspell
	[ 81.66] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		StopTimer: Timer19714active3
	[ 83.71] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		ShowAnnounce: Deaden Magic on Shazzrah
		StartTimer: 30.0, Deaden Magic ends
	[ 83.83] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		StopTimer: Timer19714active3
	[ 86.95] SPELL_CAST_SUCCESS: [Shazzrah: Gate of Shazzrah] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 23138, Gate of Shazzrah, 0, 0
		ShowSpecialWarning: Gate of Shazzrah on Shazzrah - taunt now
		PlaySound: VoicePack/tauntboss
		StartTimer: 25.8, Gate of Shazzrah
	[ 87.60] SPELL_CAST_SUCCESS: [Shazzrah: Shazzrah's Curse] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 19713, Shazzrah's Curse, 0, 0
		ShowAnnounce: Shazzrah's Curse
		StartTimer: 22.0, Shazzrah's Curse
	[ 88.98] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		ShowAnnounce: Deaden Magic on Shazzrah
		StartTimer: 30.0, Deaden Magic ends
	[ 88.98] SPELL_CAST_SUCCESS: [Shazzrah: Counterspell] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 19715, Counterspell, 0, 0
		ShowAnnounce: Counterspell
		StartTimer: 9.6, Counterspell
	[ 88.98] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		StopTimer: Timer19714active3
	[ 95.04] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		ShowAnnounce: Deaden Magic on Shazzrah
		StartTimer: 30.0, Deaden Magic ends
	[ 95.39] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		StopTimer: Timer19714active3
	[ 99.89] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		ShowAnnounce: Deaden Magic on Shazzrah
		StartTimer: 30.0, Deaden Magic ends
	[ 99.89] SPELL_CAST_SUCCESS: [Shazzrah: Counterspell] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 19715, Counterspell, 0, 0
		ShowAnnounce: Counterspell
		StartTimer: 9.6, Counterspell
	[101.41] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		StopTimer: Timer19714active3
	[106.76] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		ShowAnnounce: Deaden Magic on Shazzrah
		StartTimer: 30.0, Deaden Magic ends
	[106.76] SPELL_CAST_SUCCESS: [Shazzrah: Shazzrah's Curse] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 19713, Shazzrah's Curse, 0, 0
		ShowAnnounce: Shazzrah's Curse
		StartTimer: 22.0, Shazzrah's Curse
	[108.16] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		StopTimer: Timer19714active3
	[109.61] SPELL_CAST_SUCCESS: [Shazzrah: Counterspell] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 19715, Counterspell, 0, 0
		ShowAnnounce: Counterspell
		StartTimer: 9.6, Counterspell
	[111.22] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		ShowAnnounce: Deaden Magic on Shazzrah
		StartTimer: 30.0, Deaden Magic ends
	[111.22] SPELL_CAST_SUCCESS: [Shazzrah: Gate of Shazzrah] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 23138, Gate of Shazzrah, 0, 0
		ShowSpecialWarning: Gate of Shazzrah on Shazzrah - taunt now
		PlaySound: VoicePack/tauntboss
		StartTimer: 25.8, Gate of Shazzrah
	[112.40] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		StopTimer: Timer19714active3
	[117.72] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		ShowAnnounce: Deaden Magic on Shazzrah
		StartTimer: 30.0, Deaden Magic ends
	[119.34] SPELL_CAST_SUCCESS: [Shazzrah: Counterspell] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 19715, Counterspell, 0, 0
		ShowAnnounce: Counterspell
		StartTimer: 9.6, Counterspell
	[120.81] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		StopTimer: Timer19714active3
	[124.19] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		ShowAnnounce: Deaden Magic on Shazzrah
		StartTimer: 30.0, Deaden Magic ends
	[125.31] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		StopTimer: Timer19714active3
	[127.43] SPELL_CAST_SUCCESS: [Shazzrah: Shazzrah's Curse] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 19713, Shazzrah's Curse, 0, 0
		ShowAnnounce: Shazzrah's Curse
		StartTimer: 22.0, Shazzrah's Curse
	[130.68] SPELL_AURA_APPLIED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		ShowAnnounce: Deaden Magic on Shazzrah
		StartTimer: 30.0, Deaden Magic ends
	[130.68] SPELL_CAST_SUCCESS: [Shazzrah: Counterspell] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, "", nil, 0x0, 19715, Counterspell, 0, 0
		ShowAnnounce: Counterspell
		StartTimer: 9.6, Counterspell
	[132.45] SPELL_AURA_REMOVED: [Shazzrah->Shazzrah: Deaden Magic] Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, Creature-0-1-409-1-228434-0000000001, Shazzrah, 0xa48, 19714, Deaden Magic, 0, BUFF, 0
		StopTimer: Timer19714active3
	[134.23] ENCOUNTER_END: 667, Shazzrah, 226, 20, 1, 0
		EndCombat: ENCOUNTER_END
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 19714
]]
