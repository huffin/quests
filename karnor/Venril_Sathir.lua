function event_spawn(e)
	eq.depop(102099);
end
function event_death_complete(e)
	eq.unique_spawn(102099,0,0,e.self:GetX(),e.self:GetY(),e.self:GetZ());
end

function event_trade(e)
	local item_lib = require("items");
	item_lib.return_items(e.self, e.other, e.trade)
end

-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------