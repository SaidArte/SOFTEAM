// constantes requerida en nuestro carpeta routes para datos del Modulo Seguridad
const express = require  ('express');
const router = express.Router();
//const jwt = require('jsonwebtoken');

const mysqlConnection= require('../database');

router.get('/SEGURIDAD/GETALL_USUARIOS' , (req , res )=>{
    // jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => { //Verifica si el token es el correcto.
        // if (err){
            // res.sendStatus(403);
         //}else {
             const query =`SELECT a.COD_USUARIO, a.NOM_USUARIO, b.NOM_PERSONA, c.NOM_ROL, a.IND_USUARIO, a.FEC_ULTIMO_ACCESO, a.LIM_INTENTOS, a.NUM_INTENTOS_FALLIDOS, a.FEC_VENCIMIENTO FROM TBL_MS_USUARIOS a, PERSONAS  b, TBL_MS_ROLES c WHERE a.COD_PERSONA = b.COD_PERSONA AND a.COD_ROL = c.COD_ROL ORDER BY COD_USUARIO;`; //Llamado al procedimiento almacenado del modulo de seguridad.
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
router.post('/SEGURIDAD/INSERTAR_USUARIOS' , (req , res )=>{
    // jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         //if (err){
             //res.sendStatus(403);
        // }else {
            try {
                const {
                        NOM_ROL,
                        COD_PERSONA,
                        NOM_USUARIO, 
                        PAS_USUARIO,
                        IND_USUARIO,
                        FEC_VENCIMIENTO,
                        PREGUNTA,
                        RESPUESTA
                    } =req.body;
                    console.log(req.body)
                    const query =`CALL SP_MOD_SEGURIDAD('TBL_MS_USUARIOS', 'I', '1', '${NOM_ROL}', '1', '0', '${COD_PERSONA}', '${NOM_USUARIO}','${PAS_USUARIO}','${IND_USUARIO}', '0', '${FEC_VENCIMIENTO}', '1', '${PREGUNTA}', '${RESPUESTA}', '1', '1', '1', '1', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
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

router.put('/SEGURIDAD/ACTUALIZAR_USUARIOS' , (req , res )=>{
    // jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         //if (err){
             //res.sendStatus(403);
        // }else {
            try {
                const {
                        COD_USUARIO,
                        NOM_USUARIO,
                        NOM_ROL,
                        IND_USUARIO,
                        FEC_VENCIMIENTO
                    } =req.body;
                    console.log(req.body)
                    const query =`CALL SP_MOD_SEGURIDAD('TBL_MS_USUARIOS', 'U', '1', '${NOM_ROL}', '1', '${COD_USUARIO}', '1' , '${NOM_USUARIO}','1','${IND_USUARIO}', 0, '${FEC_VENCIMIENTO}', '1', '¿Nombre de su primer mascota?', 'CAMPEON', '1', '1', '1', '1', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
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

router.put('/SEGURIDAD/ACTUALIZAR_PASS_USUARIOS' , (req , res )=>{
    // jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         //if (err){
             //res.sendStatus(403);
        // }else {
            try {
                const {
                        COD_USUARIO,
                        PAS_USUARIO
                    } =req.body;
                    console.log(req.body)
                    const query =`CALL SP_MOD_SEGURIDAD('TBL_MS_USUARIOS', 'C', '1', 'Admins', '1', '${COD_USUARIO}', '1', 'nombreusuario','${PAS_USUARIO}','ACTIVO', '0', '2023-07-01', '1', '¿Nombre de su primer mascota??', 'CAMPEON', '1', '1', '1', '1', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
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

router.put('/SEGURIDAD/ACTUALIZAR_INT_FALLIDOS' , (req , res )=>{
    // jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         //if (err){
             //res.sendStatus(403);
        // }else {
            try {
                const {
                        COD_USUARIO,
                        NUM_INTENTOS_FALLIDOS
                    } =req.body;
                    console.log(req.body)
                    const query =`CALL SP_MOD_SEGURIDAD('TBL_MS_USUARIOS', 'F', '1', 'Admins', '1', '${COD_USUARIO}', '1', 'nombreusuario','pass','ACTIVO', '${NUM_INTENTOS_FALLIDOS}', '2023-07-01', '1', '¿Nombre de su primer mascota??', 'CAMPEON', '1', '1', '1', '1', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
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

router.put('/SEGURIDAD/ACTUALIZAR_FECHA_ACCESO' , (req , res )=>{
    // jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         //if (err){
             //res.sendStatus(403);
        // }else {
            try {
                const {
                        COD_USUARIO
                    } =req.body;
                    console.log(req.body)
                    const query =`CALL SP_MOD_SEGURIDAD('TBL_MS_USUARIOS', 'A', '1', 'Admins', '1', '${COD_USUARIO}', '1', 'nombreusuario','pass','ACTIVO', '0', '2023-07-01', '1', '¿Nombre de su primer mascota??', 'CAMPEON', '1', '1', '1', '1', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
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

router.post('/SEGURIDAD/GETONE_USUARIOS' , (req , res )=>{
    // jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         //if (err){
             //res.sendStatus(403);
        // }else {
            try {
                const {
                        NOM_USUARIO
                    } =req.body;
                    console.log(req.body)
                    const query =`SELECT a.COD_USUARIO, a.NOM_USUARIO, b.NOM_PERSONA, c.NOM_ROL, a.IND_USUARIO, a.FEC_ULTIMO_ACCESO, a.LIM_INTENTOS, a.NUM_INTENTOS_FALLIDOS, a.FEC_VENCIMIENTO FROM TBL_MS_USUARIOS a, PERSONAS  b, TBL_MS_ROLES c WHERE a.COD_PERSONA = b.COD_PERSONA AND a.COD_ROL = c.COD_ROL AND a.NOM_USUARIO = '${NOM_USUARIO}';`;
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