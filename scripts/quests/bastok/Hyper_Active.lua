-----------------------------------
-- Hyper Active
-- !addquest 1 80
-----------------------------------
-- Area        : Metalworks
-- Raibaht     : !gotoid 17748012
-- Cerment Door: !gotoid 17531158
-----------------------------------
require('scripts/globals/common')
require('scripts/globals/items')
require('scripts/globals/keyitems')
require('scripts/globals/npc_util')
require('scripts/globals/quests')
require('scripts/globals/titles')
require('scripts/globals/zone')
require('scripts/globals/interaction/quest')
-----------------------------------
local lowerDelkID = require('scripts/zones/Lower_Delkfutts_Tower/IDs')
local lowerJeunoID = require('scripts/zones/Lower_Jeuno/IDs')
-----------------------------------
local quest = Quest:new(xi.quest.log_id.BASTOK, xi.quest.id.bastok.HYPER_ACTIVE)

quest.reward =
{
    fame = 50,
    fameArea = xi.quest.fame_area.BASTOK,
    gil = 3000,
}

local spawnedMobs =
{
    lowerDelkID.mob.ORNA,
    lowerDelkID.mob.FORMORIAN_SPEAR_1,
    lowerDelkID.mob.FORMORIAN_SPEAR_2,

}
local examineLamp = function(player, npc)
    local lampID = npc:getID()
    local correctLampID = quest:getVar(player, "Lamp")

    if lampID == correctLampID then
        if quest:getVar(player, 'Prog') == 3 then
            quest:setVar(player, 'Prog', 4)
            quest:setVar(player, 'Lamp', 0)
            npcUtil.giveKeyItem(player, xi.ki.HYPER_ALTIMETER)
            return quest:messageSpecial(lowerJeunoID.text.HYPER_ALTIMETER, 0, xi.ki.HYPER_ALTIMETER, xi.ki.MOLYBDENUM_BOX)
        else
        end
    end
end

quest.sections =
{
    {
        check = function(player, status, vars)
            return status == QUEST_AVAILABLE and
            player:hasCompletedQuest(xi.quest.log_id.BASTOK, xi.quest.id.bastok.TEAK_ME_TO_THE_STARS) and
            not quest:getMustZone(player)
        end,

        [xi.zone.METALWORKS] =
        {
            ['Raibaht'] = quest:progressEvent(866, 0, xi.ki.HYPER_ALTIMETER, xi.ki.MOLYBDENUM_BOX),

            onEventFinish =
            {
                [866] = function(player, csid, option, npc)
                    if option == 1 then
                        quest:begin(player)
                        quest:setVar(player, 'Prog', 1)
                        npcUtil.giveKeyItem(player, xi.ki.MOLYBDENUM_BOX)
                    end
                end,
            },
        },
    },

    {
        check = function(player, status, vars)
            return status == QUEST_ACCEPTED
        end,

        [xi.zone.METALWORKS] =
        {
            ['Raibaht'] =
            {
                onTrigger = function(player, npc)
                    if quest:getVar(player, 'Prog') == 4 then
                        return quest:progressEvent(867)
                    end
                end,
            },

            onEventFinish =
            {
                [867] = function(player, csid, option, npc)
                    if quest:complete(player) then
                        player:delKeyItem(xi.ki.MOLYBDENUM_BOX)
                        player:delKeyItem(xi.ki.HYPER_ALTIMETER)
                    end
                end,
            },
        },

        [xi.zone.LOWER_DELKFUTTS_TOWER] =
        {
            ['_543'] =
            {
                onTrigger = function(player, npc)
                    if
                        quest:getVar(player, 'Prog') == 1 and
                        npcUtil.popFromQM(player, npc, spawnedMobs, { claim = true, hide = 0 })
                    then
                        return quest:messageSpecial(lowerDelkID.text.BLOODTHIRSTY)
                    elseif
                        quest:getVar(player, 'Prog') == 2
                    then
                        return quest:progressEvent(26, xi.ki.MOLYBDENUM_BOX)
                    end
                end,
            },

            ['Orna'] =
            {
                onMobDeath = function(mob, player, optParams)
                    if quest:getVar(player, 'Prog') == 1 then
                        quest:setVar(player, 'Prog', 2)
                    end

                    for i = lowerDelkID.mob.ORNA + 1, lowerDelkID.mob.ORNA + 2 do
                        if GetMobByID(i):isSpawned() then
                            DespawnMob(i)
                        end
                    end
                end,
            },

            onEventFinish =
            {
                [26] = function(player, csid, option, npc)
                    quest:setVar(player, 'Prog', 3)
                    quest:setVar(player, 'Lamp', lowerJeunoID.npc.STREETLAMPS[math.random(#lowerJeunoID.npc.STREETLAMPS)])
                end,

            },
        },

        [xi.zone.LOWER_JEUNO] =
        {
            ['Streetlamp'] =
            {
                onTrigger = function(player, npc)
                    return examineLamp(player, npc)
                end,
            },
        },
    }
}

return quest
