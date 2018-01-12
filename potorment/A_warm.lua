--A_warm (207278) in Plane of Torment(FLAVOR)

function event_spawn(e)
	local xloc = e.self:GetX();
	local yloc = e.self:GetY();
	eq.set_proximity(xloc - 30, xloc + 30, yloc - 30, yloc + 30);
end

function event_enter(e)
	if e.other:CalculateDistance(e.self:GetX(), e.self:GetY(), e.self:GetZ()) <= 50 then	--calc distance for Z-axis check
		e.self:Emote("red mist falls from above.  The slick substance has no time to settle before it is hungrily absorbed by every surface.");
		eq.depop_with_timer();
	end
end



