const express = require("express");
const paginaInicio = require("../controller/inicioController")
const paginaNosotros = require("../controller/nosotrosController");
const paginaViajes = require("../controller/viajesController")
const paginaTestimoniales = require("../controller/testimonialesController");
const paginaDetalleViaje = require("../controller/detailViajeController");
const guardarTestimonio = require("../controller/testimonioController");


const router = express.Router();

router.get("/", paginaInicio);

router.get("/nosotros", paginaNosotros);

router.get("/viajes", paginaViajes);
router.get("/viajes/:slug", paginaDetalleViaje)

router.get("/testimoniales", paginaTestimoniales );
router.post("/testimoniales", guardarTestimonio)

module.exports = router;
