-----------------------------------
-- A (BCNM 30 Sky Orb)
-- !pos -165.357 -11.672 77.771 140
-----------------------------------
local ID = require("scripts/zones/Ghelsba_Outpost/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId        = xi.zone.GHELSBA_OUTPOST,
    battlefieldId = xi.battlefield.id.TOADAL_RECALL,
    maxPlayers    = 6,
    levelCap      = 30,
    timeLimit     = utils.minutes(30),
    index         = 4,
    entryNpc      = "Hut_Door",
    requiredItems = { xi.items.SKY_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "Toadpillow", "Toadsquab", "Toadbolster", "Toadcushion" })

content.loot =
{

    {
        { itemid = xi.items.KING_TRUFFLE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.JUG_OF_SEEDBED_SOIL, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MAGICIANS_SHIELD, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MERCENARYS_TARGE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BEATERS_ASPIS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PILFERERS_ASPIS, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TRIMMERS_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GENIN_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.WARLOCKS_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SCROLL_OF_UTSUSEMI_NI, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_PHALANX, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ERASE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.MANNEQUIN_HEAD, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MANNEQUIN_BODY, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MANNEQUIN_HANDS, droprate = xi.battlefield.dropChance.NORMAL },

    },
}

return content:register()
