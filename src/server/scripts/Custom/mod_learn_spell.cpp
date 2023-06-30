#include "ScriptPCH.h"
#include "DisableMgr.h"

#include <unordered_map>

const std::unordered_map<uint32, uint32> trainers =
{
	{CLASS_WARRIOR, 45019},
	{CLASS_PALADIN, 20406},
	{CLASS_DRUID, 44726},
	{CLASS_MAGE, 45714},
	{CLASS_WARLOCK, 23534},
	{CLASS_PRIEST, 17510},
	{CLASS_HUNTER, 17505},
	{CLASS_ROGUE, 45717},
	{CLASS_SHAMAN, 45029},
	{ CLASS_DEATH_KNIGHT, 31084}
};
class LearnSpellsOnLevelUp : public PlayerScript
{
public:

    LearnSpellsOnLevelUp() : PlayerScript("LearnSpellsOnLevelUp")
    {
    }

    void OnLevelChanged(Player *player, uint8 oldLevel)
    {
        if (oldLevel < player->getLevel())
        {
            Process(player);
        }
    }

    void Process(Player *player)
    {
        auto itr = trainers.find(player->getClass());
        if (itr != trainers.end())
        {
            auto spells = sObjectMgr->GetNpcTrainerSpells(itr->second);
            if (spells)
            {
                for (const auto &spell : spells->spellList)
                {
                    const auto &sp = spell.second;

                    if (sp.reqLevel <= player->getLevel() && !player->HasSpell(sp.spell))
                    {
                        //ChatHandler(player->GetSession()).PSendSysMessage("spell id: %u", sp.spell);
                        player->learnSpell(sp.spell, false);
                    }                            
                }
            }
                
        }
    }
};

void AddSC_LearnSpellsOnLevelUp()
{
    new LearnSpellsOnLevelUp();
}