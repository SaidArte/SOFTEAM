// constantes requerida en nuestro carpeta routes para datos del Modulo Seguridad
const express = require  ('express');
const router = express.Router();
const jwt = require('jsonwebtoken');

const mysqlConnection= require('../database');

//GET (select).
router.get('/SEGURIDAD/GETALL_ROLES' , (req , res )=>{
     jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => { //Verifica si el token es el correcto.
         if (err){
             res.sendStatus(403);
         }else {
             const query =`SELECT * FROM TBL_MS_ROLES ORDER BY COD_ROL DESC;`;
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

 //POST (insertar).
router.post('/SEGURIDAD/INSERTAR_ROLES' , (req , res )=>{
     jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         if (err){
             res.sendStatus(403);
         }else {
            try {
                const {
                    NOM_ROL,
                    DES_ROL
                    } =req.body;
                    console.log(req.body)
                    const query =`CALL SP_MOD_SEGURIDAD('TBL_MS_ROLES', 'I', '1', '${NOM_ROL}', '${DES_ROL}', '0', '0','1', 'solo consultas','ACTIVO','0', '2023-07-01', '0','¿Nombre de su primer mascota?', 'CAMPEON', '1', 'ol', 'nj', 'bgv', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
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

//PUT (actualizar).
router.put('/SEGURIDAD/ACTUALIZAR_ROLES' , (req , res )=>{
     jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         if (err){
             res.sendStatus(403);
         }else {
            try {
                const {
                    COD_ROL,
                    NOM_ROL,
                    DES_ROL
                    } =req.body;
                    console.log(req.body)
                    const query =`CALL SP_MOD_SEGURIDAD('TBL_MS_ROLES', 'U', '${COD_ROL}', '${NOM_ROL}', '${DES_ROL}', '0', '0','1', 'solo consultas','ACTIVO','0', '2023-07-01', '0','¿Nombre de su primer mascota?', 'CAMPEON', '1', 'ol', 'nj', 'bgv', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
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

//GET (select para buscar un registro en particular).
router.post('/SEGURIDAD/GETONE_ROLES' , (req , res )=>{
     jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         if (err){
             res.sendStatus(403);
         }else {
            try {
                const {
                        NOM_ROL
                    } =req.body;
                    console.log(req.body)
                    const query =`SELECT * FROM TBL_MS_ROLES WHERE NOM_ROL = '${NOM_ROL}';`;
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