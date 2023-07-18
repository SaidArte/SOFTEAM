// constantes requerida en nuestro carpeta routes para el modulo de Permisos Traslado
const express = require  ('express');
const router = express.Router();

const mysqlConnection= require('../database');
//METODO SELECT ALL (OBTENER TODOS LOS DATOS DE UNA TABLA)
router.get('/PTRASLADO/GETALL' , (req , res )=>{
  // Lista de parametros que contiene el Procedimiento Almacenado
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
    /*Esta parte del codigo es la que hace el llamado al Procedimiento Almacenado,
    cada signo de interrogacion (?) representa cada uno de los parametros
    */
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
        /*Esta parte de código es la que sirve ya sea para mostrar algun error 
        o mostrar las filas o datos que estamos queriendo operar.*/
 ] , (err , rows , fields) =>{
    if(!err){
      res.json(rows);
    }else{
      console.log(err);
    }
 });
});
//METODO POST(INSERTAR)
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


//METODO PUT (ACTUALIZAR)
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

//METODO SELECT ONE (OBTENER LOS DATOS DE UN REGISTRO DE UNA TABLA)
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