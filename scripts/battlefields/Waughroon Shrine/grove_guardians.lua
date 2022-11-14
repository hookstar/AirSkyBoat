-----------------------------------
-- Grove Guardians
-- Waughroon Shrine BCNM30, Sky Orb
-- !additem SKY_ORB
-- !pos -345 104 -260 144
-----------------------------------
local ID = require("scripts/zones/Waughroon_Shrine/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.WAUGHROON_SHRINE,
    battlefieldId    = xi.battlefield.id.GROVE_GUARDIANS,
    maxPlayers       = 6,
    levelCap         = 30,
    timeLimit        = utils.minutes(30),
    index            = 11,
    entryNpc         = "Burning_Circle",
    exitNpc          = "Burning_Circle", "Burning_Circle", "Burning_Circle",
    requiredItems = { xi.items.COMET_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})


content:addEssentialMobs({ "Metsanhaltija", "Metsanneitsyt" })

content.loot =
{

    {
        { itemid = xi.items.MANNEQUIN_BODY, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.MANNEQUIN_HANDS, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.WRESTLERS_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MAGICIANS_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PILFERERS_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HEALERS_SHIELD, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GENIN_ASPIS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.KILLER_TARGE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.STAFF_BELT, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BAG_OF_HERB_SEEDS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BAG_OF_VEGETABLE_SEEDS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BAG_OF_GRAIN_SEEDS, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SCROLL_OF_DISPEL, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_UTSUSEMI_NI, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_MAGIC_FINALE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ERASE, droprate = xi.battlefield.dropChance.HIGH },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SCORPION_QUIVER, droprate = xi.battlefield.dropChance.NORMAL },
    },
}
return content:register()
