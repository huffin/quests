function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Ah, so many dead to destroy, so little time. What is it you want? You seek the [potions] perhaps?");
	end
	if(e.message:findi("potions")) then
		e.self:Say("Give me the four clues.");
	end
end

function event_trade(e)
	local item_lib = require("items");
	if(item_lib.check_turn_in(e.trade, {item1 = 18651, item2 = 18652, item3 = 18653, item4 = 18654})) then -- Bregna's Big Mistake
		e.other:SummonItem(13984);
		e.other:AddEXP(100);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

--END of FILE Zone:grobb  ID:52023 -- Bregna
-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
