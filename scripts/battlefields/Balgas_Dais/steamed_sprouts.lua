-----------------------------------
-- Steamed Sprouts BCNM 40 (STAR ORB)
-- Balgas Dais
-- !pos 298 -124 343 146
-----------------------------------
local ID = require("scripts/zones/Balgas_Dais/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content        = Battlefield:new({
    zoneId           = xi.zone.BALGAS_DAIS,
    battlefieldId    = xi.battlefield.id.STEAMED_SPROUTS,
    maxPlayers       = 6,
    levelCap         = 40,
    timeLimit        = utils.minutes(30),
    index            = 1,
    entryNpc         = "Burning_Circle",
    exitNpcs         = { "Burning_Circle_Exit", },
    requiredItems = { xi.items.STAR_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },

})

content:addEssentialMobs({ "Dvorovoi", "Domovoi" })

content.loot =
{
    {
        { itemid = xi.items.GOLD_BEASTCOIN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MYTHRIL_BEASTCOIN, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.VILE_ELIXER, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SURVIVAL_BELT, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.GUARDING_GORGET, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.ENHANCING_EARRING, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.BALANCE_BUCKLER, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.WHITE_ROCK, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.TRANSLUCENT_ROCK, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.PURPLE_ROCK, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.RED_ROCK, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.BLUE_ROCK, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.YELLOW_ROCK, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.GREEN_ROCK, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.BLACK_ROCK, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.GARNET, droprate =  xi.battlefield.dropChance.LOW },
        { itemid = xi.items.BLACK_PEARL, droprate =  xi.battlefield.dropChance.LOW },
        { itemid = xi.items.AMETRINE, droprate =  xi.battlefield.dropChance.LOW },
        { itemid = xi.items.PAINITE, droprate =  xi.battlefield.dropChance.LOW },
        { itemid = xi.items.PEARL, droprate =  xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.OAK_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GOSHENITE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SPHENE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ROSEWOOD_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TURQUOISE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SAPPHIRE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PERIDOT, droprate = xi.battlefield.dropChance.HIGH },
    },

    {
        { itemid = xi.items.NONE, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_REFRESH, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ERASE, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ABSORB_INT, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_PHALANX, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ICE_SPIKES, droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_UTSUSEMI_NI,droprate =xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.FIRE_SPIRIT_PACT, droprate =xi.battlefield.dropChance.NORMAL },
    },
}

return content:register()
