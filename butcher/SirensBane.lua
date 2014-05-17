function event_spawn(e)
	local zone_time = eq.get_zone_time(); -- Time here is off by 1, so 6AM = 5.
	local hour = zone_time["zone_hour"] + 1;
	e.self:Shout("I've spawned! Name is: " .. e.self:GetName() .. " Time is: " .. hour ..":00");
end

function event_waypoint_arrive(e)
	if(e.wp == 6) then
		eq.spawn_condition("butcher",0,1,0);
		eq.spawn_condition("butcher",0,2,0);
		eq.get_entity_list():ForeachClient(
			function(ent)
				ent:MovePC(69,10944,1236,-20,0);
			end,
			function(ent)
			 	if(ent:GetBoatID() == 771) then
					return true;
				end
				return false;
			end
		);
	end
end