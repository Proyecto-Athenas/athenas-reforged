-- fix quest https://es.wowhead.com/quest=26337/sacudir-el-mercado
UPDATE `quest_template` SET `Flags`='136' WHERE (`Id`='26337');