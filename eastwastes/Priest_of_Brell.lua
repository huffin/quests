local priests = nil;

function event_spawn(e)
	eq.pause(2);
	priests = 0;
end

function event_signal(e)
    if (e.signal == 1) then
		priests = priests + 1;
		e.self:AssignWaypoints(293+priests);
    end
end

function event_waypoint_depart(e)
	if (e.wp == 1) then
		e.self:SetRunning(true);
	end
end
