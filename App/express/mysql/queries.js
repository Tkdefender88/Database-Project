//all the sql queries
module.exports = {
	login: {
		get login() {
			return 'SELECT userID FROM User WHERE userName = \? AND password ='
				+' \?';
		}
	},

	overview: {
		get all() {
			return 'SELECT numBuilding, numTroop, userLevel '
				+ 'FROM Overview WHERE userID = \?';
		}
	},

	buildings: {
		get all() {
			return 'SELECT qty, buildingName, levelNum, hp, dps, damageType, '
			+ 'upgradeCost, upgradeTime FROM BuildingOverview WHERE userID = \?'
			+ ' ORDER BY buildingName ASC, levelNum DESC'
		},

		get level() {
			return 'SELECT buildingID FROM Building JOIN BuildingType '
				+ 'USING (typeID) WHERE buildingName = \? AND levelNum = \?'
		},

		get levelOne() {
			return 'SELECT buildingID FROM Building WHERE'
				+ ' typeID = \? AND levelNum = 1'
		},

		get remove() {
			return 'DELETE FROM BuildingList WHERE userID = \?'
				+ ' AND buildingID = \? LIMIT 1'
		},

		get insert() {
			return 'INSERT INTO BuildingList (userID, buildingID) '
				+  'VALUES (\?, \?)'
		},

		get name() {
			return 'SELECT typeID FROM BuildingType WHERE buildingName = \?'
		}
	},

	troops: {
		get all() {
			return 'SELECT troopName, levelNum, hp, dps, damageType, '
			+ 'trainingTime, regenTime, upgradeCost, upgradeTime '
			+ 'FROM TroopOverview WHERE userID = \?'
		},

		get level() {
			return 'Select troopLevelID from TroopLevel JOIN TroopType using'
				+ ' (typeID) where troopName = \? and levelNum = \?;'
		},
		
		get levelOne() {
			return 'SELECT troopLevelID FROM TroopLevel WHERE typeID =\? AND levelNum = 1'
		},

		get remove() {
			return 'DELETE FROM TroopList WHERE troopID = \? AND userID = \?' 
				+ ' LIMIT 1'
		},

		get insert() {
			return 'INSERT INTO TroopList (troopLevelID, userID, typeID) '
				+ ' VALUES (\?, \?, \?)'
		}, 

		get name() {
			return 'SELECT typeID FROM TroopType WHERE troopName = \?'
		},

		get upgrade() {
			return 'UPDATE TroopList SET troopLevelID = \? WHERE userID = \?'
				+ ' AND typeID = \?';
		}
	}
}