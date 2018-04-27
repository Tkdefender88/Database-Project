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

//Define the troop Overview route
router.route('/troop/byUserID/:id') 
//Define get requests for the route
.get((req, res) => {
	let params = req.params;
	handleQuery(req, res, queries.troops.all, [params.id]);
})
.all(badRequest);

router.route('/troop/byTroopName/:name')
.get((req, res) => {
	let params = req.params;
	handleQuery(req, res, queries.troops.name, [params.name]);
})
.all(badRequest);

router.route('/troop/byTroopType/:id')
.get((req, res) => {
	let params = req.params;
	handleQuery(req, res, queries.troops.levelOne, [params.id])
})
.all(badRequest);

router.route('/troop/addTroop/')
.post((req, res) => {
	let body = req.body;
	handleQuery(req, res, queries.troops.insert, [body.troopID, body.userID, body.typeID])
})
.all(badRequest);

router.route('/troop/level/')
.post((req, res) => {
	let body = req.body;
	handleQuery(
		req,
		res,
		queries.troops.level,
		[body.troopName, body.troopLevel]
	)
})
.all(badRequest);

router.route('/troop/upgrade/')
.post((req, res) => {
	let body = req.body;
	handleQuery (
		req,
		res,
		queries.troops.upgrade,
		[body.troopLevel, body.userID, body.typeID]
	)
}) 
.all(badRequest);

module.exports = router;
