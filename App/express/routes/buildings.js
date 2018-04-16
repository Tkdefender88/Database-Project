const mysql = require('mysql');
const express = require('express');

const credentials = require('../mysql/credentials');
const queries = require('../mysql/queries');

const router = express.Router();

function badRequest(req, res) {
	res.status(400).send('Bad Request');
}

function serverError(res) {
	res.status(500).send('Internal Server Error');
}

function handleQuery(req, res, query, args = []) {
	let con = mysql.createConnection(credentials);

	con.connect((err) => {
		if (err) {
			serverError(res);
			return;
		}
	})

	con.query(query, args, (err, results, fields) => {
		if (err) {
			serverError(res)
			return;
		}
		res.status(200).json(results);
	});

	con.end();
}

//Define the building Overview route
router.route('/building/byUserID/:id') 
//Define get requests for the route
.get((req, res) => {
	let params = req.params;
	handleQuery(req, res, queries.buildings.all, [params.id]);
})
.all(badRequest);

//This route will return a type ID for a given building name
router.route('/building/byBuildingName/:name')
//Define get requests for the route
.get((req, res) => {
	let params = req.params;
	handleQuery(req, res, queries.buildings.name, [params.name]);
})
.all(badRequest);

//This will get a building ID from a typeID and level 1;
router.route('/building/byBuildingType/:id')
.get((req, res) => {
	let params = req.params;
	handleQuery(req, res, queries.buildings.levelOne, [params.id]);
})

//This will add a building to the buildingList based on a buildingID
router.route('/building/addBuilding/')
.post((req, res) => {
	let body = req.body;
	handleQuery(
		req,
		res,
		queries.buildings.insert,
		[body.userID, body.buildingID]
	);
})
.all(badRequest);

router.route('/building/level/')
.post((req, res) => {
	let body = req.body;
	handleQuery(
		req,
		res,
		queries.buildings.level,
		[body.buildName, body.buildLevel]
	);
})

router.route('/building/remove/')
.post((req, res) => {
	let body = req.body;
	handleQuery(
		req,
		res,
		queries.buildings.remove,
		[body.userID, body.buildingID]
	);
})

module.exports = router;
