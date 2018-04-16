#Users
INSERT INTO User (userName, password, userLevel) 
VALUES ('BitestheDust', 'clanwar', '8');
INSERT INTO User (userName, password, userLevel)
VALUES ('readyForwar', 'spinaltap', '9');
INSERT INTO User (userName, password, userLevel )
VALUES ('slaydadragon', 'password1', '8');
INSERT INTO User (userName, password, userLevel)
VALUES ('lovetohunt', 'kingofwar', '9'); 
INSERT INTO User (userName, password, userLevel)
VALUES ('thepacifist', 'liveNletlive', '8');
INSERT INTO User (userName, password, userLevel)
VALUES ('IoftheTiger', 'winterfell', '7');
INSERT INTO User (userName, password, userLevel)
VALUES ( 'BitterSweet', 'liveforwar', '8'); 
INSERT INTO User (userName, password, userLevel)
VALUES ('Warrior', 'Warriors', '8');

#Clans
INSERT INTO Clan (clanName, clanLeader, clanLevel)
VALUES ('troopers', '1', '11');
INSERT INTO Clan (clanName,  clanLeader, clanLevel)
VALUES ('exterminators', '2', '10');
INSERT INTO Clan (clanName, clanLeader, clanLevel)
VALUES('freetibet', '3', '12');
INSERT INTO Clan (clanName, clanLeader, clanLevel)
VALUES ('freakout', '4', '12');

#Troops
INSERT INTO TroopType (troopName, damageType)
VALUES ('archer', 'ranged');
INSERT INTO TroopType (troopName, damageType)
VALUES ('barbarian', 'melee');
INSERT INTO TroopType (troopName, damageType)
VALUES ('giant', 'melee');
INSERT INTO TroopType (troopName, damageType)
VALUES ('ballon', 'areaSplash');
INSERT INTO TroopType (troopName, damageType)
VALUES ('wizard', 'ranged');
INSERT INTO TroopType (troopName, damageType)
VALUES ('dragon', 'areaSplash');

#Troops
INSERT INTO Troop (typeID, levelNum, dps, trainingTime, hp, upgradeTime,
upgradeCost)
VALUES (1, 1, 7, '00:00:24', 20, '00:00:00', 0);
INSERT INTO Troop (typeID, levelNum, dps, trainingTime, hp, upgradeTime,
upgradeCost)
VALUES (1, 2, 9, '00:00:12', 23, '12:00:00', 50000);
INSERT INTO Troop (typeID, levelNum, dps, trainingTime, hp, upgradeTime,
upgradeCost)
VALUES (1, 3, 12, '00:00:08', 28, '48:00:00', 250000);
INSERT INTO Troop (typeID, levelNum, dps, trainingTime, hp, upgradeTime,
upgradeCost)
VALUES (2, 1, 8, '00:00:20', 45, '06:00:00', 50000);
INSERT INTO Troop (typeID, levelNum, dps, trainingTime, hp, upgradeTime,
upgradeCost)
VALUES (2, 2, 11, '00:00:15', 54, '24:00:00', 150000); 
INSERT INTO Troop (typeID, levelNum, dps, trainingTime, hp, upgradeTime,
upgradeCost)
VALUES (2, 3, 14, '00:00:10', 65, '72:00:00', 5000000);
INSERT INTO Troop (typeID, levelNum, dps, trainingTime, hp, upgradeTime,
upgradeCost)
VALUES (3, 6, 8, '00:15:00', 20, '01:00:00', 60);
INSERT INTO Troop (typeID, levelNum, dps, trainingTime, hp, upgradeTime,
upgradeCost)
VALUES (4, 7, 8, '00:30:00', 25, '05:30:00', 60);
INSERT INTO Troop (typeID, levelNum, dps, trainingTime, hp, upgradeTime,
upgradeCost)
VALUES (2, 5, 17, '00:00:55', 20, '02:00:00', 60);

#Buildings
INSERT INTO BuildingType (buildingName)
VALUES ('Town Hall');
INSERT INTO BuildingType (buildingName, damageType)
VALUES ('Archer Tower', 'Single Target');
INSERT INTO BuildingType (buildingName, damageType)
VALUES ('Cannon', 'Single Target');
INSERT INTO BuildingType (buildingName, damageType)
VALUES ('Wizard Tower', 'Area Splash');
INSERT INTO BuildingType (buildingName)
VALUES ('Barracks');
INSERT INTO BuildingType (buildingName, damageType)
VALUES ('Hidden Tesla', 'Area Spash');
INSERT INTO BuildingType (buildingName, damageType)
VALUES ('Mortar', 'Area Spash');
INSERT INTO BuildingType (buildingName, damageType)
VALUES ('Air Bombs', 'Area Spash');
INSERT INTO BuildingType (buildingName)
VALUES ('Gold Mine');
INSERT INTO BuildingType (buildingName)
VALUES ('Elixir Collector');

