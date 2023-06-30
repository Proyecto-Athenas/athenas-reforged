#include "ScriptMgr.h"
#include "GridNotifiersImpl.h"
#include "DatabaseEnv.h" // borrar si no necesitas base de datos

enum coins
{
    coins_1 = 1,
    coins_2 = 2,
    coins_3 = 5,
    coins_4 = 10,
};

class athenas_coins_1 : public ItemScript
{
public:
    athenas_coins_1() : ItemScript("athenas_coins_1") {}

    bool OnUse(Player *player, Item *item, const SpellCastTargets &)
    {
        if (player->isInCombat() || player->InArena() || player->InBattleground()) //Item is not usable in combat, arenas and battlegrounds. This can be modified to your taste.
        {
            player->GetSession()->SendNotification("You may not use this token whilst you are in combat or present in an arena or battleground.");
        }
        else if (!sWorld->getBoolConfig(CONFIG_WOW_TOKEN))
        {
            player->GetSession()->SendNotification("Athenas Coins disabled.");
            player->DestroyItemCount(item->GetEntry(), 1, true); //Item is destroyed on useage.
            //save pj
            player->SaveToDB();
        }
        else
        {
            if(player->HasItemCount(item->GetEntry(), 1, true)) //verify that the characters have the item
            {
                int64 accountId = player->GetSession()->GetAccountId();
                int64 playerGUID = player->GetGUID();
                QueryResult Result = FusionCMSDatabase.PQuery("update `account_data` set `dp` = `dp` + %u where `id` = %u", coins_1, accountId);
                player->DestroyItemCount(item->GetEntry(), 1, true); //Item is destroyed on useage.
                ChatHandler(player->GetSession()).PSendSysMessage("Thanks for helping the Athenas-WoW project, you just received %i athenas-Coins.", coins_1);
                // Register the token
                CharacterDatabase.PQuery("INSERT INTO `wow_token` (`accountId`, `characterGuid`, `coins`) VALUES ('%ld','%ld','%ld')", accountId, playerGUID, coins_1);
                //save pj
                player->SaveToDB();
            }
            else
            {
                ChatHandler(player->GetSession()).PSendSysMessage("You do not have the necessary token.");
            }          
        }
        return true;
    }
};

class athenas_coins_2 : public ItemScript
{
public:
    athenas_coins_2() : ItemScript("athenas_coins_2") {}

    bool OnUse(Player *player, Item *item, const SpellCastTargets &)
    {
        if (player->isInCombat() || player->InArena() || player->InBattleground()) //Item is not usable in combat, arenas and battlegrounds. This can be modified to your taste.
        {
            player->GetSession()->SendNotification("You may not use this token whilst you are in combat or present in an arena or battleground.");
        }
        else if (!sWorld->getBoolConfig(CONFIG_WOW_TOKEN))
        {
            player->GetSession()->SendNotification("Athenas Coins disabled.");
            player->DestroyItemCount(item->GetEntry(), 1, true); //Item is destroyed on useage.
            //save pj
            player->SaveToDB();
        }
        else
        {
            if(player->HasItemCount(item->GetEntry(), 1, true)) //verify that the characters have the item
            {
                int64 accountId = player->GetSession()->GetAccountId();
                int64 playerGUID = player->GetGUID();
                QueryResult Result = FusionCMSDatabase.PQuery("update `account_data` set `dp` = `dp` + %u where `id` = %u", coins_2, accountId);
                player->DestroyItemCount(item->GetEntry(), 1, true); //Item is destroyed on useage.
                ChatHandler(player->GetSession()).PSendSysMessage("Thanks for helping the Athenas-WoW project, you just received %i athenas-Coins.", coins_2);
                // Register the token
                CharacterDatabase.PQuery("INSERT INTO `wow_token` (`accountId`, `characterGuid`, `coins`) VALUES ('%ld','%ld','%ld')", accountId, playerGUID, coins_2);
                //save pj
                player->SaveToDB();
            }
            else
            {
                ChatHandler(player->GetSession()).PSendSysMessage("You do not have the necessary token.");
            }
        }
        return true;
    }
};

