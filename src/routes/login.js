// constantes requerida en nuestro carpeta routes para datos del modulo Fierros
const express = require  ('express');
const router = express.Router();
//const jwt = require('jsonwebtoken');

const mysqlConnection= require('../database');

//Ruta para la obtención de un token.
router.post('/api/login', (req, res) => {
    const { COD_USUARIO, PAS_USUARIO } = req.body;
  
    // Consulta SQL para verificar si las credenciales del usuario son correctas.
    const query = `SELECT * FROM TBL_MS_USUARIOS WHERE COD_USUARIO = ? AND PAS_USUARIO = ? AND IND_USUARIO = 'ACTIVO';`;
    mysqlConnection.query(query, [COD_USUARIO, PAS_USUARIO], (error, results) => {
      if (error) {
        res.status(500).json({ error: 'Error interno del servidor' });
      } else {
        if (results.length > 0) {
          // Usuario válido, devuelve los datos del usuario.
            res.json({ message: 'Inicio de sesión exitoso', COD_USUARIO}); //Esta instrucción 
            //se usó para saber si el usuario era autenticado correctamente, como no se pueden 
            //repetir comandos como "res.json" o "res.send" se comentó este cuando el usuario ya 
            //podía iniciar sesión.
            //const token = jwt.sign({COD_USUARIO}, 'my_ultrasecret_token'); //Generación de token por medio de una palabra secreta.
            //res.json({ 
               // token
            //});
            //La anterior instrucción muestra el token del usuario para poder usar las APIs.
        } else {
            res.status(401).json({ error: 'Credenciales inválidas.' });
        }
      }
    });
});

/*router.get('/api/login' , (req , res )=>{
  // jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => { //Verifica si el token es el correcto.
      // if (err){
          // res.sendStatus(403);
       //}else {
          const { COD_USUARIO, PAS_USUARIO } = req.body;
           const query =`SELECT * FROM TBL_MS_USUARIOS WHERE COD_USUARIO = ? AND PAS_USUARIO = ? AND IND_USUARIO = 'ACTIVO';`; //Llamado al procedimiento almacenado del modulo de seguridad.
           mysqlConnection.query(query , [COD_USUARIO, PAS_USUARIO], (err , rows , fields) =>{
               if(!err){
               res.json(rows);
               }else{
               console.log(err);
               }
           });
      // }
   //});
});*/

module.exports = router;