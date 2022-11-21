-----------------------------------
-- Area: Monarch_Linn
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[xi.zone.MONARCH_LINN] =
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
        TIME_IN_THE_BATTLEFIELD_IS_UP = 7106, --  Your time in the battlefield is up!\x07Now exiting...
        PARTY_MEMBERS_ARE_ENGAGED     = 7107, -- You are cleared to enter the battlefield, but you cannot while party members are engaged in combat.
        GLOWING_MIST                  = 7137, -- A glowing mist of ever-changing proportions floats before you...
        NO_BATTLEFIELD_ENTRY          = 7119, -- The battlefield where your party members are engaged in combat is locked. Access is denied.
        MEMBERS_OF_YOUR_PARTY         = 7412, -- Currently, {e:3} members of your party (including yourself) have clearance to enter the battlefield.
        MEMBERS_OF_YOUR_ALLIANCE      = 7413, -- Currently, {e:3} members of your alliance (including yourself) have clearance to enter the battlefield.
        TIME_LIMIT_FOR_THIS_BATTLE_IS = 7415, -- The time limit for this battle is {e:3} minutes.
        PARTY_MEMBERS_HAVE_FALLEN     = 7451, -- All party members have fallen in battle. Now leaving the battlefield.
        THE_PARTY_WILL_BE_REMOVED     = 7458, -- If all party members' HP are still zero after # minute[/s], the party will be removed from the battlefield.
        KI_TORN                       = 7466, -- The <keyItem> is torn from your hands and sucked into the spatial displacement!
        CONQUEST_BASE                 = 7473, -- Tallying conquest results...
        ENTERING_THE_BATTLEFIELD_FOR  = 7636, -- Entering the battlefield for “{e:1:select}[Ancient Vows/The Savage/Fire in the Sky/Bad Seed/Bugard in the Clouds/Beloved of the Atlantes/Uninvited Guests/Nest of Nightmares/★The Savage]”!
    },

    mob =
    {
        MAMMET_800 =
        {
            16904233,
            16904243,
            16904253,
        },
    },
    npc =
    {
    },
}

return zones[xi.zone.MONARCH_LINN]
