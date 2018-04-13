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
			return 'SELECT numBuildings, numTroops, userLevel '
				+ 'FROM Overview WHERE userID = \?';
		}
	},

	buildings: {
		get all() {
			return 'SELECT qty, buildingName, levelNum, hp, dps, damageType, '
			+ 'upgradeCost, upgradeTime FROM BuildingOverview WHERE userID = \?'
		},

		get nextLevel() {
			return 'SELECT buildingID FROM Building WHERE' 
				+ ' typeID = \? AND levelNum = \?'
		},

		get levelOne() {
			return 'SELECT buildingID FROM Building WHERE'
				+ ' typeID = \? AND levelNum = 1'
		},

		get remove() {
			return 'DELETE FROM BuildingList WHERE buildingID= \?'
				+ ' AND userID = \? LIMIT 1'
		},

		get insert() {
			return 'INSERT INTO BuildingList (buildingID, userID) '
				+  'VALUES (\?, \?)'
		},

		get name() {
			return 'SELECT typeID FROM BuildingType WHERE buildingName = \?';
		}
	},

	troops: {
		get all() {
			return 'SELECT troopName, levelNum, hp, dps, damageType, '
			+ 'trainingTime, regenTime, upgradeCost, upgradeTime '
			+ 'FROM TroopOverview WHERE userID = \?'
		},

		get nextLevel() {
			return 'SELECT troopID FROM Troop WHERE typeID =\? AND levelNum =\?'
		},

		get remove() {
			return 'DELETE FROM TroopList WHERE troopID = \? AND userID = \?' 
				+ ' LIMIT 1'
		},

		get insert() {
			return 'INSERT INTO TroopList (troopID, userID) VALUES (\?, \?)'
		}
	}
}