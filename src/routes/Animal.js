// constantes requerida en nuestro carpeta routes para datos carta de venta
const express = require  ('express');
const router = express.Router();
const jwt = require('jsonwebtoken');

//nivel de ubicacion de la conexion
const mysqlConnection= require('../database');





//Metodo de Consulta General (SELECT ALL) ,Consulta de todo los datos insertados tanto de la tabla Animales .

//TABLA DE ANIMAL

router.get('/ANIMAL/GETALL' , (req , res )=>{
  // jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => { //Verifica si el token es el correcto.
      // if (err){
          // res.sendStatus(403);
       //}else {
           const query =` SELECT a.COD_ANIMAL ,a.FEC_REG_ANIMAL, a.CLAS_ANIMAL,  a.RAZ_ANIMAL, a.COL_ANIMAL, b.COD_FIERRO, a.VEN_ANIMAL, a.HER_ANIMAL, a.DET_ANIMAL 
                          FROM ANIMALES a, FIERROS b
                          WHERE a.COD_FIERRO = b.COD_FIERRO
                          ORDER BY COD_ANIMAL;
                         `; //Llamado al procedimiento almacenado del modulo de cventa de la tabla Animales.
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

//Metodo de Insertar Datos(POST), nos permite insertar un nuevo dato elegiendo una tablas como ser la de Animal 

router.post('/ANIMAL/INSERTAR' , (req , res )=>{
  // jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
       //if (err){
           //res.sendStatus(403);
      // }else {
          try {
              const {

                    CLAS_ANIMAL ,
                    RAZ_ANIMAL ,
                    COL_ANIMAL,
                    COD_FIERRO ,
                    VEN_ANIMAL ,
                    HER_ANIMAL ,
                    DET_ANIMAL
                     
                  } =req.body;
                  console.log(req.body)

                 // const query =`CALL SP_MOD_CVENTA('EXPEDIENTE_CVENTA','I',0,'${COD_VENDEDOR}','${COD_COMPRADOR}','${COD_ANIMAL}','${FOL_CVENTA}','${ANT_CVENTA}','VACA','HEREFORD','BLANCO',6,'S','N','ninguno');`;
                 //CALL SP_MOD_CVENTA('ANIMALES','I', 0,3, 4, 0 , 9800 , 'NO',  'ca','e','ca', 7, 'N', 'S', 'NINGUNA');
                  
                  const query =`CALL SP_MOD_CVENTA('ANIMALES','I',0,3,4,0,9800,'NO','${CLAS_ANIMAL}','${RAZ_ANIMAL}','${COL_ANIMAL}','${COD_FIERRO}','${VEN_ANIMAL}','${HER_ANIMAL}','${DET_ANIMAL}');`;
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
    });

    router.put('/ANIMAL/ACTUALIZAR/:COD_ANIMAL' , (req , res )=>{
      //jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
        //if (err){
            //res.sendStatus(403);
        //}else {
            
            try {
              const {
                //COD_ANIMAL,
                CLAS_ANIMAL ,
                RAZ_ANIMAL ,
                COL_ANIMAL,
                COD_FIERRO ,
                VEN_ANIMAL ,
                HER_ANIMAL ,
                DET_ANIMAL
                    
                  } =req.body;
                  const { COD_ANIMAL } = req.params;
                  console.log(req.body)
                  const query =`CALL SP_MOD_CVENTA('ANIMALES','U',0,3,4,'${COD_ANIMAL}',9800,'NO','${CLAS_ANIMAL}','${RAZ_ANIMAL}','${COL_ANIMAL}','${COD_FIERRO}','${VEN_ANIMAL}','${HER_ANIMAL}','${DET_ANIMAL}');`;
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
        //}
      //});
    });


module.exports = router;
