//This does things to make things work
if (!('registerElement' in document) ||
	!('import' in document.createElement('link')) ||
	!('content' in document.createElement('template'))) {
	// polyfill the platform!
	var e = document.createElement('script');
	e.src = '/webcomponents.js';
	document.body.appendChild(e);
}


CLASH = (function () {
	function clearPage() {
		//Clear the page
		let userID = window.CLASH.user.id;
		let mainArea = document.querySelector('#mainArea');

		while (mainArea && mainArea.firstChild) {
			mainArea.removeChild(mainArea.firstChild);
		}
	}
	
	//Login a temporary dummy user
	function login() {
		window.CLASH.user.id = 420;
	}

	function reqBuildings(endpoint, title) {
		clearPage();

		$.ajax(endpoint)
		.done((res) => {
			let mainArea = document.querySelector('#mainArea');
			let buildings = document.querySelector('#buildingList');
			let clonedBuildings = buildings.cloneNode(true);
			let tableBody = clonedBuildings.querySelector('tbody');

			for (let building of res) {
				//make tr
				let row = document.createElement('tr');

				for(let col in building) {
					let entry = document.createElement('td');

					entry.innerHTML = building[col];
					row.appendChild(entry);
				}

				let button = document.createElement('button');
				let text = document.createTextNode('Upgrade');
				button.appendChild(text);
				
				row.appendChild(button);

				tableBody.appendChild(row);
			}

			clonedBuildings.querySelector('h2').innerHTML = title;

			mainArea.appendChild(clonedBuildings);
		})
		.fail(() => {
			console.log('bad boi things happened');
		})
	}

	function viewBuildings() {
		let userID = window.CLASH.user.id;
		reqBuildings('building/byUserID/' + userID, 'Building List');
	}

	function viewTroops() {
		let userID = window.CLASH.user.id;
		reqBuildings('troop/byUserID/' + userID, 'Troop List');
	}
	
	function viewOverview() {
		clearPage();
		let userID = window.CLASH.user.id;

		$.ajax('/overview/byUserID/' + userID) 
		.done((res) => {
			let mainArea = document.querySelector('#mainArea');
			let overview = document.querySelector('#overview');
			let clonedOverview = overview.cloneNode(true);

			clonedOverview
			.querySelector('#numBuilding').innerHTML = res[0].numBuildings;

			clonedOverview
			.querySelector('#numTroop').innerHTML = res[0].numTroops;

			clonedOverview
			.querySelector('#playerLvl').innerHTML = res[0].userLevel;

			mainArea.appendChild(clonedOverview);
		})
	}

	let userID
	//bind the buttons
	document.querySelector('#loginBtn').onclick = login;
	document.querySelector('#viewOverview').onclick = viewOverview;
	document.querySelector('#viewBuildings').onclick = viewBuildings;
	document.querySelector('#viewTroops').onclick = viewTroops;

	document.querySelector('#login').onsubmit = function(e) {
		e.preventDefault();
		let form = document.querySelector('#login');
		let userName = form.querySelector('#uName').value;	
		let password = form.querySelector('#passwd').value;

		let payload = {
			userName: userName,
			password: password
		}

		$.ajax('/login', {
			method: 'POST',
			data: JSON.stringify(payload),
			contentType: 'application/json'
		})
		.done((res) => {
			window.CLASH.user.id = res[0].userID;
			viewOverview();
		})
		.fail(() => {
			console.log('done borked');
		})

		return false;
	}
	//return the user I guess... 
	return {
		user: {
			id: 0
		}
	}
})();
