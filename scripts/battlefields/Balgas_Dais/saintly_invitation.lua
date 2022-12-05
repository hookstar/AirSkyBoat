-----------------------------------
-- Area: Balgas Dais
-- Name: Saintly Invitation
-- !pos 298 -124 343 146
-- !addmission 
-- !addkeyitem Judgment_Key
-- 
-----------------------------------
local ID = require("scripts/zones/Balgas_Dais/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/keyitems")
require("scripts/globals/missions")
require("scripts/globals/titles")
require("scripts/globals/zone")
-----------------------------------
local content = BattlefieldMission:new({
    zoneId                = xi.zone.BALGAS_DAIS,
    battlefieldId         = xi.battlefield.id.SAINTLY_INVITATION,
    maxPlayers            = 6,
    timeLimit             = utils.minutes(15),
    index                 = 3,
    entryNpc              = "Burning_Circle",
    exitNpc               = "Burning_Circle_Exit",
    requiredKeyItems      = {xi.ki.HOLY_ONES_INVITATION, keep = true},
    missionArea           = xi.mission.log_id.WINDURST,
    mission               = xi.mission.id.windurst.SAINTLY_INVITATION,
    requiredMissionStatus = 1,
    title                 = xi.title.VICTOR_OF_THE_BALGA_CONTEST,

})

content.groups =
{
    { mobs = { "Yagudos_Elemental " }, }, { mobs = { "Yagudos_Avatar " }, },
}

content:addEssentialMobs({ "Buu_Xolo_the_Bloodfaced", "Nuu_Kofu_the_Gentle", "Juu_Zeni_the_Poisonmist", "Chaa_Paqa_the_Profound"})

return content:register()
