// constantes requerida en nuestro carpeta routes para datos del modulo Permisos Sacrificios
const express = require  ('express');
const router = express.Router();
const jwt = require('jsonwebtoken');

const mysqlConnection= require('../database');

//SELECT ALL: Aqui llamaremos a la tabla con todos los registros de la Base de Datos
router.get('/PSACRIFICIO/GETALL' , (req , res ) =>{
  jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
    if (err){
      res.sendStatus(403);
  }else {
        mysqlConnection.query('SELECT * FROM PERMISOS_SACRIFICIO' , ( err, rows , fields ) =>{
        if(!err){
          res.json(rows);
        }else{
          console.log(err);
        }
      });
    }
 });
});

//POST: Insertaremos nuevos registros en la tabla
router.post('/PSACRIFICIO/INSERTAR' , (req , res )=>{
  jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
    if (err){
       res.sendStatus(403);
    }else {
      const { //Llamaremos a todas las variables del Procedimiento Almacenado PSacrificio
        TABLA_NOMBRE,
        TIPO_OPERACION,
        COD_PSACRIFICIO,
        FEC_REG_PSACRIFICIO,
        NOM_PERSONA,
        DNI_PERSONA,
        TEL_PERSONA,
        FEC_SACRIFICIO,
        COD_ANIMAL,
        DIR_PSACRIFICIO
        } =req.body;
      console.log(req.body)
      //Aqui llamamos a los parametros del procedmiento 
      const query =`

       CALL SP_MOD_PERMISOS_SACRIFICIO(?,?,?,?,?,?,?,?,?,?);
   
    `;
    mysqlConnection.query(query , [
            TABLA_NOMBRE,
            TIPO_OPERACION,
            COD_PSACRIFICIO,
            FEC_REG_PSACRIFICIO,
            NOM_PERSONA,
            DNI_PERSONA,
            TEL_PERSONA,
            FEC_SACRIFICIO,
            COD_ANIMAL,
            DIR_PSACRIFICIO
            //Aqui mostramos un mensaje si el procedimiento fue realizado correctamento o muestra un mensaje de error
            ] , (err , rows , fields) =>{
            if(!err){
              res.json({Status: 'Permiso de Sacrificio Registrado'});
            }else{
                console.log(err);
            }

      });
    }
  });
});

//SELECT ONE: Seleccionamos un registro en especifico mediante nuestra llave primaria
router.get('/PSACRIFICIO/GETONE/:COD_PSACRIFICIO',(req, res) =>{
  jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
    if (err){
      res.sendStatus(403);
   }else {
      const { COD_PSACRIFICIO } = req.params;
      mysqlConnection.query('SELECT * FROM PERMISOS_SACRIFICIO WHERE COD_PSACRIFICIO = ?', [COD_PSACRIFICIO], (err, 
         rows, fields) => {
         if(!err){
             res.json(rows);
             }else{
             console.log(err);
             }
       });
    }
 });
});

//PUT: Actualizamos cualquier registro llamando al COD_PSACRIFICIO
router.put('/PSACRIFICIO/ACTUALIZAR/:COD_PSACRIFICIO' , (req , res)=>{
  jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
   if (err){
        res.sendStatus(403);
   }else {
        const {  
          TABLA_NOMBRE,
          TIPO_OPERACION,
          FEC_REG_PSACRIFICIO,
          NOM_PERSONA,
          DNI_PERSONA,
          TEL_PERSONA,
          FEC_SACRIFICIO,
          COD_ANIMAL,
          DIR_PSACRIFICIO
      } =req.body;
      const {COD_PSACRIFICIO} = req.params;
      const query = `
      CALL SP_MOD_PERMISOS_SACRIFICIO(?,?,?,?,?,?,?,?,?,?)`;
      mysqlConnection.query(query , [ 
          TABLA_NOMBRE,
          TIPO_OPERACION,
          COD_PSACRIFICIO,
          FEC_REG_PSACRIFICIO,
          NOM_PERSONA,
          DNI_PERSONA,
          TEL_PERSONA,
          FEC_SACRIFICIO,
          COD_ANIMAL,
          DIR_PSACRIFICIO 
          ] , (err , rows , fields) =>{
        if(!err){
          res.json({Status: 'Datos actualizados'});
        }else{
            console.log(err);
        }
      });
     }
    });
  });

module.exports = router;