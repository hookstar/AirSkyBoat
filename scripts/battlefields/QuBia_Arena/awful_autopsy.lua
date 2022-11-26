-----------------------------------
-- An Awful Autopsy
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
    battlefieldId = xi.battlefield.id.AWFUL_AUTOPSY,
    maxPlayers    = 3,
    levelCap      = 50,
    timeLimit     = utils.minutes(15),
    index         = 15,
    entryNpc      = "Burning_Circle",
    exitNpcs      = { "Burning_Circle_Exit" },
    requiredItems = { xi.items.COMET_ORB, keep = true, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED, },
})

content:addEssentialMobs({ "Chahnameeds_Stomach", "Chahnameeds_Intestines", "Chahnameeds_Liver" })

content.loot =
{

    {
        { itemid = xi.items.UNDEAD_SKIN, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.RIVAL_RIBBON, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SUPER_RIBBON, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.IVORY_MITTS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RUSH_GLOVES, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SLY_GAUNTLETS, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HATEFUL_COLLAR, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.STORM_GORGET, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.INTELLECT_TORQUE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BENIGN_NECKLACE, droprate = xi.battlefield.dropChance.NORMAL },

    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DARKSTEEL_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.EBONY_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PETRIFIED_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GOLD_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SCROLL_OF_QUAKE, droprate = xi.battlefield.dropChance.NORMAL },
    },
}

return content:register()
