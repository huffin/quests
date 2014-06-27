function event_say(e)
	local fac = e.other:GetFaction(e.self);

	if(e.message:findi("white training sash")) then
		if(e.other:GetFaction(e.self) < 4) then
			e.self:Say("The white training sash of the Ashen Order is awarded to our new members for completing a few simple tasks to prove their devotion to our clan. As you know, Freeport is a very hostile place, under constant attack from [orcs], wild beasts, and even the undead. To help keep this city and its citizens relatively safe, we must help the Militia protect the main gates. Bring me two Deathfist pawn scalps from those vile [Deathfist orcs], a snake fang, and some bone chips from a skeleton. Good luck, " .. e.other:GetName() .. ", represent us well!");
		else
			e.self:Say("I have been watching you, and appreciate the help you've given to the brothers and sisters of the Ashen Order, but I feel that such a vital matter should be left to one of our more trusted members.");
		end
	elseif(e.message:findi("yellow sash of order")) then
		if(e.other:GetFaction(e.self) < 4) then
			e.self:Say("To earn the yellow sash, you must prove yourself to be very skilled in the art of fighting. The lands to the west and south of Freeport are filled with dangerous beasts that often prey upon innocent travelers. Help protect our merchant caravans and traveling citizens, while at the same time practicing your defensive skills, and eliminating these deadly creatures from the surrounding landscape. Bring me a giant snake rattle, a Deathfist slashed belt, the chitin of a desert tarantula, and turn in your white training sash, and I shall reward your noble work with our yellow Sash of Order. Good luck, " .. e.other:GetName() .. "!");
		else
			e.self:Say("I have been watching you, and appreciate the help you've given to the brothers and sisters of the Ashen Order, but I feel that such a vital matter should be left to one of our more trusted members.");
		end
	elseif(e.message:findi("hail")) then
		e.self:Say("Greetings. " .. e.other:GetName() .. "!  I am Velan Torresk of the Ashen Order.  I am in charge of training the newest members of our clan. and helping them advance their skills and rank.  When members perform certain tasks on behalf of the Order. they advance to a higher rank in our clan. and are awarded a special [sash].");
	elseif(e.message:findi("sash")) then
		e.self:Say("The Sashes of Order are given out by the various trainers of our clan.  I give out the [white training sash] and the [yellow Sash of Order]. and [Reyia] is in charge of the [orange and red sashes].");
	elseif(e.message:findi("orcs")) then
		e.self:Say("The Deathfist Orcs are a large tribe of Orcs who live out in the desert. They are constantly sending small raiding parties and scouts to attack Freeport and its citizens.");
	end
end

function event_trade(e)
	local item_lib = require("items");

	-- Kindly Faction - Deathfist Pawn Scalp - Snake Fang - Bone Chips
	if(e.other:GetFaction(e.self) < 4) then
		if(item_lib.check_turn_in(e.trade, {item1 = 13794,item2 = 13794,item3 = 13067,item4 = 13073})) then
			e.self:Say("Good work, " .. e.other:GetName() .. ", you've worked hard and proven yourself a valuable addition to the Ashen Order. Here's your white sash, wear it with pride.");
			e.other:Faction(12,2,0); -- Ashen Order
			e.other:Faction(184,2,0); -- Knights of Truth
			e.other:Faction(300,2,0); -- Silent Fist Clan
			e.other:QuestReward(e.self,0,0,0,0,10130,500); -- White Training Sash
		end
	end
	-- White Training Sash - Giant Snake Rattle - Deathfist Slashed Belt - Desert Tarantula Chitin
	-- No need to check faction again since they must have the White Training Sash
	if(item_lib.check_turn_in(e.trade, {item1 = 10130,item2 = 13058,item3 = 13916,item4 = 20901})) then
		e.self:Say("Good work, " .. e.other:GetName() .. ", you've worked hard and proven yourself a valuable addition to the Ashen Order. Here's your white sash, wear it with pride.");
		e.other:Faction(12,5,0); -- Ashen Order
		e.other:Faction(184,5,0); -- Knights of Truth
		e.other:Faction(300,5,0); -- Silent Fist Clan
		e.other:QuestReward(e.self,0,0,0,0,10131,750); -- Yellow Sash of Order
	end
	item_lib.return_items(e.self, e.other, e.trade);
end

-- END of FILE Zone:freportw  ID:9065 -- Velan_Torresk

