-----------------------------------
-- Early Bird Catches the Wyrm (KS99) Themis Orb
-- Balgas Dais
-- !pos 298 -124 343 146
-----------------------------------
local ID = require("scripts/zones/Balgas_Dais/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.BALGAS_DAIS,
    battlefieldId    = xi.battlefield.id.EARLY_BIRD_CATCHES_THE_WYRM,
    maxPlayers       = 18,
    timeLimit        = utils.minutes(60),
    index            = 11,
    entryNpc         = "Burning_Circle",
    exitNpcs         = { "Burning_Circle_Exit", },
    requiredItems = { xi.items.THEMIS_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },

})

content:addEssentialMobs({ "Wyrm" })

content.loot =
{
    {
        { itemid = xi.items.LIBATION_ABJURATION, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.GUESPIERE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HAVOC_SCYTHE, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.LEOPARD_AXE, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.NOKIZARU_SHURIKEN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SHINSOKU, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SOMNUS_SIGNA, droprate = xi.battlefield.dropChance.VERY_LOW },
    },

    {
        { itemid = xi.items.DIVINE_LOG, droprate =  xi.battlefield.dropChance.LOW },
        { itemid = xi.items.LACQUER_TREE_LOG, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PETRIFIED_LOG, droprate =  xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.SQUARE_OF_SHINING_CLOTH, droprate =  xi.battlefield.dropChance.VERY_LOW },
    },

    {
        { itemid = xi.items.OBLATION_ABJURATION, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BAYARDS_SWORD, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DREIZACK, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GRIM_STAFF, droprate =xi.battlefield.dropChance.LOW },
        { itemid = xi.items.GROSVENEURS_BOW, droprate =xi.battlefield.dropChance.LOW },
        { itemid = xi.items.STYLET,droprate =xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.UNSHO, droprate =xi.battlefield.dropChance.VERY_HIGH },
    },

    {
        { itemid = xi.items.DRAGON_HEART, droprate =  xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.SLICE_OF_DRAGON_MEAT, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.JUGGERNAUT, droprate =  xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SPEED_BELT, droprate =  xi.battlefield.dropChance.VERY_LOW },
    },

    {
        { itemid = xi.items.CORAL_FRAGMENT, droprate =  xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.CHUNK_OF_DARKSTEEL_ORE, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DEMON_HORN, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.EBONY_LOG, droprate =  xi.battlefield.dropChance.LOW },
        { itemid = xi.items.CHUNK_OF_GOLD_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SPOOL_OF_GOLD_THREAD, droprate =  xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.HI_RERAISER, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.MAHOGANY_LOG, droprate =  xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.CHUNK_OF_MYTHRIL_ORE, droprate =  xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.PETRIFIED_LOG, droprate =  xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.PHILOSOPHERS_STONE, droprate =  xi.battlefield.dropChance.LOW },
        { itemid = xi.items.CHUNK_OF_PLATINUM_ORE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.RAM_HORN, droprate =  xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.SQUARE_OF_RAXA, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.RERAISER, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.VILE_ELIXIR_P1, droprate =  xi.battlefield.dropChance.LOW },
        { itemid = xi.items.HANDFUL_OF_WYVERN_SCALES, droprate = xi.battlefield.dropChance.VERY_LOW },
    },
}

return content:register()
