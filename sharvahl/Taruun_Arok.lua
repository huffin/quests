function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Say("I hope you are not looking for anyone in particular.  I think that everyone left for Hollowshade quite a while ago.");
	end
end

function event_trade(e)
	local item_lib = require("items");
	item_lib.return_items(e.self, e.other, e.trade)
end
