// constantes requerida en nuestro carpeta routes para datos del modulo Fierros
const express = require  ('express');
const router = express.Router();
//const jwt = require('jsonwebtoken');

const mysqlConnection= require('../database');

//Ruta para la obtención de un token.
router.post('/api/login', (req, res) => {
    const { NOM_USUARIO, PAS_USUARIO } = req.body;
  
    // Consulta SQL para verificar si las credenciales del usuario son correctas.
    const query = `SELECT a.COD_USUARIO, a.NOM_USUARIO, b.NOM_PERSONA, c.NOM_ROL, a.IND_USUARIO, a.FEC_ULTIMO_ACCESO, a.LIM_INTENTOS, a.NUM_INTENTOS_FALLIDOS, a.FEC_VENCIMIENTO FROM TBL_MS_USUARIOS a, PERSONAS  b, TBL_MS_ROLES c WHERE a.COD_PERSONA = b.COD_PERSONA AND a.COD_ROL = c.COD_ROL AND NOM_USUARIO = ? AND PAS_USUARIO = ?;`;
    mysqlConnection.query(query, [NOM_USUARIO, PAS_USUARIO], (error, results) => {
        if (error) {
            res.status(500).json({ error: 'Error interno del servidor' });
        } else {
            if (results.length > 0) {
                if (results[0].IND_USUARIO === 'ACTIVO') {
                    res.json({ message: 'Inicio de sesión exitoso', user: results[0]});
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