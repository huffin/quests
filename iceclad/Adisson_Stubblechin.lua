function event_signal(e)
    if (e.signal == 1) then
        e.self:Say("Don't be thinkin' I was forgettin' ya, Nilham, ya spotty-faced salt licker. Remember, ya tell us where ya put our rum, an' we let ya out. Otherwise, ya have ta stay here!");
        local npc2 = eq.get_entity_list():GetMobByNpcTypeID(110218);     -- Avatar of Below
        if (npc2) then
            eq.signal(110218,1,500);
        else
            eq.spawn2(110218, 0, 0, 1318, 4557, 72, 6);
        end
    end
end