-----------------------------------
-- Let Sleeping Dogs Die
-- Qu'Bia Arena BCNM30, Sky Orb
-- !additem 1552
-----------------------------------
local ID = require("scripts/zones/Qubia_Arena/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId        = xi.zone.QUBIA_ARENA,
    battlefieldId = xi.battlefield.id.LET_SLEEPING_DOGS_DIE,
    maxPlayers    = 6,
    levelCap      = 30,
    timeLimit     = utils.minutes(30),
    index         = 10,
    entryNpc      = "Burning_Circle",
    exitNpcs      = { "Burning_Circle_Exit" },
    requiredItems = { xi.items.SKY_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED, keep = true },
})

content:addEssentialMobs({ "Capelthwaite", "Guytrash", "Freybug", "Rongeur_Dos" })

content.loot =
{

    {
        { itemid = xi.items.WOLF_HIDE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.REVIVAL_TREE_ROOT, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MANNEQUIN_HEAD, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MANNEQUIN_BODY, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MANNEQUIN_HANDS, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ABSORB_AGI, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ABSORB_INT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ABSORB_VIT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ERASE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_UTSUSEMI_NI, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_DISPEL, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SINGERS_SHIELD, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.WARLOCKS_SHIELD, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MAGICIANS_SHIELD, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ASHIGARU_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.WIZARDS_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.KILLER_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
    },
}

return content:register()
