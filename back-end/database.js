var mysql = require('mysql2');

var connection = mysql.createConnection({
    host    : 'localhost',
    user    : 'root',
    password: '0903075546',
    database: 'CellphoneS'
})

module.exports = connection;