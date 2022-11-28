-----------------------------------
-- ENM: Simulant
-- Zone: Spire of Holla
-----------------------------------
local ID = require("scripts/zones/Spire_of_Holla/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/teleports")
require("scripts/globals/keyitems")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.SPIRE_OF_HOLLA,
    battlefieldId    = xi.battlefield.id.SIMULANT,
    maxPlayers       = 18,
    levelCap         = 30,
    timeLimit        = utils.minutes(30),
    index            = 1,
    entryNpc         = "_0h0",
    exitNpc          = {"_0h1", "_0h2", "_0h3" },
    requiredKeyItems = { xi.ki.CENSER_OF_ABANDONMENT, message = ID.text.FADES_NOTHINGNESS },
    grantXP          = 3000,
})

content:addEssentialMobs({ "Cogitator" })

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
        { itemid = xi.items.VERNAL_VISION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PUNCTILIOUS_VISION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.AUDACIOUS_VISION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.VIVID_VISION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ENDEARING_VISION, droprate = xi.battlefield.dropChance.NORMAL },
    },
}

return content:register()
