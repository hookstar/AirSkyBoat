-----------------------------------
-- Ancient Flames Beckon
-- Spire of Dem mission battlefield
-----------------------------------
require("scripts/globals/battlefield")
require("scripts/globals/missions")
require("scripts/globals/status")
-----------------------------------

local content = BattlefieldMission:new({
    zoneId        = xi.zone.SPIRE_OF_DEM,
    battlefieldId = xi.battlefield.id.ANCIENT_FLAMES_BECKON_SPIRE_OF_DEM,
    maxPlayers    = 6,
    levelCap      = 30,
    timeLimit     = utils.minutes(30),
    index         = 0,
    entryNpc      = "_0j0",
    exitNpcs      = { "_0j1", "_0j2", "_0j3" },

    missionArea = xi.mission.log_id.COP,
    mission     = xi.mission.id.cop.THE_MOTHERCRYSTALS,
    title       = xi.title.ANCIENT_FLAME_FOLLOWER,
    grantXP     = 1500,
})

function content:checkRequirements(player, npc, isRegistrant, trade)
    if not Battlefield.checkRequirements(self, player, npc, isRegistrant, trade) then
        return false
    end

    local missionArea = self.missionArea or player:getNation()
    local current = player:getCurrentMission(missionArea)
    return current == xi.mission.id.cop.BELOW_THE_ARKS or
           (current == xi.mission.id.cop.THE_MOTHERCRYSTALS and not player:hasKeyItem(xi.ki.LIGHT_OF_DEM))
end

content:addEssentialMobs({"Progenerator" })

return content:register()
