--Vex Thal Shade Reanimation Script on Death

function event_timer(e)
    if e.timer == 'depop' then
        eq.stop_timer(e.timer);
        eq.depop();
    end
end

function event_death_complete(e)
   local ran = math.random(1, 100);
   local mob;
   local x, y, z , h = e.self:GetX(), e.self:GetY(), e.self:GetZ(), e.self:GetHeading();
   if ran <= 30 then
      --qua 
      mob = 158024;
   elseif ran <= 50 then
      --zov
      mob = 158026;
   elseif ran <= 70 then
      --zun
      mob = 158023;
   elseif ran <= 85 then
      --pli
      mob = 158005;
   else
      -- eom
      mob = 158027;
   end

   local spawned = eq.spawn2(mob, 0, 0, x, y, z, h);
   eq.set_timer('depop', 30 * 60 * 1000, spawned);
    

end


