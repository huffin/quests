function event_timer(e)
	if(eq.get_qglobals(e.self).nexus_tox ~= nil and eq.get_qglobals(e.self).spire_tox ~= nil and eq.get_qglobals(e.self).spire_tox == "1" and e.self:HasItem(19720)) then
		eq.SelfCast(2433); -- self only to avoid AE
		eq.set_global("spire_tox","0",1,"F");
		eq.del_global("message_tox");
		e.self:NukeItem(19720) -- removes stone from inventory.
		nexus_tox = nil;
		spire_tox = nil;
		message_tox = nil;
	elseif(eq.get_qglobals(e.self).nexus_tox ~= nil and eq.get_qglobals(e.self).spire_tox ~= nil and eq.get_qglobals(e.self).spire_tox == "1" and eq.get_qglobals(e.self).message_tox == nil and e.self:HasItem(19720) == false) then
		e.self:Message(15, "You don't have the correct component to travel to Luclin.");
		eq.set_global("message_tox","1",1,"M20"); -- prevent component mssage from being spammed.
		nexus_tox = nil;
		spire_tox = nil;
		message_tox = nil;
	elseif(eq.get_qglobals(e.self).nexus_tox ~= nil and eq.get_qglobals(e.self).spire_tox ~= nil and eq.get_qglobals(e.self).spire_tox == "1" and eq.get_qglobals(e.self).message_tox ~= nil and e.self:HasItem(19720) == false) then
		nexus_tox = nil;
		spire_tox = nil;
		message_tox = nil;
	end
end

function event_enter_zone(e)
	local qglobals = eq.get_qglobals();
	
	if(qglobals.ilanic ~= nil) then
		eq.unique_spawn(38150.0,6,0,497,-2052,-44,0);
		eq.delete_global("ilanic");
	end
		local discs = require('disciplines');
	discs:update_discs(e, e.self:GetLevel());
end

function event_level_up(e)
	local discs = require('disciplines');
	discs:train_discs(e, e.self:GetLevel());
end
