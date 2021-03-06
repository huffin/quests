----------------------------------------------------------------------
-- Zone: PoJustice
-- NPC: Advisor Vyenz (201389)
----------------------------------------------------------------------

function event_say(e)
    if(e.message:findi("Hail")) then
        e.other:Message(0,"The dark touches you, touches you.  Your soul, touched by Dark Clouds, ".. e.other:GetName() .. ".  Dark Clouds.  The Master will have you yet, yet will you be had.  Open your eyes, ".. e.other:GetName() .. ".  Open your eyes and look deep into my gaze.  Repeat after me, after me...  'Advisor, my will is thine'");
    end
end

function event_trade(e)
    local item_lib = require("items");
    item_lib.return_items(e.self, e.other, e.trade)
end
