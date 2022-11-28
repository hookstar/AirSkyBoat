-----------------------------------
-- ENM: PLaying Host
-- Zone: Spire of Mea
-----------------------------------
local ID = require("scripts/zones/Spire_of_Mea/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/teleports")
require("scripts/globals/keyitems")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.SPIRE_OF_MEA,
    battlefieldId    = xi.battlefield.id.PLAYING_HOST,
    maxPlayers       = 18,
    levelCap         = 30,
    timeLimit        = utils.minutes(30),
    index            = 1,
    entryNpc         = "_0l0",
    exitNpc          = {"_0l1", "_0l2", "_0l3" },
    requiredKeyItems = { xi.ki.CENSER_OF_ANIMUS, message = ID.text.FADES_NOTHINGNESS },
    grantXP          = 3000,
})

content:addEssentialMobs({ "Envier" })

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
        { itemid = xi.items.SOLEMN_VISION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.VALIANT_VISION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PRETENTIOUS_VISION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MALICIOUS_VISION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PRISTINE_VISION, droprate = xi.battlefield.dropChance.NORMAL },
    },
}

return content:register()
