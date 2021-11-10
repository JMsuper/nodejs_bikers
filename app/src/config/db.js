const mysql = require("mysql");

const db = mysql.createConnection({
    host:"127.0.0.1",
    user:"root",
    password:"ljm8037!",
    database:"bikers",
    multipleStatements : true
});

db.connect();

module.exports = db;
