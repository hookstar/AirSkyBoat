-----------------------------------
-- Area: Spire_of_Holla
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[xi.zone.SPIRE_OF_HOLLA] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED       = 6384, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 6390, -- Obtained: <item>.
        GIL_OBTAINED                  = 6391, -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6393, -- Obtained key item: <keyitem>.
        CARRIED_OVER_POINTS           = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023, -- Your party is unable to participate because certain members' levels are restricted.
        TIME_IN_THE_BATTLEFIELD_IS_UP = 7065, -- Your time in the battlefield is up!\x07Now exiting...
        PARTY_MEMBERS_ARE_ENGAGED     = 7066, -- The battlefield where your party members are engaged in combat is locked. Access is denied.
        NO_BATTLEFIELD_ENTRY          = 7078, -- You are not cleared to enter the battlefield.\x07Now exiting...<
        FAINT_SCRAPING                = 7092, -- You can hear a faint scraping sound from within, but the way is barred by some strange membrane...
        MEMBERS_OF_YOUR_PARTY         = 7371, -- Currently, {e:3} members of your party (including yourself) have clearance to enter the battlefield.
        MEMBERS_OF_YOUR_ALLIANCE      = 7372, -- Currently, {e:3} members of your alliance (including yourself) have clearance to enter the battlefield.
        TIME_LIMIT_FOR_THIS_BATTLE_IS = 7374, -- The time limit for this battle is {e:3} minutes.,
        PARTY_MEMBERS_HAVE_FALLEN     = 7410, -- All party members have fallen in battle. Now leaving the battlefield.
        FADES_NOTHINGNESS             = 7425, -- The <01053382808080> fades into nothingness...,
        THE_PARTY_WILL_BE_REMOVED     = 7417, -- If all party members' HP are still zero after # minute[/s], the party will be removed from the battlefield.
        CANT_REMEMBER                 = 7644, -- You cannot remember when exactly, but you have obtained <item>!
        ENTERING_THE_BATTLEFIELD_FOR  = 7614, -- Entering the battlefield for “{e:1:select}[Ancient Flames Beckon/Simulant/Empty Hopes]”!
    },
    mob =
    {
    },
    npc =
    {
    },
}

return zones[xi.zone.SPIRE_OF_HOLLA]
