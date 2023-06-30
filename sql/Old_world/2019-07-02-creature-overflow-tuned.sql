
/*Error is like this
 so on 60% of repots it shows error on GenerateLowGuid(HighGuid)
 this function is responsible to throw errors when guidoverlows are detected
 assert is then supposed to trigger freeze.
 
 Now, what i am suggesting is rerouting creature guid, since call stack indicates source was creaturegrid helpers and yadda yadda
 now when i investigated it, i came up values that are bigger then 15million?  32bit is 4.296million, probably it overflowed after all the uint32 resets so which is.. an overflow somehow., now its reduced to 3m
 i think i got all other guids tables correct, if not what's needed to do is to assign guids there - 10000000 
 */

-- BEWARE WHEN EXECUTING THIS, SHOULDN'T BE EXECUTED MORE THEN ONCE!
-- Trying to reset creature that are above 150 million unique identifiers?
UPDATE creature SET guid = guid - 10000000 WHERE guid > 10000000;
UPDATE creature_addon SET guid = guid - 10000000 WHERE guid > 10000000;
UPDATE creature_respawn SET guid = guid - 10000000 WHERE guid > 10000000;
UPDATE pool_creature SET guid = guid - 10000000 WHERE guid > 10000000;

