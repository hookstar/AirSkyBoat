-----------------------------------
-- Royal Jelly
-- Waughroon Shrine BCNM40, Star Orb
-- !additem 1131
-- !pos -345 104 -260 144
-----------------------------------
local ID = require("scripts/zones/Waughroon_Shrine/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.WAUGHROON_SHRINE,
    battlefieldId    = xi.battlefield.id.ROYAL_JELLY,
    maxPlayers       = 6,
    levelCap         = 40,
    timeLimit        = utils.minutes(30),
    index            = 13,
    entryNpc         = "Burning_Circle",
    exitNpc          = "Burning_Circle", "Burning_Circle", "Burning_Circle",
    requiredItems = { xi.items.STAR_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "Princess_Jelly", "Queen_Jelly"})

content.loot =
{

    {
        quantity = 2,
        { itemid = xi.items.VIAL_OF_SLIME_OIL, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.ARCHERS_RING, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.MANA_RING, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.GRUDGE_SWORD, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.DE_SAINTRES_AXE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.BUZZARD_TUCK, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.SCROLL_OF_UTSUSEMI_NI, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.SCROLL_OF_ABSORB_STR, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.SCROLL_OF_ERASE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SCROLL_OF_PHALANX, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.FIRE_SPIRIT_PACT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.STEEL_SHEET, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.STEEL_INGOT, droprate = xi.battlefield.dropChance.HIGH },
    },

    {
        { itemid = xi.items.SCROLL_OF_REFRESH, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.SCROLL_OF_ICE_SPIKES, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.SCROLL_OF_UTSUSEMI_NI, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GOLD_BEASTCOIN, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.MYTHRIL_BEASTCOIN, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.PERIDOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TURQUOISE, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.BLACK_PEARL, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.GOSHENITE, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.SPHENE, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.AMETRINE, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.GARNET, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.BLACK_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.GREEN_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.WHITE_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.BLUE_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.TRANSLUCENT_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.OAK_LOG, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.ROSEWOOD_LOG, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.VILE_ELIXIR, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.RERAISER, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },

    },
}

return content:register()
