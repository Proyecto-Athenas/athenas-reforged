#include "ScriptPCH.h"
#include "Battleground.h"
#include "Group.h"

class Player;

enum CUSTOM_ARENA_REWARD
{
    ITEM_BLOODY_BADGE = 9200019, // Item Reward Per Kill

};

class Custom_Arena_Reward : public PlayerScript
{
public:
    Custom_Arena_Reward() : PlayerScript("Custom_Arena_Reward") {}

    void OnAddItem(Player *player, Item *item)
    {
        if (player->InArena() && item->GetEntry() == ITEM_BLOODY_BADGE)
        {
            itemsRewarded++;
        }
    }

    void OnPVPKill(Player *killer, Player *killed)
    {

        if (killer->InArena() && itemsRewarded < MAX_REWARD)
        {
            if (Group *group = killer->GetGroup())
            {
                for (GroupReference *groupRef = group->GetFirstMember(); groupRef != NULL; groupRef->next())
                {
                    if (Player *teamMember = groupRef->getSource())
                    {
                        if (teamMember->InArena())
                            teamMember->AddItem(ITEM_BLOODY_BADGE, 1);
                    }
                }
            }
        }
    }

    void OnEnterMap(Player *player, uint32 /*mapId*/)
    {
        if (player->InArena())
        {
            currentBattleground = player->GetBattleground();
            MAX_REWARD = currentBattleground->GetArenaType();
            itemsRewarded = 0;
        }
    }

    Battleground *currentBattleground;
    uint32 MAX_REWARD = 0;
    uint32 itemsRewarded = 0;
};

void AddSC_Custom_Arena_Reward()
{
    new Custom_Arena_Reward();
}
