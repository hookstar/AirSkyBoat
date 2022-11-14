-----------------------------------
-- The Hills are Alive
-- Waughroon Shrine KSNM99, Themis Orb
-- !additem Themis_Orb
-- !pos -345 104 -260 144
-----------------------------------
local ID = require("scripts/zones/Waughroon_Shrine/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.WAUGHROON_SHRINE,
    battlefieldId    = xi.battlefield.id.HILLS_ARE_ALIVE,
    maxPlayers       = 18,
    timeLimit        = utils.minutes(30),
    index            = 12,
    entryNpc         = "Burning_Circle",
    exitNpc          = "Burning_Circle", "Burning_Circle", "Burning_Circle",
    requiredItems = { xi.items.THEMIS_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "Tartaruga_Gigante" })

content.loot =
{

    {
        { itemid = xi.items.BLUE_PONDWEED, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.HAVOC_SCYTHE, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.KRIEGSBEIL, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.LEOPARD_AXE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.LIBATION_ABJURATION, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.METEOR_CESTI, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.PURGATORY_MACE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SOMNUS_SIGNA, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.GAWAINS_AXE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GRIM_STAFF, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GROSVENEURS_BOW, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HARLEQUINS_HORN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.OBLATION_ABJURATION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.STYLET, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ZEN_POLE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.ADAMAN_CHAIN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ADAMANTOISE_SHELL, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PIECE_OF_ANGEL_SKIN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.STRIDER_BOOTS, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        quantity = 2,
        { itemid = xi.items.CORAL_FRAGMENT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_DARKSTEEL_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DEMON_HORN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.EBONY_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_GOLD_ORE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SPOOL_OF_GOLD_THREAD, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SLAB_OF_GRANITE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HI_RERAISER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MAHOGANY_LOG, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.PETRIFIED_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_PLATINUM_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SQUARE_OF_RAINBOW_CLOTH, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RAM_HORN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SQUARE_OF_RAXA, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.RERAISER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HANDFUL_OF_WYVERN_SCALES, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.VILE_ELIXIR, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.VILE_ELIXIR_P1, droprate = xi.battlefield.dropChance.HIGH },
    },

    {
        { itemid = xi.items.ADAMAN_CHAIN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ADAMANTOISE_EGG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.AGILITY_POTION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DEXTERITY_POTION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.STRENGTH_POTION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.VITALITY_POTION, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.CHUNK_OF_ADAMAN_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHARISMA_POTION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_DARKSTEEL_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ICARUS_WING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.INTELLIGENCE_POTION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MIND_POTION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_ORICHALCUM_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_PLATINUM_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PRINCELY_SWORD, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.VIAL_OF_BLACK_BEETLE_BLOOD, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SQUARE_OF_DAMASCENE_CLOTH, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DAMASCUS_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SPOOL_OF_MALBORO_FIBER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PHILOSOPHERS_STONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PHOENIX_FEATHER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SQUARE_OF_RAXA, droprate = xi.battlefield.dropChance.NORMAL },

    },

    {
        { itemid = xi.items.DIVINE_LOG, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.LACQUER_TREE_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PETRIFIED_LOG, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SQUARE_OF_SHINING_CLOTH, droprate = xi.battlefield.dropChance.NORMAL },
    },
}

return content:register()
