-----------------------------------
-- Area: Balgas Dais
-- Name: Mission 2-3
-- !pos
-----------------------------------
require("scripts/globals/battlefield")
require("scripts/globals/missions")
require("scripts/globals/titles")
require("scripts/globals/zone")
-----------------------------------

local content = BattlefieldMission:new({
    zoneId        = xi.zone.BALGAS_DAIS,
    battlefieldId = xi.battlefield.id.RANK_2_MISSION,
    maxPlayers    = 6,
    levelCap      = 25,
    timeLimit     = utils.minutes(30),
    index         = 0,
    entryNpc      = "Burning_Circle",
    exitNpc       = "Burning_Circle_Exit",

    mission               = xi.mission.id.nation.RANK2,
    requiredMissionStatus = 8,
    title                 = xi.title.BLACK_DRAGON_SLAYER,
})

function content:checkRequirements(player, npc, isRegistrant, trade)
    if not Battlefield.checkRequirements(self, player, npc, isRegistrant, trade) then
        return false
    end

    local nationStatus = player:getMissionStatus(player:getNation())
    local isOnSandoriaMission = player:getCurrentMission(xi.mission.log_id.SANDORIA) == xi.mission.id.sandoria.JOURNEY_TO_WINDURST2
    local isOnWindurstMission = player:getCurrentMission(xi.mission.log_id.WINDURST) == xi.mission.id.windurst.THE_THREE_KINGDOMS_BASTOK2
    return nationStatus == 8 and (isOnSandoriaMission or isOnWindurstMission)
end

function BattlefieldMission:checkSkipCutscene(player)
    local nationStatus = player:getMissionStatus(player:getNation())
    local isOnSandoriaMission = player:getCurrentMission(xi.mission.log_id.SANDORIA) == xi.mission.id.sandoria.JOURNEY_TO_WINDURST2
    local isOnWindurstMission = player:getCurrentMission(xi.mission.log_id.WINDURST) == xi.mission.id.windurst.THE_THREE_KINGDOMS_BASTOK2
    local hasCompletedSandoriaMission = player:getCurrentMission(xi.mission.log_id.SANDORIA) == xi.mission.id.sandoria.JOURNEY_TO_WINDURST2
    local hasCompletedWindurstMission = player:getCurrentMission(xi.mission.log_id.WINDURST) == xi.mission.id.windurst.THE_THREE_KINGDOMS_BASTOK2
    return hasCompletedSandoriaMission or hasCompletedWindurstMission or (nationStatus > 8 and (isOnSandoriaMission or isOnWindurstMission))
end

content:addEssentialMobs({ "Searcher", "Black_Dragon" })

return content:register()
