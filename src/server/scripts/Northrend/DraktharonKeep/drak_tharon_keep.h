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

#ifndef DRAK_THARON_KEEP_H_
#define DRAK_THARON_KEEP_H_

#define DrakTharonKeepScriptName "instance_drak_tharon_keep"
#define DataHeader               "DTK"

uint32 const EncounterCount = 4;

enum DataTypes
{
    DATA_TROLLGORE_EVENT,
    DATA_NOVOS_EVENT,
    DATA_DRED_EVENT,
    DATA_THARON_JA_EVENT,
    DATA_KING_DRED_ACHIEV
};
enum Data64
{
    DATA_TROLLGORE,
    DATA_NOVOS,
    DATA_DRED,
    DATA_THARON_JA,

    DATA_NOVOS_CRYSTAL_1,
    DATA_NOVOS_CRYSTAL_2,
    DATA_NOVOS_CRYSTAL_3,
    DATA_NOVOS_CRYSTAL_4,
    DATA_NOVOS_SUMMONER_1,
    DATA_NOVOS_SUMMONER_2,
    DATA_NOVOS_SUMMONER_3,
    DATA_NOVOS_SUMMONER_4,

    ACTION_CRYSTAL_HANDLER_DIED
};
#endif
