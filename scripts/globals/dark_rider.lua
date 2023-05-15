-----------------------------------
-- Area: Bhaflau Thickets/Caederva Mire/ Wajoam Woodlands/ Mount Zhayolm
-- MOB: Dark Rider
-----------------------------------
local bhaflauID = require("scripts/zones/Bhaflau_Thickets/IDs")
local caedarvaID = require("scripts/zones/Caedarva_Mire/IDs")
local zhayolmID = require("scripts/zones/Mount_Zhayolm/IDs")
local wajoamID = require("scripts/zones/Wajaom_Woodlands/IDs")
require('scripts/globals/zone')
------------------------------------
xi = xi or {}
xi.darkRider = xi.darkRider or {}

--[[
local darkRider =
{
    [1] = 16990423, -- Bhaflau Thickets
    [2] = 17101136, -- Caedarva Mire
    [3] = 17027459, -- Mount Zhayolm
    [4] = 16986421, -- Wajaom Woodlands
}

local hoofprint =
{
    [1] = 16990593, -- Bhaflau Thickets
    [2] = 17101252, -- Caedarva Mire
    [3] = 17027511, -- Mount Zhayolm
    [4] = 16986601, -- Wajaom Woodlands
}]]

xi.darkRider.campaignActive = function()
    return xi.settings.main.ENABLE_DARK_RIDER
end

xi.darkRider.handleSpawn = function(zone, mob, npc) -- onGameHour is in Aht_Urhgan_Whitegate/Zone.lua!!
    local bhafulhoofprint = GetNPCByID(bhaflauID.npc.WARHORSE_HOOFPRINT_OFFSET)
    local caedarvahoofprint = GetNPCByID(caedarvaID.npc.WARHORSE_HOOFPRINT_OFFSET)
    local zhayolmhoofprint = GetNPCByID(zhayolmID.npc.WARHORSE_HOOFPRINT_OFFSET)
    local wajoamhoofprint = GetNPCByID(wajoamID.npc.WARHORSE_HOOFPRINT_OFFSET)
    local zoneSelect = math.random(1, 4)

        wajoamhoofprint:setStatus(xi.status.DISAPPEAR)
        zhayolmhoofprint:setStatus(xi.status.DISAPPEAR)
        caedarvahoofprint:setStatus(xi.status.DISAPPEAR)
        bhafulhoofprint:setStatus(xi.status.DISAPPEAR)

    if zoneSelect == 1 then
        GetMobByID(bhaflauID.mob.DARK_RIDER_OFFSET):spawn()
    elseif zoneSelect == 2 then
        GetMobByID(caedarvaID.mob.DARK_RIDER_OFFSET):spawn()
    elseif zoneSelect == 3 then
        GetMobByID(zhayolmID.mob.DARK_RIDER_OFFSET):spawn()
    elseif zoneSelect == 4 then
        GetMobByID(wajoamID.mob.DARK_RIDER_OFFSET):spawn()
    end
end

xi.darkRider.handleDeSpawn = function(zone, mob, npc)
    DespawnMob(bhaflauID.mob.DARK_RIDER_OFFSET)
    DespawnMob(caedarvaID.mob.DARK_RIDER_OFFSET)
    DespawnMob(zhayolmID.mob.DARK_RIDER_OFFSET)
    DespawnMob(wajoamID.mob.DARK_RIDER_OFFSET)
end
