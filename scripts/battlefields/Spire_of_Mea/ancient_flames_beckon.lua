-----------------------------------
-- Ancient Flames Beckon
-- Spire of Mea mission battlefield
-----------------------------------
local ID = require("scripts/zones/Spire_of_Mea/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/teleports")
require("scripts/globals/keyitems")
require("scripts/globals/missions")
require("scripts/globals/status")
require('scripts/missions/cop/helpers')
-----------------------------------

local content = BattlefieldMission:new({
    zoneId        = xi.zone.SPIRE_OF_MEA,
    battlefieldId = xi.battlefield.id.ANCIENT_FLAMES_BECKON_SPIRE_OF_MEA,
    maxPlayers    = 6,
    levelCap      = 30,
    timeLimit     = utils.minutes(30),
    index         = 0,
    entryNpc         = "_0h0",
    exitNpc          = {"_0h1", "_0h2", "_0h3" },

    missionArea           = xi.mission.log_id.COP,
    mission               = xi.mission.id.cop.THE_MOTHERCRYSTALS,
    title                 = xi.title.ANCIENT_FLAME_FOLLOWER,
    grantXP               = 1500,
})

content:addEssentialMobs({"Delver" })

return content:register()
