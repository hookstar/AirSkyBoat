-----------------------------------
-- Celery
-- Qu'Bia Arena BCNM60, Moon Orb
-- !additem 1130
-----------------------------------
local ID = require("scripts/zones/Qubia_Arena/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId        = xi.zone.QUBIA_ARENA,
    battlefieldId = xi.battlefield.id.CELERY,
    maxPlayers    = 3,
    levelCap      = 60,
    timeLimit     = utils.minutes(15),
    index         = 16,
    entryNpc      = "Burning_Circle",
    exitNpcs      = { "Burning_Circle_Exit" },
    requiredItems = { xi.items.MOON_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED, keep = true  },
})

content:addEssentialMobs({ "Annihilated_Anthony", "Shredded_Samson", "Mauled_Murdock", "Punctured_Percy" })

content.loot =
{

    {
        { itemid = xi.items.LIBATION_ABJURATION, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.OBLATION_ABJURATION, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.SQUARE_OF_RAINBOW_CLOTH, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.SQUARE_OF_SILK_CLOTH, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.SQUARE_OF_SILK_CLOTH, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.SQUARE_OF_SILK_CLOTH, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.TELEPORT_RING_DEM, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TELEPORT_RING_MEA, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.NURSEMAIDS_HARP, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TRAILERS_KUKRI, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.WALKURE_MASK, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.AQUAMARINE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHRYSOBERYL, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DARKSTEEL_INGOT, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.EBONY_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.FLUORITE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GOLD_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HI_RERAISER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.JADEITE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MAHOGANY_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MOONSTONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MYTHRIL_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PAINITE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RED_ROCK, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.STEEL_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SUNSTONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TRANSLUCENT_ROCK, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.WHITE_ROCK, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.VILE_ELIXIR_P1, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ZIRCON, droprate = xi.battlefield.dropChance.NORMAL },
    },

}

return content:register()
