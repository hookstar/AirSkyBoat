-----------------------------------
-- Treasure and Tribulations BCNM 50 (Comet ORB)
-- Balgas Dais
-- !pos 298 -124 343 146
-----------------------------------
local ID = require("scripts/zones/Balgas_Dais/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.BALGAS_DAIS,
    battlefieldId    = xi.battlefield.id.TREASURE_AND_TRIBULATIONS,
    maxPlayers       = 6,
    levelCap         = 50,
    timeLimit        = utils.minutes(30),
    index            = 4,
    entryNpc         = "Burning_Circle",
    exitNpcs         = { "Burning_Circle_Exit", },
    requiredItems = { xi.items.COMET_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },

})
content.groups =
{
    { mobs = { "Small_Box " }, }, { mobs = { "Medium_Box " }, }, { mobs = { "Large_Box " }, },
}
content:addEssentialMobs({ "Small_Box", "Medium_Box", "Large_Box" })

content.loot =
{
    {
        { itemid = xi.items.GUARDIANS_RING, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.KAMPFER_RING, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.CONJURERS_RING, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SHINOBI_RING, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.SLAYERS_RING, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.SORCERERS_RING, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SOLDIERS_RING, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.TAMERS_RING, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.TRACKERS_RING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DRAKE_RING, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.FENCERS_RING, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.MINSTRELS_RING, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.MEDICINE_RING, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.ROGUES_RING, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.RONIN_RING, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.PLATINUM_RING, droprate = xi.battlefield.dropChance.VERY_LOW },

    },

    {
        { itemid = xi.items.ASTRAL_RING, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.PLATINUM_RING, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.SCROLL_OF_QUAKE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.RAM_SKIN, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.RERAISER, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.MYTHRIL_INGOT, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.LIGHT_SPIRIT_PACT, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.SCROLL_OF_FREEZE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SCROLL_OF_REGEN_II, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_RAISE_II, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.PETRIFIED_LOG, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.CORAL_FRAGMENT, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.MAHOGANY_LOG, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.CHUNK_OF_PLATINUM_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_GOLD_ORE, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.CHUNK_OF_DARKSTEEL_ORE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.CHUNK_OF_MYTHRIL_ORE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.GOLD_INGOT, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.DARKSTEEL_INGOT, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.PLATINUM_INGOT, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.EBONY_LOG, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.RAM_HORN, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.DEMON_HORN, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.MANTICORE_HIDE, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.WYVERN_SKIN, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.HANDFUL_OF_WYVERN_SCALES, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
    },

}

return content:register()
