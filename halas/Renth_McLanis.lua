function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Hail, " .. e.other:GetName() .. "! Have ye come to train?  I train all warriors. All Wolves o' the North must be strong warriors and swift as well. Are ye a young wolf, then? If so, maybe ye can [" .. eq.say_link("assist Renth") .. "] with his wee problem, eh?");
	end
	if(e.message:findi("dangerous matter") and e.other:GetFaction(e.self) < 5) then
			e.self:Say("A murder was done in Halas recently.  A couple were killed by a pair o' rogues fer a mere pouch o' copper.  The shaman gave chase and the main rogue, Paglan, fell beneath an ice floe.  One got away.  We must [" .. eq.say_link("hunt the murderer") .. "].  Will ye help?");
	end
	if(e.message:findi("hunt the murderer") and e.other:GetFaction(e.self) < 5) then
			e.self:Say("Twas good old Dok whose brother and wife were slain.  Speak with him at his shop.  Ask him if he has [any information about the crime].  Return the head of the murderer and I'll give ye a [" .. eq.say_link("Langseax") .. "].");
	end
	if(e.message:findi("langseax") and e.other:GetFaction(e.self) < 5) then
			e.self:Say("The Langseax was crafted to be wielded by a warrior only.  Tis a one-handed slashing weapon with great balance to assist the warrior who masters it.");
	end
	if(e.message:findi("assist") and e.other:GetFaction(e.self) < 6) then
			e.self:Say("I was ordered by Kylan O'Danos to personally escort a young warrior sent to fetch the remains of his cousin, Ivan McMannus. I forgot and spent me greater time testing out the fine spirits. Now I must find the courier and the remains. Will ye [" .. eq.say_link("search fer the courier") .. "]?");
	end
	if(e.message:findi("search fer the courier") and e.other:GetFaction(e.self) < 6) then
			e.self:Say("Thank ye, " .. e.other:GetName() .. "! Go to Everfrost Peaks and seek out Arnis McLish. Ask him where Megan, the courier, is. Once ye find Megan, would ye ask her where Ivan's remains are? Please go, at once!");
	end
	if((e.message:findi("dangerous matter") or e.message:findi("hunt the murderer") or e.message:findi("langseax")) and e.other:GetFaction(e.self) == 5) then
			e.self:Say("The Wolves o' the North show ye no ill will, but there's much ye must do t' earn our trust.  Perhaps ye should speak with Lysbith and inquire o' the [" .. eq.say_link("gnoll bounty") .. "].");
	end
	if((e.message:findi("assist") or e.message:findi("search fer the courier") or e.message:findi("dangerous matter") or e.message:findi("hunt the murderer") or e.message:findi("langseax")) and e.other:GetFaction(e.self) > 5) then
			e.self:Say("Run while ye still can!! The Wolves o' the North will not tolerate yer presence!");
	end
end

function event_trade(e)
	local item_lib = require("items");
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 13246}) and e.other:GetFaction(e.self) < 6) then
		e.self:Say("Good work!! Kylan will never know o' me negligence. I owe ye one, young warrior. Let's call it even with this. Twas found by one of our foraging parties. It is still useful. And... I believe ye can assist with a more [" .. eq.say_link("dangerous matter") .. "] as well");
		e.other:Ding();
		e.other:SummonItem(eq.ChooseRandom(17009, 17001));
		e.other:Faction( 361, 5);
		e.other:Faction( 294, 5);
		e.other:Faction( 213, 5);
		e.other:Faction( 311, 5);
		e.other:AddEXP(2000);
	end
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 13249, item2 = 13248, item3 = 13247, item4 = 13233}) and e.other:GetFaction(e.self) < 6) then
		e.self:Say("Thank ye, " .. e.other:GetName() .. "! I knew ye could do it. It is a sad thing, but at least now he can rest in peace. Here is something for your efforts. If ye are interested, there is a [" .. eq.say_link("dangerous matter") .. "] that needs to be looked into.");
		e.other:Ding();
		e.other:AddEXP(3000);
		e.other:GiveCash(0,0,8,0);
	end
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 12227}) and e.other:GetFaction(e.self) < 5) then
		e.self:Say("Nice work " .. e.other:GetName() .. "! Basil has always been an outcast of sorts. I'm glad to see you were able to stop him. Here is a Langseax for your efforts.");
		e.other:Ding();
		e.other:Faction( 361, -15);	--shows neg faction hit on live.   possibly to avoid exploits
		e.other:Faction( 294, -15);
		e.other:Faction( 213, -15);
		e.other:Faction( 311, -15);
		e.other:AddEXP(10000);
		e.other:SummonItem(5367);
	end
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 12225}) and e.other:GetFaction(e.self) < 5) then
		e.self:Say("Nice work " .. e.other:GetName() .. "! Paglan has always been an outcast of sorts. I'm glad to see you were able to stop him. Here is a Langseax of the Wolves for your efforts.");
		e.other:Ding();
		e.other:Faction( 361, -20);
		e.other:Faction( 294, -20);
		e.other:Faction( 213, -20);
		e.other:Faction( 311, -20);
		e.other:AddEXP(12000);
		e.other:SummonItem(5368);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
