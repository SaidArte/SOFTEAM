// constantes requerida en nuestro carpeta routes para datos del modulo Fierros
const express = require  ('express');
const router = express.Router();
const jwt = require('jsonwebtoken');

const mysqlConnection= require('../database');

//Ruta para la obtención de un token y datos del usuario.
router.post('/api/login', (req, res) => {
    const { NOM_USUARIO, PAS_USUARIO } = req.body;
  
    // Consulta SQL para verificar si las credenciales del usuario son correctas.
    const query = `SELECT a.COD_USUARIO, a.NOM_USUARIO, b.NOM_PERSONA, c.NOM_ROL, a.IND_USUARIO, a.FEC_ULTIMO_ACCESO, a.LIM_INTENTOS, a.NUM_INTENTOS_FALLIDOS, a.FEC_VENCIMIENTO FROM TBL_MS_USUARIOS a, PERSONAS  b, TBL_MS_ROLES c WHERE a.COD_PERSONA = b.COD_PERSONA AND a.COD_ROL = c.COD_ROL AND NOM_USUARIO = '${NOM_USUARIO}' AND PAS_USUARIO = sha1('${PAS_USUARIO}');`;
    mysqlConnection.query(query, (error, results) => {
        if (error) {
            res.status(500).json({ error: 'Error interno del servidor' });
        } else {
            if (results.length > 0) {
                if (results[0].IND_USUARIO === 'ACTIVO') {
                    const token = jwt.sign({NOM_USUARIO}, 'my_ultrasecret_token');
                    res.json({ message: 'Inicio de sesión exitoso', user: results[0], token: token});
                } else {
                    res.status(401).json({ error_type: 'inactive', message: 'Usuario inactivo' });
                }
            } else {
                res.status(401).json({ error_type: 'invalid', message: 'Credenciales inválidas' });
            }
        }
    });
});

