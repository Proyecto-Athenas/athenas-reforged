#include "ScriptPCH.h"

class Player;

const enum CUSTOM_REWARD_ITEMS {
    BLOODY_BADGE = 9200019,
};

class Custom_Arena_Reward : public PlayerScript
{
public:
    Custom_Arena_Reward() : PlayerScript("Custom_Arena_Reward") {}

    void OnPVPKill(Player *killer, Player *killed)
    {
        if (killer->InArena())
        {
            killer->AddItem(BLOODY_BADGE, 1);
        }
    }
};

void AddSC_Custom_Arena_Reward()
{
    new Custom_Arena_Reward();
}
