// constantes requerida en nuestro carpeta routes para datos del modulo Fierros
const express = require  ('express');
const router = express.Router();
const jwt = require('jsonwebtoken');

const mysqlConnection= require('../database');

//SELECT ALL: Aqui llamaremos a la tabla con todos los registros de la Base de Datos
router.get('/FIERROS/GETALL' , (req , res ) =>{
 jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
    if (err){
        res.sendStatus(403);
    }else {
      mysqlConnection.query('SELECT * FROM FIERROS' , ( err, rows , fields ) =>{
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
router.post('/FIERROS/INSERTAR' , (req , res )=>{
  jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
    if (err){
        res.sendStatus(403);
    }else {
      const { //Llamaremos a todas las variables del Procedimiento Almacenado Fierros
        //TABLA_NOMBRE,
        //TIPO_OPERACION,
        COD_FIERRO,
        FEC_TRAMITE_FIERRO,
        COD_PERSONA,
        TIP_FIERRO,
        IMG_FIERRO,
        NUM_FOLIO_FIERRO,
        MON_CERTIFICO_FIERRO
        } =req.body;
    console.log(req.body)
    //Aqui llamamos a los parametros del procedmiento 
    const query =`

      CALL SP_MOD_FIERRO('FIERROS','I',?,?,?,?,?,?,?);
   
   `;
   mysqlConnection.query(query , [
         //TABLA_NOMBRE,
         //TIPO_OPERACION,
         COD_FIERRO,
         FEC_TRAMITE_FIERRO,
         COD_PERSONA,
         TIP_FIERRO,
         IMG_FIERRO,
         NUM_FOLIO_FIERRO,
         MON_CERTIFICO_FIERRO
         //Aqui mostramos un mensaje si el procedimiento fue realizado correctamento o muestra un mensaje de error
        ] , (err , rows , fields) =>{
          if(!err){
             res.json({Status: 'Fierros Registrado'});
          }else{
              console.log(err);
          }

        });
    }
  });
});

//SELECT ONE: Seleccionamos un registro en especifico mediante nuestra llave primaria
router.get('/FIERROS/GETONE/:COD_FIERRO',(req, res) =>{
  jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
    if (err){
        res.sendStatus(403);
    }else {
      const { COD_FIERRO } = req.params;
      mysqlConnection.query('SELECT * FROM FIERROS WHERE COD_FIERRO = ?', [COD_FIERRO], (err, 
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

//PUT: Actualizamos cualquier registro llamando al COD_FIERRO

router.put('/FIERROS/ACTUALIZAR/:COD_FIERRO', (req, res) => {
  jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
    if (err){
        res.sendStatus(403);
    } else { 
  try {
    const {
      FEC_TRAMITE_FIERRO,
      COD_PERSONA,
      TIP_FIERRO,
      IMG_FIERRO,
      NUM_FOLIO_FIERRO,
      MON_CERTIFICO_FIERRO
    } = req.body;
    const { COD_FIERRO } = req.params;
    const query = `
      CALL SP_MOD_FIERRO('FIERROS','U','${COD_FIERRO}', '${FEC_TRAMITE_FIERRO}','1', '${TIP_FIERRO}', '${IMG_FIERRO}', '${NUM_FOLIO_FIERRO}', '${MON_CERTIFICO_FIERRO}')`;
    mysqlConnection.query(query, (err, result) => {
      if (!err) {
        res.json({ Status: 'Datos actualizados' });
      } else {
        console.log(err);
        res.status(500).json({ error: 'Error al actualizar los datos' });
      }
    });
  } catch (error) {
    console.log(error);
    res.status(400).json({ error: 'Datos inválidos' });
  }
}
});
});

module.exports = router;