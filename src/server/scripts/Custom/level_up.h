#pragma once
#ifndef LEVEL_UP_H
#define LEVEL_UP_H

#include <unordered_map>

typedef std::unordered_map<uint8, std::unordered_map<uint8, std::unordered_map<uint16, std::list<uint32>>>> ItemMap; // type, class_id, spec_id or 0, item_id

class LevelUp
{
    public:
        static LevelUp* instance();

        void Load();
        
        std::list<uint32> GetItemForClassSpec(uint8 const &typeLevelUp, uint8 const &classId, uint16 const& specId = 0);

    private:
        LevelUp();
        ~LevelUp();

        ItemMap _itemMap;
};

#define sLevelUp LevelUp::instance()

#endif