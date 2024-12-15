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
	Unused event registration: SPELL_MISSED
	Unused event registration: SPELL_PERIODIC_DAMAGE 1215421 (Toxic Pool)
	Unused event registration: UNIT_DIED

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
		RegisterEvents: Regular, SPELL_AURA_APPLIED 22997 25698 26079 1215202 1215421 2855, SPELL_PERIODIC_DAMAGE 1215421, SPELL_CAST_SUCCESS 26586, SPELL_AURA_REMOVED 22997, SPELL_MISSED, UNIT_DIED, PLAYER_TARGET_CHANGED, NAME_PLATE_UNIT_ADDED
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
	[ 30.44] SPELL_AURA_APPLIED: [Anubisath Guardian->Dps6: Plague] Creature-0-1-509-1-15355-00000001A4, Anubisath Guardian, 0xa48, Player-1-00000009, Dps6, 0x512, 22997, Plague, 0, DEBUFF, 0
		ShowAnnounce: Plague on Dps6
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
	[134.13] SPELL_AURA_APPLIED: [Anubisath Guardian->Anubisath Guardian: Explode] Creature-0-1-509-1-15355-0000000134, Anubisath Guardian, 0xa48, Creature-0-1-509-1-15355-0000000134, Anubisath Guardian, 0xa48, 25698, Explode, 0, BUFF, 0
		ShowSpecialWarning: Explode - run away
		PlaySound: VoicePack/justrun
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
]]
