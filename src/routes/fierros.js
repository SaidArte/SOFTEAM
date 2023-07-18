// constantes requerida en nuestro carpeta routes para datos del modulo Fierros
const express = require  ('express');
const router = express.Router();

const mysqlConnection= require('../database');

//SELECT ALL
router.get('/FIERROS/GETALL' , (req , res ) =>{
    mysqlConnection.query('SELECT * FROM FIERROS' , ( err, rows , fields ) =>{
      if(!err){
        res.json(rows);
      }else{
        console.log(err);
      }

    });
});

//POST
router.post('/FIERROS/INSERTAR' , (req , res )=>{
    const {
        TABLA_NOMBRE,
        TIPO_OPERACION,
        COD_FIERRO,
        FEC_TRAMITE_FIERRO,
        COD_PERSONA,
        TIP_FIERRO,
        IMG_FIERRO,
        NUM_FOLIO_FIERRO,
        MON_CERTIFICO_FIERRO
        } =req.body;
    console.log(req.body)
    const query =`

      CALL SP_MOD_FIERRO(?,?,?,?,?,?,?,?,?);
   
   `;
   mysqlConnection.query(query , [
         TABLA_NOMBRE,
         TIPO_OPERACION,
         COD_FIERRO,
         FEC_TRAMITE_FIERRO,
         COD_PERSONA,
         TIP_FIERRO,
         IMG_FIERRO,
         NUM_FOLIO_FIERRO,
         MON_CERTIFICO_FIERRO
        ] , (err , rows , fields) =>{
          if(!err){
             res.json({Status: 'Fierros Registrado'});
          }else{
              console.log(err);
          }

   });
});
//SELECT ONE
router.get('/FIERROS/GETONE/:COD_FIERRO',(req, res) =>{
    const { COD_FIERRO } = req.params;
     mysqlConnection.query('SELECT * FROM FIERROS WHERE COD_FIERRO = ?', [COD_FIERRO], (err, 
        rows, fields) => {
        if(!err){
            res.json(rows);
            }else{
            console.log(err);
            }
        });
});

//PUT
router.put('/FIERROS/ACTUALIZAR/:COD_FIERRO' , (req , res)=>{
    const {  
        TABLA_NOMBRE,
        TIPO_OPERACION,
        FEC_TRAMITE_FIERRO,
        COD_PERSONA,
        TIP_FIERRO,
        IMG_FIERRO,
        NUM_FOLIO_FIERRO,
        MON_CERTIFICO_FIERRO
    } =req.body;
    const {COD_FIERRO} = req.params;
    const query = `
    CALL SP_MOD_FIERRO(?,?,?,?,?,?,?,?,?)`;
    mysqlConnection.query(query , [ 
        TABLA_NOMBRE,
         TIPO_OPERACION,
         COD_FIERRO,
         FEC_TRAMITE_FIERRO,
         COD_PERSONA,
         TIP_FIERRO,
         IMG_FIERRO,
         NUM_FOLIO_FIERRO,
         MON_CERTIFICO_FIERRO 
        ] , (err , rows , fields) =>{
      if(!err){
         res.json({Status: 'Datos actualizados'});
      }else{
          console.log(err);
      }
     });
  });

module.exports = router;