-- mage
local quest_helper = require('velious_quest_helper');
local THURG_ARMOR = quest_helper.THURG_ARMOR;
local QUEST_TEXT = {
    hail="Greetings to you. I seek one that has chosen the path of monkhood. What do you call yourself?",
    magician="Good. I had hoped you were one. I have heard that as seeker of the way you are in constant training to push yourself to your physical and mental limits. It is an admirable quality and I wish to aid you. I will provide you with a cap, a tunic, sleeves, bracers, gloves, leggings and boots.",

}

QUEST_TEXT = quest_helper.merge_tables(QUEST_TEXT, quest_helper.THURG_SILK_TEXT);

local QUEST_ITEMS = {
    -- boots
    quest_helper:caster_boots(THURG_ARMOR.Silk_Boots, 31083),
    -- legs
    quest_helper:caster_legs(THURG_ARMOR.Silk_Pantaloons, 31082),
    -- gloves
    quest_helper:caster_gloves(THURG_ARMOR.Silk_Gloves, 31081),
    -- wrist
    quest_helper:caster_bracer(THURG_ARMOR.Silk_Wristband, 31080),
    -- arms
    quest_helper:caster_arms(THURG_ARMOR.Silk_Sleeves, 31079),
    -- chest
    quest_helper:caster_chest(THURG_ARMOR.Silk_Robe, 31078),
    -- helm
    quest_helper:caster_helmet(THURG_ARMOR.Silk_Turban, 31077)
}

function event_say(e)
    quest_helper.quest_text(e, QUEST_TEXT, 3);
end


function event_trade(e)
    quest_helper:quest_turn_in(e, 3, QUEST_ITEMS, quest_helper.thurg_armor_success)
end