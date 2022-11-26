-----------------------------------
-- Infernal Swarm
-- Qu'Bia Arena KSNM30,Atropos Orb
-- !additem 1180
-----------------------------------
local ID = require("scripts/zones/Qubia_Arena/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId        = xi.zone.QUBIA_ARENA,
    battlefieldId = xi.battlefield.id.INFERNAL_SWARM,
    maxPlayers    = 6,
    timeLimit     = utils.minutes(30),
    index         = 3,
    entryNpc      = "Burning_Circle",
    exitNpcs      = { "Burning_Circle_Exit" },
    requiredItems = { xi.items.ATROPOS_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED, keep = true },
})

content:addEssentialMobs({ "Beelzebub", "Hell_Fly" })

content.loot =
{

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.EBONY_LOG, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.PHOENIX_FEATHER, droprate = xi.battlefield.dropChance.HIGH },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PHOENIX_FEATHER, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        quantity = 2,
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SOLDIERS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.KAMPFER_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MEDICINE_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SORCERERS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.FENCERS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ROGUES_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GUARDIAN_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SLAYERS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TAMERS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MINSTRELS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TRACKERS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RONINS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SHINOBI_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DRAKE_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CONJURER_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.OCEAN_SASH, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.FOREST_SASH, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.STEPPE_SASH, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.JUNGLE_SASH, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.STAFF_STRAP, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.CLAYMORE_GRIP, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.POLE_GRIP, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SPEAR_STRAP, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.PHILOSOPHERS_STONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PHOENIX_FEATHER, droprate = xi.battlefield.dropChance.HIGH },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SCROLL_OF_CURE_V, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SCROLL_OF_THUNDER_III, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SCROLL_OF_SHELL_IV, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.LIGHT_SPIRIT_PACT, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.CHUNK_OF_MYTHRIL_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_DARKSTEEL_ORE, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.CHUNK_OF_ADAMAN_ORE, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.CHUNK_OF_PLATINUM_ORE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SLAB_OF_GRANITE, droprate = xi.battlefield.dropChance.VERY_LOW },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PHOENIX_FEATHER, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.HI_RERAISER, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SQUARE_OF_RAINBOW_CLOTH, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.SPOOL_OF_GOLD_THREAD, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.MAHOGANY_LOG, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.PETRIFIED_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CORAL_FRAGMENT, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.RAM_HORN, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.DEMON_HORN, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.DAMASCUS_INGOT, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.SQUARE_OF_DAMASCENE_CLOTH, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.SPOOL_OF_MALBORO_FIBER, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.PHILOSOPHERS_STONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.VIAL_OF_BLACK_BEETLE_BLOOD, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SQUARE_OF_RAXA, droprate = xi.battlefield.dropChance.VERY_HIGH },
    },
}

return content:register()
