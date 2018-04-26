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

	console.log('1');
	con.connect((err) => {
		if (err) {
			console.log('2');
			serverError(res);
			return;
		}
	})

	console.log('3');
	con.query(query, args, (err, results, fields) => {
		if (err) {
			console.log(4);
			serverError(res)
			return;
		}
		console.log(5);
		res.status(200).json(results);
		console.log(results);
	});

	con.end();
}

//Define the building Overview route
router.route('/overview/byUserID/:id') 
//Define get requests for the route
.get((req, res) => {
	let params = req.params;
	handleQuery(req, res, queries.overview.all, [params.id]);
})
.all(badRequest);

module.exports = router;