class athenas_coins_5 : public ItemScript
{
public:
    athenas_coins_5() : ItemScript("athenas_coins_5") {}

    bool OnUse(Player *player, Item *item, const SpellCastTargets &)
    {
        if (player->isInCombat() || player->InArena() || player->InBattleground()) //Item is not usable in combat, arenas and battlegrounds. This can be modified to your taste.
        {
            player->GetSession()->SendNotification("You may not use this token whilst you are in combat or present in an arena or battleground.");
        }
        else if (!sWorld->getBoolConfig(CONFIG_WOW_TOKEN))
        {
            player->GetSession()->SendNotification("Athenas Coins disabled.");
            player->DestroyItemCount(item->GetEntry(), 1, true); //Item is destroyed on useage.
            //save pj
            player->SaveToDB();
        }
        else
        {
            if(player->HasItemCount(item->GetEntry(), 1, true)) //verify that the characters have the item
            {
                int64 accountId = player->GetSession()->GetAccountId();
                int64 playerGUID = player->GetGUID();
                QueryResult Result = FusionCMSDatabase.PQuery("update `account_data` set `dp` = `dp` + %u where `id` = %u", coins_3, accountId);
                player->DestroyItemCount(item->GetEntry(), 1, true); //Item is destroyed on useage.
                ChatHandler(player->GetSession()).PSendSysMessage("Thanks for helping the Athenas-WoW project, you just received %i athenas-Coins.", coins_3);
                // Register the token
                CharacterDatabase.PQuery("INSERT INTO `wow_token` (`accountId`, `characterGuid`, `coins`) VALUES ('%ld','%ld','%ld')", accountId, playerGUID, coins_3);
                //save pj
                player->SaveToDB();
            }
            else
            {
                ChatHandler(player->GetSession()).PSendSysMessage("You do not have the necessary token.");
            }
        }
        return true;
    }
};

class athenas_coins_10 : public ItemScript
{
public:
    athenas_coins_10() : ItemScript("athenas_coins_10") {}

    bool OnUse(Player *player, Item *item, const SpellCastTargets &)
    {
        if (player->isInCombat() || player->InArena() || player->InBattleground()) //Item is not usable in combat, arenas and battlegrounds. This can be modified to your taste.
        {
            player->GetSession()->SendNotification("You may not use this token whilst you are in combat or present in an arena or battleground.");
        }
        else if (!sWorld->getBoolConfig(CONFIG_WOW_TOKEN))
        {
            player->GetSession()->SendNotification("Athenas Coins disabled.");
            player->DestroyItemCount(item->GetEntry(), 1, true); //Item is destroyed on useage.
            //save pj
            player->SaveToDB();
        }
        else
        {
            if(player->HasItemCount(item->GetEntry(), 1, true)) //verify that the characters have the item
            {
                int64 accountId = player->GetSession()->GetAccountId();
                int64 playerGUID = player->GetGUID();
                QueryResult Result = FusionCMSDatabase.PQuery("update `account_data` set `dp` = `dp` + %u where `id` = %u", coins_4, accountId);
                player->DestroyItemCount(item->GetEntry(), 1, true); //Item is destroyed on useage.
                ChatHandler(player->GetSession()).PSendSysMessage("Thanks for helping the Athenas-WoW project, you just received %i athenas-Coins.", coins_4);
                // Register the token
                CharacterDatabase.PQuery("INSERT INTO `wow_token` (`accountId`, `characterGuid`, `coins`) VALUES ('%ld','%ld','%ld')", accountId, playerGUID, coins_4);
                //save pj
                player->SaveToDB();
            }
            else
            {
                ChatHandler(player->GetSession()).PSendSysMessage("You do not have the necessary token.");
            }
        }
        return true;
    }
};

void AddSC_athenas_coins() // Add to scriptloader normally
{
    new athenas_coins_1();
    new athenas_coins_2();
    new athenas_coins_5();
    new athenas_coins_10();
}
