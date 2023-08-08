// constantes requerida en nuestra carpeta.

const express = require('express');
const jwt = require('jsonwebtoken');
const bodyParser = require('body-parser');
const app = express();
const mysqlConnection= require('./database'); //Conexión a la base de datos.

// Configurar el parser de JSON.
app.use(bodyParser.json());

app.get('/', (req, res) => {
    res.json({
        text: 'api work!'
    });
});

//Ruta de prueba para el token, solo muestra el usuario que inició sesión.
app.get('/api/protected', ensureToken, (req, res) => {
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
        if (err){
            res.sendStatus(403);
        }else {
            res.json({
                text: 'protected', //Solo usuarios autorizados podrán usar las apis.
                data //Muestra ciertos datos de interes, como el código de usuario.
            });
        }
    });
});

//Función para usar el header de autorización, aquí pegaremos nuestro token.
function ensureToken (req, res, next) {
    const bearerHeader = req.headers['authorization']; //El tipo será Bearer header.
    console.log(bearerHeader);
    if (typeof bearerHeader !== 'undefined'){
        const bearer = bearerHeader.split(" "); //Creamos un arreglo.
        const bearerToken = bearer[1]; //Se toma la segunda sección.
        req.token = bearerToken;
        next();
    } else {
        res.sendStatus(403);
    }
};

// middleware.

app.use(express.json());

//app.use(ensureToken); //La función "ensureToken" la usaremos como middleware para ser usada por todas nuestras rutas.

//Routes.

app.use(require ('./routes/login'));
app.use(require ('./routes/psacrificio'));
app.use(require ('./routes/seguridad'));
app.use(require ('./routes/fierros'));
app.use(require ('./routes/PERSONAS'));
app.use(require ('./routes/cventa'));
app.use(require ('./routes/ptraslado'));
app.use(require ('./routes/usuarios'));
app.use(require ('./routes/roles'));
app.use(require ('./routes/objetos'));
app.use(require ('./routes/permisos'));
app.use(require ('./routes/preguntas'));
app.use(require ('./routes/respuestas'));
app.use(require ('./routes/mantenimientos'));
app.use(require ('./routes/detalleTraslado'));


//conexion puerto.

app.listen(3000, () =>{
    console.log('Server on port 3000');
});