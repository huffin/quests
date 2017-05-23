function event_death_complete(e)
   local ran = math.random(1, 3)
   local mob
   local x, y, z , h = e.self:GetX(), e.self:GetY(), e.self:GetZ(), e.self:GetHeading();
   if ran == 1 then
      --qua 
      mob = 158020
   elseif ran == 2 then
      --zov
      mob = 158063
   elseif ran == 3 then
      --zun
      mob = 158045
   elseif ran == 4 then
      --pli
      mob = 158059
   elseif ran == 5 then
      -- eom
      mob = 158004
   end

   local spawned = eq.spawn2(mob, 0, 0, x, y, z, h);
   eq.set_timer('depop', 30 * 60 * 1000, spawned);
   eq.depop_with_timer();

end
