-----------------------------------
-- Idol Thoughts
-- Qu'Bia Arena BCNM50, Comet Orb
-- !additem 1177
-----------------------------------
local ID = require("scripts/zones/Qubia_Arena/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId        = xi.zone.QUBIA_ARENA,
    battlefieldId = xi.battlefield.id.IDOL_THOUGHTS,
    maxPlayers    = 6,
    levelCap      = 50,
    timeLimit     = utils.minutes(30),
    index         = 14,
    entryNpc      = "Burning_Circle",
    exitNpcs      = { "Burning_Circle_Exit" },
    requiredItems = { xi.items.COMET_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED, keep = true },
})

content.groups =

content:addEssentialMobs({ "Earth_Golem", "Fire_Golem", "Water_Golem", "Wind_Golem" })

content.loot =
{

    {
        { itemid = xi.items.GOLEM_SHARD, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.SLAB_OF_GRANITE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.LIBATION_ABJURATION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.OBLATION_ABJURATION, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_FREEZE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.OPTICAL_NEEDLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.KAKANPU, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MANTRA_COIN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.NAZAR_BONJUK, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SCROLL_OF_CURE_V, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SCROLL_OF_THUNDER_III, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SCROLL_OF_SHELL_IV, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.LIGHT_SPIRIT_PACT, droprate = xi.battlefield.dropChance.NORMAL },
    },


}

return content:register()
