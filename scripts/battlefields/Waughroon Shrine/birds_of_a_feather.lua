-----------------------------------
-- Birds of a Feather
-- BCNM Birds of a Feather
-- !additem Sky_Orb
-- !pos -345 104 -260 144
-----------------------------------
local ID = require("scripts/zones/Waughroon_Shrine/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId        = xi.zone.WAUGHROON_SHRINE,
    battlefieldId = xi.battlefield.id.BIRDS_OF_A_FEATHER,
    maxPlayers    = 3,
    levelCap      = 30,
    timeLimit     = utils.minutes(30),
    index         = 9,
    entryNpc      = "Burning_Circle",
    exitNpc       = "Burning_Circle", "Burning_Circle", "Burning_Circle",
    requiredItems = { xi.items.SKY_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "Macha", "Neman" })

content.loot =
{

    {
        { itemid = xi.items.BIRD_FEATHER, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.ASHIGARU_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TRIMMERS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BEATERS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HEALERS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MERCENARYS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SINGERS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.WIZARDS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.WRESTLERS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.AVATAR_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DAGGER_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.LANCE_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RAPIER_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SARASHI, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCYTHE_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SHIELD_BELT, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_DISPEL, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ERASE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_MAGIC_FINALE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_UTSUSEMI_NI, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BIRD_EGG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BIRD_FEATHER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHESTNUT_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ELM_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HI_ETHER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HORN_QUIVER, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.IRON_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.LAPIS_LAZULI, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.LIGHT_OPAL, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MYTHRIL_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ONYX, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SILVER_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
    },
}

return content:register()

