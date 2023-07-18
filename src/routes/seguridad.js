// constantes requerida en nuestro carpeta routes para datos del Modulo Seguridad
const express = require  ('express');
const router = express.Router();

const mysqlConnection= require('../database');

//SELECT ALL
router.get('/SEGURIDAD/GETALL' , (req , res )=>{
    const {
        TABLA_NOMBRE,
        COD_ROL,
        NOM_ROL,
        DES_ROL,
        COD_USUARIO,  
        COD_PERSONA, 
        PAS_USUARIO,
        IND_USUARIO, 
        FEC_ULTIMO_CAMBIO,
        FEC_ULTIMO_ACCESO,
        LIM_INTENTOS,
        NUM_INTENTOS_FALLIDOS,
        FEC_VENCIMIENTO,
        COD_PREGUNTA,
        PREGUNTA,
        RESPUESTA,
        COD_HIST,
        COD_OBJETO,
        OBJETO,
        DES_OBJETO,
        TIP_OBJETO,
        PRM_INSERTAR,
        PRM_ACTUALIZAR,
        PRM_CONSULTAR,
        COD_MANTENIMIENTO,
        FEC_HR_MANTENIMIENTO,
        TIP_MANTENIMIENTO,
        DES_MANTENIMIENTO,
        MON_MANTENIMIENTO
    } =req.body;
    console.log(req.body)
    const query =`CALL SP_MOD_SEGURIDAD(?,'S',?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);`;
    mysqlConnection.query(query , [
        TABLA_NOMBRE,
        COD_ROL,
        NOM_ROL,
        DES_ROL,
        COD_USUARIO,  
        COD_PERSONA, 
        PAS_USUARIO,
        IND_USUARIO, 
        FEC_ULTIMO_CAMBIO,
        FEC_ULTIMO_ACCESO,
        LIM_INTENTOS,
        NUM_INTENTOS_FALLIDOS,
        FEC_VENCIMIENTO,
        COD_PREGUNTA,
        PREGUNTA,
        RESPUESTA,
        COD_HIST,
        COD_OBJETO,
        OBJETO,
        DES_OBJETO,
        TIP_OBJETO,
        PRM_INSERTAR,
        PRM_ACTUALIZAR,
        PRM_CONSULTAR,
        COD_MANTENIMIENTO,
        FEC_HR_MANTENIMIENTO,
        TIP_MANTENIMIENTO,
        DES_MANTENIMIENTO,
        MON_MANTENIMIENTO
    ] , (err , rows , fields) =>{
        if(!err){
        res.json(rows);
        }else{
        console.log(err);
        }
    });
});

//POST
router.post('/SEGURIDAD/INSERTAR' , (req , res )=>{
    const {
        TABLA_NOMBRE,
        COD_ROL,
        NOM_ROL,
        DES_ROL,
        COD_USUARIO,  
        COD_PERSONA, 
        PAS_USUARIO,
        IND_USUARIO, 
        FEC_ULTIMO_CAMBIO,
        FEC_ULTIMO_ACCESO,
        LIM_INTENTOS,
        NUM_INTENTOS_FALLIDOS,
        FEC_VENCIMIENTO,
        COD_PREGUNTA,
        PREGUNTA,
        RESPUESTA,
        COD_HIST,
        COD_OBJETO,
        OBJETO,
        DES_OBJETO,
        TIP_OBJETO,
        PRM_INSERTAR,
        PRM_ACTUALIZAR,
        PRM_CONSULTAR,
        COD_MANTENIMIENTO,
        FEC_HR_MANTENIMIENTO,
        TIP_MANTENIMIENTO,
        DES_MANTENIMIENTO,
        MON_MANTENIMIENTO
    } =req.body;
    console.log(req.body)
    const query =`CALL SP_MOD_SEGURIDAD(?,'I',?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);`;
    mysqlConnection.query(query , [
        TABLA_NOMBRE,
        COD_ROL,
        NOM_ROL,
        DES_ROL,
        COD_USUARIO,  
        COD_PERSONA, 
        PAS_USUARIO,
        IND_USUARIO, 
        FEC_ULTIMO_CAMBIO,
        FEC_ULTIMO_ACCESO,
        LIM_INTENTOS,
        NUM_INTENTOS_FALLIDOS,
        FEC_VENCIMIENTO,
        COD_PREGUNTA,
        PREGUNTA,
        RESPUESTA,
        COD_HIST,
        COD_OBJETO,
        OBJETO,
        DES_OBJETO,
        TIP_OBJETO,
        PRM_INSERTAR,
        PRM_ACTUALIZAR,
        PRM_CONSULTAR,
        COD_MANTENIMIENTO,
        FEC_HR_MANTENIMIENTO,
        TIP_MANTENIMIENTO,
        DES_MANTENIMIENTO,
        MON_MANTENIMIENTO
 ] , (err , rows , fields) =>{
    if(!err){
        res.json({status: 'Registro guardado correctamente'})
    }else{
        console.log(err);
    }
 });
});

