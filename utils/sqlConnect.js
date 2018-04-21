const config = require('../config');
const mysql = require('mysql'); //this is like doing a require with PHP

var connect = mysql.createPool({
  host: config.host,
  port: config.port,
  user: config.user,
  password: config.password,
  database: config.database,
  connectionLimit : 20,
  queueLimit : 100,
  waitForConnection : true
});

module.exports = connect;
