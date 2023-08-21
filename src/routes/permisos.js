// constantes requerida en nuestro carpeta routes para datos del Modulo Seguridad
const express = require  ('express');
const router = express.Router();
//const jwt = require('jsonwebtoken');

const mysqlConnection= require('../database');

router.get('/SEGURIDAD/GETALL_PERMISOS' , (req , res )=>{
    // jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => { //Verifica si el token es el correcto.
        // if (err){
            // res.sendStatus(403);
         //}else {
             const query =`SELECT a.COD_ROL, b.NOM_ROL, a.COD_OBJETO, c.OBJETO, a.PRM_INSERTAR, a.PRM_ACTUALIZAR, a.PRM_CONSULTAR FROM TBL_PERMISOS a, TBL_MS_ROLES b, TBL_OBJETOS c WHERE a.COD_ROL = b.COD_ROL AND a.COD_OBJETO = c.COD_OBJETO ORDER BY a.COD_ROL;`; //Llamado al procedimiento almacenado del modulo de seguridad.
             mysqlConnection.query(query , (err , rows , fields) =>{
                 if(!err){
                 res.json(rows);
                 }else{
                 console.log(err);
                 }
             });
        // }
     //});
 });

 //POST
router.post('/SEGURIDAD/INSERTAR_PERMISOS' , (req , res )=>{
    // jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         //if (err){
             //res.sendStatus(403);
        // }else {
            try {
                const {
                    NOM_ROL,
                    OBJETO,
                    PRM_INSERTAR,
                    PRM_ACTUALIZAR,
                    PRM_CONSULTAR
                    } =req.body;
                    console.log(req.body)
                    const query =`CALL SP_MOD_SEGURIDAD('TBL_PERMISOS', 'I', '1', '${NOM_ROL}', '1', '1', '1', 'nombreusuario','1','ACTIVO', '0', '2023-07-01', '1', '¿Nombre de su primer mascota??', 'CAMPEON', '1', '${OBJETO}', '1', '1', '${PRM_INSERTAR}', '${PRM_ACTUALIZAR}', '${PRM_CONSULTAR}', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
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
        // }
    // });
});

router.put('/SEGURIDAD/ACTUALIZAR_PERMISOS' , (req , res )=>{
    // jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         //if (err){
             //res.sendStatus(403);
        // }else {
            try {
                const {
                    COD_ROL,
                    COD_OBJETO,
                    PRM_INSERTAR,
                    PRM_ACTUALIZAR,
                    PRM_CONSULTAR
                    } =req.body;
                    console.log(req.body)
                    //const query =`CALL SP_MOD_SEGURIDAD('TBL_MS_USUARIOS', 'S', '1', 'Admins', '1', '1', '40','1','ACTIVO','2023-07-01','2023-07-01', '3', '3', '2023-07-01', '1', '¿Nombre de su primer mascota??', 'CAMPEON', '1', '1', '1', '1', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
                    const query =`CALL SP_MOD_SEGURIDAD('TBL_PERMISOS', 'U', '${COD_ROL}', 'Admins', '1', '0', '0','1', 'solo consultas','ACTIVO','0','2023-07-01', '0', '¿Nombre de su primer mascota?', 'CAMPEON','${COD_OBJETO}', 'ol', 'nj', 'bgv', '${PRM_INSERTAR}', '${PRM_ACTUALIZAR}', '${PRM_CONSULTAR}', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
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


router.get('/SEGURIDAD/GETONE_PERMISOS' , (req , res )=>{
    // jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         //if (err){
             //res.sendStatus(403);
        // }else {
            try {
                const {
                    COD_ROL,
                    COD_OBJETO
                    } =req.body;
                    console.log(req.body)
                    //const query =`CALL SP_MOD_SEGURIDAD('TBL_MS_USUARIOS', 'S', '1', 'Admins', '1', '1', '40','1','ACTIVO','2023-07-01','2023-07-01', '3', '3', '2023-07-01', '1', '¿Nombre de su primer mascota??', 'CAMPEON', '1', '1', '1', '1', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
                    const query =`CALL SP_MOD_SEGURIDAD('TBL_PERMISOS', 'ST', '${COD_ROL}', 'Admins', '1', '0', '0','1','ACTIVO','2023-07-01','2023-07-01', '3', '3', '2023-07-01', '1', '¿Nombre de su primer mascota??', 'CAMPEON', '${COD_OBJETO}', '1', '1', '1', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
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

router.post('/SEGURIDAD/GETONE_SOLOPERMISOS' , (req , res )=>{
    // jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         //if (err){
             //res.sendStatus(403);
        // }else {
            try {
                const {
                    NOM_ROL,
                    OBJETO
                    } =req.body;
                    console.log(req.body)
                    //const query =`CALL SP_MOD_SEGURIDAD('TBL_MS_USUARIOS', 'S', '1', 'Admins', '1', '1', '40','1','ACTIVO','2023-07-01','2023-07-01', '3', '3', '2023-07-01', '1', '¿Nombre de su primer mascota??', 'CAMPEON', '1', '1', '1', '1', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
                    const query =`SELECT a.PRM_INSERTAR, a.PRM_ACTUALIZAR, a.PRM_CONSULTAR FROM TBL_PERMISOS a,  TBL_MS_ROLES b, TBL_OBJETOS c WHERE a.COD_ROL = b.COD_ROL AND a.COD_OBJETO = c.COD_OBJETO AND b.NOM_ROL = '${NOM_ROL}' AND c.OBJETO = '${OBJETO}';`;
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