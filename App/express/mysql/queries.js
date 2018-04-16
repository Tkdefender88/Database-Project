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

		get nextLevel() {
			return 'SELECT troopID FROM Troop WHERE typeID =\? AND levelNum =\?'
		},
		
		get levelOne() {
			return 'SELECT troopID FROM Troop WHERE typeID =\? AND levelNum = 1'
		},

		get remove() {
			return 'DELETE FROM TroopList WHERE troopID = \? AND userID = \?' 
				+ ' LIMIT 1'
		},

		get insert() {
			return 'INSERT INTO TroopList (troopID, userID) VALUES (\?, \?)'
		}, 

		get name() {
			return 'SELECT typeID FROM TroopType WHERE troopName = \?'
		}
	}
}