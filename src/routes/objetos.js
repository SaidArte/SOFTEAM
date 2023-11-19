// constantes requerida en nuestro carpeta routes para datos del Modulo Seguridad
const express = require  ('express');
const router = express.Router();
const jwt = require('jsonwebtoken');

const mysqlConnection= require('../database');

//GET (Select) para mostrar todos los registros.
router.get('/SEGURIDAD/GETALL_OBJETOS' , (req , res )=>{
     jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => { //Verifica si el token es el correcto.
         if (err){
             res.sendStatus(403);
         }else {
             const query =`SELECT * FROM TBL_OBJETOS ORDER BY COD_OBJETO DESC;`; //Llamado al procedimiento almacenado del modulo de seguridad.
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

 //POST (Insertar).
router.post('/SEGURIDAD/INSERTAR_OBJETOS' , (req , res )=>{
     jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         if (err){
             res.sendStatus(403);
         }else {
            try {
                const {
                    OBJETO,
                    DES_OBJETO,
                    TIP_OBJETO
                    } =req.body;
                    console.log(req.body)
                    const query =`CALL SP_MOD_SEGURIDAD('TBL_OBJETOS', 'I', '1', 'Admins', '1', '0', '0','1', 'solo consultas','ACTIVO','0', '2023-07-01', '0', '¿Nombre de su primer mascota??', 'CAMPEON', '0', '${OBJETO}', '${DES_OBJETO}', '${TIP_OBJETO}', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100', '0', 'Parametro', 'Descripcion', '1', '0', '0');`;
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

//API con el método PUT (actualizar).
router.put('/SEGURIDAD/ACTUALIZAR_OBJETOS' , (req , res )=>{
     jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         if (err){
             res.sendStatus(403);
         }else {
            try {
                const {
                    COD_OBJETO,
                    OBJETO,
                    DES_OBJETO,
                    TIP_OBJETO
                    } =req.body;
                    console.log(req.body)
                    const query =`CALL SP_MOD_SEGURIDAD('TBL_OBJETOS', 'U', '1', 'Admins', '1', '0', '0','1', 'solo consultas','ACTIVO','0', '2023-07-01', '0', '¿Nombre de su primer mascota??', 'CAMPEON','${COD_OBJETO}', '${OBJETO}', '${DES_OBJETO}', '${TIP_OBJETO}', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100', '0', 'Parametro', 'Descripcion', '1', '0', '0');`;
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

//GET a solo un registro.
router.post('/SEGURIDAD/GETONE_OBJETOS' , (req , res )=>{
     jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         if (err){
             res.sendStatus(403);
         }else {
            try {
                const {
                        OBJETO
                    } =req.body;
                    console.log(req.body)
                    const query =`SELECT * FROM TBL_OBJETOS WHERE OBJETO = '${OBJETO}';`;
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