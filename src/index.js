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

//Ruta para la obtención de un token.
app.post('/api/login', (req, res) => {
    const { COD_USUARIO, PAS_USUARIO } = req.body;
  
    // Consulta SQL para verificar si las credenciales del usuario son correctas.
    const query = `SELECT * FROM TBL_MS_USUARIOS WHERE COD_USUARIO = ? AND PAS_USUARIO = ?`;
    mysqlConnection.query(query, [COD_USUARIO, PAS_USUARIO], (error, results) => {
      if (error) {
        res.status(500).json({ error: 'Error interno del servidor' });
      } else {
        if (results.length > 0) {
          // Usuario válido, devuelve los datos del usuario.
            /*res.json({ message: 'Inicio de sesión exitoso', COD_USUARIO});*/ //Esta instrucción 
            //se usó para saber si el usuario era autenticado correctamente, como no se pueden 
            //repetir comandos como "res.json" o "res.send" se comentó este cuando el usuario ya 
            //podía iniciar sesión.
            const token = jwt.sign({COD_USUARIO}, 'my_ultrasecret_token'); //Generación de token por medio de una palabra secreta.
            res.json({ 
                token
            });
            //La anterior instrucción muestra el token del usuario para poder usar las APIs.
        } else {
            res.status(401).json({ error: 'Credenciales inválidas' });
        }
      }
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

app.use(require ('./routes/psacrificio'));
app.use(require ('./routes/seguridad'));
app.use(require ('./routes/fierros'));
app.use(require ('./routes/personas'));
app.use(require ('./routes/cventa'));
app.use(require ('./routes/ptraslado'));


//conexion puerto.

app.listen(3000, () =>{
    console.log('Server on port 3000');
});