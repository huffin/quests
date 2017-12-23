--Planar Projection

local counter;

function event_spawn(e)
	eq.set_timer("depop", 10 * 60 * 1000) -- 10 min depop
	counter = 0;
end

function event_timer(e)
	if e.timer == "depop" then
		eq.depop();
	end
end

function event_say(e)
	if e.message:findi("hail") and counter < 72 then
		eq.set_global("pop_pot_saryrn", "1", 5, "F");
		e.other:Message(12,"The Planar Projection seems to flicker in and out of existence. It seems to be impressed and grateful for the death of Saryrn.");
		e.other:Message(4,"You receive a character flag!");
		counter = counter + 1;
	end
end

