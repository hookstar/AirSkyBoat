-----------------------------------
-- Area: Spire_of_Vahzl
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[xi.zone.SPIRE_OF_VAHZL] =
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
        TIME_IN_THE_BATTLEFIELD_IS_UP = 7065, -- Your time in the battlefield is up!\x07Now exiting...<7F3401><7F31>
        PARTY_MEMBERS_ARE_ENGAGED     = 7066, -- You are cleared to enter the battlefield, but you cannot while party members are engaged in combat.<7F3401><7F31>
        NO_BATTLEFIELD_ENTRY          = 7078, -- You are cleared to enter the battlefield, but you cannot while party members are engaged in combat.<7F3401><7F31>
        FAINT_SCRAPING                = 7092, -- You can hear a faint scraping sound from within, but the way is barred by some strange membrane...
        MEMBERS_OF_YOUR_PARTY         = 7371, -- Currently, {e:3} members of your party (including yourself) have clearance to enter the battlefield.<7F31>
        MEMBERS_OF_YOUR_ALLIANCE      = 7372, -- Currently, {e:3} members of your alliance (including yourself) have clearance to enter the battlefield.<7F31>
        TIME_LIMIT_FOR_THIS_BATTLE_IS = 7374, -- The time limit for this battle is {e:3} minutes.<7F31>
        PARTY_MEMBERS_HAVE_FALLEN     = 7410, -- All party members have fallen in battle. Now leaving the battlefield.
        THE_PARTY_WILL_BE_REMOVED     = 7417, -- If all party members' HP are still zero after # minute[/s], the party will be removed from the battlefield.
        FADES_NOTHINGNESS             = 7425, -- The <01053382808080> fades into nothingness...<7F31>
        ENTERING_THE_BATTLEFIELD_FOR  = 7614, -- Entering the battlefield for “{e:1:select}[Desires of Emptiness/Pulling the Plug/Empty Aspirations]”!
    },
    mob =
    {
    },
    npc =
    {
    },
    pullingThePlug =
    {
        [1] =
        {
            RED_ID       = 16871446,
            BLUE_ID      = 16871447,
            GREEN_ID     = 16871448,
            TEAL_ID      = 16871449,
            CONTEMPLATOR = 16871450,
            INGURGITATOR = 16871451,
            REPINER      = 16871452,
        },
        [2] =
        {
            RED_ID       = 16871456,
            BLUE_ID      = 16871457,
            GREEN_ID     = 16871458,
            TEAL_ID      = 16871459,
            CONTEMPLATOR = 16871460,
            INGURGITATOR = 16871461,
            REPINER      = 16871462,
        },
        [3] =
        {
            RED_ID       = 16871466,
            BLUE_ID      = 16871467,
            GREEN_ID     = 16871468,
            TEAL_ID      = 16871469,
            CONTEMPLATOR = 16871470,
            INGURGITATOR = 16871471,
            REPINER      = 16871472,
        },
    },
}

return zones[xi.zone.SPIRE_OF_VAHZL]
