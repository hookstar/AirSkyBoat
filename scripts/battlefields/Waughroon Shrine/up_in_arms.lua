-----------------------------------
-- Up in Arms
-- Waughroon Shrine BCNM60, Moon Orb
-- !additem 1130
-----------------------------------
local ID = require("scripts/zones/Waughroon_Shrine/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.WAUGHROON_SHRINE,
    battlefieldId    = xi.battlefield.id.UP_IN_ARMS,
    maxPlayers       = 3,
    levelCap         = 60,
    timeLimit        = utils.minutes(15),
    index            = 15,
    entryNpc         = "Burning_Circle",
    exitNpc          = "Burning_Circle", "Burning_Circle", "Burning_Circle",
    requiredItems = { xi.items.MOON_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "Fee" })

content.loot =
{

    {
        { itemid = xi.items.BLACK_PEARL, droprate = xi.battlefield.dropChance.NORMAL },
    },
    {
        quantity = 2,
        { itemid = xi.items.PEARL, droprate = xi.battlefield.dropChance.NORMAL },
    },
    {
        quantity = 3,
        { itemid = xi.items.OXBLOOD, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.TELEPORT_RING_ALTEP, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TELEPORT_RING_DEM, droprate = xi.battlefield.dropChance.HIGH },
    },

    {
        { itemid = xi.items.AJARI_BEAD_NECKLACE, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.PHILOMATH_STOLE, droprate = xi.battlefield.dropChance.VERY_LOW },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.KRAKEN_CLUB, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.WALKURE_MASK, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.AQUAMARINE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.CHRYSOBERYL, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.DARKSTEEL_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.EBONY_LOG, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.HI_RERAISER, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.GOLD_INGOT, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.JADEITE, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.MYTHRIL_INGOT, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.MOONSTONE, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.PAINITE, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.STEEL_INGOT, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.SUNSTONE, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.TRANSLUCENT_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.VILE_ELIXIR_P1, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.YELLOW_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.ZIRCON, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.RED_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.MAHOGANY_LOG, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.BLUE_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.FLUORITE, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.PURPLE_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.GREEN_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.WHITE_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
    },
}

return content:register()
