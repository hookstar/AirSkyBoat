-----------------------------------
-- Grave Concerns
-----------------------------------
-- !addquest 0 11
-- Andecia: !pos 167 0 45 230
-- Tombstone !pos 1 0.1 -101 190
-----------------------------------
require('scripts/globals/interaction/quest')
require('scripts/globals/npc_util')
require('scripts/globals/quests')
require('scripts/globals/zone')
local ID = require("scripts/zones/Northern_San_dOria/IDs")
local ID2 = require("scripts/zones/King_Ranperres_Tomb/IDs")
-----------------------------------

local quest = Quest:new(xi.quest.log_id.SANDORIA, xi.quest.id.sandoria.GRAVE_CONCERNS)

quest.reward =
{
    fame = 30,
    fameArea = xi.quest.fame_area.SANDORIA,
    gil      = 560,
    title = xi.title.ROYAL_GRAVE_KEEPER,
}

quest.sections =
{
    {
        check = function(player, status, vars)
            return status == QUEST_AVAILABLE
        end,

        [xi.zone.SOUTHERN_SAN_DORIA] =
        {
            ['Andecia'] =
            {
                onTrigger = function(player, npc)
                    if quest:getVar(player, 'initialCS') == 1 then
                        return quest:progressEvent(541)
                    else
                        return quest:progressEvent(540)
                    end
                end,
            },
            onEventFinish =
            {
                [540] = function(player, csid, option, npc)
                    quest:setVar(player, 'initialCS', 1)
                end,

                [541] = function(player, csid, option, npc)
                    if option == 0 then
                        quest:begin(player)
                        quest:setVar(player, 'initialCS', 0)
                        npcUtil.giveItem(player, xi.items.SKIN_OF_WELL_WATER)
                    end
                end,
            },
        },
    },

    {
        check = function(player, status, vars)
            return status == QUEST_ACCEPTED
        end,

        [xi.zone.NORTHERN_SAN_DORIA] =
        {
            ['Andecia'] =
            {
                onTrigger = function(player, npc)
                    if not npcUtil.hasItem(player, xi.items.SKIN_OF_WELL_WATER) and
                        not npcUtil.hasItem(player, xi.items.TOMB_GUARDS_WATERSKIN)
                    then
                        return quest:event(622)
                    end
                end,

                onTrade = function(player, npc, trade)
                    if npcUtil.tradeHasExactly(trade, xi.items.TOMB_GUARDS_WATERSKIN) and
                        not quest:setVar(player, 'lostWater', 1)
                    then
                        return quest:progressEvent(588)
                    elseif npcUtil.tradeHasExactly(trade, xi.items.TOMB_GUARDS_WATERSKIN) and
                        quest:getVar(player, 'lostWater', 1)
                    then
                        return quest:progressEvent(624)
                    end

                end,
            },

            onEventFinish =
            {
                [588] = function(player, csid, option, npc)
                    quest:complete(player)
                end,

                [622] = function(player, csid, option, npc)
                    quest:setVar(player, 'lostWater', 1)
                end,

                [624] = function(player, csid, option, npc)
                    quest:complete(player)
                end,
            },

            ['Well'] =
            {
                onTrade = function(player, npc, trade)
                    if npcUtil.tradeHasExactly(trade, xi.items.TOMB_GUARDS_WATERSKIN) and
                        quest:getVar(player, 'lostWater', 1)
                    then
                        player:tradeComplete()
                        npcUtil.giveItem(player, xi.items.SKIN_OF_WELL_WATER)
                    end
                end,
            },
        },

        [xi.zone.KING_RANPERRES_TOMB] =
        {
            ['Tombstone'] =
            {
                onTrade = function(player, npc, trade)
                    if npcUtil.tradeHasExactly(trade, xi.items.SKIN_OF_WELL_WATER) then
                        quest:progressEvent(3)
                    end
                end,

                onTrigger = function(player, npc)
                    if
                        not player:hasItem(xi.items.TOMB_GUARDS_WATERSKIN) and
                        not player:hasItem(xi.items.SKIN_OF_WELL_WATER)
                    then
                        quest:progressEvent(2)
                    end
                end,
            },

            onEventFinish =
            {
                [2] = function(player, csid, option, npc)
                    npcUtil.giveItem(player, xi.items.TOMB_GUARDS_WATERSKIN)
                end,

                [3] = function(player, csid, option, npc)
                    npcUtil.giveItem(player, xi.items.TOMB_GUARDS_WATERSKIN)
                    player:confirmTrade()
                end,
            },
        },
    },
}

return quest
