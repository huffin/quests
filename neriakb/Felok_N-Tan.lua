function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Welcome to my shop, " .. e.other:GetName() .. ". I am Felok N'Tan, master smith of steel and [" .. eq.say_link("adamantite plate") .. "] armors. I am also the creator of the [" .. eq.say_link("dragoon shields") .. "] favored by members of the Indigo Brotherhood.");
	elseif(e.message:findi("adamantite plate")) then
		e.self:Say("Adamantite plate armor is forged in our unique Teir'Dal forge with our highly specialized smithing techniques. Each piece of adamantite plate requires the appropriate small plate section mold, a Teir'Dal smithy hammer, leather padding, adamantite chain jointing, and shadow temper. Visors, collars, bracers, and boots require one folded sheet of adamantite. Helms, pauldrons, girdles, vambraces, and gauntlets require two folded sheets of adamantite. Breastplates, cloaks, and greaves require three folded sheets of adamantite.");
	elseif(e.message:findi("dragoon shields")) then
		e.self:Say("Dragoon shields can only be crafted in our unique Teir'Dal forge here in Neriak. If you desire to craft one, you will require a kite shield mold, two sheets of adamantite, a Teir'Dal smithy hammer, and some shadow temper. If you are a proud follower of our Lord of Hate you may wish to attempt to create a magical dragoon shield. In order to do so, you will need to forge a sapphire, imbued by a cleric, into the shield at the time of its creation.");
	end
end