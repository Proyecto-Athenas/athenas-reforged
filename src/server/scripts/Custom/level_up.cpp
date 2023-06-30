#include "level_up.h"

LevelUp::LevelUp()
{}

LevelUp::~LevelUp()
{}

LevelUp* LevelUp::instance()
{
    static LevelUp instance;
    return &instance;
}

void LevelUp::Load()
{
    TC_LOG_INFO("server.loading", "Loading level up data...");

    auto oldTime = getMSTime();
    auto result = WorldDatabase.PQuery("SELECT `type`,`class_id`, `spec_id`, `item_id` FROM `level_up_item`");
    if (!result)
        return;

    do 
    {
        auto fields = result->Fetch();
        _itemMap[fields[0].GetUInt8()][fields[1].GetUInt8()][fields[2].GetUInt16()].push_back(fields[3].GetUInt32());
    } 
    while (result->NextRow());

    TC_LOG_INFO("server.loading", ">> Loaded level up items %u ms", GetMSTimeDiffToNow(oldTime));
}

std::list<uint32> LevelUp::GetItemForClassSpec(uint8 const &typeLevelUp, uint8 const &classId, uint16 const& specId /* = 0 */)
{
    auto emptyList = std::list<uint32>();
    auto typeLevelUpMap = _itemMap.find(typeLevelUp);
    if (typeLevelUpMap == _itemMap.end())
        return emptyList;
    
    auto classMap = typeLevelUpMap->second.find(classId);
    if (classMap == typeLevelUpMap->second.end())
        return emptyList;

    auto specMap = classMap->second.find(specId);
    if (specMap == classMap->second.end())
        specMap = classMap->second.find(CLASS_NONE);

    if (specMap == classMap->second.end())
        return emptyList;

    return specMap->second;
}

enum typeboost // id items
{
    type_1 = 100594,
    type_2 = 100595,
    type_3 = 100596,
    type_4 = 100597,
    type_5 = 100598,
    type_6 = 100599
};

class item_level_up_script : public ItemScript
{
    public:
        item_level_up_script() : ItemScript("item_level_up_script") { }

        bool OnUse(Player* player, Item* item, SpellCastTargets const& /*targets*/)
        {
            if (player->getLevel() < 10)
            {
                player->SetLevel(10);
                player->SendForcedObjectUpdate();
                ChatHandler(player->GetSession()).PSendSysMessage("You need to choose specialization!");
                return true;
            }
            
            auto specId = player->GetPrimaryTalentTree(player->GetActiveSpec());
            if (!specId)
            {
                ChatHandler(player->GetSession()).PSendSysMessage("You need to choose specialization!");
                return true;
            }

            uint8 typeLevelUpTemp = 0; // normal boost 

            switch (item->GetEntry())
            {
            case type_1:
                typeLevelUpTemp = 1;
                break;
            case type_2:
                typeLevelUpTemp = 2;
                break;
            case type_3:
                typeLevelUpTemp = 3;
                break;
            case type_4:
                typeLevelUpTemp = 4;
                break;
            case type_5:
                typeLevelUpTemp = 5;
                break;
            case type_6:
                typeLevelUpTemp = 6;
                break;            
            default:
                typeLevelUpTemp = 0;
                break;
            }

            auto items = sLevelUp->GetItemForClassSpec(typeLevelUpTemp, player->getClass(), specId);
            if (items.empty())
            {
                ChatHandler(player->GetSession()).PSendSysMessage("In development!");
                return true;
            }

            if (player->getLevel() < 85)
            {
                player->SetLevel(85);
                player->SendForcedObjectUpdate();
            }

            MailSender sender(MAIL_NORMAL, 0, MAIL_STATIONERY_GM);
            MailDraft draft("Level UP items", "Thank you for supporting Athenas WoW Server!");
            SQLTransaction trans = CharacterDatabase.BeginTransaction();
            for (auto& itemEntry : items)
            {
                if (Item* item = Item::CreateItem(itemEntry, 1, player))
                {
                    item->SaveToDB(trans);                               
                    draft.AddItem(item);
                }
            }

            draft.SendMailTo(trans, MailReceiver(player, player->GetGUIDLow()), sender);
            CharacterDatabase.CommitTransaction(trans);
            ChatHandler(player->GetSession()).PSendSysMessage("Check your mailbox!");

            uint32 count = 1;
            player->DestroyItemCount(item, count, true);
            return true;
        }
};

class LevelUpLoader : public WorldScript
{
    public:
        LevelUpLoader() : WorldScript("LevelUpLoader") {}

        void OnStartup() override
        {
            sLevelUp->Load();
        }
};

void AddSC_LevelUpScripts()
{
    new item_level_up_script();
    new LevelUpLoader();
}