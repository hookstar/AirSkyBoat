-----------------------------------
-- Rank 5 Mission
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
    battlefieldId = xi.battlefield.id.RANK_5_MISSION,
    maxPlayers    = 6,
    levelCap      = 50,
    timeLimit     = utils.minutes(15),
    index         = 0,
    entryNpc      = "Burning_Circle",
    exitNpcs      = { "Burning_Circle_Exit" },

    mission               = xi.mission.id.nation.ARCHLICH,
    requiredMissionStatus = 11,
    title                 = xi.title.ARCHMAGE_ASSASSIN,
})

content.groups =
{
    { mobs = { "Ancient_Sorcerer" } },
    { mobs = { "Ancient_Warrior" } },
}

content:addEssentialMobs({ "Archlich_Taberquoan" })

return content:register()
