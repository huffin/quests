--a_flame_mephit_ (223094)
--Phase 1 - Kazrok of Fire Trial
--potimeb

function event_spawn(e)
	if math.random(100) >= 50 then --50% chance to be unmezzable (default is mezzable)
		e.self:SetSpecialAbility(13, 1);	--flag as unmezzable
	end
end

function event_death_complete(e)
	-- send a signal to the #fire_trigger that I died
	eq.signal(223173,2);
end