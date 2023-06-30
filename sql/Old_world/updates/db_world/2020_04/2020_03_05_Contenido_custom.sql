DELETE FROM `quest_template` WHERE id IN (1006004,1006003,1006002,1006001,1006000,1005004,1005002,1005001,1003027,
1003026,1003025,1003024,1003023,1003022,1003021,1003020,1003019,1003018,1003017,1003016,1003015,1003014,1003013,
1003012,1003011,1003010,1003009,1003008,1003007,1003006,1003005,1003004,1003003,1003002,1003001,1003000,80000,
1005707,1005706,1005705,1005704,1005703,1005702,1005701,1005700,1005003);

DELETE FROM `report_quest` WHERE id IN (1006004,1006003,1006002,1006001,1006000,1005004,1005002,1005001,1003027,
1003026,1003025,1003024,1003023,1003022,1003021,1003020,1003019,1003018,1003017,1003016,1003015,1003014,1003013,
1003012,1003011,1003010,1003009,1003008,1003007,1003006,1003005,1003004,1003003,1003002,1003001,1003000,80000);

DELETE FROM `creature_template` WHERE entry IN (1006012,1005005,1003072,1003065,1003070,1003069,1003068,1003067,
1003064,1003063,1003062,1003061,1003071,1003060,1003066,1003073,1006013,1006002,1005021,1003015,1005703,1005700,
1005701,1005020,1003000,1003001,1003003,1003004,1003005,1003011,1003012,1003013,1003014,1003016,1003017,1005001,
1005002,1005003,1003038,1006339,1006016,1005014,1003074,1005704,1005705,1005018);

DELETE FROM `creature_involvedrelation` WHERE id IN (1006012,1005005,1003072,1003065,1003070,1003069,1003068,1003067,
1003064,1003063,1003062,1003061,1003071,1003066,1003060,1003071,10030671003066,1003064,
1003060,1003073,1005703,1005700,1005701,1005020);

DELETE FROM `creature_questrelation` WHERE id IN (1006013,1006002,1006012,1005021,1005005,1003072,1003065,1003070,1003069,
1003068,1003067,1003064,1003063,1003062,1003061,1003071,1003066,1003060,1003073,1003015,1005700,1005701,1005703,
1005020);


DELETE FROM `creature` WHERE id IN (1006012,1005005,1003072,1003065,1003070,1003069,1003068,1003067,
1003064,1003063,1003062,1003061,1003071,1003060,1003066,1003073,1006013,1006002,1005021,1003015,1005703,1005700,
1005701,1005020,1003000,1003001,1003003,1003004,1003005,1003011,1003012,1003013,1003014,1003016,1003017,1005001,
1005002,1005003,1003038,1006339,1006016,1005014,1003074,1005704,1005705);

DELETE FROM `smart_scripts` WHERE entryorguid IN (1006012,1005005,1003072,1003065,1003070,1003069,1003068,1003067,
1003064,1003063,1003062,1003061,1003071,1003060,1003066,1003073,1006013,1006002,1005021,1003015,1005703,1005700,
1005701,1005020,1003000,1003001,1003003,1003004,1003005,1003011,1003012,1003013,1003014,1003016,1003017,1005001,
1005002,1005003,1003038,1006339,1006016,1005014,1003074,1005704,1005705,100300000,100300001,1005018);

