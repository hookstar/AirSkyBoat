-----------------------------------
-- Royale Ramble KSNM 30 (LACHESIS ORB)
-- Balgas Dais
-- !pos 298 -124 343 146
-----------------------------------
local ID = require("scripts/zones/Balgas_Dais/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.BALGAS_DAIS,
    battlefieldId    = xi.battlefield.id.ROYALE_RAMBLE,
    maxPlayers       = 6,
    timeLimit        = utils.minutes(30),
    index            = 16,
    entryNpc         = "Burning_Circle",
    exitNpcs         = { "Burning_Circle_Exit", },
    requiredItems = { xi.items.LACHESIS_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "King_of_Cups", "King_of_Batons", "King_of_Swords", "King_of_Coins", "Queen_of_Cups", "Queen_of_Batons"})

content.loot =
{
    {
        { itemid = xi.items.ORICHALCUM_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.COFFINMAKER, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.DESTROYERS, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.DISSECTOR, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GONDO_SHIZUNORI, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.HIERARCH_BELT, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.PALMERINS_SHIELD, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TRAINERS_GLOVES, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.WARWOLF_BELT, droprate = xi.battlefield.dropChance.HIGH },
    },

    {
        { itemid = xi.items.NONE, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CLAYMORE_GRIP, droprate =  xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.POLE_GRIP, droprate =  xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.SWORD_STRAP, droprate =  xi.battlefield.dropChance.LOW },
        { itemid = xi.items.TRUMP_CROWN, droprate =  xi.battlefield.dropChance.HIGH },
    },

    {
        { itemid = xi.items.KING_OF_CUPS_CARD, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.KING_OF_BATONS_CARD, droprate =xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.KING_OF_SWORDS_CARD, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.KING_OF_COINS_CARD, droprate =xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.CHUNK_OF_MYTHRIL_ORE, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_DARKSTEEL_ORE, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MAHOGANY_LOG, droprate =xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.EBONY_LOG, droprate =xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.PETRIFIED_LOG, droprate =xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.CHUNK_OF_GOLD_ORE, droprate =xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.CHUNK_OF_PLATINUM_ORE, droprate =xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SPOOL_OF_GOLD_THREAD, droprate =xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SQUARE_OF_RAINBOW_CLOTH, droprate =xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.SPOOL_OF_MALBORO_FIBER, droprate =xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.HANDFUL_OF_WYVERN_SCALES, droprate =xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.CORAL_FRAGMENT, droprate =xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.RAM_HORN, droprate =xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.DEMON_HORN, droprate =xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.PHILOSOPHERS_STONE, droprate =xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.SLAB_OF_GRANITE, droprate =xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.RERAISER, droprate =xi.battlefield.dropChance.LOW },
        { itemid = xi.items.HI_RERAISER, droprate =xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.VILE_ELIXIR, droprate =xi.battlefield.dropChance.LOW },
        { itemid = xi.items.VILE_ELIXIR_P1, droprate =xi.battlefield.dropChance.EXTREMELY_LOW },
    },

    {
        { itemid = xi.items.DAMASCUS_INGOT, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SQUARE_OF_DAMASCENE_CLOTH, droprate =  xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.SPOOL_OF_MALBORO_FIBER, droprate =  xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.PHOENIX_FEATHER, droprate =  xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.PHILOSOPHERS_STONE, droprate =  xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.VIAL_OF_BLACK_BEETLE_BLOOD, droprate =  xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SQUARE_OF_RAXA, droprate =  xi.battlefield.dropChance.VERY_HIGH },
    },
}

return content:register()
