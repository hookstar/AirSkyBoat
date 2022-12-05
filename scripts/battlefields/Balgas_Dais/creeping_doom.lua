-----------------------------------
-- Steamed Creeping Doom 30 (Sky ORB)
-- Balgas Dais
-- !pos 298 -124 343 146
-----------------------------------
local ID = require("scripts/zones/Balgas_Dais/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.BALGAS_DAIS,
    battlefieldId    = xi.battlefield.id.CREEPING_DOOM,
    maxPlayers       = 3,
    levelCap         = 30,
    timeLimit        = utils.minutes(15),
    index            = 8,
    entryNpc         = "Burning_Circle",
    exitNpcs         = { "Burning_Circle_Exit", },
    requiredItems = { xi.items.SKY_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
    gil              = 3000,

})

content:addEssentialMobs({ "Bitoso"})

content.loot =
{
    {
        { itemid = xi.items.SPOOL_OF_SILK_THREAD, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SPOOL_OF_SILK_THREAD, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        quantity = 2,
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SINGERS_EARRING, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.ASHIGARU_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MAGICIANS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.WARLOCKS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HEALERS_EARRING, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.ESQUIRES_EARRING, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.WIZARDS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.WYVERN_EARRING, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.MERCENARYS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.KILLER_EARRING, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.WRESTLERS_EARRING, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.GENIN_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BEATERS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PILFERERS_EARRING, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.TRIMMERS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SHEET_OF_BAST_PARCHMENT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HI_POTION, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.NONE, droprate =  xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.CHESTNUT_LOG, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HI_ETHER, droprate =  xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ERASE, droprate =xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SCROLL_OF_DISPEL, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_MAGIC_FINALE, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_UTSUSEMI_NI, droprate =xi.battlefield.dropChance.LOW },
    },

    {
        quantity = 2,
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.AMBER_STONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_DARKSTEEL_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ELM_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.IRON_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_IRON_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MYTHRIL_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_MYTHRIL_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ONYX, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SARDONYX, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SILVER_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_SILVER_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.STEEL_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TOURMALINE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.LIGHT_OPAL, droprate = xi.battlefield.dropChance.NORMAL },
    },
}

return content:register()
