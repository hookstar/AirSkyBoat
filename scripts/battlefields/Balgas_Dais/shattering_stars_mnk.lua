-----------------------------------
-- Area: Balgas Dais
-- Name: Shattering Stars
-- !pos 298 -124 343 146
-----------------------------------
local ID = require("scripts/zones/Balgas_Dais/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/quests")
require("scripts/globals/titles")
require("scripts/globals/zone")
-----------------------------------
local content = BattlefieldShatteringStars:new({
    zoneId        = xi.zone.BALGAS_DAIS,
    battlefieldId = xi.battlefield.id.SHATTERING_STARS_MNK,
    maxPlayers    = 1,
    timeLimit     = utils.minutes(30),
    index         = 5,
    entryNpc      = "Burning_Circle",
    exitNpc       = "Burning_Circle_Exit",
    requiredItems = { xi.items.MONKS_TESTIMONY, wearMessage = ID.text.TESTIMONY_IS_WEARING, wornMessage = ID.text.TESTIMONY_IS_TORN },
    requiredJob   = xi.job.MNK,

})

content.groups =
{
    { mobs = { "Maat_MNK" } }
}

return content:register()
