-----------------------------------
-- Ancient Flames Beckon
-- Spire of Holla mission battlefield
-----------------------------------
require("scripts/globals/battlefield")
require("scripts/globals/missions")
require("scripts/globals/status")
-----------------------------------

local content = BattlefieldMission:new({
    zoneId        = xi.zone.SPIRE_OF_HOLLA,
    battlefieldId = xi.battlefield.id.ANCIENT_FLAMES_BECKON_SPIRE_OF_HOLLA,
    maxPlayers    = 6,
    levelCap      = 30,
    timeLimit     = utils.minutes(30),
    index         = 0,
    entryNpc      = "_0h0",
    exitNpcs      = {" _0h1", "_0h2", "_0h3" },

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
           (current == xi.mission.id.cop.THE_MOTHERCRYSTALS and not player:hasKeyItem(xi.ki.LIGHT_OF_HOLLA))
end

function content:onBattlefieldWin(player, battlefield)
    BattlefieldMission.onBattlefieldWin(self, player, battlefield)
    local copMission = player:getCurrentMission(xi.mission.log_id.COP)

    if
        (copMission == xi.mission.id.cop.BELOW_THE_ARKS or
        copMission == xi.mission.id.cop.THE_MOTHERCRYSTALS) and
        not player:hasKeyItem(xi.ki.LIGHT_OF_HOLLA)
    then
        player:setLocalVar('newPromy', 1)
    end
end

function content:onEventFinishWin(player, csid, option)
    BattlefieldMission.onEventFinishWin(player, csid, option)
    if
        player:getCurrentMission(xi.mission.log_id.COP) > xi.mission.id.cop.THE_MOTHERCRYSTALS and
        not player:getLocalVar('toLufaise') == 1
    then
        xi.teleport.to(player, xi.teleport.id.EXITPROMDEM)
    end
end

content:addEssentialMobs({"Wreaker" })

return content:register()