//Cambia la contraseña del usuario.
router.put('/SEGURIDAD/ACTUALIZAR_PASS_USUARIOS' , (req , res )=>{
    try {
        const {
                COD_USUARIO,
                PAS_USUARIO
            } =req.body;
            console.log(req.body)
            const query =`CALL SP_MOD_SEGURIDAD('TBL_MS_USUARIOS', 'C', '1', 'Admins', '1', '${COD_USUARIO}', '1', 'nombreusuario','${PAS_USUARIO}','ACTIVO', '0', '2023-07-01', '1', '¿Nombre de su primer mascota??', 'CAMPEON', '1', '1', '1', '1', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
            mysqlConnection.query(query , (err , rows , fields) =>{
            if(!err){
                res.json({status: 'Registro actualizado correctamente'})
            }else{
                console.log(err);
            }
        });
    } catch (error) {
        console.log(error);
        res.status(400).json({ error: 'Datos inválidos'});
    }
});

//Gestiona los intentos fallidos de inicio de sesión.
router.put('/SEGURIDAD/ACTUALIZAR_INT_FALLIDOS' , (req , res )=>{
    try {
        const {
                COD_USUARIO,
                NUM_INTENTOS_FALLIDOS
            } =req.body;
            console.log(req.body)
            const query =`CALL SP_MOD_SEGURIDAD('TBL_MS_USUARIOS', 'F', '1', 'Admins', '1', '${COD_USUARIO}', '1', 'nombreusuario','pass','ACTIVO', '${NUM_INTENTOS_FALLIDOS}', '2023-07-01', '1', '¿Nombre de su primer mascota??', 'CAMPEON', '1', '1', '1', '1', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
            mysqlConnection.query(query , (err , rows , fields) =>{
            if(!err){
                res.json({status: 'Registro actualizado correctamente'})
            }else{
                console.log(err);
            }
        });
    } catch (error) {
        console.log(error);
        res.status(400).json({ error: 'Datos inválidos'});
    }
});

//Ingresa la fecha de acceso a cada usuario.
router.put('/SEGURIDAD/ACTUALIZAR_FECHA_ACCESO' , (req , res )=>{
    try {
        const {
                COD_USUARIO
            } =req.body;
            console.log(req.body)
            const query =`CALL SP_MOD_SEGURIDAD('TBL_MS_USUARIOS', 'A', '1', 'Admins', '1', '${COD_USUARIO}', '1', 'nombreusuario','pass','ACTIVO', '0', '2023-07-01', '1', '¿Nombre de su primer mascota??', 'CAMPEON', '1', '1', '1', '1', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
            mysqlConnection.query(query , (err , rows , fields) =>{
            if(!err){
                res.json({status: 'Registro actualizado correctamente'})
            }else{
                console.log(err);
            }
        });
    } catch (error) {
        console.log(error);
        res.status(400).json({ error: 'Datos inválidos'});
    }
});

//Actualiza la fecha de vencimiento de un usuario.
router.put('/SEGURIDAD/ACTUALIZAR_FECHA_VENCIMIENTO' , (req , res )=>{
    try {
        const {
                COD_USUARIO
            } =req.body;
            console.log(req.body)
            const query =`CALL SP_MOD_SEGURIDAD('TBL_MS_USUARIOS', 'V', '1', 'Admins', '1', '${COD_USUARIO}', '1', 'nombreusuario','pass','ACTIVO', '0', '2023-07-01', '1', '¿Nombre de su primer mascota??', 'CAMPEON', '1', '1', '1', '1', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
            mysqlConnection.query(query , (err , rows , fields) =>{
            if(!err){
                res.json({status: 'Registro actualizado correctamente'})
            }else{
                console.log(err);
            }
        });
    } catch (error) {
        console.log(error);
        res.status(400).json({ error: 'Datos inválidos'});
    }
}); //Uso para pruebas, por lo regular se actualiza automáticamente luego de un cambio de contraseña exitoso.

//Esta API llama a un determinado usuario.
router.post('/SEGURIDAD/GETONE_USUARIOS' , (req , res )=>{
    try {
        const {
                NOM_USUARIO
            } =req.body;
            console.log(req.body)
            const query =`SELECT a.COD_USUARIO, a.NOM_USUARIO, b.NOM_PERSONA, c.NOM_ROL, a.IND_USUARIO, a.FEC_ULTIMO_ACCESO, a.LIM_INTENTOS, a.NUM_INTENTOS_FALLIDOS, a.FEC_VENCIMIENTO FROM TBL_MS_USUARIOS a, PERSONAS  b, TBL_MS_ROLES c WHERE a.COD_PERSONA = b.COD_PERSONA AND a.COD_ROL = c.COD_ROL AND a.NOM_USUARIO = '${NOM_USUARIO}';`;
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
});

//Inserta las respuestas correspondientes a cada usuario en su primer ingreso.
router.post('/SEGURIDAD/INSERTAR_RESPUESTAS' , (req , res )=>{
    try {
        const {
            COD_USUARIO,
            PREGUNTA,
            RESPUESTA
            } =req.body;
            console.log(req.body)
            const query =`CALL SP_MOD_SEGURIDAD('TBL_MS_PREGUNTAS_USUARIO', 'I', '1', 'Admins', '1', '${COD_USUARIO}', '1', 'nombreusuario','1','ACTIVO', '0', '2023-07-01', '1', '${PREGUNTA}', '${RESPUESTA}', '1', '1', '1', '1', 'S', 'S', 'N', '1', '2023-07-01 16:06:00', 'Mantenimiento predictivo', '1', '100');`;
            mysqlConnection.query(query , (err , rows , fields) =>{
            if(!err){
                res.json({status: 'Respuesta de seguridad ingresada correctamente'})
            }else{
                console.log(err);
            }
        });
    } catch (error) {
        console.log(error);
        res.status(400).json({ error: 'Datos inválidos'});
    }
});

//Esta API busca la pregunta de seguridad seleccionada por un usuario.
router.post('/SEGURIDAD/GETONE_PREGUNTA_USUARIOS' , (req , res )=>{
    try {
            const {
                NOM_USUARIO
            } =req.body;
            console.log(req.body)
            const query =`SELECT b.PREGUNTA FROM TBL_MS_PREGUNTAS_USUARIO a,  TBL_MS_PREGUNTAS b , TBL_MS_USUARIOS c WHERE a.COD_PREGUNTA = b.COD_PREGUNTA AND a.COD_USUARIO = c.COD_USUARIO AND c.NOM_USUARIO = '${NOM_USUARIO}';`;
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
        
});

//Busca el código del usuario de su correspondiente nombre de usuario y respuesta, según su respuesta de seguridad.
router.post('/SEGURIDAD/GETONE_RESPUESTAS' , (req , res )=>{
    try {
        const {
                NOM_USUARIO,
                RESPUESTA
            } =req.body;
            console.log(req.body)
            const query =`SELECT a.COD_USUARIO FROM TBL_MS_USUARIOS a,  TBL_MS_PREGUNTAS_USUARIO b WHERE a.COD_USUARIO = b.COD_USUARIO AND b.RESPUESTA = sha1('${RESPUESTA}') AND a.NOM_USUARIO = '${NOM_USUARIO}';`;
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
});



module.exports = router;