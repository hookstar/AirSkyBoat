-----------------------------------
-- Module to revert to era quest timers
-----------------------------------
require("modules/module_utils")
-----------------------------------
-- put the required era time change in the appropriate comment below to keep organized.
local m = Module:new("era_quest_timers")
----ahtUrhgan-----------------------
----COR AF2 Navigation the Unfriendly Seas Timer from 60 seconds to JP Midnight as per era
----Quest 6 25
local wajaomID = zones[xi.zone.WAJAOM_WOODLANDS]

m:addOverride('xi.server.onServerStart', function()
    super()

    xi.module.modifyInteractionEntry('scripts/quests/ahtUrhgan/COR_AF2_Navigating_the_Unfriendly_Seas', function(quest)
    quest.sections[2][xi.zone.WAJAOM_WOODLANDS]['Leypoint'].onTrade = function(player, npc, trade)
        if
            npcUtil.tradeHasExactly(trade, xi.items.HYDROGAUGE) and
            quest:getVar(player, 'Prog') == 1
        then
            player:confirmTrade()
            quest:setVar(player, 'Prog', 2)
            quest:setVar(player, 'leypointTimer', getMidnight())
            return quest:messageSpecial(wajaomID.text.PLACE_HYDROGAUGE, xi.items.HYDROGAUGE)
        end
    end
end)----End of COR_AF2_Navigating_the_Unfriendly_Seas

----End of ahtUrhgan
----bastokQuests--------------------
----End of bastokQuests
----hiddenQuests-------------------
----End of hiddenQuests
----jeunoQuests---------------------
----End of jeunoQuests
----otherAreas----------------------
----End of otherAreas
----outlands------------------------
----End of outlands
----sandoria------------------------
----End of sandoria
----windurst------------------------
----End of windurst
end) -- end of module

return m
