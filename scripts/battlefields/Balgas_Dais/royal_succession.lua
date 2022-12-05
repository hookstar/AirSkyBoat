-----------------------------------
-- Royal Succession BCNM 40 (STAR ORB)
-- Balgas Dais
-- !pos 298 -124 343 146
-- !gotoid 17784905
-----------------------------------
local ID = require("scripts/zones/Balgas_Dais/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.BALGAS_DAIS,
    battlefieldId    = xi.battlefield.id.ROYAL_SUCCESSION,
    maxPlayers       = 3,
    levelCap         = 40,
    timeLimit        = utils.minutes(15),
    index            = 12,
    entryNpc         = "Burning_Circle",
    exitNpcs         = { "Burning_Circle_Exit", },
    requiredItems = { xi.items.STAR_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },

})

content:addEssentialMobs({ "Opo-opo_Monarch", "Opo-opo_Heir", "Myrmidon_Spo-spo", "Myrmidon_Apu-apu", "Myrmidon_Epa-epa" })

content.loot =
{
    {
        { itemid = xi.items.BUNCH_OF_WILD_PAMAMAS, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DUSKY_STAFF, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.JONGLEURS_DAGGER, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.CALVELEYS_DAGGER, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SEALED_MACE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.HIMMEL_STOCK, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.KAGEHIDE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.OHAGURO, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.GENIN_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.AGILE_GORGET, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.JAGD_GORGET, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.TURQUOISE, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.BUNCH_OF_PAMAMAS, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.SQUARE_OF_SILK_CLOTH, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.ROSEWOOD_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PEARL, droprate = xi.battlefield.dropChance.HIGH },
    },

    {
        { itemid = xi.items.SCROLL_OF_PHALANX, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ABSORB_INT, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_REFRESH, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ERASE, droprate =xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GOLD_BEASTCOIN, droprate =xi.battlefield.dropChance.LOW },
    },
}

return content:register()
