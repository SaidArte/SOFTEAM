// constantes requerida en nuestro carpeta 

const express = require('express');
const app = express();

//conxion puerto

app.listen(3306, () =>{
    console.log('server on port 3306');
});

// middleware

app.use(express.json());

//Routes
 
app.use(require ('./routes/psacrificio'));
app.use(require ('./routes/fierros'));