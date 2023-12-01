// constantes requerida en nuestro carpeta routes para datos carta de venta
const express = require  ('express');
const router = express.Router();
const jwt = require('jsonwebtoken');

//nivel de ubicacion de la conexion
const mysqlConnection= require('../database'); 


//Metodo de Consulta General (SELECT ALL) ,Consulta de todo los datos insertados tanto de la tabla  Expediente_cventa.

router.get('/CVENTA/GETALL' , (req , res )=>{
  jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => { //Verifica si el token es el correcto.
      if (err){
          res.sendStatus(403);
       }else {
           const query =` 
           select a.COD_CVENTA, a.FEC_CVENTA, a.COD_VENDEDOR, b.NOM_PERSONA as NombreVendedor, a.NOM_COMPRADOR, a.DNI_COMPRADOR, c.COD_ANIMAL, a.FOL_CVENTA, a.ANT_CVENTA 
           from EXPEDIENTE_CVENTA a, PERSONAS b, ANIMALES c
           WHERE a.COD_VENDEDOR =b.COD_PERSONA
           AND a.COD_ANIMAL =c.COD_ANIMAL
            ORDER BY COD_CVENTA;  `; //Llamado al procedimiento almacenado del modulo de seguridad.
           mysqlConnection.query(query , (err , rows , fields) =>{
               if(!err){
               res.json(rows);
               }else{
               console.log(err);
               }
           });
      }
   });
})

//Metodo de Insertar Datos(POST), nos permite insertar un nuevo dato elegiendo una tablas como ser la de Animal o Expediente_cventa 

router.post('/CVENTA/INSERTAR' , (req , res )=>{
  jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
       if (err){
           res.sendStatus(403);
      }else {
          try {
              const {
                     // COD_CVENTA ,
                      COD_VENDEDOR ,
                      NOM_COMPRADOR,
                      DNI_COMPRADOR,
                      COD_ANIMAL ,
                      FOL_CVENTA ,
                      ANT_CVENTA,
                   
                  } =req.body;
                  console.log(req.body)
                  
                  //const query =`CALL SP_MOD_CVENTA('EXPEDIENTE_CVENTA','I',0,'${COD_VENDEDOR}','${COD_COMPRADOR}','${COD_ANIMAL}','${FOL_CVENTA}','${ANT_CVENTA}','VACA','HEREFORD','BLANCO',6,'S','N','ninguno');`;
                   const query =`CALL SP_MOD_CVENTA('EXPEDIENTE_CVENTA','I', 0,'${COD_VENDEDOR}', '${NOM_COMPRADOR}', '${DNI_COMPRADOR}', '${COD_ANIMAL}' , '${FOL_CVENTA}' , '${ANT_CVENTA}',  'caballo','pura sangre','cafes', 23, 'N', 'S', 'NINGUNA');`;
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

router.put('/CVENTA/ACTUALIZAR/:COD_CVENTA' , (req , res )=>{
  jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
    if (err){
        res.sendStatus(403);
    }else {
        
        try {
          const {
                 //COD_CVENTA ,
                 COD_VENDEDOR ,
                 NOM_COMPRADOR,
                 DNI_COMPRADOR,
                 COD_ANIMAL ,
                 FOL_CVENTA ,
                 ANT_CVENTA,
         
              } =req.body;
               const { COD_CVENTA } = req.params;
              console.log(req.body)
              //const query =`CALL SP_MOD_CVENTA('EXPEDIENTE_CVENTA','U','${COD_CVENTA}','${COD_VENDEDOR}','${COD_COMPRADOR}','${COD_ANIMAL}','${FOL_CVENTA}','${ANT_CVENTA}','VACA','HEREFORD','BLANCO',6,'S','N','ninguno');`;
              const query =`CALL SP_MOD_CVENTA('EXPEDIENTE_CVENTA','U','${COD_CVENTA}' ,'${COD_VENDEDOR}', '${NOM_COMPRADOR}', '${DNI_COMPRADOR}', '${COD_ANIMAL}' , '${FOL_CVENTA}' , '${ANT_CVENTA}',  'caballo','pura sangre','cafes', 23, 'N', 'S', 'NINGUNA');`;
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
          res.status(400).json({ error: 'Datos inválidos'});
      }
    }
  });
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
