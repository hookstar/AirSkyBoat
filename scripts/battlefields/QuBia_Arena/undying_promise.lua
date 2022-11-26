-----------------------------------
-- Undying Promise
-- Qu'Bia Arena BCNM40, Star Orb
-- !additem 1131
-----------------------------------
local ID = require("scripts/zones/Qubia_Arena/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId        = xi.zone.QUBIA_ARENA,
    battlefieldId = xi.battlefield.id.UNDYING_PROMISE,
    maxPlayers    = 3,
    levelCap      = 40,
    timeLimit     = utils.minutes(15),
    index         = 12,
    entryNpc      = "Burning_Circle",
    exitNpcs      = { "Burning_Circle_Exit" },
    requiredItems = { xi.items.STAR_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED , keep = true },
})

content:addEssentialMobs({ "Ghul-I-Beaban", })

content.loot =
{

    {
        quanity = 2,
        { itemid = xi.items.BONE_CHIP, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.CALVELEYS_DAGGER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.JENNET_SHIELD, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.JONGLEURS_DAGGER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.KAGEHIDE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.OHAGURO, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.EBONY_LOG, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.BEHOURD_LANCE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ELEGANT_SHIELD, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MUTILATOR, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RAIFU, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TOURNEY_PATAS, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.CHUNK_OF_DARKSTEEL_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GOLD_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GOLD_BEASTCOIN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MYTHRIL_BEASTCOIN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MYTHRIL_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PLATINUM_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RAM_HORN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_REFRESH, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RERAISER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_UTSUSEMI_NI, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ICE_SPIKES, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HANDFUL_OF_WYVERN_SCALES, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.CORAL_FRAGMENT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DARKSTEEL_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DEMON_HORN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.FIRE_SPIRIT_PACT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_GOLD_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MYTHRIL_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PETRIFIED_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RAM_HORN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ABSORB_STR, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ERASE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_PHALANX, droprate = xi.battlefield.dropChance.NORMAL },
    },
}

return content:register()
