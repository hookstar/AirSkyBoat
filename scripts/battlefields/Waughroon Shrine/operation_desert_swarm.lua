-----------------------------------
-- Operation Desert Storm
-- Waughroon Shrine KSNM30, Lachesis Orb
-- !additem 1178
-- !pos -345 104 -260 144
-----------------------------------
local ID = require("scripts/zones/Waughroon_Shrine/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.WAUGHROON_SHRINE,
    battlefieldId    = xi.battlefield.id.OPERATION_DESERT_SWARM,
    maxPlayers       = 6,
    timeLimit        = utils.minutes(30),
    index            = 17,
    entryNpc         = "Burning_Circle",
    exitNpc          = "Burning_Circle", "Burning_Circle", "Burning_Circle",
    requiredItems = { xi.items.LACHESIS_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "Platoon_Scorpion" })

content.loot =
{

    {
        { itemid = xi.items.HIGH_QUALITY_SCORPION_SHELL, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SERKET_RING, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.VENOMOUS_CLAW, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.EXPUNGER, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.HEART_SNATCHER, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.RAMPAGER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SENJUINRIKIO, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.ANUBISS_KNIFE, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.ORICHALCUM_INGOT, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.CLAYMORE_GRIP, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.POLE_GRIP, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SWORD_STRAP, droprate = xi.battlefield.dropChance.HIGH },
    },

    {
        { itemid = xi.items.HIERARCH_BELT, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.PALMERINS_SHIELD, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TRAINERS_GLOVES, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.WARWOLF_BELT, droprate = xi.battlefield.dropChance.HIGH },
    },

    {
        { itemid = xi.items.CORAL_FRAGMENT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_DARKSTEEL_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DEMON_HORN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.EBONY_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_GOLD_ORE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SPOOL_OF_GOLD_THREAD, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SLAB_OF_GRANITE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HI_RERAISER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MAHOGANY_LOG, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.PETRIFIED_LOG, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.CHUNK_OF_PLATINUM_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SQUARE_OF_RAINBOW_CLOTH, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RAM_HORN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SQUARE_OF_RAXA, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.RERAISER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HANDFUL_OF_WYVERN_SCALES, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.VILE_ELIXIR, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.VILE_ELIXIR_P1, droprate = xi.battlefield.dropChance.HIGH },
    },

    {
        { itemid = xi.items.VIAL_OF_BLACK_BEETLE_BLOOD, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SQUARE_OF_DAMASCENE_CLOTH, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.DAMASCUS_INGOT, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SPOOL_OF_MALBORO_FIBER, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.PHILOSOPHERS_STONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PHOENIX_FEATHER, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.SQUARE_OF_RAXA, droprate = xi.battlefield.dropChance.HIGH },
    },
}

return content:register()
