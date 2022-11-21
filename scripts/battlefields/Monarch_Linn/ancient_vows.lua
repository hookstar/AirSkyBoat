-----------------------------------
-- Area: Monarch Linn
-- Name: Ancient Vows
-----------------------------------
local ID = require("scripts/zones/Monarch_Linn/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/missions")
require("scripts/globals/titles")
-----------------------------------

local content = BattlefieldMission:new({
    zoneId        = xi.zone.MONARCH_LINN,
    battlefieldId = xi.battlefield.id.ANCIENT_VOWS,
    maxPlayers    = 6,
    levelCap      = 75,
    timeLimit     = utils.minutes(30),
    index         = 0,
    entryNpc      = "Spatial_Displacement",
    exitNpcs      = { "Spatial_Displacement" },

    missionArea           = xi.mission.log_id.COP,
    mission               = xi.mission.id.cop.ANCIENT_VOWS,
    requiredMissionStatus = 2,
    grantXP               = 1000,
})

content:addEssentialMobs({ "Mammet-19_Epsilon" })

return content:register()
