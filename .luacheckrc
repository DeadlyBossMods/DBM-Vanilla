std = "lua51"
max_line_length = false
exclude_files = {
	".luacheckrc"
}
ignore = {
	"211", -- Unused local variable
	"211/L", -- Unused local variable "L"
	"211/CL", -- Unused local variable "CL"
	"212", -- Unused argument
	"213", -- Unused loop variable
	"231/_.*", -- unused variables starting with _
	"311", -- Value assigned to a local variable is unused
	"43.", -- Shadowing an upvalue, an upvalue argument, an upvalue loop variable.
	"542", -- An empty if branch
}
globals = {
	-- DBM
	"DBM",
	"DBM_CORE_L",
	"DBM_COMMON_L",
	"DBT",

	-- Lua
	"bit.band",
	"table.wipe",

	-- Util functions
	"tContains",
	"tDeleteItem",

	-- WoW
	"BOSS",
	"COMBATLOG_OBJECT_TYPE_PLAYER",
	"LOCALIZED_CLASS_NAMES_MALE",
	"RAID_CLASS_COLORS",
	"SHIELDSLOT",
	"WOW_PROJECT_ID",
	"WOW_PROJECT_MAINLINE",

	"C_GossipInfo.GetOptions",
	"C_UIWidgetManager.GetIconAndTextWidgetVisualizationInfo",
	"CreateFrame",
	"GetLocale",
	"GetRaidRosterInfo",
	"GetRealZoneText",
	"GetServerTime",
	"GetTime",
	"GetQuestLogTitle",
	"GetGossipOptions"
	"IsInGroup",
	"UIDropDownMenu_AddButton",
	"UIDropDownMenu_CreateInfo",
	"UnitCastingInfo",
	"UnitClass",
	"UnitExists",
	"UnitFactionGroup",
	"UnitGetTotalAbsorbs",
	"UnitGUID",
	"UnitHealth",
	"UnitHealthMax",
	"UnitIsDeadOrGhost",
	"UnitIsGroupLeader",
	"UnitName",
}
