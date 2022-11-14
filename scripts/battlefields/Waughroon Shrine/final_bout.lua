-----------------------------------
-- The Final Bout
-- Waughroon Shrine BCNM50, Comet Orb
-- !additem COMET_ORB
-- !pos -345 104 -260 144
-----------------------------------
local ID = require("scripts/zones/Waughroon_Shrine/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.WAUGHROON_SHRINE,
    battlefieldId    = xi.battlefield.id.FINAL_BOUT,
    maxPlayers       = 3,
    levelCap         = 50,
    timeLimit        = utils.minutes(3),
    index            = 14,
    entryNpc         = "Burning_Circle",
    exitNpc          = "Burning_Circle", "Burning_Circle", "Burning_Circle",
    requiredItems = { xi.items.COMET_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "The_Waughroon_Kid", })

content.loot =
{

    {
        quantity = 2,
        { itemid = xi.items.BAG_OF_TREE_CUTTINGS, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.CLUMP_OF_BOYAHDA_MOSS, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.SCROLL_OF_QUAKE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PIECE_OF_WISTERIA_LUMBER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MAHOGANY_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.EBONY_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_FREEZE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DARKSTEEL_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_RAISE_II, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PETRIFIED_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GOLD_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CORAL_FRAGMENT, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.SHOCK_MASK, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SUPER_RIBBON, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RIVAL_RIBBON, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.IVORY_MITTS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SPIKED_FINGER_GAUNTLETS, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SLY_GAUNTLETS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RUSH_GLOVES, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MANA_CIRCLET, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HATEFUL_COLLAR, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ESOTERIC_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TEMPLARS_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HEAVY_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.INTELLECT_TORQUE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.STORM_GORGET, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BENIGN_NECKLACE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SNIPERS_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
    },
}

return content:register()