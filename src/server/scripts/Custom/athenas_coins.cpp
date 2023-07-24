#include "ScriptMgr.h"
#include "GridNotifiersImpl.h"
#include "DatabaseEnv.h"

enum coins // amounts
{
	coins_1 = 10,
	coins_2 = 20,
	coins_3 = 50,
	coins_4 = 100,
};

class athenas_coins : public ItemScript
{
private:
	uint32 _amount;
public:
	athenas_coins(const char *name, uint32 amount) : ItemScript(name), _amount(amount) {}

	bool OnUse(Player *player, Item *item, const SpellCastTargets &)
	{
		if (player->isInCombat() || player->InArena() || player->InBattleground()) //Item is not usable in combat, arenas and battlegrounds. This can be modified to your taste.
		{
			player->GetSession()->SendNotification("You may not use this token whilst you are in combat or present in an arena or battleground.");
		}
		else if (!sWorld->getBoolConfig(CONFIG_WOW_TOKEN))
		{
			player->GetSession()->SendNotification("Athenas Coins disabled.");
			player->CastSpell(player, 27880, true);
		}
		else
		{
			if (player->HasItemCount(item->GetEntry(), 1, true)) //verify that the characters have the item
			{
				int64 accountId = player->GetSession()->GetAccountId();
				int64 playerGUID = player->GetGUID();
				QueryResult Result = FusionCMSDatabase.PQuery("update `account_data` set `dp` = `dp` + %u where `id` = %u", _amount, accountId);
				player->DestroyItemCount(item->GetEntry(), 1, true); //Item is destroyed on useage.
				ChatHandler(player->GetSession()).PSendSysMessage("Thanks for helping the Athenas-WoW project, you just received %i athenas-Coins.", _amount);
				// Register the token
				CharacterDatabase.PQuery("INSERT INTO `wow_token` (`accountId`, `characterGuid`, `coins`) VALUES ('%ld','%ld','%ld')", accountId, playerGUID, _amount);
			}
			else
			{
				ChatHandler(player->GetSession()).PSendSysMessage("You do not have the necessary token.");
			}
		}
		//save pj
		player->SaveToDB();
		return true;
	}
};
void AddSC_athenas_coins() // Add to scriptloader normally
{
	new athenas_coins("athenas_coins_1", coins_1);
	new athenas_coins("athenas_coins_2", coins_2);
	new athenas_coins("athenas_coins_5", coins_3);
	new athenas_coins("athenas_coins_10", coins_4);
}
