-----------------------------------
-- Wild Wild Whiskers BCNM 60 (Moon Orb)
-- Balgas Dais
-- !pos 298 -124 343 146
-----------------------------------
local ID = require("scripts/zones/Balgas_Dais/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.BALGAS_DAIS,
    battlefieldId    = xi.battlefield.id.WILD_WILD_WHISKERS,
    maxPlayers       = 3,
    levelCap         = 60,
    timeLimit        = utils.minutes(15),
    index            = 14,
    entryNpc         = "Burning_Circle",
    exitNpcs         = { "Burning_Circle_Exit", },
    requiredItems = { xi.items.MOON_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },

})

content:addEssentialMobs({ "Macan_Gadangan" })

content.loot =
{
    {
        { itemid = xi.items.HIGH_QUALITY_COEURL_HIDE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.HIGH_QUALITY_COEURL_HIDE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.HIGH_QUALITY_COEURL_HIDE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.CHUNK_OF_ADAMAN_ORE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.HERMES_QUENCHER, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.ICARUS_WING, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.GLEEMANS_BELT, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.PENITENTS_ROPE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.TELEPORT_RING_MEA, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.TELEPORT_RING_YHOAT, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate =  xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.WALKURE_MASK, droprate =  xi.battlefield.dropChance.LOW },
        { itemid = xi.items.HI_RERAISER, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.EBONY_LOG, droprate =  xi.battlefield.dropChance.EXTREMELY_LOW },
    },

    {
        { itemid = xi.items.YELLOW_ROCK, droprate =xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.BLACK_ROCK, droprate =xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.AQUAMARINE, droprate =xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.RED_ROCK, droprate =xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.BLUE_ROCK, droprate =xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.PURPLE_ROCK, droprate =xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.MAHOGANY_LOG,droprate =xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.CHRYSOBERYL, droprate =xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.ZIRCON, droprate =xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.STEEL_INGOT, droprate =xi.battlefield.dropChance.LOW },
        { itemid = xi.items.DARKSTEEL_INGOT, droprate =xi.battlefield.dropChance.LOW },
        { itemid = xi.items.TRANSLUCENT_ROCK, droprate =xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SUNSTONE, droprate =xi.battlefield.dropChance.LOW },
        { itemid = xi.items.MOONSTONE, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MYTHRIL_INGOT,droprate =xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.FLUORITE, droprate =xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.GOLD_INGOT, droprate =xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.JADEITE, droprate =xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.PAINITE,droprate =xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.VILE_ELIXIR_P1, droprate =xi.battlefield.dropChance.EXTREMELY_HIGH },
    },
}

return content:register()
