// constantes requerida en nuestro carpeta routes para datos del modulo Fierros
const express = require  ('express');
const router = express.Router();
//const jwt = require('jsonwebtoken');

const mysqlConnection= require('../database');

//Ruta para la obtención de un token.
router.post('/api/login', (req, res) => {
    const { NOM_USUARIO, PAS_USUARIO } = req.body;
  
    // Consulta SQL para verificar si las credenciales del usuario son correctas.
    const query = `SELECT * FROM TBL_MS_USUARIOS WHERE NOM_USUARIO = ? AND PAS_USUARIO = ?;`;
    mysqlConnection.query(query, [NOM_USUARIO, PAS_USUARIO], (error, results) => {
        if (error) {
            res.status(500).json({ error: 'Error interno del servidor' });
        } else {
            if (results.length > 0) {
                if (results[0].IND_USUARIO === 'ACTIVO') {
                    res.json({ message: 'Inicio de sesión exitoso', NOM_USUARIO: results[0].NOM_USUARIO });
                } else {
                    res.status(401).json({ error_type: 'inactive', message: 'Usuario inactivo' });
                }
            } else {
                res.status(401).json({ error_type: 'invalid', message: 'Credenciales inválidas' });
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