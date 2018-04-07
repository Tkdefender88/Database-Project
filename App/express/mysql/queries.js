//all the sql queries
module.exports = {
	login: {
		get login() {
			return 'SELECT userID FROM User WHERE userName = \? AND password ='
				+' \?';
		}
	},

	buildings: {
		get All() {
			return 'SELECT * FROM BuildingOverview WHERE userID = \?'
		},

		get nextLevel() {
			return 'SELECT buildingID FROM Building WHERE' 
				+ ' typeID = \? AND levelNum = \?'
		},

		get remove() {
			return 'DELETE FROM BuildingList WHERE buildingID= \?'
				+ ' AND userID = \? LIMIT 1'
		},

		get insert() {
			return 'INSERT INTO buildingList (buildingID, userID'
				+ ' VALUES (\?, \?)'
		}
	},

	troops: {
		get All() {
			return 'SELECT * FROM TroopOverview WHERE userID = \?'
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