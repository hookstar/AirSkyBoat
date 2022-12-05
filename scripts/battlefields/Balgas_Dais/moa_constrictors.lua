-----------------------------------
-- Moa Constrictors KS30 (ATROPOS ORB)
-- Balgas Dais
-- !pos 298 -124 343 146
-----------------------------------
local ID = require("scripts/zones/Balgas_Dais/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.BALGAS_DAIS,
    battlefieldId    = xi.battlefield.id.MOA_CONSTRICTORS,
    maxPlayers       = 6,
    timeLimit        = utils.minutes(30),
    index            = 17,
    entryNpc         = "Burning_Circle",
    exitNpcs         = { "Burning_Circle_Exit", },
    requiredItems = { xi.items.ATROPOS_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },

})

content:addEssentialMobs({ "Giant_Moa" })

content.loot =
{
    {
        quantity = 2,
        { itemid = xi.items.COCKATRICE_SKIN, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.DODO_SKIN, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.EXPUNGER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MORGENSTERN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HEART_SNATCHER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GRAVEDIGGER, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.OSTREGER_MITTS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PINEAL_HAT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.EVOKERS_BOOTS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TRACKERS_KECKS, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.ADAMAN_INGOT, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ORICHALCUM_INGOT, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ABSORBING_SHIELD, droprate =  xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.POLE_GRIP, droprate =xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SPEAR_STRAP, droprate =xi.battlefield.dropChance.LOW },
        { itemid = xi.items.CLAYMORE_GRIP, droprate =xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.CHUNK_OF_MYTHRIL_ORE, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_DARKSTEEL_ORE, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MAHOGANY_LOG, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.EBONY_LOG, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PETRIFIED_LOG, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_GOLD_ORE, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_PLATINUM_ORE, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_GOLD_ORE, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SQUARE_OF_RAINBOW_CLOTH, droprate =xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.HANDFUL_OF_WYVERN_SCALES, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CORAL_FRAGMENT, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RAM_HORN, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DEMON_HORN, droprate =xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.HI_RERAISER, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.VILE_ELIXIR, droprate =xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.DAMASCUS_INGOT, droprate =xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.SQUARE_OF_DAMASCENE_CLOTH, droprate =xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.PHOENIX_FEATHER, droprate =xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.PHILOSOPHERS_STONE, droprate =xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.VIAL_OF_BLACK_BEETLE_BLOOD, droprate =xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.SQUARE_OF_RAXA, droprate =xi.battlefield.dropChance.LOW },
    },
}

return content:register()
