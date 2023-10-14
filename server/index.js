require('dotenv').config({ path:'variables.env' })

const express = require("express");
const router = require("./routes/index");
const db = require("./config/db")
const app = express();

// CONECTAR LA BASE DE DATOS
db.authenticate()
    .then( ()=> console.log("Base de Datos Conectada"))
    .catch(error => console.log(error))


// CONFIGURACION DE HOST Y PORT PARA HEROKU
const host = process.env.HOST || '0.0.0.0'
const PORT = process.env.PORT || 3001

// HABILITAR PUG
app.set("view engine", "pug");

// DEFINIR CARPETA PUBLICA
app.use(express.static(__dirname + "/public"));

// MIDDLEWARES PROPIOS
app.use((req, res, next) => {
    res.locals.actualYear = new Date().getFullYear();// OBTENER EL AÑO ACTUAL 
    res.locals.nombreSitio = 'Agencia de Viajes'
    next()
})

// AGREGAR body parser PARA LEER LOS DATOS DEL form
app.use(express.urlencoded({ extended: true }))

// AGREGAR ROUTER
app.use("/", router);


app.listen(PORT, host, () => {
    console.log(`Server is running on port ${PORT}`);
  });
   