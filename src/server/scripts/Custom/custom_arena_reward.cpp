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

    // Count the item when is received in the inventory, only if you are in arena and the Item is exactly the Bloody badge.
    void OnAddItem(Player *player, Item *item)
    {
        if (player->InArena() && item->GetEntry() == ITEM_BLOODY_BADGE)
        {
            itemsRewarded++;
        }
    }

    void OnPVPKill(Player *killer, Player *killed)
    {
        // Check if the player is in arena and if is available to receive a reward
        if (killer->InArena() && itemsRewarded < MAX_REWARD)
        {
            // Share with all the arena team the reward.
            if (Group *group = killer->GetGroup())
            {
                for (GroupReference *groupRef = group->GetFirstMember(); groupRef != NULL; groupRef->next())
                {
                    if (Player *teamMember = groupRef->getSource())
                    {
                        // Send The reward to the team if the team member is on the Arena.
                        if (teamMember->InArena())
                            teamMember->AddItem(ITEM_BLOODY_BADGE, 1);
                    }
                }
            }
        }
    }

    // Set The SCript Limits whe the player enter into the arena, The idea is to fix the Limit accordingly to the Arena Team Type, for instance, if the player enter into the 2vs2 arena, the limit is set to 2.
    void OnEnterMap(Player *player, uint32 /*mapId*/)
    {
        if (player->InArena())
        {
            // Setup the Battleground Pointer
            currentBattleground = player->GetBattleground();
            // Setup Limits for the rewards
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
