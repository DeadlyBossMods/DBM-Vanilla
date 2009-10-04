local Murmur = DBM:NewBossMod("Murmur", DBM_MURMUR_NAME, DBM_MURMUR_DESCRIPTION, DBM_LABYRINTH, DBM_AUCH_TAB, 12);

Murmur.Version	= "1.1";
Murmur.Author	= "Arta";

Murmur:RegisterCombat("COMBAT");

Murmur:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"CHAT_MSG_MONSTER_EMOTE"
);

Murmur:AddOption("IconTouch", true, DBM_MURMUR_OPTION_TOUCH_ICON)
Murmur:AddOption("WarnTouch", true, DBM_MURMUR_OPTION_TOUCH)
Murmur:AddOption("WhisperTouch", true, DBM_MURMUR_OPTION_WHISPER_TOUCH)
Murmur:AddOption("WarnBoom", true, DBM_MURMUR_OPTION_BOOM)

function Murmur:OnEvent(event, args)
	if event == "SPELL_AURA_APPLIED" then
		if args.spellId == 33711 and args.destName then
			self:SendSync("Touch"..tostring(args.destName))
		end
	elseif event == "CHAT_MSG_MONSTER_EMOTE" then
		if args == DBM_MURMUR_CHECK_BOOM then
			self:SendSync("Boom")
		end
	end
end

function Murmur:OnSync(msg)
	if msg:sub(0,5) == "Touch" then
		target = msg:sub(6)
		if self.Options.IconTouch then
			self:SetIcon(target);
		end
		if self.Option.WarnTouch then
			self:Announce(DBM_MURMUR_WARN_TOUCH:format(target), 4)
		end
		if self.Options.WhisperTouch then
			self:SendHiddenWhisper(DBM_MURMUR_WHISPER_TOUCH, target);
		end
	elseif msg == "Boom" and self.Options.WarnBoom then
		self:Announce(SBM_MURMUR_WARN_BOOM, 4)
	end
end