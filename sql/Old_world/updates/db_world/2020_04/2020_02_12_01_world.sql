
/*
	Dalaran Visitor
	https://cata-twinhead.twinstar.cz/?npc=32597
	https://cata-twinhead.twinstar.cz/?npc=32598
	https://cata-twinhead.twinstar.cz/?npc=32602
	Ese npc es summoneado mediante un script.
*/
DELETE FROM `creature` WHERE `guid`=326386 AND `id`=32597;
DELETE FROM `creature` WHERE `guid`=333455 AND `id`=32598;
DELETE FROM `creature` WHERE `guid`=326965 AND `id`=32602;

/*
	Arelas Brightstar
	https://cata-twinhead.twinstar.cz/?npc=35604
	Este npc es summoneado mediante un script.
	Se encarga de invitar a los jugadores al torneo Argenta.
*/
DELETE FROM `creature` WHERE `guid`=333603 AND `id`=35604;

/*
	Anub'Rekhan Image
	https://cata-twinhead.twinstar.cz/?npc=37850
	Sartharion Image
	https://cata-twinhead.twinstar.cz/?npc=37849
	Razorscale Image
	https://cata-twinhead.twinstar.cz/?npc=37858
	XT-002 Deconstructor Image
	https://cata-twinhead.twinstar.cz/?npc=37861
	Lord Marrowgar Image
	https://cata-twinhead.twinstar.cz/?npc=37864
	Ignis the Furnace Master Image
	https://cata-twinhead.twinstar.cz/?npc=37859
	Flame Leviathan Image
	https://cata-twinhead.twinstar.cz/?npc=37856
	Lord Jaraxxus Image
	https://cata-twinhead.twinstar.cz/?npc=37862
	Noth the Plaguebringer Image
	https://cata-twinhead.twinstar.cz/?npc=37851
	Instructor Razuvious Image
	https://cata-twinhead.twinstar.cz/?npc=37853
	Patchwerk Image
	https://cata-twinhead.twinstar.cz/?npc=37854
	Malygos Image
	https://cata-twinhead.twinstar.cz/?npc=37855
	Ley-Guardian Eregos Image
	https://cata-twinhead.twinstar.cz/?npc=31619
	Ingvar the Plunderer Image
	https://cata-twinhead.twinstar.cz/?npc=31584
	Gal'darah Image <High Prophet of Akali>
	https://cata-twinhead.twinstar.cz/?npc=31622
*/
DELETE FROM `creature` WHERE `guid`=333382 AND `id`=37850;
DELETE FROM `creature` WHERE `guid`=333384 AND `id`=37849;
DELETE FROM `creature` WHERE `guid`=333371 AND `id`=37858;
DELETE FROM `creature` WHERE `guid`=330692 AND `id`=37861;
DELETE FROM `creature` WHERE `guid`=333342 AND `id`=37864;
DELETE FROM `creature` WHERE `guid`=333380 AND `id`=37859;
DELETE FROM `creature` WHERE `guid`=333381 AND `id`=37856;
DELETE FROM `creature` WHERE `guid`=333616 AND `id`=37862;
DELETE FROM `creature` WHERE `guid`=333705 AND `id`=37851;
DELETE FROM `creature` WHERE `guid`=333706 AND `id`=37853;
DELETE FROM `creature` WHERE `guid`=333707 AND `id`=37854;
DELETE FROM `creature` WHERE `guid`=333708 AND `id`=37855;
DELETE FROM `creature` WHERE `guid`=333613 AND `id`=31619;
DELETE FROM `creature` WHERE `guid`=327265 AND `id`=31584;
DELETE FROM `creature` WHERE `guid`=339888 AND `id`=31622;
