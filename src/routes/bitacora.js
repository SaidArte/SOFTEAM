// Constantes requerida en nuestro carpeta routes.
const express = require  ('express');
const router = express.Router();
const jwt = require('jsonwebtoken');

const mysqlConnection= require('../database');

//GET (select para buscar todos los registros de la tabla de bitacora).
router.get('/SEGURIDAD/GETALL_BITACORA' , (req , res )=>{
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => { //Verifica si el token es el correcto.
        if (err){
            res.sendStatus(403);
        }else {
             const query =`SELECT * FROM BITACORA;`;
             mysqlConnection.query(query , (err , rows , fields) =>{
                 if(!err){
                 res.json(rows);
                 }else{
                 console.log(err);
                 }
             });
        }
     });
});

 //API para crear los triggers de la bitácora.
 router.post('/SEGURIDAD/CREAR-TRIGGERS-USUARIOS', (req, res) => {
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => { //Verifica si el token es el correcto.
        if (err){
            res.sendStatus(403);
        }else {
            const nombreTabla = 'TBL_MS_USUARIOS';

            const triggerQueries = [
                `
                CREATE TRIGGER IF NOT EXISTS TRG_INS_BITACORA_${nombreTabla}
                AFTER INSERT ON ${nombreTabla}
                FOR EACH ROW
                BEGIN
                    INSERT INTO BITACORA(TIP_EVENTO, USUARIO_DB, FEC_REG_TIP_EVENTO, NOM_TABLA, MOD_TABLA, IND_TABLA, 
                    REG1, REG3, REG5, REG7, REG9, REG11, REG13, REG15, REG17)
                    VALUES ('INSERT', CURRENT_USER(), NOW(), '${nombreTabla}', 'SEGURIDAD', 'ACTIVA', 
                    NEW.COD_USUARIO, NEW.COD_PERSONA, NEW.NOM_USUARIO, NEW.COD_ROL, NEW.IND_USUARIO, 
                    NEW.FEC_ULTIMO_ACCESO, NEW.LIM_INTENTOS, NEW.NUM_INTENTOS_FALLIDOS, NEW.FEC_VENCIMIENTO);
                END;
                `,
                `
                CREATE TRIGGER IF NOT EXISTS TRG_UPD_BITACORA_${nombreTabla}
                AFTER UPDATE ON ${nombreTabla}
                FOR EACH ROW
                BEGIN
                    IF OLD.PAS_USUARIO = NEW.PAS_USUARIO THEN
                        INSERT INTO BITACORA(TIP_EVENTO, USUARIO_DB, FEC_REG_TIP_EVENTO, NOM_TABLA, MOD_TABLA, IND_TABLA, 
                        REG1, REG2, REG3, REG4, REG5, REG6, REG7, REG8, REG9, REG10, 
                        REG11, REG12, REG13, REG14, REG15, REG16, REG17, REG18)
                        VALUES ('UPDATE', CURRENT_USER(), NOW(), '${nombreTabla}', 'SEGURIDAD', 'ACTIVA',
                        NEW.COD_USUARIO, OLD.COD_USUARIO, NEW.COD_PERSONA, OLD.COD_PERSONA, NEW.NOM_USUARIO, OLD.NOM_USUARIO,
                        NEW.COD_ROL, OLD.COD_ROL, NEW.IND_USUARIO, OLD.IND_USUARIO, NEW.FEC_ULTIMO_ACCESO, OLD.FEC_ULTIMO_ACCESO,
                        NEW.LIM_INTENTOS, OLD.LIM_INTENTOS, NEW.NUM_INTENTOS_FALLIDOS, OLD.NUM_INTENTOS_FALLIDOS, 
                        NEW.FEC_VENCIMIENTO, OLD.FEC_VENCIMIENTO);
                    END IF;
                END;
                `,
                `
                CREATE TRIGGER IF NOT EXISTS TRG_DLT_BITACORA_${nombreTabla}
                AFTER DELETE ON ${nombreTabla}
                FOR EACH ROW
                BEGIN
                INSERT INTO BITACORA(TIP_EVENTO, USUARIO_DB, FEC_REG_TIP_EVENTO, NOM_TABLA, MOD_TABLA, IND_TABLA, 
                    REG2, REG4, REG6, REG8, REG10, REG12, REG14, REG16, REG18)
                    VALUES ('DELETE', CURRENT_USER(), NOW(), '${nombreTabla}', 'SEGURIDAD', 'ACTIVA',
                    OLD.COD_USUARIO, OLD.COD_PERSONA, OLD.NOM_USUARIO, OLD.COD_ROL, OLD.IND_USUARIO, OLD.FEC_ULTIMO_ACCESO, OLD.LIM_INTENTOS, OLD.NUM_INTENTOS_FALLIDOS, OLD.FEC_VENCIMIENTO);
                END;
                `,
            ];

            // Realiza las consultas para crear los tres triggers
            let successfulCount = 0;
            triggerQueries.forEach((triggerQuery) => {
                mysqlConnection.query(triggerQuery, (err) => {
                    if (!err) {
                        successfulCount++;
                        if (successfulCount === triggerQueries.length) {
                            console.log('Triggers creados con éxito.');
                            res.sendStatus(200);
                        }
                    } else {
                        console.error('Error al crear los triggers:', err);
                        res.sendStatus(500);
                    }
                });
            });
        }
    });
});

