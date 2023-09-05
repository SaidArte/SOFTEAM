// constantes requerida en nuestro carpeta routes para datos del Modulo Seguridad
const express = require  ('express');
const router = express.Router();
const jwt = require('jsonwebtoken');

const mysqlConnection= require('../database');

router.get('/SEGURIDAD/GETALL_MANTENIMIENTOS' , (req , res )=>{
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => { //Verifica si el token es el correcto.
        if (err){
            res.sendStatus(403);
         }else {
             const query =`SELECT a.COD_MANTENIMIENTO, a.FEC_REG_MANTENIMIENTO, a.FEC_HR_MANTENIMIENTO, a.TIP_MANTENIMIENTO, a.DES_MANTENIMIENTO, a.COD_USUARIO, c.NOM_PERSONA as NOMBRE_USUARIO, a.MON_MANTENIMIENTO FROM TBL_MANTENIMIENTOS a, TBL_MS_USUARIOS b, PERSONAS c WHERE a.COD_USUARIO = b.COD_USUARIO AND b.COD_PERSONA = c.COD_PERSONA ORDER BY a.COD_MANTENIMIENTO;`;
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
router.post('/SEGURIDAD/INSERTAR_MANTENIMIENTOS' , (req , res )=>{
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         if (err){
             res.sendStatus(403);
        }else {
            try {
                const {
                    FEC_HR_MANTENIMIENTO,
                    TIP_MANTENIMIENTO,
                    DES_MANTENIMIENTO,
                    COD_USUARIO,
                    MON_MANTENIMIENTO
                    } =req.body;
                    console.log(req.body)
                    const query =`CALL SP_MOD_SEGURIDAD('TBL_MANTENIMIENTOS', 'I', '1', 'Admins', '1', '${COD_USUARIO}', '0','1', 'solo consultas','ACTIVO','0', '0', '¿como que no?', 'CAMPEON', '1', 'ol', 'nj', 'bgv', 'S', 'S', 'N', '1', '${FEC_HR_MANTENIMIENTO}', '${TIP_MANTENIMIENTO}', '${DES_MANTENIMIENTO}', '${MON_MANTENIMIENTO}');`;
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

router.put('/SEGURIDAD/ACTUALIZAR_MANTENIMIENTOS' , (req , res )=>{
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         if (err){
             res.sendStatus(403);
        }else {
            try {
                const {
                    COD_MANTENIMIENTO,
                    FEC_HR_MANTENIMIENTO,
                    TIP_MANTENIMIENTO,
                    DES_MANTENIMIENTO,
                    COD_USUARIO,
                    MON_MANTENIMIENTO
                    } =req.body;
                    console.log(req.body)
                    const query =`CALL SP_MOD_SEGURIDAD('TBL_MANTENIMIENTOS', 'U', '1', 'Admins', '1', '${COD_USUARIO}', '0','1', 'solo consultas','ACTIVO','0', '0', '¿como que no?', 'CAMPEON', '1', 'ol', 'nj', 'bgv', 'S', 'S', 'N', '${COD_MANTENIMIENTO}', '${FEC_HR_MANTENIMIENTO}', '${TIP_MANTENIMIENTO}', '${DES_MANTENIMIENTO}', '${MON_MANTENIMIENTO}');`;
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


router.get('/SEGURIDAD/GETONE_MANTENIMIENTOS' , (req , res )=>{
     jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         if (err){
             res.sendStatus(403);
         }else {
            try {
                const {
                        COD_MANTENIMIENTO
                    } =req.body;
                    console.log(req.body)
                    const query =`CALL SP_MOD_SEGURIDAD('TBL_MANTENIMIENTOS', 'ST', '1', 'Admins', '1', '0', '0','1', 'solo consultas','ACTIVO','0', '0', '¿como que no?', 'CAMPEON', '1', 'ol', 'nj', 'bgv', 'S', 'S', 'N', '${COD_MANTENIMIENTO}', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
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