-----------------------------------
-- Rapid Raptors BCNM 50 (Comet Ord)
-- Balgas Dais
-- !pos 298 -124 343 146
-----------------------------------
local ID = require("scripts/zones/Balgas_Dais/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.BALGAS_DAIS,
    battlefieldId    = xi.battlefield.id.RAPID_RAPTORS,
    maxPlayers       = 3,
    levelCap         = 50,
    timeLimit        = utils.minutes(15),
    index            = 13,
    entryNpc         = "Burning_Circle",
    exitNpcs         = { "Burning_Circle_Exit", },
    requiredItems = { xi.items.COMET_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },

})

content:addEssentialMobs({ "Dromiceiomimus" })

content.loot =
{
    {
        { itemid = xi.items.RAPTOR_SKIN, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.ADAMAN_INGOT, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.SLY_GAUNTLETS, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.SPIKED_FINGER_GAUNTLETS, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.RUSH_GLOVES, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RIVAL_RIBBON, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MANA_CIRCLET, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.IVORY_MITTS, droprate = xi.battlefield.dropChance.HIGH },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.STORM_GORGET, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.INTELLECT_TORQUE, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.BENIGN_NECKLACE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.HEAVY_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HATEFUL_COLLAR, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.ESOTERIC_MANTLE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.TEMPLARS_MANTLE, droprate = xi.battlefield.dropChance.VERY_HIGH },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MYTHRIL_INGOT, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.CHUNK_OF_IRON_ORE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.PETRIFIED_LOG, droprate = xi.battlefield.dropChance.HIGH },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RERAISER, droprate = xi.battlefield.dropChance.LOW },
    },

}

return content:register()
