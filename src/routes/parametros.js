// constantes requerida en nuestro carpeta routes para datos del Modulo Seguridad
const express = require  ('express');
const router = express.Router();
const jwt = require('jsonwebtoken');

const mysqlConnection= require('../database');

//GET (select).
router.get('/SEGURIDAD/GETALL_PARAMETROS' , (req , res )=>{
     jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => { //Verifica si el token es el correcto.
         if (err){
             res.sendStatus(403);
         }else {
             const query =`SELECT a.COD_PARAMETRO, a.PARAMETRO, a.DES_PARAMETRO, a.VALOR, a.COD_USUARIO_CREADOR, b.NOM_USUARIO as nomcreador, a.FEC_CREADO, a.COD_USUARIO_MODIFICADOR, c.NOM_USUARIO as nommodif, a.FEC_MODIFICADO FROM TBL_MS_PARAMETROS a, TBL_MS_USUARIOS b, TBL_MS_USUARIOS c WHERE b.COD_USUARIO = a.COD_USUARIO_CREADOR AND c.COD_USUARIO = a.COD_USUARIO_MODIFICADOR ORDER BY COD_PARAMETRO DESC;`;
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
router.post('/SEGURIDAD/INSERTAR_PARAMETROS' , (req , res )=>{
     jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         if (err){
             res.sendStatus(403);
         }else {
            try {
                const {
                    PARAMETRO,
                    DES_PARAMETRO,
                    VALOR,
                    COD_USUARIO_CREADOR
                    } =req.body;
                    console.log(req.body)
                    const query =`CALL SP_MOD_SEGURIDAD('TBL_MS_PARAMETROS', 'I', '1', 'admin', 'desrol', '0', '0','1', 'solo consultas','ACTIVO','0', '2023-07-01', '0','¿Nombre de su primer mascota?', 'CAMPEON', '1', 'ol', 'nj', 'bgv', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100', '0', '${PARAMETRO}', '${DES_PARAMETRO}', '${VALOR}', '${COD_USUARIO_CREADOR}', '0');`;
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
router.put('/SEGURIDAD/ACTUALIZAR_PARAMETROS' , (req , res )=>{
     jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         if (err){
             res.sendStatus(403);
         }else {
            try {
                const {
                    COD_PARAMETRO,
                    PARAMETRO,
                    DES_PARAMETRO,
                    VALOR,
                    COD_USUARIO_MODIFICADOR
                    } =req.body;
                    console.log(req.body)
                    const query =`CALL SP_MOD_SEGURIDAD('TBL_MS_PARAMETROS', 'U', '1', 'admin', 'desrol', '0', '0','1', 'solo consultas','ACTIVO','0', '2023-07-01', '0','¿Nombre de su primer mascota?', 'CAMPEON', '1', 'ol', 'nj', 'bgv', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100', '${COD_PARAMETRO}', '${PARAMETRO}', '${DES_PARAMETRO}', '${VALOR}', '0', '${COD_USUARIO_MODIFICADOR}');`;
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
router.post('/SEGURIDAD/GETONE_PARAMETROS' , (req , res )=>{
     jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         if (err){
             res.sendStatus(403);
         }else {
            try {
                const {
                    PARAMETRO
                    } =req.body;
                    console.log(req.body)
                    const query =`SELECT * FROM TBL_MS_PARAMETROS WHERE PARAMETRO = '${PARAMETRO}';`;
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