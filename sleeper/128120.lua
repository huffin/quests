local combatStarted = false;
local spawnedMobs = 0;

function event_combat(e)
    e.self:Say("testing this cycle");
    if(combatStarted) then 
        combatStarted = false;
        despawn_cycle();
    else
        combatStarted = true;
        start_cycle(e);
    end
end

function despawn_cycle()
    eq.depop_all(128110);
    eq.stop_timer("spawn");
end

function start_cycle(e)
    eq.set_timer("spawn",120000);
	eq.depop_with_timer();
end

function event_timer(e)
	if (e.timer == "spawn") then
	    eq.spawn2(128110,28,0,e.self:GetX()+10,e.self:GetY()+10,e.self:GetZ(),126.6);
	    eq.spawn2(128110,29,0,e.self:GetX()-10,e.self:GetY()-10,e.self:GetZ(),126.6);
	    spawnedMobs = spawnedMobs + 2;
	    if (spawnedMobs < 8)
	        eq.set_timer("spawn",120000);
	    end
	end

function event_death_complete(e)
    eq.stop_timer("spawn");
end

