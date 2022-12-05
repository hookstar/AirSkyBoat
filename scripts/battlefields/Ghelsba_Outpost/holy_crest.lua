-----------------------------------
-- Area: Ghelsba Outpost
-- Name: The Holy Crest (Dragoon Job Unlock)
-- !pos -165.357 -11.672 77.771 140
-----------------------------------
local ID = require("scripts/zones/Ghelsba_Outpost/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/quests")
-----------------------------------

local content = BattlefieldQuest:new({
    zoneId        = xi.zone.GHELSBA_OUTPOST,
    battlefieldId = xi.battlefield.id.HOLY_CREST,
    maxPlayers    = 6,
    timeLimit     = utils.minutes(15),
    index         = 1,
    entryNpc      = "Hut_Door",

    questArea        = xi.quest.log_id.SANDORIA,
    quest            = xi.quest.id.sandoria.THE_HOLY_CREST,
    requiredKeyItems = { xi.ki.DRAGON_CURSE_REMEDY, keep = true },
})

function content:onEventFinishWin(player, csid, option)
    Battlefield.onEventFinishWin(self, player, csid, option)

    npcUtil.completeQuest(player, xi.quest.log_id.SANDORIA, xi.quest.id.sandoria.THE_HOLY_CREST, {
        title = xi.title.HEIR_TO_THE_HOLY_CREST,
        var = "TheHolyCrest_Event",
    })

    player:delKeyItem(xi.ki.DRAGON_CURSE_REMEDY)
    player:unlockJob(xi.job.DRG)
    player:messageSpecial(ID.text.YOU_CAN_NOW_BECOME_A_DRAGOON)
    player:setPetName(xi.pet.type.WYVERN, option + 1)
end

content:addEssentialMobs({ "Cyranuce_M_Cutauleon" })

return content:register()
