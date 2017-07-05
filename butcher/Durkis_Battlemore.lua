function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Say("Hail, " .. e.other:GetName() .. ".");		--Text made up
	end
end

function event_trade(e)
	local item_lib = require("items");
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 8910})) then 	--A Note to Battlemore
		e.self:Say("What have ye got there, lad? Ack. I thought I would never hear from that crazy old man again. He wants me to give you a pair o' me gauntlets. I suppose I kin do that. Here you are, " .. e.other:GetName() .. " . Wear them in good health.");
		e.other:QuestReward(e.self,0,0,0,0,8909,16000); -- Gem Inlaid Gauntlets
	end
	item_lib.return_items(e.self, e.other, e.trade)
end