//SELECT ONE
router.get('/SEGURIDAD/GETONE/' , (req , res )=>{
    const {
        TABLA_NOMBRE,
        COD_ROL,
        NOM_ROL,
        DES_ROL,
        COD_USUARIO,  
        COD_PERSONA, 
        PAS_USUARIO,
        IND_USUARIO, 
        FEC_ULTIMO_CAMBIO,
        FEC_ULTIMO_ACCESO,
        LIM_INTENTOS,
        NUM_INTENTOS_FALLIDOS,
        FEC_VENCIMIENTO,
        COD_PREGUNTA,
        PREGUNTA,
        RESPUESTA,
        COD_HIST,
        COD_OBJETO,
        OBJETO,
        DES_OBJETO,
        TIP_OBJETO,
        PRM_INSERTAR,
        PRM_ACTUALIZAR,
        PRM_CONSULTAR,
        COD_MANTENIMIENTO,
        FEC_HR_MANTENIMIENTO,
        TIP_MANTENIMIENTO,
        DES_MANTENIMIENTO,
        MON_MANTENIMIENTO
    } =req.body;
    console.log(req.body)
    const query =`CALL SP_MOD_SEGURIDAD(?,'ST',?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);`;
    mysqlConnection.query(query , [
        TABLA_NOMBRE,
        COD_ROL,
        NOM_ROL,
        DES_ROL,
        COD_USUARIO,  
        COD_PERSONA, 
        PAS_USUARIO,
        IND_USUARIO, 
        FEC_ULTIMO_CAMBIO,
        FEC_ULTIMO_ACCESO,
        LIM_INTENTOS,
        NUM_INTENTOS_FALLIDOS,
        FEC_VENCIMIENTO,
        COD_PREGUNTA,
        PREGUNTA,
        RESPUESTA,
        COD_HIST,
        COD_OBJETO,
        OBJETO,
        DES_OBJETO,
        TIP_OBJETO,
        PRM_INSERTAR,
        PRM_ACTUALIZAR,
        PRM_CONSULTAR,
        COD_MANTENIMIENTO,
        FEC_HR_MANTENIMIENTO,
        TIP_MANTENIMIENTO,
        DES_MANTENIMIENTO,
        MON_MANTENIMIENTO
] , (err , rows , fields) =>{
  if(!err){
    res.json(rows);
  }else{
    console.log(err);
  }
});
});

