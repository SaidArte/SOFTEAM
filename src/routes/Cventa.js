// constantes requerida en nuestro carpeta routes para datos carta de venta
const express = require  ('express');
const router = express.Router();

const mysqlConnection= require('../database');

//SELECT ALL
router.get('/CVENTA/GETALL' , (req , res )=>{
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
  CALL SP_MOD_CVENTA(?,'S',?,?,?,?,?,?,?,?,?,?,?,?,?);
 

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
});








//POST
router.post('/CVENTA/INSERTAR' , (req , res )=>{
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

      
   CALL SP_MOD_CVENTA(?,'I',?,?,?,?,?,?,?,?,?,?,?,?,?);
   
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
             res.json({Status: 'Datos Registrados '});
          }else{
              console.log(err);
          }

   });
});

//PUT
router.put('/CVENTA/ACTUALIZAR/:COD' , (req , res)=>{
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
    const {COD} = req.params;
    const query = `
    CALL SP_MOD_CVENTA(?,'U',?,?,?,?,?,?,?,?,?,?,?,?,?);
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
         res.json({Status: 'Datos actualizados'});
      }else{
          console.log(err);
      }
     });
  });





  //SELECT ONE
router.get('/CVENTA/GETONE' , (req , res )=>{
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
});

module.exports = router;
