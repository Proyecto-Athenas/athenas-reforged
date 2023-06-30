
-- https://github.com/athenaswow/BugTracker-Athenas-WoW/issues/142
/*
	El portal estaba accesible, al llegar al lugar se puedo observar varios aspectos.
	Primero tenía una facción solo para la horda.
	Luego, también pudimos notar que tenía mal el type, en trinity / azeroth recomendaban
	el uso del 22, así que en el parámetro data0 se le agrego el spell y de esa manera
	fue probado tanto en la alianza como en la horda.
	-- DEFAULT: TYPE 5
	-- DEFAULT: DATA0 0
	-- DEFAULT: FACTION 2
	-- DEFAULT: DATA1 1
*/
UPDATE `gameobject_template` SET `flags`=`flags`|64, `type`=22, `data0`=21128, `data1`=0, `faction`=0 WHERE `entry`=178404;
