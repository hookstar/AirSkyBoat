-----------------------------------
-- Prehistoric Pigeons
-- Waughroon Shrine KSNM30, Atropos Orb
-- !additem 1180
-- !pos -345 104 -260 144
-----------------------------------
local ID = require("scripts/zones/Waughroon_Shrine/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.WAUGHROON_SHRINE,
    battlefieldId    = xi.battlefield.id.PREHISTORIC_PIGEONS,
    maxPlayers       = 6,
    timeLimit        = utils.minutes(30),
    index            = 18,
    entryNpc         = "Burning_Circle",
    exitNpc          = "Burning_Circle", "Burning_Circle", "Burning_Circle",
    requiredItems = { xi.items.ATROPOS_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "Titanis_Max",  "Titanis_Jax", "Titanis_Xax", "Titanis_Dax" })

content.loot =
{

    {
        { itemid = xi.items.MICHISHIBA_NO_TSUYU, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DISSECTOR, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.COFFINMAKER, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.GRAVEDIGGER, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.DAMASCUS_INGOT, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.GIANT_BIRD_PLUME, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.CLAYMORE_GRIP, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.POLE_GRIP, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SPEAR_STRAP, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.ADAMAN_INGOT, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.ORICHALCUM_INGOT, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.TITANIS_EARRING, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.EVOKERS_BOOTS, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.OSTREGER_MITTS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PINEAL_HAT, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.TRACKERS_KECKS, droprate = xi.battlefield.dropChance.HIGH },
    },

    {
        { itemid = xi.items.CHUNK_OF_MYTHRIL_ORE, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.CHUNK_OF_DARKSTEEL_ORE, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.EBONY_LOG, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.PETRIFIED_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GOLD_INGOT, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.CHUNK_OF_PLATINUM_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SPOOL_OF_GOLD_THREAD, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.SPOOL_OF_MALBORO_FIBER, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SQUARE_OF_RAINBOW_CLOTH, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CORAL_FRAGMENT, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.RAM_HORN, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.DEMON_HORN, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.SQUARE_OF_RAXA, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
    },

    {
        { itemid = xi.items.DAMASCUS_INGOT, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.SQUARE_OF_DAMASCENE_CLOTH, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.PHOENIX_FEATHER, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.PHILOSOPHERS_STONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.VIAL_OF_BLACK_BEETLE_BLOOD, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SQUARE_OF_RAXA, droprate = xi.battlefield.dropChance.NORMAL },
    },
}

return content:register()