//PUT
router.put('/SEGURIDAD/ACTUALIZAR/' , (req , res)=>{
    const {
        TABLA_NOMBRE,
        COD_ROL,
        NOM_ROL,
        DES_ROL,
        COD_USUARIO,  
        COD_PERSONA, 
        PAS_USUARIO,
        IND_USUARIO, 
        FEC_ULTIMO_CAMBIO,
        FEC_ULTIMO_ACCESO,
        LIM_INTENTOS,
        NUM_INTENTOS_FALLIDOS,
        FEC_VENCIMIENTO,
        COD_PREGUNTA,
        PREGUNTA,
        RESPUESTA,
        COD_HIST,
        COD_OBJETO,
        OBJETO,
        DES_OBJETO,
        TIP_OBJETO,
        PRM_INSERTAR,
        PRM_ACTUALIZAR,
        PRM_CONSULTAR,
        COD_MANTENIMIENTO,
        FEC_HR_MANTENIMIENTO,
        TIP_MANTENIMIENTO,
        DES_MANTENIMIENTO,
        MON_MANTENIMIENTO
    } =req.body;
    console.log(req.body)
    const query =`CALL SP_MOD_SEGURIDAD(?,'U',?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);`;
    mysqlConnection.query(query , [
        TABLA_NOMBRE,
        COD_ROL,
        NOM_ROL,
        DES_ROL,
        COD_USUARIO,  
        COD_PERSONA, 
        PAS_USUARIO,
        IND_USUARIO, 
        FEC_ULTIMO_CAMBIO,
        FEC_ULTIMO_ACCESO,
        LIM_INTENTOS,
        NUM_INTENTOS_FALLIDOS,
        FEC_VENCIMIENTO,
        COD_PREGUNTA,
        PREGUNTA,
        RESPUESTA,
        COD_HIST,
        COD_OBJETO,
        OBJETO,
        DES_OBJETO,
        TIP_OBJETO,
        PRM_INSERTAR,
        PRM_ACTUALIZAR,
        PRM_CONSULTAR,
        COD_MANTENIMIENTO,
        FEC_HR_MANTENIMIENTO,
        TIP_MANTENIMIENTO,
        DES_MANTENIMIENTO,
        MON_MANTENIMIENTO 
        ] , (err , rows , fields) =>{
      if(!err){
         res.json({Status: 'Datos actualizados'});
      }else{
          console.log(err);
      }
     });
  });

  //PUT PASSWORD
router.put('/SEGURIDAD/ACTUALIZAR-PASS/' , (req , res)=>{
    const {
        COD_ROL,
        NOM_ROL,
        DES_ROL,
        COD_USUARIO,  
        COD_PERSONA, 
        PAS_USUARIO,
        IND_USUARIO, 
        FEC_ULTIMO_CAMBIO,
        FEC_ULTIMO_ACCESO,
        LIM_INTENTOS,
        NUM_INTENTOS_FALLIDOS,
        FEC_VENCIMIENTO,
        COD_PREGUNTA,
        PREGUNTA,
        RESPUESTA,
        COD_HIST,
        COD_OBJETO,
        OBJETO,
        DES_OBJETO,
        TIP_OBJETO,
        PRM_INSERTAR,
        PRM_ACTUALIZAR,
        PRM_CONSULTAR,
        COD_MANTENIMIENTO,
        FEC_HR_MANTENIMIENTO,
        TIP_MANTENIMIENTO,
        DES_MANTENIMIENTO,
        MON_MANTENIMIENTO
    } =req.body;
    console.log(req.body)
    const query =`CALL SP_MOD_SEGURIDAD('TBL_MS_USUARIOS','C',?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);`;
    mysqlConnection.query(query , [
        COD_ROL,
        NOM_ROL,
        DES_ROL,
        COD_USUARIO,  
        COD_PERSONA, 
        PAS_USUARIO,
        IND_USUARIO, 
        FEC_ULTIMO_CAMBIO,
        FEC_ULTIMO_ACCESO,
        LIM_INTENTOS,
        NUM_INTENTOS_FALLIDOS,
        FEC_VENCIMIENTO,
        COD_PREGUNTA,
        PREGUNTA,
        RESPUESTA,
        COD_HIST,
        COD_OBJETO,
        OBJETO,
        DES_OBJETO,
        TIP_OBJETO,
        PRM_INSERTAR,
        PRM_ACTUALIZAR,
        PRM_CONSULTAR,
        COD_MANTENIMIENTO,
        FEC_HR_MANTENIMIENTO,
        TIP_MANTENIMIENTO,
        DES_MANTENIMIENTO,
        MON_MANTENIMIENTO 
        ] , (err , rows , fields) =>{
      if(!err){
         res.json({Status: 'Contraseña actualizada'});
      }else{
          console.log(err);
      }
     });
  });

module.exports = router;