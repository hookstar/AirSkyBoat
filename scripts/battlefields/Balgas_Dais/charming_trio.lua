-----------------------------------
-- Charming Trio BCNM 20 (Cloudy ORB)
-- Balgas Dais
-- !pos 298 -124 343 146
-----------------------------------
local ID = require("scripts/zones/Balgas_Dais/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/zone")
-----------------------------------

local content        = Battlefield:new({
    zoneId           = xi.zone.BALGAS_DAIS,
    battlefieldId    = xi.battlefield.id.CHARMING_TRIO,
    maxPlayers       = 3,
    levelCap         = 20,
    timeLimit        = utils.minutes(15),
    index            = 9,
    entryNpc         = "Burning_Circle",
    exitNpcs         = { "Burning_Circle_Exit", },
    requiredItems = { xi.items.CLOUDY_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "Prune", "Phoedme", "Pepper" })

content.loot =
{
    {
        { itemid = xi.items.MANNEQUIN_HANDS, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.JAR_OF_TOAD_OIL, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.POTION, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.POTION_P1, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.AIR_SPIRIT_PACT, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SQUARE_OF_COTTON_CLOTH, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.MYTHRIL_BEASTCOIN, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.GANKO, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SQUARE_OF_WOOL_CLOTH, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.PLATOON_DISC, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SQUARE_OF_GRASS_CLOTH, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SQUARE_OF_LINEN_CLOTH, droprate = xi.battlefield.dropChance.HIGH },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.PLATOON_CUTTER, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.VIAL_OF_FIEND_BLOOD, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.VIAL_OF_FIEND_BLOOD, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.PLATOON_EDGE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PLATOON_GUN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PLATOON_SPATHA, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PLATOON_POLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GUNROMARU, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MANNEQUIN_HEAD, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SCROLL_OF_DRAIN, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.VIAL_OF_BEASTMAN_BLOOD, droprate = xi.battlefield.dropChance.LOW },
    },
}

return content:register()
