function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Say("Welcome to the Selia district of New Tanaan.  Be sure to help us to keep it clean!");
	end
end

function event_trade(e)
	local item_lib = require("items");
	item_lib.return_items(e.self, e.other, e.trade)
end
