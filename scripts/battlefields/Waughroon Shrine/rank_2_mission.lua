-----------------------------------
-- Area: Waughroon Shrine
-- Name: Mission 2-3
-- !pos
-----------------------------------
local ID = require("scripts/zones/Waughroon_Shrine/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/missions")
require("scripts/globals/titles")
require("scripts/globals/zone")
-----------------------------------
local content = Battlefield:new({
    zoneId                = xi.zone.WAUGHROON_SHRINE,
    battlefieldId         = xi.battlefield.id.RANK_2_MISSION,
    maxPlayers            = 6,
    levelCap              = 25,
    timeLimit             = utils.minutes(30),
    index                 = 0,
    entryNpc         = "Burning_Circle",
    exitNpc          = "Burning_Circle", "Burning_Circle", "Burning_Circle",
    canLoseExp            = false,
    missionArea           = xi.mission.log_id.SANDORIA,
    mission               = xi.mission.id.sandoria.JOURNEY_ABROAD,
    requiredMissionStatus = 10,
    title                 = xi.title.DARK_DRAGON_SLAYER,
})

content:addEssentialMobs({ "Searcher", "Dark_Dragon" })

return content:register()
