-----------------------------------
-- ENM: You Are What You Eat
-- Zone: Spire of Dem
-----------------------------------
local ID = require("scripts/zones/Spire_of_Dem/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/teleports")
require("scripts/globals/keyitems")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.SPIRE_OF_DEM,
    battlefieldId    = xi.battlefield.id.YOU_ARE_WHAT_YOU_EAT,
    maxPlayers       = 18,
    levelCap         = 30,
    timeLimit        = utils.minutes(30),
    index            = 1,
    entryNpc         = "_0j0",
    exitNpc          = {"_0j1", "_0j2", "_0j3" },
    requiredKeyItems = { xi.ki.CENSER_OF_ANTIPATHY, message = ID.text.FADES_NOTHINGNESS },
    grantXP          = 3000,
})

content.groups =
{
    { mobs = { "Wanderer" } },
}

content:addEssentialMobs({ "Ingester" })

content.loot =
{
    {
        quantity = 3,
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.BITTER_CLUSTER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BURNING_CLUSTER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.FLEETING_CLUSTER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MALEVOLENT_CLUSTER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PROFANE_CLUSTER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RADIANT_CLUSTER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SOMBER_CLUSTER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.STARTLING_CLUSTER, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.VIOLENT_VISION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PAINFUL_VISION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TIMOROUS_VISION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BRILLIANT_VISION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.VENERABLE_VISION, droprate = xi.battlefield.dropChance.NORMAL },
    },
}

return content:register()
