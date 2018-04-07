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

INSERT INTO BuildingType (buildingName)
VALUES ('Archer Tower');

INSERT INTO BuildingType (buildingName)
VALUES ('Cannon');

INSERT INTO BuildingType (buildingName)
VALUES ('Wizard Tower');

INSERT INTO BuildingType (buildingName)
VALUES ('Barracks');

INSERT INTO BuildingType (buildingName)
VALUES ('Hidden Tesla');

INSERT INTO BuildingType (buildingName)
VALUES ('Mortar');

INSERT INTO BuildingType (buildingName)
VALUES ('Air Bombs');

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
INSERT INTO Building (typeID, levelNum, dps, hp, upgradeTime, upgradeCost)
VALUES (1, 5, 0, 20, '02:00:00', 60);

INSERT INTO Building (typeID, levelNum, dps, hp, upgradeTime, upgradeCost)
VALUES (2, 7, 0, 20, '02:00:00', 60);

INSERT INTO Building (typeID, levelNum, dps, hp, upgradeTime, upgradeCost)
VALUES (3, 2, 0, 20, '02:00:00', 60);

INSERT INTO Building (typeID, levelNum, dps, hp, upgradeTime, upgradeCost)
VALUES (4, 5, 0, 20, '02:00:00', 60);

#Building List
INSERT INTO BuildingList (userID, buildingID)
VALUES(1, 1);

INSERT INTO BuildingList (userID, buildingID)
VALUES(1, 2);

INSERT INTO BuildingList (userID, buildingID)
VALUES(1, 3);

INSERT INTO BuildingList (userID, buildingID)
VALUES(2, 2);

INSERT INTO BuildingList (userID, buildingID)
VALUES(2, 4);

INSERT INTO BuildingList (userID, buildingID)
VALUES(3, 4);

INSERT INTO BuildingList (userID, buildingID)
VALUES(3, 4);

INSERT INTO BuildingList (userID, buildingID)
VALUES(1, 1);



