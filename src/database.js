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
        console.log('conexion exitosa en el puerto 3000');
     }else{
        console.log('BD no conectada');
     }

});


// expotar la conexion mysql

module.exports= mysqlConnection;

