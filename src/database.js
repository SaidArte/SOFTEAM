const mysql = require ('mysql2');

const mysqlConnection = mysql.createConnection({
  host: '82.180.133.39',
  port: 3306,
  user: 'soft',
  password: 'Arteaga1234.',
  database: 'SOFTEAM',
  multipleStatements: true
});

//Esto es para trabajar con mi BD de manera local, quitar, cuando se conecta al servidor remoto

mysqlConnection.connect(function (err) {
  if (err) {
    console.error(err);
    return;
  } else {
    console.log('db is connected');
  }
});

module.exports = mysqlConnection;

