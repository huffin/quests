function event_signal(e)
	if(e.signal == 1) then
		e.self:Say("Yes, I just got some new information from Prak this evening. He says they found out the spy is working for some bandit in the Karanas named Rujahn Tahslek. You used to work out there. do you recognize the name?");
		eq.signal(2085,2);
	elseif(e.signal == 2) then
		e.self:Say("Hmmff.. Anyway, send someone to Prak. I want this job done quickly. Let's show these pathetic bandits that they've been nosing around in the wrong places.");
		eq.signal(2085,3);
	elseif(e.signal == 3) then
		e.self:Say("Lomarc is already back. He sent word that the guards are on to him, so he's laying low for a bit. He also said the cost for delivery just went up, because he had to pay off the owner of the Mermaid's Lure.");
		eq.signal(2033,1);
	elseif(e.signal == 4) then
		e.self:Say("Finally, the rat comes out of his hole! Send some men, no no, go yourself, and track him down. Then kill him. I don't care who sees you, or who gets in your way. Finish the job. And bring me whatever you find on his carcass. I'm sure he took some valuables from us when he escaped. And don't worry about Malka, she will keep until you finish Stanos, then she is yours. Shame to waste such talent, but you don't steal from the Circle and live.");
		eq.signal(2033,2);
	end
end

function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("My name is Hanns..  Do as I say. and we shall get along just fine.");
	elseif(e.message:findi("carson has a mole in the highpass")) then
		e.self:Say("Arrgg, that Carson can't control anything. Sometimes he's practically useless. Go tell Zannsin that [I want him to send some of his men to Prak in Highpass], to help Carson get back on track.");
	end
end

function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 18708})) then -- Napkin From Crow's
		e.self:Say("Lucky thing you weren't followed. or you'd be breathing through holes in your back right now. Go find Knargon, maybe you can help run the next [shipment]. Remember, we keep our business quiet, so watch yourself, sewer crawler.");
		e.other:SummonItem(13501); -- Second Hand Tunic*
		e.other:Ding();
		e.other:Faction(33,100,0); -- Circle of Unseen Hands
		e.other:Faction(217,-15,0); -- Merchants of Qeynos
		e.other:Faction(53,15,0); -- Corrupt Qeynos Guards
		e.other:Faction(135,-15,0); -- Guards of Qeynos
		e.other:Faction(164,10,0); -- Kane Bayle
		e.other:AddEXP(100);
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 28058})) then
		e.self:Say("Well done, " .. e.other:GetName() .. "."); -- Text made up
		e.other:SummonItem(7501);
		e.other:Ding();
		e.other:Faction(33,20,0); -- Circle of Unseen Hands
		e.other:AddEXP(50000);
	end
	item_lib.return_items(e.self, e.other, e.trade);
end