function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Say("Good day to you. " .. e.other:GetName() .. ". I am Culkin Ironstove. one of five merchants that provide goods for those who practice the art of baking. Search my wares if you wish. and know that if I do not possess that which you require. then there are four other Ironstoves who are just as glad as I to aid you where we can.");
	end
end

function event_trade(e)
	local item_lib = require("items");
	item_lib.return_items(e.self, e.other, e.trade)
end
