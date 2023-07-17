// constantes requerida en nuestro carpeta 

const express = require('express');
const jwt = require('jsonwebtoken');
const app = express();

app.get('/', (req, res) => {
    res.json({
        text: 'api work!'
    });
});

app.post('/api/login', (req, res) => {
    const user = {id: 3}
    const token = jwt.sign({user}, 'my_ultrasecret_token');
    res.json({
        token
    });
});

app.get('/api/protected', ensureToken, (req, res) => {
    jwt.verify(req.token, 'my_ultrasecret_token', (err, data) => {
        if (err){
            res.sendStatus(403);
        }else {
            res.json({
                text: 'protected',
                data
            });
        }
    });
});

function ensureToken (req, res, next) {
    const bearerHeader = req.headers['authorization'];
    console.log(bearerHeader);
    if (typeof bearerHeader !== 'undefined'){
        const bearer = bearerHeader.split(" ");
        const bearerToken = bearer[1];
        req.token = bearerToken;
        next();
    } else {
        res.sendStatus(403);
    }
};

//conexion puerto

app.listen(3000, () =>{
    console.log('server on port 3000');
});

// middleware

app.use(express.json());

//Routes
 
app.use(require ('./routes/psacrificio'), ensureToken);
app.use(require ('./routes/fierros'), ensureToken);
app.use(require ('./routes/PERSONAS'), ensureToken);
app.use(require ('./routes/seguridad'), ensureToken);
app.use(require ('./routes/Cventa'), ensureToken);
app.use(require ('./routes/PTRASLADO'), ensureToken);