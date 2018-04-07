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
VALUES (1, 5, 16, '00:25:00', 20, '00:25:00', 60);

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
VALUES ('town Hall');

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
VALUES (1, 5, 0, 1000, 5000, '00:30:00');

INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (2, 4, 35, 450, 1000, '00:25:00');

INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (3, 3, 50, 350, 2000, '00:45:00');

INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (4, 2, 25, 400, 1500, '00:45:00');

INSERT INTO Building (typeID, levelNUM, dps, hp, upgradeCost, upgradeTime)
VALUES (5, 3, 0, 100, 2000, '00:35:00');

INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (6, 3, 35, 250, 1500, '00:50:00');

INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (7, 4, 8, 350, 2500, '00:45:00');

INSERT INTO Building (typeID, levelNum, dps, hp, updradeCost, upgradeTime)
VALUES ( 8, 1, 150, 0, 1000, '00:30:00');

INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES ( 9, 3, 0, 150, 1000, '00:45:00');

INSERT INTO Building (typeID, levelNum, dps, hp, upgradeCost, upgradeTime)
VALUES (10, 3, 0, 150, 1500, '00:30:00');

#BuildingList

INSERT INTO BuildingList (buildingID, userID)
VALUES (1, 1);
INSERT INTO BuildingList (buildingID, userID)
VALUES (2, 1);
INSERT INTO BuildingList (buildingID, userID)
VALUES (2, 1);
INSERT INTO BuildingList (buildingID, userID)
VALUES (2, 1);
INSERT INTO BuldingList (buildingID, userID)
VALUES (3, 1);
INSERT INTO BuildingList (buildingID, userID)
VALUES (1, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES (2, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES ( 3, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES ( 3, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES ( 3, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES (7, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES (7, 2);
INSERT INTO BuildingList (buildingID, userID)
VALUES (1, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (4, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (4, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (4, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (6, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (7, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (7, 3);
INSERT INTO BuildingList (buildingID, userID)
VALUES (1, 4);
INSERT INTO BuldingList (buildingID, userID)
VALUES (7, 4);
INSERT INTO BuldingList (buildingID, userID)
VALUES (7, 4);
INSERT INTO BuildingList (buildingID, userID)
VALUES ( 4, 4);
INSERT INTO BuildingList (buildingID, userID)
VALUES ( 4, 4);
INSERT INTO BuildingList (buildingID, userID)
VALUES (1, 5);
INSERT INTO BuildingList (buildingID, userID)
VALUES (2, 5);
INSERT INTO BuildingList (buildingID, userId)
VALUES (3, 5);
INSERT INTO BuildingList (buildingID, userID)
VALUES (4, 5);
INSERT INTO BuildingList (buildingID, userID)
VALUES(6, 5);
INSERT INTO BuildingList (buildingID, userID)
VALUES(6, 5);
INSERT INTO BuildingList (buildingID, userID)
VALUES(7, 5);
INSERT INTO BuildingList (buildingID, userID)
VALUES(8, 5);
INSERT INTO BuildingList (buildingID, userID)
VALUES(10,5);
INSERT INTO BuildingList (buildingID, userID)
VALUES(1, 6);
INSERT INTO BuildingList (buildingID, userID)
VALUES(2, 6);
INSERT INTO BuildingList (buildingID, userID)
VALUES(3, 6);
INSERT INTO BuildingList (buildingID, userID)
VALUES(4, 6);
INSERT INTO BuildingList (buildingID, userID)
VALUES(5, 6);
INSERT INTO BuildingList (buildingID, userID)
VALUES(7, 6);
INSERT INTO BuildingList (buildingID, userID)
VALUES(7, 6);


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