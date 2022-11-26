-----------------------------------
-- Brothers D'Aurphe
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
    battlefieldId = xi.battlefield.id.BROTHERS_D_AURPHE,
    maxPlayers    = 6,
    levelCap      = 60,
    timeLimit     = utils.minutes(30),
    index         = 11,
    entryNpc      = "Burning_Circle",
    exitNpcs      = { "Burning_Circle_Exit" },
    requiredItems = { xi.items.MOON_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED, }, keep = true
})

content:addEssentialMobs({ "Vaicoliaux_B_DAurphe", "Maldaramet_B_DAurphe", "Disfaurit_B_DAurphe", "Jeumouque_B_DAurphe" })

content.loot =
{

    {
        { itemid = xi.items.CREEK_M_CLOMPS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CREEK_F_CLOMPS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MARINE_M_BOOTS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MARINE_F_BOOTS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.WOOD_M_LEDELSENS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.WOOD_F_LEDELSENS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DUNE_SANDALS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RIVER_GAITERS, droprate = xi.battlefield.dropChance.NORMAL },

    },

    {
        { itemid = xi.items.CROSS_COUNTERS, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.CHRYSOBERYL, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.JADEITE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SUNSTONE, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.ZIRCON, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CLEAR_CHIP, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.RED_CHIP, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.YELLOW_CHIP, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.GOLD_INGOT, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.PURPLE_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.WHITE_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
    },

    {
        { itemid = xi.items.STEEL_INGOT, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.TRANSLUCENT_ROCK, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.DARKSTEEL_INGOT, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.PAINITE, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.EBONY_LOG, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.WHITE_CHIP, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MOONSTONE, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.ZIRCON, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.FLUORITE, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.GREEN_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.HI_RERAISER, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.VILE_ELIXIR_P1, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
    },

    {
        { itemid = xi.items.SCROLL_OF_FLARE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_VALOR_MINUET_IV, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SCROLL_OF_RERAISE_II, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.EURYTOS_BOW, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.MYTHRIL_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BLUE_CHIP, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.BLACK_CHIP, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.PURPLE_CHIP, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.GREEN_CHIP, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.MAHOGANY_LOG, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.RED_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.BLACK_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.GREEN_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.HI_POTION_P3, droprate = xi.battlefield.dropChance.NORMAL },
    },
}

return content:register()
