#ifndef DEF_GRIM_BATOL_H
#define DEF_GRIM_BATOL_H

const Position eggPos[23] =
{
    { -720.21f, -875.28f, 232.56f, 4.59f },
    { -728.52f, -875.78f, 232.55f, 3.33f },
    { -736.79f, -877.43f, 232.58f, 3.33f },
    { -748.38f, -876.34f, 233.23f, 2.87f },
    { -757.47f, -873.80f, 233.23f, 2.87f },
    { -749.23f, -871.13f, 233.23f, 0.30f },
    { -740.28f, -870.06f, 232.58f, 6.17f },
    { -731.70f, -868.19f, 232.47f, 0.00f },
    { -752.09f, -860.58f, 232.54f, 3.13f },
    { -747.30f, -779.60f, 233.23f, 1.92f },
    { -740.44f, -778.07f, 233.23f, 0.22f },
    { -729.57f, -778.52f, 232.57f, 0.11f },
    { -719.22f, -770.13f, 233.44f, 0.72f },
    { -722.09f, -780.99f, 232.55f, 4.45f },
    { -735.99f, -786.08f, 232.57f, 3.05f },
    { -751.92f, -788.38f, 233.23f, 3.33f },
    { -745.56f, -785.41f, 233.23f, 0.43f },
    { -757.08f, -780.37f, 233.23f, 2.68f },
    { -746.64f, -770.96f, 233.23f, 0.95f },
    { -731.53f, -770.02f, 236.14f, 0.10f },
    { -730.15f, -885.09f, 235.96f, 5.93f },
    { -717.82f, -887.81f, 233.95f, 6.05f },
    { -751.01f, -886.38f, 234.87f, 3.27f },
};

const Position shadowgalePos[3] =
{
    { -745.07f, -845.16f, 232.41f, 0.0f },
    { -724.05f, -823.47f, 232.41f, 0.0f },
    { -741.81f, -819.44f, 232.41f, 0.0f },
};

const Position eggsSpawnPath[2] =
{
    { -729.98f, -784.89f, 232.50f, 1.77f },
    { -728.31f, -867.80f, 232.47f, 5.16f },
};

const Position erudaxportalPos = { -641.515f, -827.8f, 235.5f, 3.069f };

enum Data
{
    DATA_GENERAL_UMBRISS_EVENT,
    DATA_FORGEMASTER_THRONGUS_EVENT,
    DATA_DRAHGA_SHADOWBURNER_EVENT,
    DATA_ERUDAX_EVENT,
    DATA_TEAM_IN_INSTANCE,

    // Misc
    DATA_BREAK_THE_EGGS,
};

enum Data64
{
    DATA_GENERAL_UMBRISS,
    DATA_FORGEMASTER_THRONGUS,
    DATA_DRAHGA_SHADOWBURNER,
    DATA_ERUDAX,
};

enum CreatureIds
{
    // Dungeon Bosses
    BOSS_GENERAL_UMBRISS                = 39625,
    BOSS_FORGEMASTER_THRONGUS           = 40177,
    BOSS_DRAHGA_SHADOWBURNER            = 40319,
    BOSS_ERUDAX                         = 40484,

    // Trash mobs
    NPC_ASCENDED_FLAMESEEKER            = 39415,
    NPC_ASCENDED_ROCKBREAKER            = 40272,
    NPC_ASCENDED_WATERLASHER            = 40273,
    NPC_ASCENDED_WINDWALKER             = 39414,
    NPC_AZURBORNE_GUARDIAN              = 39854,
    NPC_AZURBORNE_SEER                  = 39855,
    NPC_AZURBORNE_WARLORD               = 39909,
    NPC_BATTERED_RED_DRAKE              = 48523,
    NPC_CRIMSONBORNE_GUARDIAN           = 39381,
    NPC_CRIMSONBORNE_SEER               = 40290,
    NPC_CRIMSONBORNE_WARLORD            = 39626,
    NPC_ENSLAVED_BURNING_EMBER          = 39892,
    NPC_ENSLAVED_ROCK_ELEMENTAL         = 39900,
    NPC_ENSLAVED_THUNDER_SPIRIT         = 40269,
    NPC_ENSLAVED_GRONN_BRUTE            = 40166,
    NPC_ENSLAVED_WATER_SPIRIT           = 39961,
    NPC_TWILIGHT_FIRE_CATCHER           = 39870,
    NPC_TWILIGHT_SHADOW_WEAVER          = 39954,
    NPC_TWILIGHT_STORM_BREAKER          = 39962,
    NPC_TWILIGHT_THUNDER_CALLER         = 40270,
    NPC_TWILIGHT_WYRM_CALLER            = 39873,

    // Various NPCs
    NPC_VELASTRASZA                     = 50390,
    NPC_VALIONA                         = 40320,
    NPC_BALEFLAME                       = 50387,
    NPC_FARSEER_TOORANU                 = 50385,

    // General Umbriss
    NPC_GROUND_SIEGE_STALKER            = 40030,
    NPC_MALIGNANT_TROGG                 = 39984,
    NPC_TROGG_DWELLER                   = 45467,
    NPC_TRIGGER_BLITZ                   = 40040,

    // Forgemaster Throngus
    NPC_FIRE_PATCH                      = 48711,
    NPC_TWILIGHT_ARCHER                 = 40197,
    NPC_CAVE_IN_STALKER                 = 40228,
    NPC_FIXATE_STALKER                  = 40255,

    // Drahga Shadowburner
    NPC_INVOCATION_OF_THE_FLAME_STALKER = 40355,
    NPC_INVOKED_FLAMING_SPIRIT          = 40357,
    NPC_SEEPING_TWILIGHT_TRIGGER        = 40365,
    NPC_DEVOURING_FLAMES                = 48798,

    // Erudax
    NPC_FACELESS_LEFT                   = 40600,
    NPC_FACELESS_RIGHT                  = 48844,
    NPC_FACELESS_PORTAL_STALKER         = 44314,
    NPC_ALEXSTRASZAS_EGG                = 40486,
    NPC_TWILIGHT_HATCHLING              = 39388,
    NPC_TWILIGHT_EGG                    = 40846,
    NPC_SHADOW_GALE_STALKER             = 40567,
    NPC_FACELESS_CORRUPTOR              = 40600,
    NPC_FACELESS_CORRUPTOR_H            = 48844,
    NPC_ALEXSTRASZA_EGG                 = 40486,
};

enum GameObjectIds
{
    GO_DWARVEN_BONE_PILE                = 207411,
};

enum Achievements
{
    ACHIEV_UMBRAGE_FOR_UMBRISS          = 5297,
};

#endif
