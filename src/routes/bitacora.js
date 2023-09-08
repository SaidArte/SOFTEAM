// Constantes requerida en nuestro carpeta routes.
const express = require  ('express');
const router = express.Router();
const jwt = require('jsonwebtoken');

const mysqlConnection= require('../database');

//GET (select para buscar todos los registros de la tabla de bitacora).
router.get('/SEGURIDAD/GETALL_BITACORA' , (req , res )=>{
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => { //Verifica si el token es el correcto.
        if (err){
            res.sendStatus(403);
        }else {
             const query =`SELECT * FROM BITACORA;`;
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

 module.exports = router;