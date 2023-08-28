// constantes requerida en nuestro carpeta routes para datos del Modulo Seguridad
const express = require  ('express');
const router = express.Router();
const jwt = require('jsonwebtoken');

const mysqlConnection= require('../database');

router.get('/DETALLETRASLADO/GETALL' , (req , res )=>{
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => { //Verifica si el token es el correcto.
        if (err){
            res.sendStatus(403);
         }else {
             const query =`SELECT * FROM DETALLE_TRASLADO;`; 
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
router.post('/DETALLETRASLADO/INSERTAR' , (req , res )=>{
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         if (err){
             res.sendStatus(403);
        }else {
            try {
                const {
                    COD_PTRASLADO,
                    COD_FIERRO,
                    CAN_GANADO,
                    } =req.body;
                    console.log(req.body)
                    const query =`SP_MOD_PERMISOS_TRASLADO('DETALLE_TRASLADO', 'I', '${COD_PTRASLADO}', '2023-07-01', '2023-07-12', '3', 'TALANGA','TGU','JOSE MANUEL','0701-1998-00222','98979655', 'HONDA', 'CAMION', '2023 HDG', 'ROJO', '5000', '0', '${COD_FIERRO}', '${CAN_GANADO}');`;
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

//PROCEDIMIENTO PARA ACTUALIZAR
router.put('/DETALLETRASLADO/ACTUALIZAR' , (req , res )=>{
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         if (err){
             res.sendStatus(403);
        }else {
            try {
                const {
                    COD_PTRASLADO,
                    COD_FIERRO,
                    CAN_GANADO,
                    } =req.body;
                    console.log(req.body)
                    const query =`SP_MOD_PERMISOS_TRASLADO('DETALLE_TRASLADO', 'U', '${COD_PTRASLADO}', '2023-07-01', '2023-07-12', '3', 'TALANGA','TGU','JOSE MANUEL','0701-1998-00222','98979655', 'HONDA', 'CAMION', '2023 HDG', 'ROJO', '5000', '${COD_DTRASLADO}', '${COD_FIERRO}', '${CAN_GANADO}');`;
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

//PROCEDIMIENTO PARA ACTUALIZAR
router.get('/DETALLETRASLADO/GET_ONE' , (req , res )=>{
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
         if (err){
             res.sendStatus(403);
        }else {
            try {
                const {
                    COD_DTRASLADO
                    } =req.body;
                    console.log(req.body)
                    const query =`SP_MOD_PERMISOS_TRASLADO('DETALLE_TRASLADO', 'U', '0', '2023-07-01', '2023-07-12', '3', 'TALANGA','TGU','JOSE MANUEL','0701-1998-00222','98979655', 'HONDA', 'CAMION', '2023 HDG', 'ROJO', '5000', '${COD_DTRASLADO}', '5', '7');`;
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
