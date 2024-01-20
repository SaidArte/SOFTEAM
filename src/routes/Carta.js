// constantes requerida en nuestro carpeta routes para datos del modulo 
const express = require  ('express');
const router = express.Router();
const jwt = require('jsonwebtoken');

const mysqlConnection= require('../database');

//SELECT ALL: Aqui llamaremos a la tabla con todos los registros de la Base de Datos
router.get('/CARTA/GETALL' , (req , res ) =>{
 jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
    if (err){
        res.sendStatus(403);
    }else {
      mysqlConnection.query('SELECT a.COD_CVENTA, a.FEC_CVENTA, b.NOM_PERSONA as NOMBRE_VENDEDOR, a.NOM_COMPRADOR, a.DNI_COMPRADOR, a.CLAS_ANIMAL, a.COL_ANIMAL, c.IMG_FIERRO, a.VEN_ANIMAL, a.HER_ANIMAL, a.CANT_CVENTA, a.FOL_CVENTA, a.ANT_CVENTA, a.IND_CVENTA FROM CARTA_VENTA a, PERSONAS b, FIERROS c WHERE a.COD_PERSONA = b.COD_PERSONA AND a.COD_FIERRO = c.COD_FIERRO;' , ( err, rows , fields ) =>{
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
router.post('/CARTA/INSERTAR' , (req , res )=>{
  jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
    if (err){
        res.sendStatus(403);
    }else {
      const { //Llamaremos a todas las variables del Procedimiento Almacenado 
        //TABLA_NOMBRE,
        //TIPO_OPERACION,
        COD_CVENTA,
        COD_PERSONA ,
        NOM_COMPRADOR  ,
        DNI_COMPRADOR,
        CLAS_ANIMAL,
        COL_ANIMAL ,
        COD_FIERRO ,
        VEN_ANIMAL ,
        HER_ANIMAL,
        CANT_CVENTA,
        FOL_CVENTA  ,
        ANT_CVENTA  ,
        IND_CVENTA 
       
        } =req.body;
    console.log(req.body)
    //Aqui llamamos a los parametros del procedmiento 
    const query =`

      CALL SP_MOD_CARTAVENTA('CARTA_VENTA','I',?,?,?,?,?,?,?,?,?,?,?,?,?);
   
   `;
   mysqlConnection.query(query , [
         //TABLA_NOMBRE,
         //TIPO_OPERACION,
         COD_CVENTA,
         COD_PERSONA ,
         NOM_COMPRADOR  ,
         DNI_COMPRADOR,
         CLAS_ANIMAL,
         COL_ANIMAL ,
         COD_FIERRO ,
         VEN_ANIMAL ,
         HER_ANIMAL,
         CANT_CVENTA,
         FOL_CVENTA  ,
         ANT_CVENTA  ,
         IND_CVENTA 
         
         //Aqui mostramos un mensaje si el procedimiento fue realizado correctamento o muestra un mensaje de error
        ] , (err , rows , fields) =>{
          if(!err){
             res.json({Status: ' Registrado'});
          }else{
              console.log(err);
          }

        });
    }
  });
});

//SELECT ONE: Seleccionamos un registro en especifico mediante nuestra llave primaria
router.get('/CARTA/GETONE/:COD_CVENTA',(req, res) =>{
  jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
    if (err){
        res.sendStatus(403);
    }else {
      const { COD_FIERRO } = req.params;
      mysqlConnection.query('SELECT * FROM CARTA_VENTA WHERE COD_CVENTA = ?', [COD_CVENTA], (err, 
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

//PUT: Actualizamos cualquier registro llamando DE CARTA 

router.put('/CARTA/ACTUALIZAR/:COD_CVENTA', (req, res) => {
  jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
    if (err){
        res.sendStatus(403);
    } else { 
  try {
    const {

        //COD_CVENTA,
        COD_PERSONA ,
        NOM_COMPRADOR  ,
        DNI_COMPRADOR,
        CLAS_ANIMAL,
        COL_ANIMAL ,
        COD_FIERRO ,
        VEN_ANIMAL ,
        HER_ANIMAL,
        CANT_CVENTA,
        FOL_CVENTA  ,
        ANT_CVENTA  ,
        IND_CVENTA 
     
    } = req.body;
    const {COD_CVENTA} = req.params;
    const query = `
      CALL SP_MOD_CARTAVENTA('CARTA_VENTA','U','${COD_CVENTA}', '${COD_PERSONA}','${ NOM_COMPRADOR}', '${DNI_COMPRADOR}', '${CLAS_ANIMAL}', '${COL_ANIMAL}', '${COD_FIERRO}','${VEN_ANIMAL}','${HER_ANIMAL},'${CANT_CVENTA},'${FOL_CVENTA },'${ANT_CVENTA },'${IND_CVENTA })'`;
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