router.post('/SEGURIDAD/CREAR-TRIGGERS-PARAMETROS', (req, res) => {
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => { //Verifica si el token es el correcto.
        if (err){
            res.sendStatus(403);
        }else {
            const nombreTabla = 'TBL_MS_PARAMETROS';

            const triggerQueries = [
                `
                CREATE TRIGGER IF NOT EXISTS TRG_INS_BITACORA_${nombreTabla}
                AFTER INSERT ON ${nombreTabla}
                FOR EACH ROW
                BEGIN
                    INSERT INTO BITACORA(TIP_EVENTO, USUARIO_DB, FEC_REG_TIP_EVENTO, NOM_TABLA, MOD_TABLA, IND_TABLA, 
                    REG1, REG3, REG5, REG7, REG9, REG11, REG13, REG15)
                    VALUES ('INSERT', CURRENT_USER(), NOW(), '${nombreTabla}', 'SEGURIDAD', 'ACTIVA', 
                    NEW.COD_PARAMETRO, NEW.PARAMETRO, NEW.DES_PARAMETRO, NEW.VALOR, 
                    NEW.USUARIO_CREADOR, NEW.FEC_CREADO, NEW.USUARIO_MODIFICADOR, NEW.FEC_MODIFICADO);
                END;
                `,
                `
                CREATE TRIGGER IF NOT EXISTS TRG_UPD_BITACORA_${nombreTabla}
                AFTER UPDATE ON ${nombreTabla}
                FOR EACH ROW
                BEGIN
                    INSERT INTO BITACORA(TIP_EVENTO, USUARIO_DB, FEC_REG_TIP_EVENTO, NOM_TABLA, MOD_TABLA, IND_TABLA, 
                    REG1, REG2, REG3, REG4, REG5, REG6, REG7, REG8, REG9, REG10, 
                    REG11, REG12, REG13, REG14, REG15, REG16)
                    VALUES ('UPDATE', CURRENT_USER(), NOW(), '${nombreTabla}', 'SEGURIDAD', 'ACTIVA',
                    NEW.COD_PARAMETRO, OLD.COD_PARAMETRO, NEW.PARAMETRO, OLD.PARAMETRO, NEW.DES_PARAMETRO, OLD.DES_PARAMETRO, NEW.VALOR, OLD.VALOR, 
                    NEW.USUARIO_CREADOR, OLD.USUARIO_CREADOR, NEW.FEC_CREADO, OLD.FEC_CREADO, NEW.USUARIO_MODIFICADOR, OLD.USUARIO_MODIFICADOR, 
                    NEW.FEC_MODIFICADO, OLD.FEC_MODIFICADO);
                END;
                `,
                `
                CREATE TRIGGER IF NOT EXISTS TRG_DLT_BITACORA_${nombreTabla}
                AFTER DELETE ON ${nombreTabla}
                FOR EACH ROW
                BEGIN
                INSERT INTO BITACORA(TIP_EVENTO, USUARIO_DB, FEC_REG_TIP_EVENTO, NOM_TABLA, MOD_TABLA, IND_TABLA, 
                    REG2, REG4, REG6, REG8, REG10, REG12, REG14, REG16)
                    VALUES ('DELETE', CURRENT_USER(), NOW(), '${nombreTabla}', 'SEGURIDAD', 'ACTIVA',
                    OLD.COD_PARAMETRO, OLD.PARAMETRO, OLD.DES_PARAMETRO, OLD.VALOR, OLD.USUARIO_CREADOR, OLD.FEC_CREADO, OLD.USUARIO_MODIFICADOR, OLD.FEC_MODIFICADO);
                END;
                `,
            ];

            // Realiza las consultas para crear los tres triggers
            let successfulCount = 0;
            triggerQueries.forEach((triggerQuery) => {
                mysqlConnection.query(triggerQuery, (err) => {
                    if (!err) {
                        successfulCount++;
                        if (successfulCount === triggerQueries.length) {
                            console.log('Triggers creados con éxito.');
                            res.sendStatus(200);
                        }
                    } else {
                        console.error('Error al crear los triggers:', err);
                        res.sendStatus(500);
                    }
                });
            });
        }
    });
});

