const mysql = require('mysql');
 
//const  mysqlConnection = require('mysql');

const mysqlConnection = mysql.createConnection({
    host:'142.44.161.115',
    user: 'SOFTEAM',
    port: 3306,
    password: 'New##28yu',
    database: 'SOFTEAM'

});

mysqlConnection.connect( function (err){
     if(!err){
        console.log('¡Conexión exitosa en el puerto 3000!');
     }else{
        console.log('No se ha podido establecer conexión con la base de datos.');
     }

});


// expotar la conexion mysql

module.exports= mysqlConnection;

