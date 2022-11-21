-----------------------------------
-- Area: Monarch Linn
-- Name: The Savage
-----------------------------------
local ID = require("scripts/zones/Monarch_Linn/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/missions")
require("scripts/globals/titles")
-----------------------------------

local content = BattlefieldMission:new({
    zoneId        = xi.zone.MONARCH_LINN,
    battlefieldId = xi.battlefield.id.SAVAGE,
    maxPlayers    = 6,
    levelCap      = 75,
    timeLimit     = utils.minutes(30),
    index         = 1,
    entryNpc      = "Spatial_Displacement",
    exitNpcs      = { "Spatial_Displacement" },

    missionArea           = xi.mission.log_id.COP,
    mission               = xi.mission.id.cop.THE_SAVAGE,
    requiredMissionStatus = 1,
    grantXP               = 1500,
})

content:addEssentialMobs({ "Ouryu" })

return content:register()
