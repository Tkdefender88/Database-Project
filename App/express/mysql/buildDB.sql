#Author Justin Bak
#Drop all the tables
DROP TABLE IF EXISTS UserClan, UserWar, BuildingList, Building;
DROP TABLE IF EXISTS BuildingType, TroopList, Troop, TroopType, Clan;
DROP TABLE IF EXISTS War, User;

DROP VIEW IF EXISTS Overview, BuildingOverview, TroopOverview;

#Create the tables
CREATE TABLE User(
	userID int(9) NOT NULL AUTO_INCREMENT,
	userName varchar(50) UNIQUE,
	password varchar(50),
	userLevel int(3),
	PRIMARY KEY (userID)
);

CREATE TABLE Clan(
	clanID int(9) NOT NULL AUTO_INCREMENT,
	clanLeader int(9) NOT NULL,
	clanName varchar(50),
	clanLevel int(3),
	PRIMARY KEY (clanID),
	CONSTRAINT FK_leader FOREIGN KEY (clanLeader)
	REFERENCES User(userID)
);

CREATE TABLE UserClan (
	clanID int(9) NOT NULL,
	userID int(9) NOT NULL,
	PRIMARY KEY (clanID, userID),
	CONSTRAINT clan_FK FOREIGN KEY (clanID)
	REFERENCES Clan(clanID),
	CONSTRAINT clan_user_FK FOREIGN KEY (userID)
	REFERENCES User(userID)
);

CREATE TABLE War(
	warID int(9) NOT NULL AUTO_INCREMENT,
	stars int,
	warNotes varchar(140),
	outcome varchar(4),
	enemyClanName varchar(50),
	PRIMARY KEY (warID)
);

CREATE TABLE UserWar (
	userID int(9) NOT NULL,
	warID int(9) NOT NULL,
	stars int,
	destruction decimal(5, 2),
	CONSTRAINT war_user_FK FOREIGN KEY (userID)
	REFERENCES User(userID),
	CONSTRAINT war_FK FOREIGN KEY (warID)
	REFERENCES War(warID)
);

CREATE TABLE BuildingType (
	typeID int(9) NOT NULL AUTO_INCREMENT,
	buildingName varchar(50),
	damageType varchar(50),
	PRIMARY KEY (typeID)
);

CREATE TABLE Building (
	buildingID int(9) NOT NULL AUTO_INCREMENT,
	typeID int(9) NOT NULL,
	levelNum int,
	dps int,
	hp int,
	upgradeCost int,
	upgradeTime time,
	PRIMARY KEY (buildingID),
	CONSTRAINT buildType_FK FOREIGN KEY (typeID)
	REFERENCES BuildingType(typeID)
);

CREATE TABLE BuildingList (
	buildingID int(9) NOT NULL,
	userID int(9) NOT NULL,
	CONSTRAINT building_FK FOREIGN KEY (buildingID)
	REFERENCES Building(buildingID),
	CONSTRAINT building_user_FK FOREIGN KEY (userID)
	REFERENCES User(userID)
);

CREATE TABLE TroopType (
	typeID int(9) NOT NULL AUTO_INCREMENT,
	troopName varchar(50),
	damageType varchar(50),
	PRIMARY KEY (typeID)
);

CREATE TABLE Troop (
	troopID int(9) NOT NULL AUTO_INCREMENT,
	typeID int(9) NOT NULL,
	levelNum int,
	dps int,
	trainingTime time,
	regenTime time,
	hp int,
	upgradeTime time,
	upgradeCost int,
	PRIMARY KEY (troopID),
	CONSTRAINT troopType_FK FOREIGN KEY (typeID)
	REFERENCES TroopType(typeID)
);

CREATE TABLE TroopList (
	troopID int(9) NOT NULL,
	userID int(9) NOT NULL,
	CONSTRAINT troopList_PK PRIMARY KEY (troopID, userID),
	CONSTRAINT troop_FK FOREIGN KEY (troopID)
	REFERENCES Troop(troopID),
	CONSTRAINT troop_user_FK FOREIGN KEY (userID) 
	REFERENCES User(userID)
);

CREATE VIEW Overview AS
	SELECT userID, COUNT(buildingID) AS numBuildings,
	COUNT(troopID) AS numTroops, userLevel
	FROM BuildingList JOIN User USING (userID)
	JOIN TroopList USING (userID)
	GROUP BY userID, userLevel;

CREATE VIEW BuildingOverview AS
	SELECT userID, COUNT(buildingID) AS 'qty', buildingName, levelNum, hp, dps,
	damageType, upgradeCost, upgradeTime 
	FROM BuildingList JOIN Building USING (buildingID)
	JOIN BuildingType USING (typeID)
	GROUP BY userID, buildingName, levelNum, hp, upgradeCost, upgradeTime, dps,
	damageType;

CREATE VIEW TroopOverview AS
	SELECT userID, troopName, levelNum, hp,
	trainingTime, regenTime, upgradeCost, upgradeTime, dps, damageType
	FROM TroopList JOIN Troop USING (troopID)
	JOIN TroopType USING (typeID);
	