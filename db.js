var mysql = require('mysql');
var connection = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: 'root_3',
    database: 'carsUsers'
});
module.exports = connection;
