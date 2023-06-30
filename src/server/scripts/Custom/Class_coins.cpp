#include "ScriptPCH.h"
#include "GridNotifiersImpl.h"
#include "Language.h"
#include "DatabaseEnv.h" 


enum price
{
    gold = 10,
    honor = 4,
    conquest = 2,
};

class class_coins : public CreatureScript
{
    public:
    class_coins() : CreatureScript("class_coins") {}
    
    bool OnGossipHello(Player *pPlayer, Creature* _creature)
    {
        if ( pPlayer->getClass() == sWorld->getIntConfig(CONFIG_CLASS_MASK_TOKEN))
        {
            pPlayer->ADD_GOSSIP_ITEM_DB(51003, 32, GOSSIP_SENDER_MAIN, 1); // buy token
            pPlayer->ADD_GOSSIP_ITEM_DB(51003, 31, GOSSIP_SENDER_MAIN, 20); // bye
            pPlayer->PlayerTalkClass->SendGossipMenu(2000004, _creature->GetGUID());
        }
        else
        {
            pPlayer->ADD_GOSSIP_ITEM_DB(51003, 31, GOSSIP_SENDER_MAIN, 20); // bye
            pPlayer->ADD_GOSSIP_ITEM_DB(51003, 33, GOSSIP_SENDER_MAIN, 11); // anger
            pPlayer->PlayerTalkClass->SendGossipMenu(2000005, _creature->GetGUID());
        }
        return true;
    }

    uint32 NumberOfCoins(Player* player)
	{
        int64 playerGUID = player->GetGUID();
        QueryResult Result = CharacterDatabase.PQuery("select coins from `class_coins` where `guid` = %u ", playerGUID);
        if (Result)
        {
            Field *rfieldsIp = Result->Fetch();
            int64 result = rfieldsIp[0].GetInt32();
            return result;
        }
		return 0;
	}

    void registertoken(Player* player, uint16 typecoins, int64 pricecoins, uint8 totalcoins, uint8 amountcoins)
    {
        int64 account = player->GetSession()->GetAccountId();
        int64 guidPlayer = player->GetGUID();
        int64 racePlayer = player->getORace();
        int64 classPlayer = player->getClass();
        int64 coins = NumberOfCoins(player);

        /*if(pricecoins == 1)
            amountcoins = 10;*/
        // Register the token
        if (totalcoins)
        {
            CharacterDatabase.PQuery("UPDATE `class_coins` SET `coins` = `coins` + 1 where `guid` = '%ld'", guidPlayer);
        }
        else
        {
            CharacterDatabase.PQuery("INSERT INTO `class_coins` (`account`, `guid`, `coins`,`race`,`class`) VALUES ('%ld','%ld','%ld','%ld','%ld')", account, guidPlayer, amountcoins, racePlayer, classPlayer);
        }

        if (typecoins == 1)
        {
            player->ModifyMoney(-(pricecoins));
        }
        else
        {
            player->ModifyCurrency(typecoins,-(pricecoins));
        }
        
        CharacterDatabase.PQuery("INSERT INTO `class_coins_log` (`guid`, `coins`, `type`, `price`) VALUES ('%ld','%ld','%ld','%ld')", guidPlayer, amountcoins, typecoins, pricecoins);
        player->AddItem(100606, amountcoins);
        //save pj
        player->SaveToDB();
    }

    bool OnGossipSelect(Player* pPlayer, Creature* _creature, uint32 /*uiSender*/, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
        int64 coins = NumberOfCoins(pPlayer);
        
        int64 multiplier;
        if(coins == 0)
            multiplier = 1;
        else
            multiplier = coins;
        
        switch (uiAction)
        {
            case 20:
                pPlayer->PlayerTalkClass->SendCloseGossip();
                break;
            case 1:                
                if(coins > 9)
                {
                    pPlayer->ADD_GOSSIP_ITEM_DB(51003, 34, GOSSIP_SENDER_MAIN, 10);
                    pPlayer->ADD_GOSSIP_ITEM_DB(51003, 33, GOSSIP_SENDER_MAIN, 11); // anger
                    pPlayer->ADD_GOSSIP_ITEM_DB(51003, 31, GOSSIP_SENDER_MAIN, 20); // bye
                }
                else if (coins > 0)
                {
                    pPlayer->ADD_GOSSIP_ITEM_DB(51003, (1 + 3*multiplier), GOSSIP_SENDER_MAIN, 2);
                    pPlayer->ADD_GOSSIP_ITEM_DB(51003, (2 + 3*multiplier), GOSSIP_SENDER_MAIN, 3);
                    pPlayer->ADD_GOSSIP_ITEM_DB(51003, (3 + 3*multiplier), GOSSIP_SENDER_MAIN, 4);
                }
                else{
                    pPlayer->ADD_GOSSIP_ITEM_DB(51003, 1, GOSSIP_SENDER_MAIN, 2);
                    pPlayer->ADD_GOSSIP_ITEM_DB(51003, 2, GOSSIP_SENDER_MAIN, 3);
                    pPlayer->ADD_GOSSIP_ITEM_DB(51003, 3, GOSSIP_SENDER_MAIN, 4);
                    pPlayer->ADD_GOSSIP_ITEM_DB(51003, 0, GOSSIP_SENDER_MAIN, 5);
                }                
                pPlayer->PlayerTalkClass->SendGossipMenu(2000004, _creature->GetGUID());
                break;
            case 2:
                if(pPlayer->HasEnoughMoney(uint64(100000000 * multiplier)))
                {
                    registertoken(pPlayer, 1, (100000000 * multiplier), coins, 1);
                    _creature->MonsterWhisper(63, pPlayer->GetGUIDLow());
                }
                else
                {
                    _creature->MonsterWhisper(64, pPlayer->GetGUIDLow());
                }
                pPlayer->PlayerTalkClass->SendCloseGossip();
                break;
            case 3:
                if(pPlayer->HasCurrency(392, (400000 * multiplier)))
                {
                    registertoken(pPlayer, 392, (400000 * multiplier), coins, 1);
                    _creature->MonsterWhisper(63, pPlayer->GetGUIDLow());
                }
                else
                {
                     _creature->MonsterWhisper(64, pPlayer->GetGUIDLow());
                }
                pPlayer->PlayerTalkClass->SendCloseGossip();
                break;
            case 4:
                if(pPlayer->HasCurrency(390, (200000 * multiplier)))
                {
                    registertoken(pPlayer, 390, (200000 * multiplier), coins, 1);
                    _creature->MonsterWhisper(63, pPlayer->GetGUIDLow());
                }
                else
                {
                     _creature->MonsterWhisper(64, pPlayer->GetGUIDLow());
                }
                pPlayer->PlayerTalkClass->SendCloseGossip();
                break;
            case 5:
                if(pPlayer->HasEnoughMoney(uint64(500000000)))
                {
                    registertoken(pPlayer, 1, 500000000, coins, 10);
                    _creature->MonsterWhisper(63, pPlayer->GetGUIDLow());
                }
                else
                {
                     _creature->MonsterWhisper(64, pPlayer->GetGUIDLow());
                }
                pPlayer->PlayerTalkClass->SendCloseGossip();
                break;
            case 11:
                pPlayer->CastSpell(pPlayer, 80468, true);
                pPlayer->PlayerTalkClass->SendCloseGossip();
                break;
            default:
                pPlayer->PlayerTalkClass->SendCloseGossip();
                break;
        }
        return true;
    }
};

void AddSC_class_coins()
{
    new class_coins();
}