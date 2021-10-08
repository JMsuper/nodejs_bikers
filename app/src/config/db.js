const mysql = require("mysql");

const db = mysql.createConnection({
    host:"127.0.0.1",
    user:"user",
    password:"rla532621!@#",
    database:"bikers",
    multipleStatements : true
});

db.connect();

module.exports = db;