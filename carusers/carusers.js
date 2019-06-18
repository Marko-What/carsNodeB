var db = require('../db');

var carusers = {
    getcarusers: function (callback) {   
        return db.query('SELECT * FROM usersCars', callback);
    },

    getsinglecaruser: function (carUser, callback) {
					let obja = JSON.parse(carUser);
        		return db.query('SELECT * FROM usersCars WHERE id = '+ carUser, callback);
    },

    createcaruser: function (carUser, callback) {
				let carUsera = JSON.parse(carUser);
        	return db.query('Insert into usersCars(ime, priimek, naslov, starost, avto) values(?, ?, ?, ?, ?)', [carUsera.ime, carUsera.priimek, carUsera.naslov, carUsera.starost, carUsera.avto ], callback);
    },

	 updatecaruser: function (carUser, callback) {
				let obja = JSON.parse(carUser);
					let query = "UPDATE `usersCars` SET `ime` = '" + obja.ime + "', `priimek` = '" + obja.priimek + "', `naslov` = '" + obja.naslov + "', `starost` = '" + obja.starost + "', `avto` = '" + obja.avto + "' WHERE `id` ="+obja.id;
        return db.query(query);
    },

    	deletecaruser: function (carUserData, callback) {
					let obja = JSON.parse(carUserData);
        return db.query('DELETE from usersCars WHERE id = ?', obja.id, callback);
    }

}


module.exports = carusers;
