local guardians = nil;
function event_spawn(e)
    if (guardians ~= nil) then
        guardians = guardians + 1;
		e.self:Shout(tostring(guardians));
    else
        guardians = 1;
    end
end
function event_death(e)
    if (guardians < 7) then
        eq.spawn2(124317,0,0,-810,518,121,2.0)
        eq.spawn2(124317,0,0,-739,671,121,2.0);
--        eq.spawn2(124317,0,0,-672,507,121,2.0);
    end
end