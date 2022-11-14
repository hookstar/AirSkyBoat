-----------------------------------
-- Grimshell Shocktroopers
-- BCNM Grimshell Shocktroopers
-- !additem Moon_Orb
-- !pos -345 104 -260 144
-----------------------------------
local ID = require("scripts/zones/Waughroon_Shrine/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.WAUGHROON_SHRINE,
    battlefieldId    = xi.battlefield.id.GRIMSHELL_SHOCKTROOPERS,
    maxPlayers       = 6,
    levelCap         = 60,
    timeLimit        = utils.minutes(30),
    index            = 2,
    entryNpc         = "Burning_Circle",
    exitNpc          = "Burning_Circle", "Burning_Circle", "Burning_Circle",
    requiredItems = { xi.items.MOON_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})


content:addEssentialMobs({ "YoBhu_Hideousmask", "ZoDhu_Legslicer", "KaNha_Jabbertongue", "BiFho_Jestergrin", "KuTya_Hotblood", "EaTho_Cruelheart", })

content.loot =
{

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.ASSAULT_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.VASSAGOS_SCYTHE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHICKEN_KNIFE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.FEY_WAND, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ASTRAL_SHIELD, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ENHANCING_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.MYTHRIL_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.STEEL_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GOLD_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DARKSTEEL_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.EBONY_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHRYSOBERYL, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.FLUORITE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.JADEITE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SCROLL_OF_RAISE_II, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.HI_RERAISER, droprate = xi.battlefield.dropChance.NORMAL },
    },
}

return content:register()
