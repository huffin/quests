function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Hail. citizen!! Have you business with me? If so. please speak quickly and be on your way.");
	end
end