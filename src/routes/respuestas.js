// constantes requerida en nuestro carpeta routes para datos del Modulo Seguridad
const express = require  ('express');
const router = express.Router();
//const jwt = require('jsonwebtoken');

const mysqlConnection= require('../database');

router.put('/SEGURIDAD/ACTUALIZAR_RESPUESTAS' , (req , res )=>{
    // jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         //if (err){
             //res.sendStatus(403);
        // }else {
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
        // }
    // });
});


router.post('/SEGURIDAD/GETONE_RESPUESTAS' , (req , res )=>{
    // jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         //if (err){
             //res.sendStatus(403);
        // }else {
            try {
                const {
                        RESPUESTA
                    } =req.body;
                    console.log(req.body)
                    //const query =`CALL SP_MOD_SEGURIDAD('TBL_MS_USUARIOS', 'S', '1', 'Admins', '1', '1', '40','1','ACTIVO','2023-07-01','2023-07-01', '3', '3', '2023-07-01', '1', '¿Nombre de su primer mascota??', 'CAMPEON', '1', '1', '1', '1', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
                    const query =`SELECT a.COD_USUARIO FROM TBL_MS_USUARIOS a,  TBL_MS_PREGUNTAS_USUARIO b WHERE a.COD_USUARIO = b.COD_USUARIO AND b.RESPUESTA = '${RESPUESTA}';`;
                    mysqlConnection.query(query , (err , rows , fields) =>{
                    if(!err){
                    res.json(rows);
                    }else{
                    console.log(err);
                    }
                });
            } catch (error) {
                console.log(error);
                res.status(400).json({ error: 'Datos inválidos'});
            }
        // }
    // });
});

module.exports = router;