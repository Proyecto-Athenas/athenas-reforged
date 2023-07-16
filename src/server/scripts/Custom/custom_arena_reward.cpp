#include "ScriptPCH.h"
#include "Battleground.h"
#include "Group.h"
#include "Config.h"

class Player;

class Custom_Arena_Reward : public PlayerScript
{
public:
    Custom_Arena_Reward() : PlayerScript("Custom_Arena_Reward")
    {
        customItemId = sConfigMgr->GetIntDefault("Arena.CustomReward.ItemId", 920019);
    }

    // Count the item when is received in the inventory, only if you are in arena and the Item is exactly the Bloody badge.
    void OnAddItem(Player *player, Item *item)
    {
        if (player->InArena() && item->GetEntry() == customItemId)
        {
            itemsRewarded++;
        }
    }

    void OnPVPKill(Player *killer, Player *killed)
    {
        // Check if the player is in arena and if is available to receive a reward
        if (killer->InArena() && itemsRewarded < MAX_REWARD)
        {
            killer->AddItem(customItemId, 1);
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
            MAX_REWARD = currentBattleground->GetArenaType() + 1;
            itemsRewarded = 0;
        }
    }

    Battleground *currentBattleground;
    uint32 MAX_REWARD = 0;
    uint32 itemsRewarded = 0;

    uint32 customItemId;
};

void AddSC_Custom_Arena_Reward()
{
    bool isArenaRewardActive = sConfigMgr->GetBoolDefault("Arena.CustomReward.Enabled", true);
    if (isArenaRewardActive)
    {
        new Custom_Arena_Reward();
    }
}