DELETE FROM `item_loot_template` WHERE `entry`=1006213;
DELETE FROM `item_loot_template` WHERE `entry`=1006212 AND `item`=1;
DELETE FROM `item_loot_template` WHERE `entry`=1006211 AND `item`=1006210;
DELETE FROM `item_loot_template` WHERE `entry`=1006210 AND `item`=52325;
DELETE FROM `item_loot_template` WHERE `entry`=1006210 AND `item`=52329;
DELETE FROM `item_loot_template` WHERE `entry`=1006210 AND `item`=52327;
DELETE FROM `item_loot_template` WHERE `entry`=1006210 AND `item`=55973;
DELETE FROM `item_loot_template` WHERE `entry`=1006210 AND `item`=52326;
DELETE FROM `item_loot_template` WHERE `entry`=1006210 AND `item`=52328;
DELETE FROM `item_loot_template` WHERE `entry`=1006209 AND `item`=1006208;
DELETE FROM `item_loot_template` WHERE `entry`=1006208 AND `item`=71720;
DELETE FROM `item_loot_template` WHERE `entry`=1006208 AND `item`=54448;
DELETE FROM `item_loot_template` WHERE `entry`=1006208 AND `item`=68778;
DELETE FROM `item_loot_template` WHERE `entry`=1006208 AND `item`=68785;
DELETE FROM `item_loot_template` WHERE `entry`=1006208 AND `item`=68780;
DELETE FROM `item_loot_template` WHERE `entry`=1006208 AND `item`=68784;
DELETE FROM `item_loot_template` WHERE `entry`=1006208 AND `item`=68786;
DELETE FROM `item_loot_template` WHERE `entry`=1006208 AND `item`=56551;
DELETE FROM `item_loot_template` WHERE `entry`=1006208 AND `item`=56550;
DELETE FROM `item_loot_template` WHERE `entry`=1006208 AND `item`=54450;
DELETE FROM `item_loot_template` WHERE `entry`=1006208 AND `item`=52297;
DELETE FROM `item_loot_template` WHERE `entry`=1006208 AND `item`=52294;
DELETE FROM `item_loot_template` WHERE `entry`=1006208 AND `item`=68779;
DELETE FROM `item_loot_template` WHERE `entry`=1006208 AND `item`=23920;
DELETE FROM `item_loot_template` WHERE `entry`=1006208 AND `item`=52779;
DELETE FROM `item_loot_template` WHERE `entry`=1006208 AND `item`=55054;
DELETE FROM `item_loot_template` WHERE `entry`=1006207 AND `item`=1006206;
DELETE FROM `item_loot_template` WHERE `entry`=1006206 AND `item`=17056;
DELETE FROM `item_loot_template` WHERE `entry`=1006206 AND `item`=62290;
DELETE FROM `item_loot_template` WHERE `entry`=1006205 AND `item`=1006204;
DELETE FROM `item_loot_template` WHERE `entry`=1006204 AND `item`=62290;
DELETE FROM `item_loot_template` WHERE `entry`=1006204 AND `item`=17056;
DELETE FROM `item_loot_template` WHERE `entry`=1006019 AND `item`=22261;
DELETE FROM `item_loot_template` WHERE `entry`=1006018 AND `item`=1006019;
DELETE FROM `item_loot_template` WHERE `entry`=1006017 AND `item`=34258;
DELETE FROM `item_loot_template` WHERE `entry`=1006016 AND `item`=1006017;
DELETE FROM `item_loot_template` WHERE `entry`=1006015 AND `item`=22218;
DELETE FROM `item_loot_template` WHERE `entry`=1006014 AND `item`=1006015;
DELETE FROM `item_loot_template` WHERE `entry`=1006013 AND `item`=22237;
DELETE FROM `item_loot_template` WHERE `entry`=1006013 AND `item`=22239;
DELETE FROM `item_loot_template` WHERE `entry`=1006013 AND `item`=22238;
DELETE FROM `item_loot_template` WHERE `entry`=1006013 AND `item`=22236;
DELETE FROM `item_loot_template` WHERE `entry`=1006012 AND `item`=1006013;
DELETE FROM `item_loot_template` WHERE `entry`=1006011 AND `item`=22206;
DELETE FROM `item_loot_template` WHERE `entry`=1006011 AND `item`=44731;
DELETE FROM `item_loot_template` WHERE `entry`=1006010 AND `item`=1006011;
DELETE FROM `item_loot_template` WHERE `entry`=1006009 AND `item`=49715;
DELETE FROM `item_loot_template` WHERE `entry`=1006009 AND `item`=50741;
DELETE FROM `item_loot_template` WHERE `entry`=1006009 AND `item`=50471;
DELETE FROM `item_loot_template` WHERE `entry`=1006009 AND `item`=22235;
DELETE FROM `item_loot_template` WHERE `entry`=1006009 AND `item`=50446;
DELETE FROM `item_loot_template` WHERE `entry`=1006008 AND `item`=1006009;
DELETE FROM `item_loot_template` WHERE `entry`=1006005 AND `item`=1006002;
DELETE FROM `item_loot_template` WHERE `entry`=1006004 AND `item`=1006003;
DELETE FROM `item_loot_template` WHERE `entry`=1006003 AND `item`=1;
DELETE FROM `item_loot_template` WHERE `entry`=1006002 AND `item`=1;
DELETE FROM `item_loot_template` WHERE `entry`=1006001 AND `item`=1;
DELETE FROM `item_loot_template` WHERE `entry`=1005715 AND `item`=1005712;
DELETE FROM `item_loot_template` WHERE `entry`=1005713 AND `item`=1005704;
DELETE FROM `item_loot_template` WHERE `entry`=1005713 AND `item`=1005703;
DELETE FROM `item_loot_template` WHERE `entry`=1005713 AND `item`=1005702;
DELETE FROM `item_loot_template` WHERE `entry`=1005713 AND `item`=1005701;
DELETE FROM `item_loot_template` WHERE `entry`=1005712 AND `item`=62290;
DELETE FROM `item_loot_template` WHERE `entry`=1005712 AND `item`=62251;
DELETE FROM `item_loot_template` WHERE `entry`=1005712 AND `item`=33042;
DELETE FROM `item_loot_template` WHERE `entry`=1005712 AND `item`=1005702;
DELETE FROM `item_loot_template` WHERE `entry`=1005712 AND `item`=1005701;
DELETE FROM `item_loot_template` WHERE `entry`=1005712 AND `item`=1005709;
DELETE FROM `item_loot_template` WHERE `entry`=1005712 AND `item`=1005705;
DELETE FROM `item_loot_template` WHERE `entry`=1005712 AND `item`=1005706;
DELETE FROM `item_loot_template` WHERE `entry`=1005712 AND `item`=1005707;
DELETE FROM `item_loot_template` WHERE `entry`=1005712 AND `item`=1005703;
DELETE FROM `item_loot_template` WHERE `entry`=1005712 AND `item`=1005708;
DELETE FROM `item_loot_template` WHERE `entry`=1005712 AND `item`=1005704;
DELETE FROM `item_loot_template` WHERE `entry`=1005712 AND `item`=1005713;
DELETE FROM `item_loot_template` WHERE `entry`=1005712 AND `item`=1005711;
DELETE FROM `item_loot_template` WHERE `entry`=1005712 AND `item`=1005710;
DELETE FROM `item_loot_template` WHERE `entry`=1005712 AND `item`=1005712;
DELETE FROM `item_loot_template` WHERE `entry`=1005026 AND `item`=1005025;
DELETE FROM `item_loot_template` WHERE `entry`=1005025 AND `item`=1;
DELETE FROM `item_loot_template` WHERE `entry`=1005023 AND `item`=1005012;
DELETE FROM `item_loot_template` WHERE `entry`=1005022 AND `item`=1005011;
DELETE FROM `item_loot_template` WHERE `entry`=1005021 AND `item`=1005010;
DELETE FROM `item_loot_template` WHERE `entry`=1005020 AND `item`=1005008;
DELETE FROM `item_loot_template` WHERE `entry`=1005019 AND `item`=1005006;
DELETE FROM `item_loot_template` WHERE `entry`=1005018 AND `item`=1005005;
DELETE FROM `item_loot_template` WHERE `entry`=1005017 AND `item`=1005004;
DELETE FROM `item_loot_template` WHERE `entry`=1005016 AND `item`=1005003;
DELETE FROM `item_loot_template` WHERE `entry`=1005015 AND `item`=1005002;
DELETE FROM `item_loot_template` WHERE `entry`=1005014 AND `item`=1005001;
DELETE FROM `item_loot_template` WHERE `entry`=1005013 AND `item`=1005009;
DELETE FROM `item_loot_template` WHERE `entry`=1005012 AND `item`=46779;
DELETE FROM `item_loot_template` WHERE `entry`=1005012 AND `item`=38233;
DELETE FROM `item_loot_template` WHERE `entry`=1005011 AND `item`=1;
DELETE FROM `item_loot_template` WHERE `entry`=1005011 AND `item`=2;
DELETE FROM `item_loot_template` WHERE `entry`=1005010 AND `item`=17202;
DELETE FROM `item_loot_template` WHERE `entry`=1005010 AND `item`=35557;
DELETE FROM `item_loot_template` WHERE `entry`=1005008 AND `item`=23769;
DELETE FROM `item_loot_template` WHERE `entry`=1005008 AND `item`=23768;
DELETE FROM `item_loot_template` WHERE `entry`=1005008 AND `item`=23770;
DELETE FROM `item_loot_template` WHERE `entry`=1005008 AND `item`=23771;
DELETE FROM `item_loot_template` WHERE `entry`=1005008 AND `item`=25886;
DELETE FROM `item_loot_template` WHERE `entry`=1005006 AND `item`=1;
DELETE FROM `item_loot_template` WHERE `entry`=1005005 AND `item`=1;
DELETE FROM `item_loot_template` WHERE `entry`=1005004 AND `item`=6657;
DELETE FROM `item_loot_template` WHERE `entry`=1005004 AND `item`=35275;
DELETE FROM `item_loot_template` WHERE `entry`=1005004 AND `item`=8529;
DELETE FROM `item_loot_template` WHERE `entry`=1005004 AND `item`=37254;
DELETE FROM `item_loot_template` WHERE `entry`=1005004 AND `item`=40195;
DELETE FROM `item_loot_template` WHERE `entry`=1005004 AND `item`=1973;
DELETE FROM `item_loot_template` WHERE `entry`=1005004 AND `item`=43572;
DELETE FROM `item_loot_template` WHERE `entry`=1005004 AND `item`=31337;
DELETE FROM `item_loot_template` WHERE `entry`=1005003 AND `item`=62290;
DELETE FROM `item_loot_template` WHERE `entry`=1005003 AND `item`=62289;
DELETE FROM `item_loot_template` WHERE `entry`=1005002 AND `item`=1;
DELETE FROM `item_loot_template` WHERE `entry`=1005001 AND `item`=1;
DELETE FROM `item_loot_template` WHERE `entry`=1003119 AND `item`=1003040;
DELETE FROM `item_loot_template` WHERE `entry`=1003118 AND `item`=1003036;
DELETE FROM `item_loot_template` WHERE `entry`=1003117 AND `item`=1003047;
DELETE FROM `item_loot_template` WHERE `entry`=1003116 AND `item`=1003043;
DELETE FROM `item_loot_template` WHERE `entry`=1003115 AND `item`=1003042;
DELETE FROM `item_loot_template` WHERE `entry`=1003114 AND `item`=1003041;
DELETE FROM `item_loot_template` WHERE `entry`=1003113 AND `item`=1003108;
DELETE FROM `item_loot_template` WHERE `entry`=1003112 AND `item`=1003107;
DELETE FROM `item_loot_template` WHERE `entry`=1003111 AND `item`=1003039;
DELETE FROM `item_loot_template` WHERE `entry`=1003110 AND `item`=1003038;
DELETE FROM `item_loot_template` WHERE `entry`=1003109 AND `item`=1003037;
DELETE FROM `item_loot_template` WHERE `entry`=1003106 AND `item`=1003049;
DELETE FROM `item_loot_template` WHERE `entry`=1003106 AND `item`=1003034;
DELETE FROM `item_loot_template` WHERE `entry`=1003105 AND `item`=1003048;
DELETE FROM `item_loot_template` WHERE `entry`=1003105 AND `item`=1003033;
DELETE FROM `item_loot_template` WHERE `entry`=1003104 AND `item`=1003035;
DELETE FROM `item_loot_template` WHERE `entry`=1003103 AND `item`=1003051;
DELETE FROM `item_loot_template` WHERE `entry`=1003102 AND `item`=1003050;
DELETE FROM `item_loot_template` WHERE `entry`=1003101 AND `item`=1003053;
DELETE FROM `item_loot_template` WHERE `entry`=1003100 AND `item`=1003052;
DELETE FROM `item_loot_template` WHERE `entry`=1003099 AND `item`=1003032;
DELETE FROM `item_loot_template` WHERE `entry`=1003098 AND `item`=1003031;
DELETE FROM `item_loot_template` WHERE `entry`=1003097 AND `item`=1003030;
DELETE FROM `item_loot_template` WHERE `entry`=1003096 AND `item`=1003055;
DELETE FROM `item_loot_template` WHERE `entry`=1003095 AND `item`=1003054;
DELETE FROM `item_loot_template` WHERE `entry`=1003094 AND `item`=1003029;
DELETE FROM `item_loot_template` WHERE `entry`=1003093 AND `item`=1003028;
DELETE FROM `item_loot_template` WHERE `entry`=1003092 AND `item`=1003057;
DELETE FROM `item_loot_template` WHERE `entry`=1003091 AND `item`=1003056;
DELETE FROM `item_loot_template` WHERE `entry`=1003090 AND `item`=1003027;
DELETE FROM `item_loot_template` WHERE `entry`=1003089 AND `item`=1003026;
DELETE FROM `item_loot_template` WHERE `entry`=1003088 AND `item`=1003059;
DELETE FROM `item_loot_template` WHERE `entry`=1003087 AND `item`=1003058;
DELETE FROM `item_loot_template` WHERE `entry`=1003086 AND `item`=1003025;
DELETE FROM `item_loot_template` WHERE `entry`=1003085 AND `item`=1003024;
DELETE FROM `item_loot_template` WHERE `entry`=1003084 AND `item`=1003061;
DELETE FROM `item_loot_template` WHERE `entry`=1003083 AND `item`=1003060;
DELETE FROM `item_loot_template` WHERE `entry`=1003082 AND `item`=1003023;
DELETE FROM `item_loot_template` WHERE `entry`=1003081 AND `item`=1003022;
DELETE FROM `item_loot_template` WHERE `entry`=1003080 AND `item`=1003063;
DELETE FROM `item_loot_template` WHERE `entry`=1003079 AND `item`=1003062;
DELETE FROM `item_loot_template` WHERE `entry`=1003078 AND `item`=1003021;
DELETE FROM `item_loot_template` WHERE `entry`=1003077 AND `item`=1003020;
DELETE FROM `item_loot_template` WHERE `entry`=1003076 AND `item`=1003065;
DELETE FROM `item_loot_template` WHERE `entry`=1003075 AND `item`=1003064;
DELETE FROM `item_loot_template` WHERE `entry`=1003074 AND `item`=1003019;
DELETE FROM `item_loot_template` WHERE `entry`=1003073 AND `item`=1003018;
DELETE FROM `item_loot_template` WHERE `entry`=1003072 AND `item`=1003017;
DELETE FROM `item_loot_template` WHERE `entry`=1003071 AND `item`=1003046;
DELETE FROM `item_loot_template` WHERE `entry`=1003070 AND `item`=1003016;
DELETE FROM `item_loot_template` WHERE `entry`=1003069 AND `item`=1003015;
DELETE FROM `item_loot_template` WHERE `entry`=1003068 AND `item`=1003045;
DELETE FROM `item_loot_template` WHERE `entry`=1003067 AND `item`=1003014;
DELETE FROM `item_loot_template` WHERE `entry`=1003066 AND `item`=1003013;

