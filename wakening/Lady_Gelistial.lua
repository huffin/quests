function event_say(e)
    if(e.message:findi("hail")) then
        e.self:Say("Lady Gelistial nods towards Pharos and a soft gentle voice whispers in your mind as if carried by the breeze passing through the gentle grove. You tread upon the sacred ground of Tunare. I am the Lady Gelistial, baroness of the Tunarean Unicorns. Are you a [friend] of the Tunarean Court?");
    elseif(e.message:findi("friend")) then
        e.self:Say("Be wary of the black unicorns then my friend. All unicorns once inspired dreams and fascination in mortals but the lineage of Lithiniath has been twisted and now inspire delusions and madness. If my duties here were not so pressing I would seek the wisdom of [Prince Thirneg] in finding a cure for the cursed bloodline of Lithiniath.");
    elseif(e.message:findi("Prince Thirneg")) then
        e.self:Say("Prince Thirneg is the ruler of the Tunarean Court. He resides in the Plane of Growth where he is constant contact with the all mother herself.");
        
    end
end