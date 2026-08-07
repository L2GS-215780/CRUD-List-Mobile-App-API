'use strict'

const mysql = require("mysql");

const isDocker = process.env.RUNNING_IN_DOCKER === "true";

const dbConn = mysql.createPool({
    host: isDocker ? process.env.DB_HOST_DOCKER : process.env.DB_HOST_LOCALHOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME,
    waitForConnections: true,
    connectionLimit: 10,
    connectTimeout: 60000,
    acquireTimeout: 60000,
    timeout: 60000,
    dateStrings: true,
});

dbConn.getConnection((err, connection) => {
    if (err) {
        console.error('Database connection failed:', err);
        return;
    }
    console.log('Database Connected');
    connection.release();
});

module.exports = dbConn;