#TroopList
INSERT INTO TroopList (userID, troopID)
VALUES (1, 1);
INSERT INTO TroopList (userID, troopID)
VALUES (1, 2);
INSERT INTO TroopList (userID, troopID)
VALUES (1, 3);
INSERT INTO TroopList (userID, troopID)
VALUES (2, 1);
INSERT INTO TroopList (userID, troopID)
VALUES (2, 4);

#Buildings
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime) 
VALUES (1, 5, 0, 2400, 150000, '48:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime) 
VALUES (1, 2, 0, 1600, 1000, '00:05:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime) 
VALUES ( 1, 3, 0, 1850, 5000, '03:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime) 
VALUES ( 1, 4, 0, 2100, 25000, '24:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime) 
VALUES ( 1, 1, 0, 1500, 0, '00:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (2, 4, 25, 550, 20000, '04:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (2, 1, 11, 400, 1000, '00:15:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (2, 2, 15, 450, 2000, '00:30:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (2, 3, 19, 500, 500, '00:45:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (2, 5, 30, 590, 80000, '12:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (3, 1, 12, 9, 420, '00:00:10');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (3, 2, 11, 470, 1000, '00:15:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (3, 3, 15, 520, 4000, '00:45:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (3, 4, 19, 570, 16000, '02:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (3, 5, 25, 620, 50000, '06:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (4, 1, 11, 620, 180000, '12:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (4, 2, 13, 650, 360000, '24:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (4, 3, 16, 680, 720000, '48:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (4, 4, 20, 730, 1280000, '72:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (4, 5, 24, 790, 1960000, '96:00:00');
INSERT INTO Building (typeID, levelNUM, dps, hp, upgradeCost, upgradeTime)
VALUES (5, 1, 0, 250, 200, '00:00:10');
INSERT INTO Building (typeID, levelNUM, dps, hp, upgradeCost, upgradeTime)
VALUES (5, 2, 0, 290, 1000, '00:15:00');
INSERT INTO Building (typeID, levelNUM, dps, hp, upgradeCost, upgradeTime)
VALUES (5, 3, 0, 330, 2000, '02:00:00');
INSERT INTO Building (typeID, levelNUM, dps, hp, upgradeCost, upgradeTime)
VALUES (5, 4, 0, 370, 5000, '04:00:00');
INSERT INTO Building (typeID, levelNUM, dps, hp, upgradeCost, upgradeTime)
VALUES (5, 5, 0, 420, 10000, '10:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (6, 1, 10, 150, 500, '00:20:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (6, 2, 15, 250, 1000, '00:30:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (6, 3, 35, 250, 1500, '00:50:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (6, 4, 45, 650, 3500, '00:55:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (6, 5, 65, 950, 4500, '01:30:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (7, 1, 34, 600, 1000000, '24:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (7, 2, 40, 630, 1250000, '72:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (7, 3, 48, 660, 1500000, '96:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (7, 4, 48, 690, 2000000, '96:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (7, 5, 64, 730, 2500000, '99:55:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES ( 8, 1, 100, 0, 4000, '00:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES ( 8, 2, 120, 0, 20000, '04:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES ( 8, 3, 144, 0, 200000, '12:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES ( 8, 4, 173, 0, 1500000, '24:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES ( 8, 5, 185, 0, 2500000, '48:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES ( 9, 1, 0, 400, 150, '00:01:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES ( 9, 2, 0, 440, 300, '00:05:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES ( 9, 3, 0, 480, 700, '00:15:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES ( 9, 4, 0, 520, 1400, '01:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES ( 9, 5, 0, 560, 3000, '02:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (10, 1, 0, 400, 150, '00:01:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (10, 2, 0, 440, 300, '00:05:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (10, 3, 0, 480, 700, '00:15:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (10, 4, 0, 520, 1400, '01:00:00');
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (10, 5, 0, 560, 3500, '02:00:00');

#BuildingList
INSERT INTO BuildingList (buildingID, userID)
VALUES (2, 1);
INSERT INTO BuildingList (buildingID, userID)
VALUES (46, 1);
INSERT INTO BuildingList (buildingID, userID)
VALUES (41, 1);
INSERT INTO BuildingList (buildingID, userID)
VALUES (41, 1);
INSERT INTO BuildingList (buildingID, userID)
VALUES (12, 1);
INSERT INTO BuildingList (buildingID, userID)
VALUES (7, 1);
INSERT INTO BuildingList (buildingID, userID)
VALUES (6, 1);
INSERT INTO BuildingList (buildingID, userID)
VALUES (6, 1);
INSERT INTO BuildingList (buildingID, userID)
VALUES (16, 1);
INSERT INTO BuildingList (buildingID, userID)
VALUES (17, 1);
INSERT INTO BuildingList (buildingID, userID)
VALUES (32, 1);
INSERT INTO BuildingList (buildingID, userID)
VALUES (32, 1);
INSERT INTO BuildingList (buildingID, userID)
VALUES (2, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES (33, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES (13, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES (12, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES (12, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES (47, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES (47, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES (47, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES (18, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES (18, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES (17, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES (27, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES (27, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES (32, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES (18, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (18, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (47, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (48, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (22, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (23, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (12, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (12, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (37, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (21, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (4, 4);
INSERT INTO BuildingList (buildingID, userID)
VALUES (8, 4);
INSERT INTO BuildingList (buildingID, userID)
VALUES (8, 4);
INSERT INTO BuildingList (buildingID, userID)
VALUES (9, 4);
INSERT INTO BuildingList (buildingID, userID)
VALUES (33, 4);
INSERT INTO BuildingList (buildingID, userID)
VALUES (33, 4);
INSERT INTO BuildingList (buildingID, userID)
VALUES (33, 4);
INSERT INTO BuildingList (buildingID, userID)
VALUES (34, 4);
INSERT INTO BuildingList (buildingID, userID)
VALUES (3, 5);
INSERT INTO BuildingList (buildingID, userID)
VALUES (9, 5);
INSERT INTO BuildingList (buildingID, userID)
VALUES (9, 5);
INSERT INTO BuildingList (buildingID, userID)
VALUES (10, 5);
INSERT INTO BuildingList (buildingID, userID)
VALUES (28, 5);
INSERT INTO BuildingList (buildingID, userID)
VALUES (28, 5);
INSERT INTO BuildingList (buildingID, userID)
VALUES (24, 5);
INSERT INTO BuildingList (buildingID, userID)
VALUES (42, 5);
INSERT INTO BuildingList (buildingID, userID)
VALUES (42, 5);
INSERT INTO BuildingList (buildingID, userID)
VALUES (47, 5);
INSERT INTO BuildingList (buildingID, userID)
VALUES (2, 6);
INSERT INTO BuildingList (buildingID, userID)
VALUES (8, 6);
INSERT INTO BuildingList (buildingID, userID)
VALUES (8, 6);
INSERT INTO BuildingList (buildingID, userID)
VALUES (46, 6);
INSERT INTO BuildingList (buildingID, userID)
VALUES (46, 6);
INSERT INTO BuildingList (buildingID, userID)
VALUES (7, 6);
INSERT INTO BuildingList (buildingID, userID)
VALUES (7, 6);
INSERT INTO BuildingList (buildingID, userID)
VALUES (11, 6);
INSERT INTO BuildingList (buildingID, userID)
VALUES (11, 6);
INSERT INTO BuildingList (buildingID, userID)
VALUES (32, 6);
INSERT INTO BuildingList (buildingID, userID)
VALUES (32, 6);
INSERT INTO BuildingList (buildingID, userID)
VALUES (21, 6);
INSERT INTO BuildingList (buildingID, userID)
VALUES (5, 7);
INSERT INTO BuildingList (buildingID, userID)
VALUES (9, 7);
INSERT INTO BuildingList (buildingID, userID)
VALUES (9, 7);
INSERT INTO BuildingList (buildingID, userID)
VALUES (14, 7);
INSERT INTO BuildingList (buildingID, userID)
VALUES (14, 7);
INSERT INTO BuildingList (buildingID, userID)
VALUES (13, 7);
INSERT INTO BuildingList (buildingID, userID)
VALUES (34, 7);
INSERT INTO BuildingList (buildingID, userID)
VALUES (34, 7);
INSERT INTO BuildingList (buildingID, userID)
VALUES (44, 7);
INSERT INTO BuildingList (buildingID, userID)
VALUES (50, 7);
INSERT INTO BuildingList (buildingID, userID)
VALUES (20, 7);
INSERT INTO BuildingList (buildingID, userID)
VALUES (20, 7);
INSERT INTO BuildingList (buildingID, userID)
VALUES ( 4, 8);
INSERT INTO BuildingList (buildingID, userID)
VALUES ( 33, 8);
INSERT INTO BuildingList (buildingID, userID)
VALUES ( 13, 8);
INSERT INTO BuildingList (buildingID, userID)
VALUES ( 13, 8);
INSERT INTO BuildingList (buildingID, userID)
VALUES ( 18, 8);
INSERT INTO BuildingList (buildingID, userID)
VALUES ( 17, 8);
INSERT INTO BuildingList (buildingID, userID)
VALUES ( 24, 8);
INSERT INTO BuildingList (buildingID, userID)
VALUES ( 44, 8);
INSERT INTO BuildingList (buildingID, userID)
VALUES ( 38, 8);
INSERT INTO BuildingList (buildingID, userID)
VALUES ( 34, 8);
INSERT INTO BuildingList (buildingID, userID)
VALUES ( 14, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES ( 25, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES (21, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES (11, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES (27, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (31, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (46, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (42, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (36, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (41, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (17, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (27, 4);
INSERT INTO BuildingList (buildingID, userID)
VALUES (16, 4);
INSERT INTO BuildingList (buildingID, userID)
VALUES (46, 4);
INSERT INTO BuildingList (buildingID, userID)
VALUES ( 7, 4);
INSERT INTO BuildingList (buildingID, userID)
VALUES ( 23, 4);
INSERT INTO BuildingList (buildingID, userID)
VALUES (17, 5);
INSERT INTO BuildingList (buildingID, userID)
VALUES (42, 5);
INSERT INTO BuildingList (buildingID, userId)
VALUES (22, 5);
INSERT INTO BuildingList (buildingID, userID)
VALUES (24, 5);
INSERT INTO BuildingList (buildingID, userID)
VALUES(37, 5);

#UserClan
INSERT INTO UserClan (clanID, userID)
VALUES (1,1);
INSERT INTO UserClan (clanID, userID)
VALUES (1, 2);
INSERT INTO UserClan (clanID, userID)
VALUES (2, 3);
INSERT INTO UserClan (clanID, userID)
VALUES (2, 4);
INSERT INTO UserClan (clanID, userID)
VALUES (3, 5);
INSERT INTO UserClan (clanID, userID)
VALUES (3, 6);
INSERT INTO UserClan (clanID, userID)
VALUES (4, 7);
INSERT INTO UserClan (clanID, userID)
VALUES (4, 8);

#War
INSERT INTO War (stars, warNotes, outcome, enemyClanName)
VALUES ( 35, 'we done good', 'Win', 'Troopers');
INSERT INTO War (stars, warNotes, outcome, enemyClanName)
VALUES (40, 'kicked butt', 'Win', 'Troopers');
INSERT INTO War (stars, warNotes, outcome, enemyClanName)
VALUES (28, 'Better Days', 'Loss', 'FreakOut');
INSERT INTO War (stars, warNotes, outcome, enemyClanName)
VALUES (35, 'Tuff War', 'Loss', 'FreakOut');
INSERT INTO War (stars, warNotes, outcome, enemyClanName)
VALUES (20, 'Need Improvement', 'Loss', 'freetibet');
INSERT INTO War (stars, warNotes, outcome, enemyClanName)
VALUES ( 50, 'Vicotry!!!', 'Win', 'exterminators');
INSERT INTO War (stars, warNotes, outcome, enemyClanName)
VALUES ( 40, 'Good Try', 'Loss', 'exterminators');
INSERT INTO War (stars, warNotes, outcome, enemyClanName)
VALUES (35, 'get them next time', 'Loss', 'freetibet');
INSERT INTO War (stars, warNotes, outcome, enemyClanName)
VALUES (15, 'Improve Strategies', 'Loss', 'Troopers');

#UserWar
INSERT INTO UserWar (userID, warID, stars, destruction)
VALUES (3, 1, 2, 80);
INSERT INTO UserWar (userID, warID, stars, destruction)
VALUES (4, 1, 3, 100);
INSERT INTO UserWar (userID, warID, stars, destruction)
VALUES ( 3, 2, 3, 100);
INSERT INTO UserWar (userID, warID, stars, destruction)
VALUES (4, 2, 3, 100);
INSERT INTO UserWar (userID, warID, stars, destruction)
VALUES (1, 3, 2, 75);
INSERT INTO UserWar (userID, warID, stars, destruction)
VALUES (2, 3, 2, 60);
INSERT INTO UserWar (userID, warID, stars, destruction)
VALUES (5, 6, 3, 100);
INSERT INTO UserWar (userID, warID, stars, destruction)
VALUES (6, 6, 2, 50);
INSERT INTO UserWar (userID, warID, stars, destruction)
VALUES (7, 7, 1, 35);
INSERT INTO UserWar (userID, warID, stars, destruction)
VALUES (8, 7, 3, 100);
INSERT INTO UserWar (userID, warID, stars, destruction)
VALUES ( 7, 4, 2, 80);
INSERT INTO UserWar (userID, warID, stars, destruction)
VALUES (8, 4, 3, 100);