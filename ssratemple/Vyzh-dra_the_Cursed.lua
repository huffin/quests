-- Vyzh`dra_the_Cursed (162507) for Cursed cycle in Ssratemple
-- the script counts up increments of 10 seconds that are spent out of combat to reach the 20-min 'unengaged' time limit

function event_spawn(e)
	total_time = 0
	eq.set_timer('incr', 10 * 1000)
end

function event_timer(e)
	if e.timer == 'incr' and not e.self:IsEngaged() then
		total_time = total_time + 1
		if total_time >= 120 then
			eq.stop_timer(e.timer)
			eq.depop()
		end
	end
end

function event_slay(e)
	if e.other:IsClient() then
		e.self:Say('Tell your gods that I will be coming for them next!')
	end
end

function event_combat(e)
	if e.joined then
		e.self:Shout("I cannot die! I am the only true god!")
	end
end

function event_death_complete(e)
	local instance_id = eq.get_zone_instance_id();
	eq.stop_all_timers()
	e.self:Emote("'s corpse crashes to the ground. A horrific sound fills the room, but vanishes as quickly as it came.")
	eq.set_global(instance_id .. '_cursed_progress', '3', 3, 'D8')
	eq.spawn_condition('ssratemple', 0, 10, 1)
end

