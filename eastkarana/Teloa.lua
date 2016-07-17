local start;
local timer;
local move;
function event_trade(e)
	local item_lib = require("items");
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 20451})) then
		e.self:Emote("begins walking toward the gathering spot. 'Follow, friend.'");
		eq.move_to(-1597,-3670,-18,0, true);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

function event_signal(e)
	if(e.signal == 99) then
		e.self:Emote("breathes slowly as tendrils of power emanate from her body and race along the ground.");
	end
end

function event_waypoint_arrive(e)
	eq.signal(15044,1,0);
end


-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
