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
      /*
      LLAMADO AL PROCEDIMIENTO ALMACENADO POR MEDIO DE UN CALL Y SUSTITULLENDO CADA
      PARAMETRO POR UN SIGNO DE INTERROGACIÓN (?).
      */
      const query =`SELECT a.COD_PERSONA, a.DNI_PERSONA, a.NOM_PERSONA, a.GEN_PERSONA, a.FEC_NAC_PERSONA, a.IMG_PERSONA,
      b.COD_DIRECCION, b.DES_DIRECCION, b.TIP_DIRECCION, c.COD_EMAIL, c.DIR_EMAIL,
      d.COD_TELEFONO, d.NUM_TELEFONO, d.TIP_TELEFONO, d.DES_TELEFONO, d.OPE_TELEFONO, d.IND_TELEFONO
      FROM PERSONAS a
      LEFT JOIN DIRECCIONES b ON a.COD_PERSONA = b.COD_PERSONA
      LEFT JOIN EMAILS c ON a.COD_PERSONA = c.COD_PERSONA
      LEFT JOIN TELEFONOS d ON a.COD_PERSONA = d.COD_PERSONA
      ORDER BY COD_PERSONA;`;
      mysqlConnection.query(query, (err , rows , fields) =>{
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
          try {
              const {
                DNI_PERSONA,
                NOM_PERSONA,
                GEN_PERSONA,
                FEC_NAC_PERSONA,
                IMG_PERSONA,
                DES_DIRECCION,
                TIP_DIRECCION,
                DIR_EMAIL,
                NUM_TELEFONO,
                TIP_TELEFONO,
                DES_TELEFONO,
                OPE_TELEFONO,
                IND_TELEFONO             
                  } =req.body;
                  console.log(req.body)
                  const query =`CALL SP_MOD_PERSONA('PERSONAS', 'I', '1', '${DNI_PERSONA}', '${NOM_PERSONA}', '${GEN_PERSONA}','${FEC_NAC_PERSONA}','${IMG_PERSONA}', '1', '${DES_DIRECCION}', '${TIP_DIRECCION}', '1', '${DIR_EMAIL}', '1', '${NUM_TELEFONO}', '${TIP_TELEFONO}', '${DES_TELEFONO}', '${OPE_TELEFONO}', '${IND_TELEFONO}');`;
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

// METODO SELECT ONE (OBTENER LOS DATOS DE UN REGISTRO DE LA TABLA SELECCIONADA)
router.post('/PERSONAS/GETONE' , (req , res )=>{
  jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
    if (err){
        res.sendStatus(403);
    }else {
      try {
          const {
            COD_PERSONA
              } =req.body;
              console.log(req.body)
              const query =`SELECT * FROM PERSONAS WHERE COD_PERSONA = '${COD_PERSONA}';`;
              mysqlConnection.query(query , (err , rows , fields) =>{
                  if(!err){
                  res.json(rows);
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

//METODO PUT (ACTUALIZAR LOS DATOS DE LA TABLA SELECCIONADA).
router.put('/PERSONAS/ACTUALIZAR/:COD_PERSONA' , (req , res )=>{
  jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
    if (err){
        res.sendStatus(403);
    }else {
        //LISTA DE LOS PARAMETROS QUE CONTIENE EL PROCEDIMIENTO ALMACENADO.
        try {
          const {
          DNI_PERSONA,
          NOM_PERSONA,
          GEN_PERSONA,
          FEC_NAC_PERSONA,
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
          IND_TELEFONO,
              } =req.body;
              const { COD_PERSONA } = req.params;
              console.log(req.body)
              const query =`CALL SP_MOD_PERSONA('PERSONAS', 'U', '${COD_PERSONA}', '${DNI_PERSONA}', '${NOM_PERSONA}', '${GEN_PERSONA}','${FEC_NAC_PERSONA}','${IMG_PERSONA}','${COD_DIRECCION}', '${DES_DIRECCION}', '${TIP_DIRECCION}', '${COD_EMAIL}', '${DIR_EMAIL}','${COD_TELEFONO}', '${NUM_TELEFONO}', '${TIP_TELEFONO}', '${DES_TELEFONO}', '${OPE_TELEFONO}', '${IND_TELEFONO}');`;
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


module.exports = router;