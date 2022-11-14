-----------------------------------
-- Area: Ghelsba Outpost
-- Name: sandoria mission 1-3
-- !pos -165.357 -11.672 77.771 140
-----------------------------------
local ID = require("scripts/zones/Ghelsba_Outpost/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/keyitems")
require("scripts/globals/titles")
require("scripts/globals/missions")
require("scripts/globals/zone")
-----------------------------------

local content = BattlefieldMission:new({
    zoneId                = xi.zone.GHELSBA_OUTPOST,
    battlefieldId         = xi.battlefield.id.SAVE_THE_CHILDREN,
    maxPlayers            = 6,
    levelCap              = 75,
    timeLimit             = utils.minutes(10),
    index                 = 0,
    entryNpc              = "Hut_Door",
    missionArea           = xi.mission.log_id.SANDORIA,
    mission               = xi.mission.id.sandoria.SAVE_THE_CHILDREN,
    requiredMissionStatus = 2,
})

content.groups =
{

    {
    mobs = { "Fodderchief_Vokdek", "Sureshot_Snatgat", "Strongarm_Zodvad" },
    spawned = false,
    death = function(battlefield, mob)
        battlefield:setStatus(xi.battlefield.status.WON)
    end
},

}

content:addEssentialMobs({ "Fodderchief_Vokdek", "Sureshot_Snatgat", "Strongarm_Zodvad" })

return content:register()
