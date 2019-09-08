local t = Def.ActorFrame{
	Def.Quad{
		InitCommand=function(self)
			self:FullScreen():diffuse(color("0,0,0,0"))
		end;
		OnCommand=function(self)
			self:linear(.8):diffusealpha(1)
		end;
	};
	LoadActor("streakmania")..{
		InitCommand=function(self)
			self:Center():zoomx(3):diffusealpha(0):blend('BlendMode_Add')
		end;
		OnCommand=function(self)
			self:linear(.4):zoomx(2):diffusealpha(1):linear(.4):zoomx(1):diffusealpha(0)
		end;
	};
	LoadActor("streakmania")..{
		InitCommand=function(self)
			self:Center():zoomx(2):diffusealpha(0):blend('BlendMode_Add')
		end;
		OnCommand=function(self)
			self:linear(.4):zoomx(1.5):diffusealpha(1):linear(.4):zoomx(1):diffusealpha(0)
		end;
	};
	LoadActor("ready")..{
		InitCommand=function(self)
			self:Center()
		end;
		OnCommand=function(self)
			self:hibernate(0.2):diffusealpha(.4):linear(.6):zoomx(1.7):zoomy(2.5):diffusealpha(0)
		end;
	};
	LoadActor("ready")..{
		InitCommand=function(self)
			self:Center()
		end;
		OnCommand=function(self)
			self:hibernate(0.2):diffusealpha(.5):linear(.6):zoomx(1.35):zoomy(1.75):diffusealpha(0)
		end;
	};
	LoadActor("ready")..{
		InitCommand=function(self)
			self:Center():diffusealpha(0):zoomx(3)
		end;
		OnCommand=function(self)
			self:decelerate(0.2):zoom(1):diffusealpha(1):glow(color("1,1,1,.7")):linear(0.2):glow(color("1,1,1,0"))
		end;
	};
};

return t;