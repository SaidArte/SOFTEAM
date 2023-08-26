// constantes requerida en nuestra carpeta.

const express = require('express');
const app = express();

//Ruta de prueba para el token, solo muestra el usuario que inició sesión.
app.set('port', process.env.PORT || 4000);

app.use(express.json());



app.use(require ('./routes/login'));
app.use(require ('./routes/psacrificio'));
app.use(require ('./routes/seguridad'));
app.use(require ('./routes/fierros'));
app.use(require ('./routes/PERSONAS'));
app.use(require ('./routes/Cventa'));
app.use(require ('./routes/PTRASLADO'));
app.use(require ('./routes/usuarios'));
app.use(require ('./routes/roles'));
app.use(require ('./routes/objetos'));
app.use(require ('./routes/permisos'));
app.use(require ('./routes/preguntas'));
app.use(require ('./routes/respuestas'));
app.use(require ('./routes/mantenimientos'));
app.use(require ('./routes/Animal'));


app.listen(app.get('port'), '0.0.0.0', () => {
    console.log(`Server listening on port ${app.get('port')}`);
  });