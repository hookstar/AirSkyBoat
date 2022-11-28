-----------------------------------
-- Pulling the Plug
-- Spire of Vahzl ENM
-----------------------------------
local ID = require("scripts/zones/Spire_of_Vahzl/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/missions")
require("scripts/globals/titles")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.SPIRE_OF_VAHZL,
    battlefieldId    = xi.battlefield.id.PULLING_THE_PLUG,
    maxPlayers       = 18,
    levelCap         = 50,
    timeLimit        = utils.minutes(30),
    index            = 1,
    entryNpc         = "_0n0",
    exitNpc          = {"_0n1", "_0n2", "_0n3" },
    requiredKeyItems = { xi.ki.CENSER_OF_ACRIMONY, message = ID.text.FADES_NOTHINGNESS },
    grantXP          = 3000,
})

content.groups =
{
    { mobs = { "Memory_Receptacle_blue" } },
    { mobs = { "Memory_Receptacle_green" } },
    { mobs = { "Memory_Receptacle_teal" } },
    { mobs = { "Contemplator" } },
    { mobs = { "Ingurgitator" } },
    { mobs = { "Repiner" } },
    { mobs = { "Neoingurgitator" } },
}

content:addEssentialMobs({ "Memory_Receptacle_red" })

content.loot =
{
    {
        { itemid = xi.items.BITTER_CLUSTER, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.BURNING_CLUSTER, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.FLEETING_CLUSTER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MALEVOLENT_CLUSTER, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.PROFANE_CLUSTER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RADIANT_CLUSTER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SOMBER_CLUSTER, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.STARTLING_CLUSTER, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.BEATIFIC_IMAGE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.GRAVE_IMAGE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.VALOROUS_IMAGE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.ANCIENT_IMAGE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.VIRGIN_IMAGE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.IMPETUOUS_VISION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SNIDE_VISION, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.TENUOUS_VISION, droprate = xi.battlefield.dropChance.VERY_LOW },
    },
}

return content:register()
