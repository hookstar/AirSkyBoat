-----------------------------------
-- Demolition Squad
-- Qu'Bia Arena BCNM60, Moon Orb
-- !additem 1130
-----------------------------------
local ID = require("scripts/zones/Qubia_Arena/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId        = xi.zone.QUBIA_ARENA,
    battlefieldId = xi.battlefield.id.DEMOLITION_SQUAD,
    maxPlayers    = 6,
    levelCap      = 60,
    timeLimit     = utils.minutes(30),
    index         = 8,
    entryNpc      = "Burning_Circle",
    exitNpcs      = { "Burning_Circle_Exit" },
    requiredItems = { xi.items.MOON_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED, keep = true  },
})

content:addEssentialMobs({ "Nephiyl_Rampartbreacher", "Nephiyl_Keepcollapser", "Nephiyl_Moatfiller", "Nephiyl_Pinnacletosser" })

content.loot =
{

    {
        { itemid = xi.items.MARINE_M_GLOVES, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MARINE_F_GLOVES, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.WOOD_GAUNTLETS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.WOOD_GLOVES, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CREEK_M_MITTS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CREEK_F_MITTS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RIVER_GAUNTLETS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DUNE_BRACERS, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.RED_CHIP, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BLUE_CHIP, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.YELLOW_CHIP, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GREEN_CHIP, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CLEAR_CHIP, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PURPLE_ROCK, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.WHITE_CHIP, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BLACK_CHIP, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MYTHRIL_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.EBONY_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PETRIFIED_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.AQUAMARINE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PAINITE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHRYSOBERYL, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MOONSTONE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SCROLL_OF_RERAISE_II, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_FLARE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_VALOR_MINUET_IV, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.HI_POTION_P3, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.HI_RERAISER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.VILE_ELIXIR, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.VILE_ELIXIR_P1, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
    },
}

return content:register()
