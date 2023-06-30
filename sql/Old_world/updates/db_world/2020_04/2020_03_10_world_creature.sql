-- Update Void Traveler Scriptname
UPDATE `creature_template` SET `ScriptName`= 'npc_voidtraveler' WHERE `ScriptName`= 'mob_voidtraveler';

UPDATE `creature` SET `spawndist`= '0', `MovementType`= '0' WHERE `id`=18732;

DELETE FROM `creature` WHERE id=19427;
