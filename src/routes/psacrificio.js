// constantes requerida en nuestro carpeta routes para datos activo
const express = require  ('express');
const router = express.Router();

const mysqlConnection= require('../database');

//SELECT ALL
router.get('/PSACRIFICIO/GETALL' , (req , res ) =>{
    mysqlConnection.query('SELECT * FROM PERMISOS_SACRIFICIO' , ( err, rows , fields ) =>{
      if(!err){
        res.json(rows);
      }else{
        console.log(err);
      }

    });
});

//POST
router.post('/PSACRIFICIO/INSERTAR' , (req , res )=>{
    const {
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
        ] , (err , rows , fields) =>{
        if(!err){
           res.json({Status: 'Permiso de Sacrificio Registrado'});
        }else{
            console.log(err);
        }

  });
});

//SELECT ONE
router.get('/PSACRIFICIO/GETONE/:COD_PSACRIFICIO',(req, res) =>{
    const { COD_PSACRIFICIO } = req.params;
     mysqlConnection.query('SELECT * FROM PERMISOS_SACRIFICIO WHERE COD_PSACRIFICIO = ?', [COD_PSACRIFICIO], (err, 
        rows, fields) => {
        if(!err){
            res.json(rows);
            }else{
            console.log(err);
            }
        });
});

//PUT
router.put('/PSACRIFICIO/ACTUALIZAR/:COD_PSACRIFICIO' , (req , res)=>{
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
  });

module.exports = router;