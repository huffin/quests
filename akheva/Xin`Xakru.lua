---- Event:Shei_Vinitras
--This is an add spawned during the Shei Vinitras fight. If anyone is killed by this mob, a random mob (of 4 possible) will spawn.

function event_slay(e)
    local a = eq.ChooseRandom(179352,179353,179354,179355);
    -- local x = e.self:GetX();
    -- local y = e.self:GetY();
    -- local z = e.self:GetZ();
    -- local h = e.self:GetHeading();
    eq.spawn2(a,0,0,e.self:GetX(),e.self:GetY(),e.self:GetZ(),e.self:GetHeading());
end

function event_signal(e)
    if(e.signal == 1) then
        eq.depop();
    end
end