function event_say(e)
	if(e.message:findi("hail")) then
		if(e.other:GetFaction(e.self) < 8) then
			e.self:Say("Welcome to the mines of Kaladim!");
		else
			e.self:Say("The word around the mines is that you are not to be trusted. You'd best leave before my dagger finds a new home in your back.");
		end
	elseif(e.message:findi("ready to earn mining pick 628")) then
		if(e.other:GetFaction(e.self) < 5) then -- Requires high amiable on live
			e.self:Say("So you have heard of Mining Pick 628 and feel you are ready to wield one? You shall earn one with the return of the ogre head of [Boog Mudtoe] and the 300 gold pieces he still owes me. Don't return unless you have the head and the 300 gold!!");
		end
		if(e.other:GetFaction(e.self) < 6) then
			e.self:Say("Don't take this personally, but I can't quite trust you with such matters. Maybe a few less Butcherblock bandits would prove your worth.");
		else
			e.self:Say("The word around the mines is that you are not to be trusted. You'd best leave before my dagger finds a new home in your back.");
		end
	elseif(e.message:findi("boog mudtoe")) then
		if(e.other:GetFaction(e.self) < 5) then -- Requires high amiable on live
			e.self:Say("Boog Mudtoe is one of the last remaining ogres of the Mudtoe clan. We helped him escape the assault of the Stormguard for a small fee. Unfortunately for him, we have come to believe his head to be more valuable than the fee. We hear there is someone near the port of Butcherblock who knows of the Mudtoe's whereabouts.");
		end
		if(e.other:GetFaction(e.self) < 6) then
			e.self:Say("Don't take this personally, but I can't quite trust you with such matters. Maybe a few less Butcherblock bandits would prove your worth.");
		else
			e.self:Say("The word around the mines is that you are not to be trusted. You'd best leave before my dagger finds a new home in your back.");
		end
	end
end

function event_trade(e)
	local item_lib = require("items");
	if((e.other:GetFaction(e.self) < 6) and (item_lib.check_turn_in(e.self, e.trade, {item1 = 13316, gold = 300}))) then -- Ogre Head
		e.self:Say("Very good!! You found him. His head shall bring us a great reward from the Stormguard. And as for you, here is your Mining Pick 628. Only a member of 628 can wield this fine weapon. We are the only ones who can wield it in such a way as to pierce our foes.");
		e.other:SummonItem(12161);	-- Mining Pick 628
		e.other:Faction(220, 10); 	-- Miners Guild 628
		e.other:Faction(33, -10); 	-- Circle Of Unseen Hands
		e.other:Faction(29, -10); 	-- Butcherblock Bandits
		e.other:Faction(77, 10);  	-- Deeppockets
		e.other:Faction(90, -10); 	-- Ebon Mask
		e.other:AddEXP(5000);
		e.other:Ding();
	end
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 13316, gold ~= 300})) then
		e.other:SummonItem(13316); 	-- Ogre Head
	end
	if(item_lib.check_turn_in(e.self, e.trade, {item1 ~= 13316, gold = 300})) then
		e.other:GiveCash(0, 0, 300, 0);
	end
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 18767})) then --Small, Folded Note
		e.self:Say("Ah, welcome! We could use some fresh blood around here. The name's Mater, and I run this little outfit. Work hard for me, and I will reward you well. Cross me, and you'll find yourself buried under the mine cap. Now, let's get to work.");
		e.other:SummonItem(13516); 		--Ruined Miner's Tunic
		e.other:Faction(220, 100); 		-- Miners Guild 628
		e.other:Faction(33, -5); 		-- Circle of Unseen Hands
		e.other:Faction(29, -5); 		-- Butcherblock Bandits
		e.other:Faction(77, 5); 		-- Deeppoockets
		e.other:Faction(90, -15); 		-- Ebon Mask
		e.other:AddEXP(100);
		e.other:Ding();
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

function event_timer(e)
	e.self:Say("Blast all these pesky rats!! Jeet, you need to get one of the new rogues.. I mean miners, to get rid of them!!");
	eq.signal(67018,1);
end

-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
