-----------------------------------
-- ENM: Bad Seed
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
    battlefieldId    = xi.battlefield.id.BAD_SEED,
    maxPlayers       = 18,
    levelCap         = 40,
    timeLimit        = utils.minutes(30),
    index            = 3,
    entryNpc         = "Spatial_Displacement",
    exitNpc          = "Spatial_Displacement",
    requiredKeyItems = { xi.ki.MONARCH_BEARD, message = ID.text.KI_TORN },
    grantXP          = 2500,
})

content:addEssentialMobs({ "Hamadryad" })

content.loot =
{
    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.CLOUD_EVOKER, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.REVEREND_SASH, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.VANGUARD_BELT, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.CROSSBOWMANS_RING, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.WOODSMAN_RING, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.ETHER_RING, droprate = xi.battlefield.dropChance.LOW },
    },
}

return content:register()
