/*
 * Copyright (C) 2008-2013 TrinityCore <http://www.trinitycore.org/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "ScriptMgr.h"
#include "InstanceScript.h"
#include "the_botanica.h"

class instance_the_botanica : public InstanceMapScript
{
    public:
        instance_the_botanica() : InstanceMapScript("instance_the_botanica", 553) { }

        struct instance_the_botanica_InstanceMapScript : public InstanceScript
        {
            instance_the_botanica_InstanceMapScript(Map* map) : InstanceScript(map)
            {
                SetHeaders(DataHeader);
                CommanderSarannisGUID       = 0;
                HighBotanistFreywinnGUID    = 0;
                ThorngrinTheTenderGUID      = 0;
                LajGUID                     = 0;
                WarpSplinterGUID            = 0;
            }

            void OnCreatureCreate(Creature* creature)
            {
                switch (creature->GetEntry())
                {
                    case NPC_COMMANDER_SARANNIS:
                        CommanderSarannisGUID = creature->GetGUID();
                        break;
                    case NPC_HIGH_BOTANIST_FREYWINN:
                        HighBotanistFreywinnGUID = creature->GetGUID();
                        break;
                    case NPC_THORNGRIN_THE_TENDER:
                        ThorngrinTheTenderGUID = creature->GetGUID();
                        break;
                    case NPC_LAJ:
                        LajGUID = creature->GetGUID();
                        break;
                    case NPC_WARP_SPLINTER:
                        WarpSplinterGUID = creature->GetGUID();
                        break;
                    default:
                        break;
                }
            }

            uint64 GetData64(uint32 type) const
            {
                switch (type)
                {
                    case DATA_COMMANDER_SARANNIS:
                        return CommanderSarannisGUID;
                    case DATA_HIGH_BOTANIST_FREYWINN:
                        return HighBotanistFreywinnGUID;
                    case DATA_THORNGRIN_THE_TENDER:
                        return ThorngrinTheTenderGUID;
                    case DATA_LAJ:
                        return LajGUID;
                    case DATA_WARP_SPLINTER:
                        return WarpSplinterGUID;
                    default:
                        break;
                }

                return 0;
            }

            bool SetBossState(uint32 type, EncounterState state)
            {
                if (!InstanceScript::SetBossState(type, state))
                    return false;

                switch (type)
                {
                    case DATA_COMMANDER_SARANNIS:
                    case DATA_HIGH_BOTANIST_FREYWINN:
                    case DATA_THORNGRIN_THE_TENDER:
                    case DATA_LAJ:
                    case DATA_WARP_SPLINTER:
                        break;
                    default:
                        break;
                }

                return true;
            }

        protected:
            uint64 CommanderSarannisGUID;
            uint64 HighBotanistFreywinnGUID;
            uint64 ThorngrinTheTenderGUID;
            uint64 LajGUID;
            uint64 WarpSplinterGUID;
        };

        InstanceScript* GetInstanceScript(InstanceMap* map) const
        {
            return new instance_the_botanica_InstanceMapScript(map);
        }
};

void AddSC_instance_the_botanica()
{
    new instance_the_botanica;
}
