function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Greetings!  It is always nice to meet another traveler.  The roads of the Plains of Karana are heavily trodden, but sparsely patrolled.  Be careful of bandits and especially of giants.  I have seen a few since my [" .. eq.say_link("move from the Jaggedpine") .. "].");
	elseif(e.message:findi("note")) then
		e.self:Say("The note spoke of the [" .. eq.say_link("Unkempt Druids") .. "]. I did not get a chance to read it all, only a glimpse. Perhaps the man still has the note. Too bad. I am sure Gerael Woodone of the druids of Surefall Glade should look at it.");
	elseif(e.message:findi("unkempt druids")) then
		e.self:Say("The Unkempt Druids are a crazed group of druids and rangers. I learned of them when I was in the Jaggedpine. They are a secret group and aim to keep it that way. They would kill anyone who learned of their whereabouts.");
	elseif(e.message:findi("move from the jaggedpine")) then
		e.self:Say("I inherited this farmhouse from my late uncle so I left the Jaggedpine to live here.  The Jaggedpine is a beautiful forest but I believe my skills as a druid may come in handy as a farmer.");
	end
end

function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 13945})) then
		e.self:Say("Oh thank Tunare you showed up when you did. I was at a nearby merchant house when a fellow dropped a [" .. eq.say_link("note") .. "] and I picked it up and read it. It talked of the [Unkempt Druids] and before I could read on, the man swiped it from my hands. I ran for dear life, for surely he would kill me for reading the note. I think I lost him in the woods but I am not sure. Please stay with me a while to be sure.");
		e.other:Faction(159,10,0); -- Jaggedpine Treefolk
		e.other:Faction(265,2,0); -- Protector of the Pine
		e.other:Faction(267,1,0); -- QRG Protected Animals
		e.other:Faction(347,-2,0); -- Unkempt Druids
		e.other:Faction(135,1,0); -- Guards of Qeynos
		e.other:QuestReward(e.self,math.random(10),math.random(10),math.random(5),0,0,2000);
		eq.spawn2(12181,0,0,-8000,-3400,23,205.8);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
