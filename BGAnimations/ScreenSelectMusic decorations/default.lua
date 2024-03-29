local t = LoadFallbackB();

t[#t+1] = StandardDecorationFromFileOptional("BannerFrame","banner frame");
t[#t+1] = StandardDecorationFromFileOptional("BPMDisplay","BPMDisplay");
t[#t+1] = StandardDecorationFromFileOptional("TotalTime","TotalTime");
t[#t+1] = StandardDecorationFromFileOptional("DifficultyList","DifficultyList");
--[[
t[#t+1] = StandardDecorationFromFileOptional("StepsDisplayP1","StepsDisplayP1");
t[#t+1] = StandardDecorationFromFileOptional("StepsDisplayP2","StepsDisplayP2");
t[#t+1] = StandardDecorationFromFileOptional("SongData","SongData");
]]
t[#t+1] = StandardDecorationFromFileOptional("CourseContents","CourseContents");

for pn in ivalues(PlayerNumber) do
	local MetricsName = "DifficultyIcon"..PlayerNumberToString(pn);
	t[#t+1] = LoadActor(THEME:GetPathG("ScreenSelectMusic","DifficultyIcon"),pn)..{
		Name=MetricsName;
		InitCommand=function(self)
			self:player(pn);
			ActorUtil.LoadAllCommandsAndSetXY(self,Var "LoadingScreen")
		end;
		PlayerJoinedMessageCommand=function(self, params)
			if params.Player == pn then self:visible(true) end;
		end;
		PlayerUnjoinedMessageCommand=function(self, params)
			if params.Player == pn then self:visible(false) end;
		end;
	};
end;

return t
