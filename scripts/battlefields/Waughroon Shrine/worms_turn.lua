-----------------------------------
-- The Worms Turn
-- BCNM The Worms Turn
-- !additem STAR_ORB
-- !pos -345 104 -260 144
-----------------------------------
local ID = require("scripts/zones/Waughroon_Shrine/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.WAUGHROON_SHRINE,
    battlefieldId    = xi.battlefield.id.WORMS_TURN,
    maxPlayers       = 6,
    levelCap         = 40,
    timeLimit        = utils.minutes(30),
    index            = 1,
    entryNpc         = "Burning_Circle",
    exitNpc          = "Burning_Circle", "Burning_Circle", "Burning_Circle",
    requiredItems = { xi.items.STAR_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})


content:addEssentialMobs({ "Flayer_Franz", "Flesh_Eater" })

content.loot =
{

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.FIRE_SPIRIT_PACT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_PHALANX, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_UTSUSEMI_NI, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ERASE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ICE_SPIKES, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ABSORB_STR, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_REFRESH, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ENHANCING_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SPIRIT_TORQUE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GUARDING_GORGET, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.NEMESIS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.EARTH_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.STRIKE_SHIELD, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SHIKAR_BOW, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.OAK_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ROSEWOOD_LOG, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.GOLD_BEASTCOIN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MYTHRIL_BEASTCOIN, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.BLACK_PEARL, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.AMETRINE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.YELLOW_ROCK, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PERIDOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TURQUOISE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RERAISER, droprate = xi.battlefield.dropChance.LOW },
    },
}

return content:register()
