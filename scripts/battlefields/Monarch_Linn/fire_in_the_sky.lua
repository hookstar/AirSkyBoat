-----------------------------------
-- ENM: Fire in the Sky
-- Zone: Monarch Linn
-- KI: Monarch Beard
-----------------------------------
local ID = require("scripts/zones/Monarch_Linn/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/keyitems")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.MONARCH_LINN,
    battlefieldId    = xi.battlefield.id.FIRE_IN_THE_SKY,
    maxPlayers       = 18,
    levelCap         = 40,
    timeLimit        = utils.minutes(15),
    index            = 2,
    entryNpc         = "Spatial_Displacement",
    exitNpc          = "Spatial_Displacement",
    requiredKeyItems = { xi.ki.MONARCH_BEARD, message = ID.text.KI_TORN },
    grantXP          = 2500,
})

content:addEssentialMobs({ "Razon" })

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
