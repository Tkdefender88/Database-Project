const express = require('express');
const login = require('./routes/login');
const buildings = require('./routes/buildings');
const troops = require('./routes/troops');
const overview = require('./routes/overview');

const app = express();
const port = process.env.EXPRESSPORT || 3000;

const path = require('path');

const static_path = path.join(__dirname, '../static');

//App statics
app.use(express.static(static_path, { dotfiles: 'ignore'}));
app.use(login);
app.use(buildings);
app.use(troops);
app.use(overview);

//Bad Requests
function badRequest(req, res) {
	res.status(400).send('Bad Request');
}

//Routes//
app.route('/webcomponents.js')
.get((req, res) => {
	res.sendFile(path.join(__dirname,
		'../bower_components/webcomponentsjs/webcomponents-lite.js'));
})
.all(badRequest);

app.listen(port, () => {
	if (port == 3000) {
		console.log(`Listening at localhost:3000`);
	} else {
		console.log(`Listening at csdept16.mtech.edu:${port}`);
	}
});