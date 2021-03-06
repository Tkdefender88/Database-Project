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

	//Clear the entire page so that we can reload it with updated information
	function clearPage() {
		//Clear the page
		let mainArea = document.querySelector('#mainArea');

		while (mainArea && mainArea.firstChild) {
			mainArea.removeChild(mainArea.firstChild);
		}
	}
	
	//Show the login prompt
	function login() {
		clearPage();
		window.CLASH.user.id = 0;
		let loginForm = document.querySelector('#login');
		let loginbtn = loginForm.querySelector('#loginBtn');
		let password = loginForm.querySelector('#passwd');
		password.innerHTML = '';
		loginForm.classList.remove('h-login');
		loginbtn.classList.add('h-login');
	}

	//Reqest the building data from the database and place it on the dom
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
				button.onclick = upgradeBuilding;
				
				row.appendChild(button);

				tableBody.appendChild(row);
			}

			clonedBuildings.querySelector('h2').innerHTML = title;
			
			clonedBuildings.querySelector('#addBuilding').onsubmit = (e) => {
				e.preventDefault();
				let form = clonedBuildings.querySelector('#addBuilding');
				let name = form.querySelector('#buildName').value;
				addBuilding(name);
			}

			mainArea.appendChild(clonedBuildings);
		})
		.fail(() => {
			console.log('Building list could not be retrieved');
		})
	}

	//This function is bound to the upgrade buttons on the builing list
	//It goes through to the database based on the building name and level of
	//the building in it's row and finds the id of the next level of that
	//building and updates the user's buildinglist with it.
	function upgradeBuilding() {
		let userID = window.CLASH.user.id;
		let row = this.parentElement.children;
		let name = row[1].innerHTML;
		let level = parseInt(row[2].innerHTML);
		let nextLevel = level + 1;
		let nextLevelID;
		let levelID;

		//Get the ID for the next building level 
		$.ajax('/building/level/', {
			method: 'POST',
			data: JSON.stringify({
				buildName: name, 
				buildLevel: nextLevel
			}),
			contentType: 'application/json'
		})
		.done((res) => {
			nextLevelID = res[0].buildingID;
				
			//Get building ID for the current level
			$.ajax('/building/level/', {
				method: 'POST',
				data: JSON.stringify({
					buildName: name,
					buildLevel: level
				}),
				contentType: 'application/json'
			})
			.done((res) => {
				levelID = res[0].buildingID;
				//insert new level building
				$.ajax('/building/addBuilding/', {
					method: 'POST',
					data: JSON.stringify({
						userID: userID,
						buildingID: nextLevelID
					}),
					contentType: 'application/json'
				})
				.done((res) => {
					//Delete the old level
					$.ajax('/building/remove/', {
						method: 'POST',
						data: JSON.stringify({
							userID: userID,
							buildingID: levelID
						}),
						contentType: 'application/json'
					}) 
					.done((res) => {
						viewBuildings();
					})
					.fail(() => {
						console.log('Could not remove the building');			
					})
				})
				.fail(() => {
					console.log('Could not add building');
				})
		})
			.fail(() => {
				console.log('failed to get current level');
			})
		}) 
		.fail(() => {
			console.log('Could not get next level ID');
		})
	}

	//Add a new building based on an inputted name, of level one to the list
	function addBuilding(buildingName) {
		let typeID;
		let buildingID;
		$.ajax('/building/byBuildingName/' + buildingName)
		.done((res) => {
			typeID = res[0].typeID;
			$.ajax('/building/byBuildingType/' + typeID)
			.done((res) => {
				buildingID = res[0].buildingID;
				let payload = {
					buildingID: buildingID,
					userID: window.CLASH.user.id
				}
				$.ajax('/building/addBuilding/', {
					method: 'POST',
					data: JSON.stringify(payload),
					contentType: 'application/json'
				})
				.done((res) => {
					viewBuildings();
				})
				.fail(() => {
					console.log('Could not add building to list');
				})
			})
			.fail(() => {
				console.log('Could not get buildingID');
			})
		})
		.fail(() => {
			console.log('Could not get typeID');
		})
	}

	function reqTroop(endpoint, title) {
		clearPage();

		$.ajax(endpoint)
		.done((res) => {
			let mainArea = document.querySelector('#mainArea');
			let troops = document.querySelector('#troopList');
			let clonedTroops = troops.cloneNode(true);
			let tableBody = clonedTroops.querySelector('tbody');

			for (let troop of res) {

				let row = document.createElement('tr');

				for (let col in troop) {
					let entry = document.createElement('td');
					entry.innerHTML = troop[col];

					row.appendChild(entry);
				}
				
				let upgradeBtn = document.createElement('button');
				let text = document.createTextNode('Upgrade');
				upgradeBtn.appendChild(text);
				upgradeBtn.onclick = upgradeTroop;

				row.appendChild(upgradeBtn);

				tableBody.appendChild(row);
			}

			clonedTroops.querySelector('h2').innerHTML = title;

			clonedTroops.querySelector('#addTroop').onsubmit = function(e) {
				e.preventDefault();
				let form = clonedTroops.querySelector('#addTroop');
				let name = form.querySelector('#troopName').value;
				console.log(name);
				addTroop(name);
			}

			mainArea.appendChild(clonedTroops);
		})
		.fail(() => {
			console.log('Could not display Troop page');
		})
	}

	function upgradeTroop() {
		let userID = window.CLASH.user.id;
		let row = this.parentElement.children
		let name = row[0].innerHTML;
		let nextLevel = parseInt(row[1].innerHTML) + 1;
		let nextLevelID;
		let typeID;

		//get the type ID for the current troop 
		$.ajax('/troop/byTroopName/' + name)
		.done((res) => {
			console.log(res);
			typeID = res[0].typeID;
			//get the troopID for the next level
			$.ajax('/troop/level/', {
				method: 'POST',
				data: JSON.stringify({
					troopName: name,
					troopLevel: nextLevel
				}),
				contentType: 'application/json'
			})
			.done((res) => {
				if (res.length == 0) {
					console.log('Cannot upgrade troop');
					return;
				}
				nextLevelID = res[0].troopLevelID;

				$.ajax('/troop/upgrade/', {
					method: 'POST',
					data: JSON.stringify({
						userID: userID,
						troopLevel: nextLevelID,
						typeID: typeID
					}),
					contentType: 'application/json'
				})
				.done((res) => {
					viewTroops();
				})
				.fail(() => {
					console.log('Failed to update troop list table');
				})
			})
			.fail(() => {
				console.log('Failed to find next level ID');
			})

		})
		.fail(()=> {
			console.log('Could not get the typeID');
		})
	}

	function addTroop(troopName) {
		let typeID;
		let troopID;
		$.ajax('/troop/byTroopName/' + troopName) 
		.done((res) => {
			typeID = res[0].typeID;
			$.ajax('/troop/byTroopType/' + typeID)
			.done((res) => {
				troopID = res[0].troopLevelID;
				$.ajax('/troop/addTroop', {
					method: 'POST',
					data: JSON.stringify({
						troopID: troopID,
						userID: window.CLASH.user.id,
						typeID: typeID
					}),
					contentType: 'application/json'
				})
				.done((res) => {
					viewTroops();
				})
				.fail(() => {
					console.log('Failed to add troop');
				})
			})
			.fail(() => {
				console.log('Could not get troop ID');
			})
		})
		.fail(() => {
			console.log('Could not get troop ID');
		})
	}

	function viewBuildings() {
		let userID = window.CLASH.user.id;
		reqBuildings('building/byUserID/' + userID, 'Building List');
	}

	function viewTroops() {
		let userID = window.CLASH.user.id;
		reqTroop('troop/byUserID/' + userID, 'Troop List');
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
			.querySelector('#numBuilding').innerHTML = res[0].numBuilding;

			clonedOverview
			.querySelector('#numTroop').innerHTML = res[0].numTroop;

			clonedOverview
			.querySelector('#playerLvl').innerHTML = res[0].userLevel;

			mainArea.appendChild(clonedOverview);
		})
		.fail(() => {
			console.log("Could not get overview")
		})
	}

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
			form.classList.add('h-login');
			document.querySelector('#loginBtn').classList.remove('h-login');
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
