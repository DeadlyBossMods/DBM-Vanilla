local Ironhand = DBM:NewBossMod("Ironhand", DBM_IRONHAND_NAME, DBM_IRONHAND_DESCRIPTION, DBM_MECHANAR, DBM_TK_TAB, 0);

Ironhand.Version	= "1.0";
Ironhand.Author	= "Arta";

Ironhand:RegisterCombat("COMBAT");

Ironhand:AddOption("WarnShadow", true, DBM_IRONHAND_OPTION_SHADOW)
Ironhand:AddOption("WarnHammer", true, DBM_IRONHAND_OPTION_HAMMER)
Ironhand:AddBarOption("Shadow Power")

Ironhand:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED",
	"CHAT_MSG_RAID_BOSS_EMOTE"
);

function Ironhand:OnEvent(event, args)
	if event == "SPELL_CAST_START" then
		if args.spellId == 39193 then
			self:SendSync("Shadow")
		end
	elseif event == "SPELL_AURA_APPLIED" then
		if args.spellId == 39193 then
			self:SendSync("ShadowApplied")
		end
	elseif event == "SPELL_AURA_REMOVED" then
		if args.spellId == 39193 then
			self:SendSync("ShadowRemoved")
		end
	elseif event == "CHAT_MSG_RAID_BOSS_EMOTE" then
		if args == DBM_IRONHAND_CHECK_HAMMER then
			self:SendSync("Hammer")
		end
	end
end

function Ironhand:OnSync(msg)
	if msg == "Shadow" and self.Options.WarnShadow then
		self:Announce(DBM_IRONHAND_WARN_SHADOW, 3)
	elseif msg == "ShadowApplied" and self.Options.WarnShadow then
		self:Announce(DBM_IRONHAND_WARN_SHADOWAURA, 3)
		self:StartStatusBarTimer(15, "Shadow Power", 39193)
	elseif msg == "ShadowRemoved" then
		self:EndStatusBarTimer("Shadow Power")
	elseif msg == "Hammer" and self.Options.WarnHammer then
		self:Announce(DBM_IRONHAND_WARN_HAMMER, 3)
	end
end