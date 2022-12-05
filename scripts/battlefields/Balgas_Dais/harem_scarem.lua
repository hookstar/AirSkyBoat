-----------------------------------
-- Harem Scarem BCNM 30 (SKY ORB)
-- Balgas Dais
-- !pos 298 -124 343 146
-----------------------------------
local ID = require("scripts/zones/Balgas_Dais/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.BALGAS_DAIS,
    battlefieldId    = xi.battlefield.id.HAREM_SCAREM,
    maxPlayers       = 6,
    levelCap         = 30,
    timeLimit        = utils.minutes(30),
    index            = 10,
    entryNpc         = "Burning_Circle",
    exitNpcs         = { "Burning_Circle_Exit", },
    requiredItems = { xi.items.SKY_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },

})

content:addEssentialMobs({ "Nenaunir", "Nenaunirs_Wife" })

content.loot =
{
    {
        { itemid = xi.items.DHALMEL_HIDE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GIANT_FEMUR, droprate = xi.battlefield.dropChance.NORMAL },
    },
    
    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SLICE_OF_DHALMEL_MEAT, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.MERCENARY_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BEATERS_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ESQUIRES_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HEALERS_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.WIZARDS_SHIELD, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TRIMMERS_ASPIS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.WYVERNS_TARGE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.GARNET, droprate =  xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SCROLL_OF_ERASE, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_DISPEL, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_MAGIC_FINALE, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_UTSUSEMI_NI, droprate =  xi.battlefield.dropChance.NORMAL },
    },
    {
        { itemid = xi.items.NONE, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SQUARE_OF_VELVET_CLOTH, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SQUARE_OF_LINEN_CLOTH, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SQUARE_OF_WOOL_CLOTH, droprate =xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate =xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.MANNEQUIN_HEAD, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MANNEQUIN_HANDS, droprate =xi.battlefield.dropChance.NORMAL },
    },
}

return content:register()