DELETE FROM `pool_creature` WHERE pool_entry IN (1003007,1003006,1003005,1003004,1003003,1003002,1003001,1003000);
DELETE FROM `creature_loot_template` WHERE entry IN (1003012,1003010);

DELETE FROM `item_loot_template` WHERE entry IN (200001,200002,200003,200004,200005,200006,200007,200008,300000,1005001,1005002,1005003,1005004,1005005,1005006,1005008,1005010,1005011,1005012,1005025,1005712,1006001,1006002,1006003,1006009,1006011,1006013,1006015,1006017,1006019,1006204,1006206,1006208,1006210,1006212);

DELETE FROM `creature_addon` WHERE guid IN (58329,58346,58386,58421,58438,58498,58611,58628,5518752,255174,255181,255178,255173,255183,255175,255177,255186,255182,255172,255180,255176,326965,326386);

DELETE FROM `quest_template` WHERE id IN (300008,300012,300010,300011,300004);

DELETE FROM `gameobject_questrelation` WHERE quest IN (1003006,1003008,1003009);

DELETE FROM `gameobject_involvedrelation` WHERE quest IN (1003005,1003006,1003007,1003008);

DELETE FROM `reference_loot_template` WHERE entry IN (1005001,1005002,1005003,1005004,1005005,1006001,1006002,1006212);

