function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say(string.format("Yes. yes. yes.  Hail to you. too, %s.  Now, quit bugging me!",e.other:GetName()));
	end
end

function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 18855})) then
		e.self:Say("Welcome, friend. I see more than a slight glimmer of hate in your eyes. Good... for we have much work to do.");
		e.other:SummonItem(13565);
		e.other:Ding();
		e.other:Faction(86,100,0); -- Dismal Rage
		e.other:Faction(184,-15,0); -- Knights of Truth
		e.other:Faction(235,20,0); -- Opal Dark Briar
		e.other:AddEXP(100);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end