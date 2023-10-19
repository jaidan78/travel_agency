require("dotenv").config({ path: "variables.env" });

const express = require("express");
const router = require("./routes/index");
const db = require("./config/db");
const app = express();
const path = require("path");

// CONECTAR LA BASE DE DATOS
db.authenticate()
  .then(() => console.log("Base de Datos Conectada"))
  .catch((error) => console.log(error));

// CONFIGURACION DE PORT PARA fly.io
const PORT = process.env.PORT || 3001;

// HABILITAR PUG
app.set("view engine", "pug");

// DEFINIR RUTAS DE LAS CARPETAS public Y views
const publicDirectoryPath = path.join(__dirname, "../public");
const viewsDirectoryPath = path.join(__dirname, "views");

// DEFINIR CARPETA PUBLICA
app.use(express.static(publicDirectoryPath));

// DEFINIR CARPETA DE LAS views
app.set("views", path.join(viewsDirectoryPath));

// MIDDLEWARES PROPIOS
app.use((req, res, next) => {
  res.locals.actualYear = new Date().getFullYear(); // OBTENER EL AÑO ACTUAL
  res.locals.nombreSitio = "Agencia de Viajes";
  next();
});

// AGREGAR body parser PARA LEER LOS DATOS DEL form
app.use(express.urlencoded({ extended: true }));

// AGREGAR ROUTER
app.use("/", router);

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
