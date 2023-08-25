const mysql = require('mysql2');
const dotenv = require('dotenv');
dotenv.config();
 
//const  mysqlConnection = require('mysql');

const mysqlConnection = mysql.createConnection({
   host: process.env.DB_HOST,
   user: process.env.DB_USER,
   port: process.env.DB_PORT,
   password: process.env.DB_PASSWORD,
   database: process.env.DB_DATABASE
});

mysqlConnection.connect(function (err) {
    if (err) {
        console.error('Error al conectar a la base de datos:', err.message);
    } else {
        console.log('Conexión exitosa en el puerto',process.env.DB_PORT);
    }
});


// expotar la conexion mysql

module.exports= mysqlConnection;

