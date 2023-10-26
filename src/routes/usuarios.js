// constantes requerida en nuestro carpeta routes para datos del Modulo Seguridad
const express = require  ('express');
const router = express.Router();
const jwt = require('jsonwebtoken');

const mysqlConnection= require('../database');

//GET (select para buscar todos los registros de la tabla de usuarios).
router.get('/SEGURIDAD/GETALL_USUARIOS' , (req , res )=>{
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => { //Verifica si el token es el correcto.
        if (err){
            res.sendStatus(403);
        }else {
             const query =`SELECT a.COD_USUARIO, a.NOM_USUARIO, b.NOM_PERSONA, c.NOM_ROL, a.IND_USUARIO, a.FEC_ULTIMO_ACCESO, a.LIM_INTENTOS, a.NUM_INTENTOS_FALLIDOS, a.FEC_VENCIMIENTO FROM TBL_MS_USUARIOS a, PERSONAS  b, TBL_MS_ROLES c WHERE a.COD_PERSONA = b.COD_PERSONA AND a.COD_ROL = c.COD_ROL ORDER BY COD_USUARIO DESC;`;
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
router.post('/SEGURIDAD/INSERTAR_USUARIOS' , (req , res )=>{
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         if (err){
             res.sendStatus(403);
        }else {
            try {
                const {
                        NOM_ROL,
                        COD_PERSONA,
                        NOM_USUARIO, 
                        PAS_USUARIO,
                        IND_USUARIO
                    } =req.body;
                    console.log(req.body)
                    const query =`CALL SP_MOD_SEGURIDAD('TBL_MS_USUARIOS', 'I', '1', '${NOM_ROL}', '1', '0', '${COD_PERSONA}', '${NOM_USUARIO}','${PAS_USUARIO}','${IND_USUARIO}', '0', '2023-07-01', '1', '¿como que no?', '¿como que si?', '1', '1', '1', '1', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
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

//PUT (actualiza un registro).
router.put('/SEGURIDAD/ACTUALIZAR_USUARIOS' , (req , res )=>{
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         if (err){
             res.sendStatus(403);
        }else {
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
        }
    });
});

router.post('/SEGURIDAD/GETONE_PERSONA-USUARIOS' , (req , res )=>{
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => { //Verifica si el token es el correcto.
        if (err){
            res.sendStatus(403);
        }else {
            try {
                const {
                    COD_PERSONA
                    } =req.body;
                    console.log(req.body)
                    const query =`SELECT NOM_USUARIO FROM TBL_MS_USUARIOS WHERE COD_PERSONA = '${COD_PERSONA}';`;
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

router.post('/SEGURIDAD/GETONE_USUARIOS-COD' , (req , res )=>{
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => { //Verifica si el token es el correcto.
        if (err){
            res.sendStatus(403);
        }else {
            try {
                const {
                    COD_USUARIO
                    } =req.body;
                    console.log(req.body)
                    const query =`SELECT NOM_USUARIO FROM TBL_MS_USUARIOS WHERE COD_USUARIO = '${COD_USUARIO}';`;
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