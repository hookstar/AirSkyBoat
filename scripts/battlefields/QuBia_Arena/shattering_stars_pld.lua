-----------------------------------
-- Shattering Stars
-- Qu'Bia Arena Maat battlefield
-----------------------------------
-----------------------------------
local ID = require("scripts/zones/Qubia_Arena/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/quests")
require("scripts/globals/titles")
require("scripts/globals/zone")
-----------------------------------

local content = BattlefieldShatteringStars:new({
    zoneId        = xi.zone.QUBIA_ARENA,
    battlefieldId = xi.battlefield.id.SHATTERING_STARS_PLD,
    maxPlayers    = 1,
    timeLimit     = utils.minutes(10),
    index         = 5,
    entryNpc      = "Burning_Circle",
    exitNpc       = {"Burning_Circle_Exit"},
    requiredItems = { xi.items.PALADINS_TESTIMONY, wearMessage = ID.text.TESTIMONY_IS_WEARING, wornMessage = ID.text.TESTIMONY_IS_TORN , keep = true },
    requiredJob   = xi.job.PLD,
})

content.groups =
{
    { mobs = { "Maat_PLD" } }
}

return content:register()
