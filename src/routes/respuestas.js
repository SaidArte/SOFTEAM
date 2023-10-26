// constantes requerida en nuestro carpeta routes para datos del Modulo Seguridad
const express = require  ('express');
const router = express.Router();
const jwt = require('jsonwebtoken');

const mysqlConnection= require('../database');
 //Actualiza la pregunta y la respuesta de seguridad de su usuario correspondiente.
router.put('/SEGURIDAD/ACTUALIZAR_RESPUESTAS' , (req , res )=>{
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         if (err){
             es.sendStatus(403);
        }else {
            try {
                const {
                    COD_USUARIO,
                    PREGUNTA,
                    RESPUESTA
                    } =req.body;
                    console.log(req.body)
                    const query =`CALL SP_MOD_SEGURIDAD('TBL_MS_PREGUNTAS_USUARIO', 'U', '1', 'Admins', '1', '${COD_USUARIO}', '1', 'nombreusuario','1','ACTIVO', '0', '2023-07-01', '1', '${PREGUNTA}', '${RESPUESTA}', '1', '1', '1', '1', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
                    mysqlConnection.query(query , (err , rows , fields) =>{
                    if(!err){
                        res.json({status: 'Registro actualizado correctamente'})
                    }else{
                        console.log(err);
                    }
                });
            } catch (error) {
                console.log(error);
                res.status(400).json({ error: 'Datos inválidos'});
            }
        }
    });
});

module.exports = router;