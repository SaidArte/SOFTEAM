const mysql = require('mysql2');
 
//const  mysqlConnection = require('mysql');

const mysqlConnection = mysql.createConnection({

   host: '82.180.133.39',
   port: 3306,
   user: 'soft',
   password: 'Arteaga1234.',
   database: 'SOFTEAM',
   multipleStatements: true
 });


mysqlConnection.connect( function (err){
     if(!err){
        console.log('¡Conexión exitosa en el puerto 4000!');
     }else{
        console.log(err);
     }

});


// expotar la conexion mysql

module.exports= mysqlConnection;

