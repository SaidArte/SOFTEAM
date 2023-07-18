// constantes requerida en nuestro carpeta routes para datos del modulo Personas
const express = require  ('express');
const router = express.Router();
const jwt = require('jsonwebtoken');

const mysqlConnection= require('../database');

//METODO SELECT ALL (OBTIENE TODOS LOS DATOS DE LA TABLA A LA QUE QUEREMOS CONSULTAR).
router.get('/PERSONAS/GETALL' , (req , res )=>{
  jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
    if (err){
        res.sendStatus(403);
    }else {
        //LISTA DE LOS PARAMETROS QUE CONTIENE EL PROCEDIMIENTO ALMACENADO.
        const {
          TABLA_NOMBRE,
          COD_PERSONA,
          DNI_PERSONA,
          NOM_PERSONA,
          GEN_PERSONA,
          FEC_NAC_PERSONA,
          IMG_FIR_PERSONA,
          IMG_HUE_PERSONA,
          IMG_PERSONA,
          COD_DIRECCION,
          DES_DIRECCION,
          TIP_DIRECCION,
          COD_EMAIL,
          DIR_EMAIL,
          COD_TELEFONO,
          NUM_TELEFONO,
          TIP_TELEFONO,
          DES_TELEFONO,
          OPE_TELEFONO,
          IND_TELEFONO
      } =req.body;
      console.log(req.body)
      /*
      LLAMADO AL PROCEDIMIENTO ALMACENADO POR MEDIO DE UN CALL Y SUSTITULLENDO CADA
      PARAMETRO POR UN SIGNO DE INTERROGACIÓN (?).
      */
      const query =`

      CALL SP_MOD_PERSONA(?,'S',?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);

    `;
      mysqlConnection.query(query , [
        TABLA_NOMBRE,
        COD_PERSONA,
        DNI_PERSONA,
        NOM_PERSONA,
        GEN_PERSONA,
        FEC_NAC_PERSONA,
        IMG_FIR_PERSONA,
        IMG_HUE_PERSONA,
        IMG_PERSONA,
        COD_DIRECCION,
        DES_DIRECCION,
        TIP_DIRECCION,
        COD_EMAIL,
        DIR_EMAIL,
        COD_TELEFONO,
        NUM_TELEFONO,
        TIP_TELEFONO,
        DES_TELEFONO,
        OPE_TELEFONO,
        IND_TELEFONO
        //EL SIGUIENTE CÓDIGO SIRVE POR SI LLEGA A VER ALGUN ERROR.
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

// METODO POST (INSERTAR DATOS AL PROCEDIMIENTO ALMACENADO).
router.post('/PERSONAS/INSERTAR' , (req , res )=>{
  jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
    if (err){
        res.sendStatus(403);
    }else {
        //LISTA DE LOS PARAMETROS QUE CONTIENE EL PROCEDIMIENTO ALMACENADO.
          const {
            TABLA_NOMBRE,
            COD_PERSONA,
            DNI_PERSONA,
            NOM_PERSONA,
            GEN_PERSONA,
            FEC_NAC_PERSONA,
            IMG_FIR_PERSONA,
            IMG_HUE_PERSONA,
            IMG_PERSONA,
            COD_DIRECCION,
            DES_DIRECCION,
            TIP_DIRECCION,
            COD_EMAIL,
            DIR_EMAIL,
            COD_TELEFONO,
            NUM_TELEFONO,
            TIP_TELEFONO,
            DES_TELEFONO,
            OPE_TELEFONO,
            IND_TELEFONO
        } =req.body;
        console.log(req.body)
        /*
        LLAMADO AL PROCEDIMIENTO ALMACENADO POR MEDIO DE UN CALL Y SUSTITULLENDO CADA
        PARAMETRO POR UN SIGNO DE INTERROGACIÓN (?).
        */
        const query =`

        CALL SP_MOD_PERSONA(?,'I',?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);

      `;
      mysqlConnection.query(query , [
        TABLA_NOMBRE,
        COD_PERSONA,
        DNI_PERSONA,
        NOM_PERSONA,
        GEN_PERSONA,
        FEC_NAC_PERSONA,
        IMG_FIR_PERSONA,
        IMG_HUE_PERSONA,
        IMG_PERSONA,
        COD_DIRECCION,
        DES_DIRECCION,
        TIP_DIRECCION,
        COD_EMAIL,
        DIR_EMAIL,
        COD_TELEFONO,
        NUM_TELEFONO,
        TIP_TELEFONO,
        DES_TELEFONO,
        OPE_TELEFONO,
        IND_TELEFONO
        /*
        MOSTRAR MENSAJE SI EL PROCEDIMIENTO FUE REALIZADO CORRECTAMENTE
        Ó TUVO ALGUN ERROR EN EL PROCESO.
        */
      ] , (err , rows , fields) =>{
        if(!err){
            res.json({status: 'Persona registrada'})
        }else{
            console.log(err);
        }
      });
    }
  });
});

// METODO SELECT ONE (OBTENER LOS DATOS DE UN REGISTRO DE LA TABLA SELECCIONADA)
router.get('/PERSONAS/GETONE/' , (req , res )=>{
  jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
    if (err){
        res.sendStatus(403);
    }else {
        //LISTA DE LOS PARAMETROS QUE CONTIENE EL PROCEDIMIENTO ALMACENADO.
        const {
          TABLA_NOMBRE,
          COD_PERSONA,
          DNI_PERSONA,
          NOM_PERSONA,
          GEN_PERSONA,
          FEC_NAC_PERSONA,
          IMG_FIR_PERSONA,
          IMG_HUE_PERSONA,
          IMG_PERSONA,
          COD_DIRECCION,
          DES_DIRECCION,
          TIP_DIRECCION,
          COD_EMAIL,
          DIR_EMAIL,
          COD_TELEFONO,
          NUM_TELEFONO,
          TIP_TELEFONO,
          DES_TELEFONO,
          OPE_TELEFONO,
          IND_TELEFONO
      } =req.body;
      console.log(req.body)
      /*
        LLAMADO AL PROCEDIMIENTO ALMACENADO POR MEDIO DE UN CALL Y SUSTITULLENDO CADA
        PARAMETRO POR UN SIGNO DE INTERROGACIÓN (?).
      */
      const query =`

      CALL SP_MOD_PERSONA(?,'ST',?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);

      `;
      mysqlConnection.query(query , [
      TABLA_NOMBRE,
      COD_PERSONA,
      DNI_PERSONA,
      NOM_PERSONA,
      GEN_PERSONA,
      FEC_NAC_PERSONA,
      IMG_FIR_PERSONA,
      IMG_HUE_PERSONA,
      IMG_PERSONA,
      COD_DIRECCION,
      DES_DIRECCION,
      TIP_DIRECCION,
      COD_EMAIL,
      DIR_EMAIL,
      COD_TELEFONO,
      NUM_TELEFONO,
      TIP_TELEFONO,
      DES_TELEFONO,
      OPE_TELEFONO,
      IND_TELEFONO
      //EL SIGUIENTE CÓDIGO SIRVE POR SI LLEGA A VER ALGUN ERROR.
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

//METODO PUT (ACTUALIZAR LOS DATOS DE LA TABLA SELECCIONADA).
router.put('/PERSONAS/ACTUALIZAR/' , (req , res )=>{
  jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
    if (err){
        res.sendStatus(403);
    }else {
        //LISTA DE LOS PARAMETROS QUE CONTIENE EL PROCEDIMIENTO ALMACENADO.
        const {
          TABLA_NOMBRE,
          COD_PERSONA,
          DNI_PERSONA,
          NOM_PERSONA,
          GEN_PERSONA,
          FEC_NAC_PERSONA,
          IMG_FIR_PERSONA,
          IMG_HUE_PERSONA,
          IMG_PERSONA,
          COD_DIRECCION,
          DES_DIRECCION,
          TIP_DIRECCION,
          COD_EMAIL,
          DIR_EMAIL,
          COD_TELEFONO,
          NUM_TELEFONO,
          TIP_TELEFONO,
          DES_TELEFONO,
          OPE_TELEFONO,
          IND_TELEFONO
      } =req.body;
      console.log(req.body)
      /*
        LLAMADO AL PROCEDIMIENTO ALMACENADO POR MEDIO DE UN CALL Y SUSTITULLENDO CADA
        PARAMETRO POR UN SIGNO DE INTERROGACIÓN (?).
      */
      const query =`

      CALL SP_MOD_PERSONA(?,'U',?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);

      `;
      mysqlConnection.query(query , [
      TABLA_NOMBRE,
      COD_PERSONA,
      DNI_PERSONA,
      NOM_PERSONA,
      GEN_PERSONA,
      FEC_NAC_PERSONA,
      IMG_FIR_PERSONA,
      IMG_HUE_PERSONA,
      IMG_PERSONA,
      COD_DIRECCION,
      DES_DIRECCION,
      TIP_DIRECCION,
      COD_EMAIL,
      DIR_EMAIL,
      COD_TELEFONO,
      NUM_TELEFONO,
      TIP_TELEFONO,
      DES_TELEFONO,
      OPE_TELEFONO,
      IND_TELEFONO
      /*
        MOSTRAR MENSAJE SI EL PROCEDIMIENTO FUE REALIZADO CORRECTAMENTE
        Ó TUVO ALGUN ERROR EN EL PROCESO.
        */
      ] , (err , rows , fields) =>{
        if(!err){
            res.json({status: 'Datos Actualizados'})
        }else{
            console.log(err);
        }
      });
    }
  });
});

module.exports = router;