-----------------------------------
-- Area: Monarch Linn
-- Name: Uninvited Guests
-----------------------------------
local ID = require("scripts/zones/Monarch_Linn/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/keyitems")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.MONARCH_LINN,
    battlefieldId    = xi.battlefield.id.UNINVITED_GUESTS,
    maxPlayers       = 18,
    timeLimit        = utils.minutes(30),
    index            = 6,
    entryNpc         = "Spatial_Displacement",
    exitNpc          = "Spatial_Displacement",
    requiredKeyItems = { xi.ki.MONARCH_LINN_PATROL_PERMIT, message = ID.text.KI_TORN },
    grantXP          = 2500,
})

content.groups =
{
    { mobs = { "Mammet-800" } },
}

content:addEssentialMobs({ "Mammet_Master" })

content.loot =
{
    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.CLOUD_EVOKER, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.THUGS_ZAMBURAK, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HORROR_VOULGE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.CROSSBOWMANS_RING, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.WOODSMAN_RING, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.ETHER_RING, droprate = xi.battlefield.dropChance.NORMAL },
    },
}

return content:register()
