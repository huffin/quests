function event_death_complete(e)
    local qglobals = eq.get_qglobals(e.self,e.other);
    local result = math.random(100);
    local a = 224338;

    if(result >= 20 and result < 40 and qglobals["Millius_Ethereal"] == 1) then
        eq.unique_spawn(224008,0,0,-1100.0,-1100.1,19.2,385.2); -- 2_an_erudite_spirit
        eq.set_global("Millius_Ethereal",2,3,"F");
    end
end