-----------------------------------
-- Divine Punishers BCNM 40 (MOON ORB)
-- Balgas Dais
-- !pos 298 -124 343 146
-----------------------------------
local ID = require("scripts/zones/Balgas_Dais/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.BALGAS_DAIS,
    battlefieldId    = xi.battlefield.id.DIVINE_PUNISHERS,
    maxPlayers       = 6,
    levelCap         = 60,
    timeLimit        = utils.minutes(30),
    index            = 2,
    entryNpc         = "Burning_Circle",
    exitNpcs         = { "Burning_Circle_Exit", },
    requiredItems = { xi.items.MOON_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },

})

content:addEssentialMobs({ "Voo_Tolu_the_Ghostfist", "Cuu_Doko_the_Blizzard","Zuu_Xowu_the_Darksmoke", "Gii_Jaha_the_Raucous","Aa_Nawu_the_Thunderblade", "Yoo_Mihi_the_Haze" })

content.loot =
{
    {
        { itemid = xi.items.FORSETIS_AXE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ARAMISS_RAPIER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SPARTAN_CESTI, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.DOMINION_MACE, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.FUMA_KYAHAN, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.PEACE_RING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ENHANCING_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MASTER_BELT, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.OCHIUDOS_KOTE, droprate = xi.battlefield.dropChance.VERY_LOW },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.HI_RERAISER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.VILE_ELIXIR_P1, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.PURPLE_ROCK, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TRANSLUCENT_ROCK, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RED_ROCK, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BLACK_ROCK, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.YELLOW_ROCK, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.WHITE_ROCK, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.PAINITE, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.AQUAMARINE, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.FLUORITE, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ZIRCON, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SUNSTONE, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHRYSOBERYL, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MOONSTONE, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.JADEITE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate =xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.MAHOGANY_LOG, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.EBONY_LOG, droprate =xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.STEEL_INGOT, droprate =  xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.MYTHRIL_INGOT, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DARKSTEEL_INGOT, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GOLD_INGOT, droprate =  xi.battlefield.dropChance.HIGH },
    },
}

return content:register()
