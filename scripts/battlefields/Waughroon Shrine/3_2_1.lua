-----------------------------------
-- 3_2_1
-- BCNM 3_2_1
-- !additem COMET_ORB
-- !pos -345 104 -260 144
-----------------------------------
local ID = require("scripts/zones/Waughroon_Shrine/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.WAUGHROON_SHRINE,
    battlefieldId    = xi.battlefield.id.THREE_TWO_ONE,
    maxPlayers       = 6,
    levelCap         = 50,
    timeLimit        = utils.minutes(30),
    index            = 5,
    entryNpc         = "Burning_Circle",
    exitNpc          = "Burning_Circle", "Burning_Circle", "Burning_Circle",
    requiredItems = { xi.items.COMET_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "Time_Bomb", })

content.loot =
{
    {
        { itemid = xi.items.KAGEBOSHI, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ODENTA, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.OCEAN_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.FOREST_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.STEPPE_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.JUNGLE_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DESERT_BELT, droprate = xi.battlefield.dropChance.NORMAL },

    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SCROLL_OF_FREEZE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_QUAKE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_RAISE_II, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.FIRE_SPIRIT_PACT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.LIGHT_SPIRIT_PACT, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.PETRIFIED_LOG, droprate = xi.battlefield.dropChance.NORMAL },
    },
}

return content:register()