DELETE FROM `conditions` WHERE SourceGroup IN (1005701,1005702,1005703,1005704,1005705,1005706,1005707,1005708,1005709,1005710,1005711,1005712,1005713);

DELETE FROM `conditions` WHERE conditionvalue1 IN (1006200,1003000,1003007,1003012,1003005,1003002);

DELETE FROM `smart_scripts` WHERE entryorguid IN (-256131,-241555,-241540,-241511,-240918,-240892,-240883,-240882,-240840,-240769,-235172,-235171,-235170,-235168,-115945,-6984);

DELETE FROM `conditions` WHERE conditionvalue1 IN (1005007,1005004,1005003,1005002,1005009);
DELETE FROM `conditions` WHERE SourceEntry IN (1005014);

DELETE FROM `npc_spellclick_spells` WHERE npc_entry IN (1003016);

DELETE FROM `spell_area` WHERE quest_start IN (80000,1003002,1003006);

DELETE FROM `conditions` WHERE ConditionValue1 IN (1005709,1005710);

DELETE FROM `smart_scripts` WHERE entryorguid IN (1003080);

DELETE FROM `conditions` WHERE ConditionValue1 IN (1005707,1005714,1005708,1006006,1006007);

DELETE FROM `spell_scripts` WHERE datalong IN (1003012,1003000,1006007,1006006);

DELETE FROM `conditions` WHERE SourceEntry IN (1005003);

DELETE FROM `conditions` WHERE ConditionValue1 IN (1005706);
