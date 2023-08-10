// constantes requerida en nuestro carpeta routes para datos carta de venta
const express = require  ('express');
const router = express.Router();
const jwt = require('jsonwebtoken');

//nivel de ubicacion de la conexion
const mysqlConnection= require('../database');


//Metodo de Consulta General (SELECT ALL) ,Consulta de todo los datos insertados tanto de la tabla  Expediente_cventa.

router.get('/CVENTA/GETALL' , (req , res )=>{
  // jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => { //Verifica si el token es el correcto.
      // if (err){
          // res.sendStatus(403);
       //}else {
          const query =` 
          SELECT a.COD_CVENTA, a.FEC_CVENTA , a.COD_VENDEDOR ,  a.COD_COMPRADOR, b.COD_ANIMAL,
           a.FOL_CVENTA, a.ANT_CVENTA 
          FROM EXPEDIENTE_CVENTA a, ANIMALES b 
          WHERE  a.COD_ANIMAL = b.COD_ANIMAL
         
          ORDER BY COD_CVENTA ;
          `  //Llamado al procedimiento almacenado del modulo de cventa de la tabla expediente_cventa.
            

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





//Metodo de Insertar Datos(POST), nos permite insertar un nuevo dato elegiendo una tablas como ser la de Animal o Expediente_cventa 

router.post('/CVENTA/INSERTAR' , (req , res )=>{
  // jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
       //if (err){
           //res.sendStatus(403);
      // }else {
          try {
              const {
                     // COD_CVENTA ,
                      COD_VENDEDOR ,
                      COD_COMPRADOR,
                      COD_ANIMAL ,
                      FOL_CVENTA ,
                      ANT_CVENTA,
                   
                  } =req.body;
                  console.log(req.body)
                  
                  const query =`CALL SP_MOD_CVENTA('EXPEDIENTE_CVENTA','I',0,'${COD_VENDEDOR}','${COD_COMPRADOR}','${COD_ANIMAL}','${FOL_CVENTA}','${ANT_CVENTA}','VACA','HEREFORD','BLANCO',6,'S','N','ninguno');`;
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








  //Metodo de Consulta (SELECT ONE), este metodo nos permite llamar a un solo dato atraves del codigo perteneciente del dato de cualquier tabla de Animal o Expediecventa_.
router.get('/CVENTA/GETONE' , (req , res )=>{
  jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
    if (err){
        res.sendStatus(403);
    }else {
      const {
        TABLA_NOMBRE,
        COD_CVENTA ,
        COD_VENDEDOR ,
        COD_COMPRADOR,
        COD_ANIMAL ,
        FOL_CVENTA ,
        ANT_CVENTA,
        CLAS_ANIMAL ,
        RAZ_ANIMAL ,
        COL_ANIMAL,
        COD_FIERRO ,
        VEN_ANIMAL ,
        HER_ANIMAL ,
        DET_ANIMAL
    
      } =req.body;
    
      console.log(req.body)
      const query =`
    
      CALL SP_MOD_CVENTA(?,'ST',?,?,?,?,?,?,?,?,?,?,?,?,?);
    
    `;
    mysqlConnection.query(query , [
     
      TABLA_NOMBRE,
      COD_CVENTA ,
      COD_VENDEDOR ,
      COD_COMPRADOR,
      COD_ANIMAL ,
      FOL_CVENTA ,
      ANT_CVENTA,
      CLAS_ANIMAL ,
      RAZ_ANIMAL ,
      COL_ANIMAL,
      COD_FIERRO ,
      VEN_ANIMAL ,
      HER_ANIMAL ,
      DET_ANIMAL
    
      ] , (err , rows , fields) =>{
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
