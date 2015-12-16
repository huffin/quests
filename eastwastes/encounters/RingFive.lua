--ring five encounter

local spawnOracles = math.random(1, 3);
local spawnInvaders = math.random(1, 3);

function event_encounter_load(e)
	eq.start_timer("depop", 120000);
	--locs made up
	scarid1 = eq.spawn2(116600, 0, 0, -650, -2744, 180, 45); --Scarbrow

	if (spawnInvaders == 3) then
		invid1 = eq.spawn2(116586, 0, 0, -654, -2723, 180, 45); --Invader
		invid2 = eq.spawn2(116586, 0, 0, -643, -2768, 180, 45); --Invader
		invid3 = eq.spawn2(116586, 0, 0, -633, -2758, 180, 45); --Invader
	else --spawnInvaders == 1 or 2
		invid1 = eq.spawn2(116586, 0, 0, -654, -2723, 180, 45); --Invader
		invid2 = eq.spawn2(116586, 0, 0, -643, -2768, 180, 45); --Invader
	end
	
	if (spawnOracles == 3) then	
		orcid1 = eq.spawn2(116587, 0, 0, -681, -2739, 180, 45); --Oracle
		orcid2 = eq.spawn2(116587, 0, 0, -673, -2766, 180, 45); --Oracle
		orcid3 = eq.spawn2(116587, 0, 0, -673, -2766, 180, 45); --Oracle
	else
		orcid1 = eq.spawn2(116587, 0, 0, -681, -2739, 180, 45); --Oracle
		orcid2 = eq.spawn2(116587, 0, 0, -673, -2766, 180, 45); --Oracle
	end
	
	--spawned 
end

function event_timer(e)
	eq.depop_all(116586); --invaders
	eq.depop_all(116587); --oracles
	eq.depop(116600); --Scarbrow
	eq.stop_timer("depop");
	eq.unload_encounter("RingFive");
end
