function event_combat(e)
	if(e.joined) then
		e.self:Say("I survived the gladiator pens of Qeynos!! What can you do to one such as I?!!");
	end
end

function event_death_complete(e)
	e.self:Say("I die soon! Meldrath, help me!");
end
