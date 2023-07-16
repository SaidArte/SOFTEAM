// constantes requerida en nuestro carpeta routes para datos activo
const express = require  ('express');
const router = express.Router();

const mysqlConnection= require('../database');
//SELECT ALL
router.get('/PTRASLADO/GETALL' , (req , res )=>{
    const {
        TABLA_NOMBRE,
        COD_PTRASLADO,
        FEC_REG_TRASLADO,
        FEC_TRASLADO,
        COD_PERSONA,
        DIR_ORIG_PTRASLADO,
        DIR_DEST_TRASLADO,
        NOM_TRASNPORTISTA,
        DNI_TRANSPORTISTA,
        TEL_TRANSPORTISTA,
        MAR_VEHICULO,
        MOD_VEHICULO,
        MAT_VEHICULO,
        COL_VEHICULO,
        MON_TRASLADO,
        COD_DTRASLADO,
        COD_FIERRO,
        CAN_GANADO
    } =req.body;
    console.log(req.body)
    const query =`

    CALL SP_MOD_PERMISOS_TRASLADO(?,'S',?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);
 
 `;
 mysqlConnection.query(query , [
        TABLA_NOMBRE,
        COD_PTRASLADO,
        FEC_REG_TRASLADO,
        FEC_TRASLADO,
        COD_PERSONA,
        DIR_ORIG_PTRASLADO,
        DIR_DEST_TRASLADO,
        NOM_TRASNPORTISTA,
        DNI_TRANSPORTISTA,
        TEL_TRANSPORTISTA,
        MAR_VEHICULO,
        MOD_VEHICULO,
        MAT_VEHICULO,
        COL_VEHICULO,
        MON_TRASLADO,
        COD_DTRASLADO,
        COD_FIERRO,
        CAN_GANADO
 ] , (err , rows , fields) =>{
    if(!err){
      res.json(rows);
    }else{
      console.log(err);
    }
 });
});
//POST
router.post('/PTRASLADO/INSERTAR' , (req , res )=>{
    const {
        TABLA_NOMBRE,
        COD_PTRASLADO,
        FEC_REG_TRASLADO,
        FEC_TRASLADO,
        COD_PERSONA,
        DIR_ORIG_PTRASLADO,
        DIR_DEST_TRASLADO,
        NOM_TRASNPORTISTA,
        DNI_TRANSPORTISTA,
        TEL_TRANSPORTISTA,
        MAR_VEHICULO,
        MOD_VEHICULO,
        MAT_VEHICULO,
        COL_VEHICULO,
        MON_TRASLADO,
        COD_DTRASLADO,
        COD_FIERRO,
        CAN_GANADO
    } =req.body;
    console.log(req.body)
    const query =`

    CALL SP_MOD_PERMISOS_TRASLADO(?,'I',?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);
 
 `;
 mysqlConnection.query(query , [
        TABLA_NOMBRE,
        COD_PTRASLADO,
        FEC_REG_TRASLADO,
        FEC_TRASLADO,
        COD_PERSONA,
        DIR_ORIG_PTRASLADO,
        DIR_DEST_TRASLADO,
        NOM_TRASNPORTISTA,
        DNI_TRANSPORTISTA,
        TEL_TRANSPORTISTA,
        MAR_VEHICULO,
        MOD_VEHICULO,
        MAT_VEHICULO,
        COL_VEHICULO,
        MON_TRASLADO,
        COD_DTRASLADO,
        COD_FIERRO,
        CAN_GANADO
 ] , (err , rows , fields) =>{
    if(!err){
        res.json({status: 'Permiso de Traslado registrado'})
    }else{
        console.log(err);
    }
 });
});


//PUT
router.put('/PTRASLADO/ACTUALIZAR/' , (req , res)=>{
    const {
        TABLA_NOMBRE,
        COD_PTRASLADO,
        FEC_REG_TRASLADO,
        FEC_TRASLADO,
        COD_PERSONA,
        DIR_ORIG_PTRASLADO,
        DIR_DEST_TRASLADO,
        NOM_TRASNPORTISTA,
        DNI_TRANSPORTISTA,
        TEL_TRANSPORTISTA,
        MAR_VEHICULO,
        MOD_VEHICULO,
        MAT_VEHICULO,
        COL_VEHICULO,
        MON_TRASLADO,
        COD_DTRASLADO,
        COD_FIERRO,
        CAN_GANADO
        
    } =req.body;
    console.log(req.body)
    const query =`CALL SP_MOD_PERMISOS_TRASLADO(?,'U',?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);`;
    mysqlConnection.query(query , [
        TABLA_NOMBRE,
        COD_PTRASLADO,
        FEC_REG_TRASLADO,
        FEC_TRASLADO,
        COD_PERSONA,
        DIR_ORIG_PTRASLADO,
        DIR_DEST_TRASLADO,
        NOM_TRASNPORTISTA,
        DNI_TRANSPORTISTA,
        TEL_TRANSPORTISTA,
        MAR_VEHICULO,
        MOD_VEHICULO,
        MAT_VEHICULO,
        COL_VEHICULO,
        MON_TRASLADO,
        COD_DTRASLADO,
        COD_FIERRO,
        CAN_GANADO
        
        ] , (err , rows , fields) =>{
      if(!err){
         res.json({Status: 'Datos actualizados'});
      }else{
          console.log(err);
      }
     });
  });

//SELECT ONE
router.get('/PTRASLADO/GETONE/' , (req , res )=>{
  const {
        TABLA_NOMBRE,
        COD_PTRASLADO,
        FEC_REG_TRASLADO,
        FEC_TRASLADO,
        COD_PERSONA,
        DIR_ORIG_PTRASLADO,
        DIR_DEST_TRASLADO,
        NOM_TRASNPORTISTA,
        DNI_TRANSPORTISTA,
        TEL_TRANSPORTISTA,
        MAR_VEHICULO,
        MOD_VEHICULO,
        MAT_VEHICULO,
        COL_VEHICULO,
        MON_TRASLADO,
        COD_DTRASLADO,
        COD_FIERRO,
        CAN_GANADO
  } =req.body;
  console.log(req.body)
  const query =`

 CALL SP_MOD_PERMISOS_TRASLADO(?,'ST',?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);

`;
mysqlConnection.query(query , [
        TABLA_NOMBRE,
        COD_PTRASLADO,
        FEC_REG_TRASLADO,
        FEC_TRASLADO,
        COD_PERSONA,
        DIR_ORIG_PTRASLADO,
        DIR_DEST_TRASLADO,
        NOM_TRASNPORTISTA,
        DNI_TRANSPORTISTA,
        TEL_TRANSPORTISTA,
        MAR_VEHICULO,
        MOD_VEHICULO,
        MAT_VEHICULO,
        COL_VEHICULO,
        MON_TRASLADO,
        COD_DTRASLADO,
        COD_FIERRO,
        CAN_GANADO
] , (err , rows , fields) =>{
  if(!err){
    res.json(rows);
  }else{
    console.log(err);
  }
});
});


module.exports = router;