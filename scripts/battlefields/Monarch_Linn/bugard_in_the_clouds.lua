-----------------------------------
-- ENM: Bugard in the Clouds
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
    battlefieldId    = xi.battlefield.id.BUGARD_IN_THE_CLOUDS,
    maxPlayers       = 18,
    levelCap         = 50,
    timeLimit        = utils.minutes(15),
    index            = 4,
    entryNpc         = "Spatial_Displacement",
    exitNpc          = "Spatial_Displacement",
    requiredKeyItems = { xi.ki.MONARCH_BEARD, message = ID.text.KI_TORN },
    grantXP          = 2500,
})

content:addEssentialMobs({ "Hotupuku" })

content.loot =
{
    {
        quantity = 2,
        { itemid = xi.items.ALUMINUM_ORE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.CLOUD_EVOKER, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.CHANTERS_STAFF, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.KORYUKAGEMITSU, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.BUBOSO, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.KSHAMA_RING_NO_2, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.KSHAMA_RING_NO_4, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.KSHAMA_RING_NO_5, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.KSHAMA_RING_NO_9, droprate = xi.battlefield.dropChance.LOW },
    },
}

return content:register()
