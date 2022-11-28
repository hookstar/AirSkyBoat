-----------------------------------
-- Ancient Flames Beckon
-- Spire of Dem mission battlefield
-----------------------------------
local ID = require("scripts/zones/Spire_of_Dem/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/missions")
require("scripts/globals/status")
require('scripts/missions/cop/helpers')
-----------------------------------

local content = BattlefieldMission:new({
    zoneId        = xi.zone.SPIRE_OF_DEM,
    battlefieldId = xi.battlefield.id.ANCIENT_FLAMES_BECKON_SPIRE_OF_DEM,
    maxPlayers    = 6,
    levelCap      = 30,
    timeLimit     = utils.minutes(30),
    index         = 0,
    entryNpc      = "_0j0",
    exitNpc       = {"_0j1", "_0j2", "_0j3" },

    missionArea           = xi.mission.log_id.COP,
    mission                        = xi.mission.id.cop.BELOW_THE_ARKS,
    title       = xi.title.ANCIENT_FLAME_FOLLOWER,
    grantXP     = 1500,
})

content:addEssentialMobs({"Progenerator" })

return content:register()
