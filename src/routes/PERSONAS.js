// constantes requerida en nuestro carpeta routes para datos del modulo Personas
const express = require  ('express');
const router = express.Router();

const mysqlConnection= require('../database');

//SELECT ALL
router.get('/PERSONAS/GETALL' , (req , res )=>{
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
 ] , (err , rows , fields) =>{
    if(!err){
      res.json(rows);
    }else{
      console.log(err);
    }
 });
});

//POST
router.post('/PERSONAS/INSERTAR' , (req , res )=>{
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
 ] , (err , rows , fields) =>{
    if(!err){
        res.json({status: 'Persona registrada'})
    }else{
        console.log(err);
    }
 });
});

//SELECT ONE
router.get('/PERSONAS/GETONE/' , (req , res )=>{
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
] , (err , rows , fields) =>{
  if(!err){
    res.json(rows);
  }else{
    console.log(err);
  }
});
});

//PUT
router.put('/PERSONAS/ACTUALIZAR/' , (req , res )=>{
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
  //const {COD_PERSONA} = req.params;
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
] , (err , rows , fields) =>{
  if(!err){
      res.json({status: 'Datos Actualizados'})
  }else{
      console.log(err);
  }
});
});

module.exports = router;