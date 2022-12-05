-----------------------------------
-- Area: Balgas Dais
-- Name: Shattering Stars
-- !pos 298 -124 343 146
-----------------------------------
local ID = require("scripts/zones/Balgas_Dais/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/quests")
require("scripts/globals/titles")
require("scripts/globals/zone")
-----------------------------------
local content = Battlefield:new({
    zoneId        = xi.zone.BALGAS_DAIS,
    battlefieldId = xi.battlefield.id.SHATTERING_STARS_WHM,
    maxPlayers    = 1,
    timeLimit     = utils.minutes(30),
    index         = 6,
    entryNpc      = "Burning_Circle",
    exitNpcs      = { "Burning_Circle_Exit", },
    canLoseExp    = false,
    requiredItems = { xi.items.WHITE_MAGES_TESTIMONY},
    questArea     = xi.quest.log_id.JEUNO,
--    quest         = xi.quest.id.jeuno.SHATTERING_STARS,
    title         = xi.title.MAAT_MASHER

})

content:addEssentialMobs({ "Maat" })

return content:register()
