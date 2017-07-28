function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("If you're a new employee of the Coalition of Tradefolk I suggest you speak with Tovan Tenlah. Now if you will excuse me I have much work to do.");
	elseif(e.message:findi("boot")) then
		e.self:Say("To craft Coalition Trader Boots you require two [" .. eq.say_link("silk thread") .. "], two ruined cat pelts, two desert spiderling hairs, and a rattlesnake skin. Once you have the necessary components combine them in your Curing Kit with this Tattered Boot Pattern.");
		-- Tattered Boot Pattern ID-19561
		e.other:SummonItem(19561);
	elseif(e.message:findi("bracer")) then
		e.self:Say("To craft an Coalition Trader Bracer you require a [" .. eq.say_link("silk thread") .. "], a ruined cat pelt, and a desert spiderling hairs. Once you have the necessary components combine them in your Curing Kit with this Tattered Wristband Pattern.");
		-- Tattered Wristband Pattern ID-19558
		e.other:SummonItem(19558);
	elseif(e.message:findi("cap")) then
		e.self:Say("To craft a Coalition Trader Cap you require two [" .. eq.say_link("silk thread") .. "], a ruined cat pelt, a dune spiderling hairs, and a rattlesnake skin. Once you have the necessary components combine them in your Curing Kit with this Tattered Coif Pattern.");
		-- Tattered Cap Pattern ID-19555
		e.other:SummonItem(19555);
	elseif(e.message:findi("glove")) then
		e.self:Say("To craft Coalition Trader Gloves you require two [" .. eq.say_link("silk thread") .. "], a ruined cat pelt, two desert spiderling hairs, and a rattlesnake skin. Once you have the necessary components combine them in your Curing Kit with this Tattered Glove Pattern.");
		-- Tattered Glove Pattern ID-19559
		e.other:SummonItem(19559);
	elseif(e.message:findi("legging")) then
		e.self:Say("To craft Coalition Trader Leggings you require three [" .. eq.say_link("silk thread") .. "], a low quality cat pelt, two dune spiderling hairs, and a large rattlesnake skin. Once you have the necessary components combine them in your Curing Kit with this Tattered Pant Pattern.");
		-- Tattered Pant Pattern ID-19560
		e.other:SummonItem(19560);
	elseif(e.message:findi("sleeve")) then
		e.self:Say("To craft Coalition Trader Sleeves you require two [" .. eq.say_link("silk thread") .. "], a low quality cat pelt, two dune spiderling hairs, and a large rattlesnake skin. Once you have the necessary components combine them in your Curing Kit with this Tattered Sleeves Pattern.");
		-- Tattered Sleeve Pattern ID-19557
		e.other:SummonItem(19557);
	elseif(e.message:findi("tunic")) then
		e.self:Say("To craft a Coalition Trader Tunic you require four [" .. eq.say_link("silk thread") .. "], a medium quality cat pelt, a desert tarantula hairs, and a giant rattlesnake skin. Once you have the necessary components combine them in your Curing Kit with this Tattered Tunic Pattern.");
		-- Tattered Tunic Pattern ID-19556
		e.other:SummonItem(19556);
	elseif(e.message:findi("silk thread")) then
		e.self:Say("I'm sure you could find a tailor in town to make you some silk thread or you can make your own with 2 Spiderling Silk.");
	end
end

function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 19846 })) then -- Note to Verona Rankin
		e.self:Say("Ah, Tovan sent you for a suit of traders clothing. I can instruct you on how to prepare your suit of clothing but you will have to acquire the required materials yourself. Use this Curing Kit to construct the clothing once you have done so. Do you wish to prepare Coalition Trader [" .. eq.say_link("Gloves") .. "], Coalition Trader [" .. eq.say_link("Boots") .. "], a Coalition Trader [" .. eq.say_link("Bracer") .. "], a Coalition Trader [" .. eq.say_link("Cap") .. "], Coalition Trader [" .. eq.say_link("Leggings") .. "], Coalition Trader [" .. eq.say_link("Sleeves") .. "], or a Coalition Trader [" .. eq.say_link("Tunic") .. "]?");
		e.other:QuestReward(e.self,0,0,0,0,17125);
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 19919,item2 = 19925,item3 = 19850})) then
		e.self:Say("You have proven yourself worthy of our cause. Take this and use it to bring down non followers of Innoruuk.");
		e.other:SummonItem(19937); --Coalition Trader Dirk
		e.other:Ding();
		e.other:Faction(369,1,0); -- Coalition of TradeFolk III
		e.other:Faction(47,1,0); -- Coalition of Trade Folk
		e.other:Faction(31,1,0); -- Carson McCabe
		e.other:Faction(53,1,0); -- Corrupt Qeynos Guards
		e.other:Faction(105,1,0); -- Freeport Militia
		e.other:AddEXP(100);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end