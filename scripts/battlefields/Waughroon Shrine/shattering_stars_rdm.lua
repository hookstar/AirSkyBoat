-----------------------------------
-- Shattering Stars Red Mage
-- LB5
-- !pos -345 104 -260 144
-----------------------------------
local ID = require("scripts/zones/Waughroon_Shrine/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/quests")
require("scripts/globals/titles")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.WAUGHROON_SHRINE,
    battlefieldId    = xi.battlefield.id.SHATTERING_STARS_RDM,
    maxPlayers       = 1,
    timeLimit        = utils.minutes(10),
    index            = 6,
    entryNpc         = "Burning_Circle",
    exitNpc          = "Burning_Circle", "Burning_Circle", "Burning_Circle",
    requiredItems = { xi.items.RED_MAGES_TESTIMONY },
})

content:addEssentialMobs({ "Maat" })

return content:register()