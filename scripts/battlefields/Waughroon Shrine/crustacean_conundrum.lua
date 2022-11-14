-----------------------------------
-- Crustacean Conundrum
-- BCNM Crustacean Conundrum
-- !additem CLOUDY_ORB
-- !pos -345 104 -260 144
-----------------------------------
local ID = require("scripts/zones/Waughroon_Shrine/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.WAUGHROON_SHRINE,
    battlefieldId    = xi.battlefield.id.CRUSTACEAN_CONUNDRUM,
    maxPlayers       = 3,
    levelCap         = 20,
    timeLimit        = utils.minutes(15),
    index            = 10,
    entryNpc         = "Burning_Circle",
    exitNpc          = "Burning_Circle", "Burning_Circle", "Burning_Circle",
    requiredItems = { xi.items.CLOUDY_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "Heavy_Metal_Crab", "Metal_Crab" })

content.loot =
{

    {
        { itemid = xi.items.LAND_CRAB_MEAT, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.MANNEQUIN_BODY, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CRAB_SHELL, droprate = xi.battlefield.dropChance.HIGH },
    },

    {
        { itemid = xi.items.BEETLE_QUIVER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.JUG_OF_FISH_OIL_BROTH, droprate = xi.battlefield.dropChance.HIGH },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BRASS_INGOT, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.BRONZE_SHEET, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.BRONZE_INGOT, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MYTHRIL_BEASTCOIN, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.MANNEQUIN_HANDS, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.MANNEQUIN_HEAD, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.PLATOON_CESTI, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PLATOON_DAGGER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PLATOON_AXE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PLATOON_BOW, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PLATOON_LANCE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PLATOON_SWORD, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PLATOON_MACE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PLATOON_ZAGHNAL, droprate = xi.battlefield.dropChance.NORMAL },
    },
}

return content:register()
