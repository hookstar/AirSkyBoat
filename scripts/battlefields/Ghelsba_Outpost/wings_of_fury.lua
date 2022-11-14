-----------------------------------
-- Area: Ghelsba Outpost
-- Name: wings of fury (BCNM 20 Cloudy Orb)
-- !pos -165.357 -11.672 77.771 140
-----------------------------------
local ID = require("scripts/zones/Ghelsba_Outpost/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId        = xi.zone.GHELSBA_OUTPOST,
    battlefieldId = xi.battlefield.id.WINGS_OF_FURY,
    maxPlayers    = 3,
    levelCap      = 20,
    timeLimit     = utils.minutes(15),
    index         = 2,
    entryNpc      = "Hut_Door",
    requiredItems = { xi.items.CLOUDY_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "Colo-colo", "Furies" })

content.loot =
{

    {
        { itemid = xi.items.BAT_FANG, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.SCROLL_OF_INVISIBLE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SCROLL_OF_SNEAK, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.SCROLL_OF_DEODORIZE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.THUNDER_SPIRIT_PACT, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.MYTHRIL_BEASTCOIN, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.TRANSLUCENT_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.PLATOON_AXE, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.PLATOON_POLE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.GANKO, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PLATOON_DAGGER, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.PLATOON_EDGE, droprate = xi.battlefield.dropChance.VERY_HIGH },
    },

    {
        { itemid = xi.items.BLUE_ROCK, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.YELLOW_ROCK, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GREEN_ROCK, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BLACK_ROCK, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.WHITE_ROCK, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RED_ROCK, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PURPLE_ROCK, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PLATOON_SWORD, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.PLATOON_DAGGER, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.GUNROMARU, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.PLATOON_LANCE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.PLATOON_EDGE, droprate = xi.battlefield.dropChance.VERY_HIGH },

    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.BAT_WING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ASTRAL_RING, droprate = xi.battlefield.dropChance.VERY_LOW },
    },
}

return content:register()
