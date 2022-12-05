-----------------------------------
-- Area: Ghelsba Outpost
-- Name: Petrifying Pair (BCNM 30 Sky Orb)
-- !pos -165.357 -11.672 77.771 140
-----------------------------------
local ID = require("scripts/zones/Ghelsba_Outpost/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId        = xi.zone.GHELSBA_OUTPOST,
    battlefieldId = xi.battlefield.id.PETRIFYING_PAIR,
    maxPlayers    = 3,
    levelCap      = 30,
    timeLimit     = utils.minutes(15),
    index         = 3,
    entryNpc      = "Hut_Door",
    requiredItems = { xi.items.SKY_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "Kalamainu", "Kilioa" })

content.loot =
{

    {
        { itemid = xi.items.LIZARD_SKIN, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.LEAPING_BOOTS, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.STEEL_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ELM_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHESTNUT_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RAPIER_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCYTHE_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.KATANA_OBI, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.CHUNK_OF_IRON_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_MYTHRIL_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.IRON_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_SILVER_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.LAPIS_LAZULI, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PICK_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.AVATAR_BELT, droprate = xi.battlefield.dropChance.NORMAL },

    },

    {
        { itemid = xi.items.SCROLL_OF_ERASE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_DISPEL, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ABSORB_VIT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ABSORB_AGI, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ABSORB_INT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_UTSUSEMI_NI, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_MAGIC_FINALE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.JUG_OF_COLD_CARRION_BROTH, droprate = xi.battlefield.dropChance.NORMAL},
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.MYTHRIL_INGOT, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.CHUNK_OF_DARKSTEEL_ORE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SILVER_INGOT, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.LIGHT_OPAL, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.ONYX, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.TOURMALINE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CLEAR_TOPAZ, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.HI_ETHER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MACE_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SHIELD_BELT, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.GUN_BELT, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.SARASHI, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.SONG_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.STAFF_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.AXE_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CESTUS_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DAGGER_BELT, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.LANCE_BELT, droprate = xi.battlefield.dropChance.HIGH },
    },
}

return content:register()
