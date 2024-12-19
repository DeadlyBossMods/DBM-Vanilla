DBM.Test:Report[[
Test: SoD/AQ20/Trash
Mod:  DBM-Raids-Vanilla/AQ20Trash

Findings:
	Unused event registration: NAME_PLATE_UNIT_ADDED
	Unused event registration: PLAYER_TARGET_CHANGED
	Unused event registration: SPELL_AURA_APPLIED 1215202 (Noxious Burst)
	Unused event registration: SPELL_AURA_APPLIED 1215421 (Toxic Pool)
	Unused event registration: SPELL_AURA_APPLIED 26079 (Cause Insanity)
	Unused event registration: SPELL_AURA_APPLIED 2855 (Detect Magic)
	Unused event registration: SPELL_AURA_REMOVED 22997 (Plague)
	Unused event registration: SPELL_CAST_SUCCESS 26586 (Birth)
	Unused event registration: SPELL_DAMAGE 25779 (Mana Burn)
	Unused event registration: SPELL_DAMAGE 26546 (Shadow Storm)
	Unused event registration: SPELL_DAMAGE 26554 (Thunderclap)
	Unused event registration: SPELL_DAMAGE 26558 (Meteor)
	Unused event registration: SPELL_MISSED
	Unused event registration: SPELL_PERIODIC_DAMAGE 1215421 (Toxic Pool)

Unused objects:
	[Announce] Single exploding ghost spawned - dodge, type=nil, spellId=<none>
	[Announce] Cause Insanity on >%s<, type=target, spellId=26079
	[Special Warning] Exploding ghosts - dodge, type=nil, spellId=<none>
	[Special Warning] Fire and Arcane Reflect on >%s< - stop attacking, type=reflect, spellId=13022
	[Special Warning] Shadow and Frost Reflect on >%s< - stop attacking, type=reflect, spellId=19595
	[Special Warning] Plague - move away from others, type=moveaway, spellId=22997
	[Special Warning] %s damage - move away, type=gtfo, spellId=1215421
	[Timer] Exploding Ghosts, time=30.00, type=cd, spellId=<none>
	[Yell] Plague on PlayerName, type=yell, spellId=22997
	[Yell] {rt%1$d}{rt%1$d}{rt%1$d}, type=icontarget, spellId=1215202

Timers:
	Noxious Burst, time=30.00, type=next, spellId=1215202, triggerDeltas = 0.00, 0.00, 0.00, 0.00, 0.00
		Unknown trigger

Announces:
	Summon Anubisath Swarmguard, type=spell, spellId=17430, triggerDeltas = 113.59, 14.55, 53.48, 9.70, 16.17
		[113.59] SPELL_SUMMON: [Anubisath Guardian->Anubisath Swarmguard: Summon Anubisath Swarmguard] Creature-0-1-509-1-15355-0000000134, Anubisath Guardian, 0xa48, Creature-0-1-509-1-15538-0000000032, Anubisath Swarmguard, 0xa48, 17430, Summon Anubisath Swarmguard, 0, 0
			 Triggered 5x, delta times: 113.59, 14.55, 53.48, 9.70, 16.17
	Summon Anubisath Warrior, type=spell, spellId=17431, triggerDeltas = 26.09, 53.46
		[ 26.09] SPELL_SUMMON: [Anubisath Guardian->Anubisath Warrior: Summon Anubisath Warrior] Creature-0-1-509-1-15355-00000001A4, Anubisath Guardian, 0xa48, Creature-0-1-509-1-15537-000000000A, Anubisath Warrior, 0xa48, 17431, Summon Anubisath Warrior, 0, 0
			 Triggered 2x, delta times: 26.09, 53.46
	Plague on >%s<, type=target, spellId=22997, triggerDeltas = 30.44
		[ 30.44] SPELL_AURA_APPLIED: [Anubisath Guardian->Dps6: Plague] Creature-0-1-509-1-15355-00000001A4, Anubisath Guardian, 0xa48, Player-1-00000009, Dps6, 0x512, 22997, Plague, 0, DEBUFF, 0

Special warnings:
	Explode - run away, type=run, spellId=25698, triggerDeltas = 134.13
		[134.13] SPELL_AURA_APPLIED: [Anubisath Guardian->Anubisath Guardian: Explode] Creature-0-1-509-1-15355-0000000134, Anubisath Guardian, 0xa48, Creature-0-1-509-1-15355-0000000134, Anubisath Guardian, 0xa48, 25698, Explode, 0, BUFF, 0
	Noxious Burst - dodge attack, type=dodge, spellId=1215202, triggerDeltas = 0.00, 0.00, 0.00, 0.00, 0.00
		Unknown trigger

Yells:
	None

Voice pack sounds:
	VoicePack/justrun
		[134.13] SPELL_AURA_APPLIED: [Anubisath Guardian->Anubisath Guardian: Explode] Creature-0-1-509-1-15355-0000000134, Anubisath Guardian, 0xa48, Creature-0-1-509-1-15355-0000000134, Anubisath Guardian, 0xa48, 25698, Explode, 0, BUFF, 0
	VoicePack/scatter
		Unknown trigger

Icons:
	None

Event trace:
	[  0.00] ADDON_LOADED: DBM-Raids-Vanilla, 0
		RegisterEvents: Regular, SPELL_AURA_APPLIED 22997 25698 26079 1215202 1215421 2855, SPELL_PERIODIC_DAMAGE 1215421, SPELL_CAST_SUCCESS 26586, SPELL_AURA_REMOVED 22997, SPELL_SUMMON 17430 17431, SPELL_MISSED, UNIT_DIED, SPELL_DAMAGE 14297 24340 8732 26546 26558 26554 25779, PLAYER_TARGET_CHANGED, NAME_PLATE_UNIT_ADDED
	[ 11.51] SPELL_DAMAGE: [Anubisath Guardian->Dps2: Shadow Storm] Creature-0-1-509-1-15355-00000001A4, Anubisath Guardian, 0xa48, Player-1-00000002, Dps2, 0x512, 14297, Shadow Storm, 0, 0
		ModTrace: DetectAbility, Creature-0-1-509-1-15355-00000001A4, Anubisath Guardian, ShadowStorm
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
	[ 26.09] SPELL_SUMMON: [Anubisath Guardian->Anubisath Warrior: Summon Anubisath Warrior] Creature-0-1-509-1-15355-00000001A4, Anubisath Guardian, 0xa48, Creature-0-1-509-1-15537-000000000A, Anubisath Warrior, 0xa48, 17431, Summon Anubisath Warrior, 0, 0
		ShowAnnounce: Summon Anubisath Warrior
		ModTrace: DetectAbility, Creature-0-1-509-1-15355-00000001A4, Anubisath Guardian, Summon2
	[ 30.44] SPELL_AURA_APPLIED: [Anubisath Guardian->Dps6: Plague] Creature-0-1-509-1-15355-00000001A4, Anubisath Guardian, 0xa48, Player-1-00000009, Dps6, 0x512, 22997, Plague, 0, DEBUFF, 0
		ShowAnnounce: Plague on Dps6
		ModTrace: DetectAbility, Creature-0-1-509-1-15355-00000001A4, Anubisath Guardian, Plague
	[ 36.45] UNIT_DIED: [->Anubisath Guardian] "", nil, 0x0, Creature-0-1-509-1-15355-00000001A4, Anubisath Guardian, 0xa48, -1, false, 0, 0
		ModTrace: StopTracking, Creature-0-1-509-1-15355-00000001A4
	[ 70.66] SPELL_DAMAGE: [Anubisath Guardian->Dps1: Shadow Storm] Creature-0-1-509-1-15355-00000000FD, Anubisath Guardian, 0xa48, Player-1-00000001, Dps1, 0x512, 14297, Shadow Storm, 0, 0
		ModTrace: DetectAbility, Creature-0-1-509-1-15355-00000000FD, Anubisath Guardian, ShadowStorm
	[ 79.55] SPELL_SUMMON: [Anubisath Guardian->Anubisath Warrior: Summon Anubisath Warrior] Creature-0-1-509-1-15355-00000000FD, Anubisath Guardian, 0xa48, Creature-0-1-509-1-15537-0000000022, Anubisath Warrior, 0xa48, 17431, Summon Anubisath Warrior, 0, 0
		ShowAnnounce: Summon Anubisath Warrior
		ModTrace: DetectAbility, Creature-0-1-509-1-15355-00000000FD, Anubisath Guardian, Summon2
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
	[ 84.69] UNIT_DIED: [->Anubisath Guardian] "", nil, 0x0, Creature-0-1-509-1-15355-00000000FD, Anubisath Guardian, 0xa48, -1, false, 0, 0
		ModTrace: StopTracking, Creature-0-1-509-1-15355-00000000FD
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
	[113.59] SPELL_SUMMON: [Anubisath Guardian->Anubisath Swarmguard: Summon Anubisath Swarmguard] Creature-0-1-509-1-15355-0000000134, Anubisath Guardian, 0xa48, Creature-0-1-509-1-15538-0000000032, Anubisath Swarmguard, 0xa48, 17430, Summon Anubisath Swarmguard, 0, 0
		ShowAnnounce: Summon Anubisath Swarmguard
		ModTrace: DetectAbility, Creature-0-1-509-1-15355-0000000134, Anubisath Guardian, Summon1
	[116.33] SPELL_DAMAGE: [Anubisath Guardian: Meteor] Creature-0-1-509-1-15355-0000000134, Anubisath Guardian, 0xa48, "", nil, 0x0, 24340, Meteor, 0, 0
		ModTrace: DetectAbility, Creature-0-1-509-1-15355-0000000134, Anubisath Guardian, Meteor
	[117.95] SPELL_DAMAGE: [Anubisath Guardian: Thunderclap] Creature-0-1-509-1-15355-0000000134, Anubisath Guardian, 0xa48, "", nil, 0x0, 8732, Thunderclap, 0, 0
		ModTrace: DetectAbility, Creature-0-1-509-1-15355-0000000134, Anubisath Guardian, Thunderclap
	[128.14] SPELL_SUMMON: [Anubisath Guardian->Anubisath Swarmguard: Summon Anubisath Swarmguard] Creature-0-1-509-1-15355-0000000134, Anubisath Guardian, 0xa48, Creature-0-1-509-1-15538-0000000039, Anubisath Swarmguard, 0xa48, 17430, Summon Anubisath Swarmguard, 0, 0
		ShowAnnounce: Summon Anubisath Swarmguard
	[134.13] SPELL_AURA_APPLIED: [Anubisath Guardian->Anubisath Guardian: Explode] Creature-0-1-509-1-15355-0000000134, Anubisath Guardian, 0xa48, Creature-0-1-509-1-15355-0000000134, Anubisath Guardian, 0xa48, 25698, Explode, 0, BUFF, 0
		ShowSpecialWarning: Explode - run away
		PlaySound: VoicePack/justrun
	[137.41] UNIT_DIED: [->Anubisath Guardian] "", nil, 0x0, Creature-0-1-509-1-15355-0000000134, Anubisath Guardian, 0xa48, -1, false, 0, 0
		ModTrace: StopTracking, Creature-0-1-509-1-15355-0000000134
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
	[172.69] SPELL_DAMAGE: [Anubisath Guardian: Thunderclap] Creature-0-1-509-1-15355-0000000187, Anubisath Guardian, 0xa48, "", nil, 0x0, 8732, Thunderclap, 0, 0
		ModTrace: DetectAbility, Creature-0-1-509-1-15355-0000000187, Anubisath Guardian, Thunderclap
	[176.26] SPELL_DAMAGE: [Anubisath Guardian->Healer2: Meteor] Creature-0-1-509-1-15355-0000000187, Anubisath Guardian, 0xa48, Player-1-00000011, Healer2, 0x512, 24340, Meteor, 0, 0
		ModTrace: DetectAbility, Creature-0-1-509-1-15355-0000000187, Anubisath Guardian, Meteor
	[181.62] SPELL_SUMMON: [Anubisath Guardian->Anubisath Swarmguard: Summon Anubisath Swarmguard] Creature-0-1-509-1-15355-0000000187, Anubisath Guardian, 0xa48, Creature-0-1-509-1-15538-0000000049, Anubisath Swarmguard, 0xa48, 17430, Summon Anubisath Swarmguard, 0, 0
		ShowAnnounce: Summon Anubisath Swarmguard
		ModTrace: DetectAbility, Creature-0-1-509-1-15355-0000000187, Anubisath Guardian, Summon1
	[191.32] SPELL_SUMMON: [Anubisath Guardian->Anubisath Swarmguard: Summon Anubisath Swarmguard] Creature-0-1-509-1-15355-0000000187, Anubisath Guardian, 0xa48, Creature-0-1-509-1-15538-000000004E, Anubisath Swarmguard, 0xa48, 17430, Summon Anubisath Swarmguard, 0, 0
		ShowAnnounce: Summon Anubisath Swarmguard
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
	[207.49] SPELL_SUMMON: [Anubisath Guardian->Anubisath Swarmguard: Summon Anubisath Swarmguard] Creature-0-1-509-1-15355-0000000187, Anubisath Guardian, 0xa48, Creature-0-1-509-1-15538-0000000059, Anubisath Swarmguard, 0xa48, 17430, Summon Anubisath Swarmguard, 0, 0
		ShowAnnounce: Summon Anubisath Swarmguard
	[210.44] UNIT_DIED: [->Anubisath Guardian] "", nil, 0x0, Creature-0-1-509-1-15355-0000000187, Anubisath Guardian, 0xa48, -1, false, 0, 0
		ModTrace: StopTracking, Creature-0-1-509-1-15355-0000000187
	[237.80] SPELL_DAMAGE: [Anubisath Guardian->Healer1: Thunderclap] Creature-0-1-509-1-15355-0000000001, Anubisath Guardian, 0xa48, Player-1-00000007, Healer1, 0x511, 8732, Thunderclap, 0, 0
		ModTrace: DetectAbility, Creature-0-1-509-1-15355-0000000001, Anubisath Guardian, Thunderclap
	[245.92] SPELL_DAMAGE: [Anubisath Guardian->Healer1: Thunderclap] Creature-0-1-509-1-15355-00000000C2, Anubisath Guardian, 0xa48, Player-1-00000007, Healer1, 0x511, 8732, Thunderclap, 0, 0
		ModTrace: DetectAbility, Creature-0-1-509-1-15355-00000000C2, Anubisath Guardian, Thunderclap
]]
