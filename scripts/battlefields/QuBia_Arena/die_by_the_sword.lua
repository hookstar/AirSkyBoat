-----------------------------------
-- Die by the Sword
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
    battlefieldId = xi.battlefield.id.DIE_BY_THE_SWORD,
    maxPlayers    = 3,
    levelCap      = 30,
    timeLimit     = utils.minutes(15),
    index         = 9,
    entryNpc      = "Burning_Circle",
    exitNpcs      = { "Burning_Circle_Exit" },
    requiredItems = { xi.items.SKY_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED, keep = true  },
})

content:addEssentialMobs({ "Gladiatorial_Weapon" })

content.loot =
{

    {
        { itemid = xi.items.RUSTY_PICK, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.ASHIGARU_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ESQUIRES_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MAGICIANS_EARRING, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.MERCENARYS_EARRING, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.PILFERERS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SINGERS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TRIMMERS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.WARLOCKS_EARRING, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.WIZARDS_EARRING, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.WRESTLERS_EARRING, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.WYVERN_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BEATERS_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GENIN_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.KILLER_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.AVATAR_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.AXE_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CESTUS_BELT, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.DAGGER_BELT, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.GUN_BELT, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.KATANA_OBI, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.LANCE_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SARASHI, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SCYTHE_BELT, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SHIELD_BELT, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SONG_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.STAFF_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PICK_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RAPIER_BELT, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.SCROLL_OF_ERASE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_DISPEL, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_MAGIC_FINALE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_UTSUSEMI_NI, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.GOLD_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PLATINUM_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PETRIFIED_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RUSTY_GREATSWORD, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MANNEQUIN_HEAD, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MANNEQUIN_BODY, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MANNEQUIN_HANDS, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.HI_ETHER, droprate = xi.battlefield.dropChance.NORMAL },
    },
}

return content:register()
