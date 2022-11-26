-----------------------------------
-- Factory Rejects
-- Qu'Bia Arena BCNM40, Star Orb
-- !additem 1131
-----------------------------------
local ID = require("scripts/zones/Qubia_Arena/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId        = xi.zone.QUBIA_ARENA,
    battlefieldId = xi.battlefield.id.FACTORY_REJECTS,
    maxPlayers    = 6,
    levelCap      = 40,
    timeLimit     = utils.minutes(30),
    index         = 13,
    entryNpc      = "Burning_Circle",
    exitNpcs      = { "Burning_Circle_Exit" },
    requiredItems = { xi.items.STAR_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED, keep = true  },
})

content.groups =

content:addEssentialMobs({ "Doll_Factory", "Generic_Doll" })

content.loot =
{

    {
        { itemid = xi.items.DOL_SHARD, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.VIAL_OF_MERCURY, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GOLD_BEASTCOIN, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RAIFU, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BUZZARD_TUCK, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.JONGLEURS_DAGGER, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.REARGUARD_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.AGILE_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SCROLL_OF_UTSUSEMI_NI, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_PHALANX, droprate = xi.battlefield.dropChance.NORMAL },
    },
}

return content:register()
