-----------------------------------
-- Area: Wajaom Woodlands
--  NPC: Warhorse Hoofprint
-----------------------------------

local ID = require("scripts/zones/Wajaom_Woodlands/IDs")

local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    player:messageSpecial(ID.text.GIGANTIC_WARHORSE)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
