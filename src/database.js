const mysql = require('mysql');

 
//const  mysqlConnection = require('mysql');

const mysqlConnection = mysql.createConnection({
    host:'containers-us-west-65.railway.app',
    user: 'root',
    port: 5536,
    password: '5yPcDH1YRIXyR1j75pbZ',
    database: 'railway'

});

mysqlConnection.connect( function (err){
     if(!err){
        console.log(`¡Conexión exitosa en el puerto!`);
     }else{
        console.log('No se ha podido establecer conexión con la base de datos.');
     }

});


// expotar la conexion mysql

module.exports= mysqlConnection;

