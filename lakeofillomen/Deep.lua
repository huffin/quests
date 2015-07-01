function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Emote("ignores you.");
	end
end

function event_spawn(e)
	-- x = e.self:GetX();
	-- y = e.self:GetY();
	-- eq.set_proximity(x-50,x+50,y-50,y+50);
	eq.set_proximity(e.self:GetX()-50,e.self:GetX()+50,e.self:GetY()-50,e.self:GetY()+50);
end

function event_enter(e)
	if(e.other:Class() == "Monk") then
		-- Monk Epic 1.0
		eq.attack(" .. e.other:GetName() .. ");
	end
end

function event_trade(e)
	local item_lib = require("items");
	item_lib.return_items(e.self, e.other, e.trade)
end

function event_death_complete(e)
   -- eq.signal(85397, 1) -- signal vs controller
end

-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
