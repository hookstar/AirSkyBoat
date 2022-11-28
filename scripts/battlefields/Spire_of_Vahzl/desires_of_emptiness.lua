-----------------------------------
-- Desires of Emptiness
-- Spire of Vahzl mission battlefield
-----------------------------------
local ID = require("scripts/zones/Spire_of_Vahzl/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/teleports")
require("scripts/globals/keyitems")
require("scripts/globals/missions")
require("scripts/globals/status")
require('scripts/missions/cop/helpers')
-----------------------------------

local content = BattlefieldMission:new({
    zoneId        = xi.zone.SPIRE_OF_MEA,
    battlefieldId = xi.battlefield.id.DESIRES_OF_EMPTINESS,
    maxPlayers    = 6,
    levelCap      = 30,
    timeLimit     = utils.minutes(30),
    index         = 0,
    entryNpc      = "_0n0",
    exitNpcs      = {"_0n1", "_0n2", "_0n3" },

    missionArea           = xi.mission.log_id.COP,
    mission               = xi.mission.id.cop.DESIRES_OF_EMPTINESS,
    title                 = xi.title.FROZEN_DEAD_BODY,
    requiredMissionStatus = 2,
    grantXP               = 1500,
})

content:addEssentialMobs({"Procreator", "Cumulator", "Agonizer" })

return content:register()