//API para eliminar los triggers de la bitácora.
router.post('/SEGURIDAD/ELIMINAR-TRIGGERS-USUARIOS', (req, res) => {
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => { //Verifica si el token es el correcto.
        if (err){
            res.sendStatus(403);
        }else {
            const triggerQueries = [
                `
                DROP TRIGGER IF EXISTS TRG_INS_BITACORA_TBL_MS_USUARIOS
                `,
                `
                DROP TRIGGER IF EXISTS TRG_UPD_BITACORA_TBL_MS_USUARIOS
                `,
                `
                DROP TRIGGER IF EXISTS TRG_DLT_BITACORA_TBL_MS_USUARIOS
                `,
            ];

            // Realiza las consultas para crear los tres triggers
            let successfulCount = 0;
            triggerQueries.forEach((triggerQuery) => {
                mysqlConnection.query(triggerQuery, (err) => {
                    if (!err) {
                        successfulCount++;
                        if (successfulCount === triggerQueries.length) {
                            console.log('Triggers eliminados con éxito.');
                            res.sendStatus(200);
                        }
                    } else {
                        console.error('Error al eliminar los triggers:', err);
                        res.sendStatus(500);
                    }
                });
            });
        }
    });
});

router.post('/SEGURIDAD/ELIMINAR-TRIGGERS-PARAMETROS', (req, res) => {
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => { //Verifica si el token es el correcto.
        if (err){
            res.sendStatus(403);
        }else {
            const triggerQueries = [
                `
                DROP TRIGGER IF EXISTS TRG_INS_BITACORA_TBL_MS_PARAMETROS
                `,
                `
                DROP TRIGGER IF EXISTS TRG_UPD_BITACORA_TBL_MS_PARAMETROS
                `,
                `
                DROP TRIGGER IF EXISTS TRG_DLT_BITACORA_TBL_MS_PARAMETROS
                `,
            ];

            // Realiza las consultas para crear los tres triggers
            let successfulCount = 0;
            triggerQueries.forEach((triggerQuery) => {
                mysqlConnection.query(triggerQuery, (err) => {
                    if (!err) {
                        successfulCount++;
                        if (successfulCount === triggerQueries.length) {
                            console.log('Triggers eliminados con éxito.');
                            res.sendStatus(200);
                        }
                    } else {
                        console.error('Error al eliminar los triggers:', err);
                        res.sendStatus(500);
                    }
                });
            });
        }
    });
});


//GET (select para buscar todos los triggers de la tabla de bitacora).
router.get('/SEGURIDAD/GETALL_TBITACORA' , (req , res )=>{
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => { //Verifica si el token es el correcto.
        if (err){
            res.sendStatus(403);
        }else {
             const query =`SHOW TRIGGERS;`;
             mysqlConnection.query(query , (err , rows , fields) =>{
                 if(!err){
                 res.json(rows);
                 }else{
                 console.log(err);
                }
            });
        }
    });
});

module.exports = router;