DBM.Test:Report[[
Test: SoD/AQ40/Trash/Sentinels
Mod:  DBM-Raids-Vanilla/AQ40Trash

Findings:
	Unused event registration: ENCOUNTER_END
	Unused event registration: NAME_PLATE_UNIT_ADDED
	Unused event registration: PLAYER_TARGET_CHANGED
	Unused event registration: SPELL_AURA_APPLIED 1215202 (Noxious Burst)
	Unused event registration: SPELL_AURA_APPLIED 1215421 (Toxic Pool)
	Unused event registration: SPELL_AURA_APPLIED 24573 (Mortal Strike)
	Unused event registration: SPELL_AURA_APPLIED 25698 (Explode)
	Unused event registration: SPELL_AURA_APPLIED 26079 (Cause Insanity)
	Unused event registration: SPELL_AURA_APPLIED 26556 (Plague)
	Unused event registration: SPELL_AURA_APPLIED 2855 (Detect Magic)
	Unused event registration: SPELL_AURA_REMOVED 26556 (Plague)
	Unused event registration: SPELL_CAST_START 26069 (Silence)
	Unused event registration: SPELL_CAST_START 26070 (Fear)
	Unused event registration: SPELL_CAST_START 26071 (Entangling Roots)
	Unused event registration: SPELL_CAST_START 26072 (Dust Cloud)
	Unused event registration: SPELL_CAST_SUCCESS 26073 (Fire Nova)
	Unused event registration: SPELL_CAST_SUCCESS 26586 (Birth)
	Unused event registration: SPELL_DAMAGE 24340 (Meteor)
	Unused event registration: SPELL_DAMAGE 26554 (Thunderclap)
	Unused event registration: SPELL_DAMAGE 26555 (Shadow Storm)
	Unused event registration: SPELL_DAMAGE 26558 (Meteor)
	Unused event registration: SPELL_MISSED
	Unused event registration: SPELL_PERIODIC_DAMAGE 1215421 (Toxic Pool)
	Unused event registration: SPELL_SUMMON 17430 (Summon Anubisath Swarmguard)
	Unused event registration: SPELL_SUMMON 17431 (Summon Anubisath Warrior)

Unused objects:
	[Announce] Single exploding ghost spawned - dodge, type=nil, spellId=<none>
	[Announce] Summon Anubisath Swarmguard, type=spell, spellId=17430
	[Announce] Summon Anubisath Warrior, type=spell, spellId=17431
	[Announce] Cause Insanity on >%s<, type=target, spellId=26079
	[Announce] Plague on >%s<, type=target, spellId=26556
	[Special Warning] Exploding ghosts - dodge, type=nil, spellId=<none>
	[Special Warning] Fire and Arcane Reflect on >%s< - stop attacking, type=reflect, spellId=13022
	[Special Warning] Shadow and Frost Reflect on >%s< - stop attacking, type=reflect, spellId=19595
	[Special Warning] Explode - run away, type=run, spellId=25698
	[Special Warning] Shadow Storm - move to >%s<, type=moveto, spellId=26555
	[Special Warning] Plague - move away from others, type=moveaway, spellId=26556
	[Special Warning] Noxious Burst - dodge attack, type=dodge, spellId=1215202
	[Special Warning] %s damage - move away, type=gtfo, spellId=1215421
	[Timer] Exploding Ghosts, time=30.00, type=cd, spellId=<none>
	[Timer] Noxious Burst, time=30.00, type=next, spellId=1215202
	[Yell] Plague on PlayerName, type=yell, spellId=26556
	[Yell] {rt%1$d}{rt%1$d}{rt%1$d}, type=icontarget, spellId=1215202

Timers:
	None

Announces:
	None

Special warnings:
	None

Yells:
	None

Voice pack sounds:
	None

Icons:
	None

Event trace:
	[  0.00] ADDON_LOADED: DBM-Raids-Vanilla, 0
		RegisterEvents: Regular, ENCOUNTER_END, SPELL_AURA_APPLIED 26556 25698 26079 1215202 1215421 24573 2855, SPELL_AURA_REMOVED 26556, SPELL_CAST_SUCCESS 26586 26073, SPELL_CAST_START 26069 26070 26071 26072, SPELL_DAMAGE 26555 26558 26554 25779 26546 24340 8732, SPELL_PERIODIC_DAMAGE 1215421, SPELL_SUMMON 17430 17431, SPELL_MISSED, UNIT_DIED, PLAYER_TARGET_CHANGED, NAME_PLATE_UNIT_ADDED
	[ 32.07] SPELL_DAMAGE: [Anubisath Sentinel: Thunderclap] Creature-0-1-531-1-15264-0000000216, Anubisath Sentinel, 0xa48, "", nil, 0x0, 8732, Thunderclap, 0, 0
		ModTrace: DetectAbility, Creature-0-1-531-1-15264-0000000216, Anubisath Sentinel, Thunderclap
	[ 35.38] SPELL_DAMAGE: [Anubisath Sentinel->Healer1: Shadow Storm] Creature-0-1-531-1-15264-00000002A6, Anubisath Sentinel, 0xa48, Player-1-00000005, Healer1, 0x512, 26546, Shadow Storm, 0, 0
		ModTrace: DetectAbility, Creature-0-1-531-1-15264-00000002A6, Anubisath Sentinel, ShadowStorm
	[ 67.26] UNIT_DIED: [->Anubisath Sentinel] "", nil, 0x0, Creature-0-1-531-1-15264-00000002A6, Anubisath Sentinel, 0xa48, -1, false, 0, 0
		ModTrace: StopTracking, Creature-0-1-531-1-15264-00000002A6
	[ 77.51] SPELL_DAMAGE: [Anubisath Sentinel->Dps10: Shadow Storm] Creature-0-1-531-1-15264-00000002ED, Anubisath Sentinel, 0xa48, Player-1-00000013, Dps10, 0x512, 26546, Shadow Storm, 0, 0
		ModTrace: DetectAbility, Creature-0-1-531-1-15264-00000002ED, Anubisath Sentinel, ShadowStorm
	[128.84] UNIT_DIED: [->Anubisath Sentinel] "", nil, 0x0, Creature-0-1-531-1-15264-0000000216, Anubisath Sentinel, 0xa48, -1, false, 0, 0
		ModTrace: StopTracking, Creature-0-1-531-1-15264-0000000216
	[135.83] SPELL_DAMAGE: [Anubisath Sentinel: Thunderclap] Creature-0-1-531-1-15264-00000002ED, Anubisath Sentinel, 0xa48, "", nil, 0x0, 8732, Thunderclap, 0, 0
		ModTrace: DetectAbility, Creature-0-1-531-1-15264-00000002ED, Anubisath Sentinel, Thunderclap
	[141.65] UNIT_DIED: [->Anubisath Sentinel] "", nil, 0x0, Creature-0-1-531-1-15264-00000002ED, Anubisath Sentinel, 0xa48, -1, false, 0, 0
		ModTrace: StopTracking, Creature-0-1-531-1-15264-00000002ED
	[211.65] SPELL_DAMAGE: [Anubisath Sentinel: Thunderclap] Creature-0-1-531-1-15264-0000000001, Anubisath Sentinel, 0xa48, "", nil, 0x0, 8732, Thunderclap, 0, 0
		ModTrace: DetectAbility, Creature-0-1-531-1-15264-0000000001, Anubisath Sentinel, Thunderclap
	[215.66] SPELL_DAMAGE: [Anubisath Sentinel: Mana Burn] Creature-0-1-531-1-15264-00000001D1, Anubisath Sentinel, 0xa48, "", nil, 0x0, 25779, Mana Burn, 0, 0
		ModTrace: DetectAbility, Creature-0-1-531-1-15264-00000001D1, Anubisath Sentinel, ManaBurn
	[265.91] UNIT_DIED: [->Anubisath Sentinel] "", nil, 0x0, Creature-0-1-531-1-15264-00000001D1, Anubisath Sentinel, 0xa48, -1, false, 0, 0
		ModTrace: StopTracking, Creature-0-1-531-1-15264-00000001D1
	[276.89] SPELL_DAMAGE: [Anubisath Sentinel: Mana Burn] Creature-0-1-531-1-15264-00000000F6, Anubisath Sentinel, 0xa48, "", nil, 0x0, 25779, Mana Burn, 0, 0
		ModTrace: DetectAbility, Creature-0-1-531-1-15264-00000000F6, Anubisath Sentinel, ManaBurn
	[276.89] SPELL_DAMAGE: [Anubisath Sentinel: Mana Burn] Creature-0-1-531-1-15264-0000000001, Anubisath Sentinel, 0xa48, "", nil, 0x0, 25779, Mana Burn, 0, 0
		ModTrace: DetectAbility, Creature-0-1-531-1-15264-0000000001, Anubisath Sentinel, ManaBurn
	[301.79] UNIT_DIED: [->Anubisath Sentinel] "", nil, 0x0, Creature-0-1-531-1-15264-0000000001, Anubisath Sentinel, 0xa48, -1, false, 0, 0
		ModTrace: StopTracking, Creature-0-1-531-1-15264-0000000001
	[308.79] SPELL_DAMAGE: [Anubisath Sentinel: Thunderclap] Creature-0-1-531-1-15264-00000000F6, Anubisath Sentinel, 0xa48, "", nil, 0x0, 8732, Thunderclap, 0, 0
		ModTrace: DetectAbility, Creature-0-1-531-1-15264-00000000F6, Anubisath Sentinel, Thunderclap
	[309.30] UNIT_DIED: [->Anubisath Sentinel] "", nil, 0x0, Creature-0-1-531-1-15264-00000000F6, Anubisath Sentinel, 0xa48, -1, false, 0, 0
		ModTrace: StopTracking, Creature-0-1-531-1-15264-00000000F6
]]
