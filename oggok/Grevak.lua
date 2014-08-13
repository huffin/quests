function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Say("Need new members we do not. Powerful enough are we with Grevak. Still. peons needed. Are you a [new peon] or are you an [outsider]? Speak up!! Fool!! No time Grevak has!!");
	elseif(e.message:findi("new peon")) then
		e.self:Say("So you think you can be greater than Grevak!! Touch you not and still I can smash you. I am a Greenblood shadowknight!! Peon are you. Peons go to swamps and slay lizardmen. You return with four lizardmen tails and a reward is yours. You return with two lizardman shaman dolls and a great reward is yours.");
	elseif(e.message:findi("i am an outsider")) then
		e.self:Say("Go away or soon your pain will find you.");
	end
end

function event_trade(e)
	local item_lib = require("items");
	if  (item_lib.check_turn_in(e.trade, {item1 = 13354, item2 = 13354, item3 = 13354, item4 = 13354})) then
		e.self:Say("Now I shall take the lizard tails to shamans I will.  Healing spells will help create. You continue to slay. Continue to be the peon. Continue to live");
		e.other:Faction(128,10);	-- Increase faction -- Greenblood Knights
		e.other:Faction(46,5);		-- Increase faction -- Clurg
		e.other:Faction(314,-1);	-- Decrease faction -- Storm Guard
		e.other:Faction(292,-1);	-- Decrease faction -- Shadowknights of Night Keep
		e.other:QuestReward(e.self,0,0,0,0,eq.ChooseRandom(2125,2126,2127,2129,2133,2134),500);
	elseif(item_lib.check_turn_in(e.trade, {item1 = 13367, item2 = 13367})) then
		e.self:Say("A shaman doll! a great knight you some day become. A gift I give to help you on your way. The fight will continue. All hail the Greenbloods!");
		e.other:Faction(128,10);	-- Increase faction -- Greenblood Knights
		e.other:Faction(46,5);		-- Increase faction -- Clurg
		e.other:Faction(314,-1);	-- Decrease faction -- Storm Guard
		e.other:Faction(292,-1);	-- Decrease faction -- Shadowknights of Night Keep
		e.other:QuestReward(e.self,0,0,0,0,eq.ChooseRandom(13453,5013,5014,5025,5016,5019,5020,5023),500);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

-- Developer: Diuretic Effluent
-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
