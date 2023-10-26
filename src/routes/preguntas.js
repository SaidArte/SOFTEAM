// constantes requerida en nuestro carpeta routes para datos del Modulo Seguridad
const express = require  ('express');
const router = express.Router();
const jwt = require('jsonwebtoken');

const mysqlConnection= require('../database');

router.get('/SEGURIDAD/GETALL_PREGUNTAS' , (req , res )=>{
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => { //Verifica si el token es el correcto.
        if (err){
            res.sendStatus(403);
         }else {
             const query =`SELECT * FROM TBL_MS_PREGUNTAS;`;
             mysqlConnection.query(query , (err , rows , fields) =>{
                 if(!err){
                 res.json(rows);
                 }else{
                 console.log(err);
                 }
             });
        }
     });
 });

 //POST
router.post('/SEGURIDAD/INSERTAR_PREGUNTAS' , (req , res )=>{
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         if (err){
             res.sendStatus(403);
        }else {
            try {
                const {
                    PREGUNTA
                    } =req.body;
                    console.log(req.body)
                    const query =`CALL SP_MOD_SEGURIDAD('TBL_MS_PREGUNTAS', 'I', '1', 'Admins', '1', '0', '0','1', 'solo consultas','ACTIVO','0', '2023-07-01', '0', '${PREGUNTA}', 'CAMPEON', '1', 'ol', 'nj', 'bgv', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
                    mysqlConnection.query(query , (err , rows , fields) =>{
                    if(!err){
                        res.json({status: 'Registro guardado correctamente'})
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

router.put('/SEGURIDAD/ACTUALIZAR_PREGUNTAS' , (req , res )=>{
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         if (err){
             res.sendStatus(403);
        }else {
            try {
                const {
                    COD_PREGUNTA,
                    PREGUNTA
                    } =req.body;
                    console.log(req.body)
                    const query =`CALL SP_MOD_SEGURIDAD('TBL_MS_PREGUNTAS', 'U', '1', 'Admins', '1', '0', '0','1', 'solo consultas','ACTIVO','0', '2023-07-01', '${COD_PREGUNTA}', '${PREGUNTA}', 'CAMPEON', '1', 'ol', 'nj', 'bgv', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
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


router.post('/SEGURIDAD/GETONE_PREGUNTAS' , (req , res )=>{
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         if (err){
             res.sendStatus(403);
        }else {
            try {
                const {
                        PREGUNTA
                    } =req.body;
                    console.log(req.body)
                    const query =`SELECT * FROM TBL_MS_PREGUNTAS WHERE PREGUNTA = '${PREGUNTA}';`;
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
        }
    });
});

module.exports = router;