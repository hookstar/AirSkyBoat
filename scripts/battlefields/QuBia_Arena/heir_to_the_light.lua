-----------------------------------
-- Heir to the Light
-- Qu'Bia Arena mission battlefield
-----------------------------------
local ID = require("scripts/zones/Qubia_Arena/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/missions")
require("scripts/globals/titles")
require("scripts/globals/zone")
-----------------------------------

local content = BattlefieldMission:new({
    zoneId        = xi.zone.QUBIA_ARENA,
    battlefieldId = xi.battlefield.id.HEIR_TO_THE_LIGHT,
    maxPlayers    = 6,
    timeLimit     = utils.minutes(30),
    index         = 4,
    entryNpc      = "Burning_Circle",
    exitNpcs      = { "Burning_Circle_Exit" },

    mission               = xi.mission.id.sandoria.THE_HEIR_TO_THE_LIGHT,
    requiredMissionStatus = 3,
    title                 = xi.title.SAN_DORIAN_ROYAL_HEIR,
})

content.groups =
{
    -- Phase 1
    {
        mobIds =
        {
            { ID.mob.HEIR_TO_THE_LIGHT_OFFSET + 3 },
            { ID.mob.HEIR_TO_THE_LIGHT_OFFSET + 4 },
            { ID.mob.HEIR_TO_THE_LIGHT_OFFSET + 5 },
            { ID.mob.HEIR_TO_THE_LIGHT_OFFSET + 6 },
            { ID.mob.HEIR_TO_THE_LIGHT_OFFSET + 7 },
            { ID.mob.HEIR_TO_THE_LIGHT_OFFSET + 8 },
            { ID.mob.HEIR_TO_THE_LIGHT_OFFSET + 9 },
            { ID.mob.HEIR_TO_THE_LIGHT_OFFSET + 10 },

        },

        death = function(battlefield, mob)
            local players = battlefield:getPlayers()
            for _, player in pairs(players) do
                player:startEvent(32004)
            end
        end
    },

    -- Phase 2
    {
        mobIds =
        {
            { ID.mob.HEIR_TO_THE_LIGHT_OFFSET },
            { ID.mob.HEIR_TO_THE_LIGHT_OFFSET + 1 },
            { ID.mob.HEIR_TO_THE_LIGHT_OFFSET + 2 }
        },

        spawned = false,
        death = function(battlefield, mob)
            battlefield:setStatus(xi.battlefield.status.WON)
        end
    }
}

return content:register()
