//------------------------
//- Node Module Requires -
//------------------------
const mysql = require('mysql');
const express = require('express');
const bodyParser = require('body-parser');

//------------------
//- Local Requires -
//------------------
// mysql stuff
const credentials = require('../mysql/credentials');
const queries = require('../mysql/queries');

//--------------------
//- Script Constants -
//--------------------
const router = express.Router();

router.use(express.json());

//----------------
//- Route Set up -
//----------------
// Bad request
function badRequest(req, res) {
    res.status(400).send('Bad Request');
}

// Server Error
function serverError(res) {
    res.status(500).send('Internal Server Error');
}

// Actually handles connecting to the database and running the query
function handleQuery(req, res, query, args = [ ]) {
    let con = mysql.createConnection(credentials);

    con.connect((err) => {
        if (err) {
			serverError(res);

            return;
        }
    });

    con.query(query, args, (err, results, fields) => {
        if (err) {
			throw(err);
            return;
		}

		res.status(200).json(results);
	});
	
    con.end();
}

router.route('/login')
.post((req, res) => {
	let body = req.body;
    handleQuery(req, res, queries.login.login, [ body.userName, body.password ])
})
.all(badRequest);

module.exports = router;