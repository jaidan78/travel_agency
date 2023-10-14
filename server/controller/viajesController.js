const  Viaje = require('../models/Viaje')

const paginaViajes = async (req, res) => {
    const viajes = await Viaje.findAll()
    
    res.render("viajes", {
      pagina: "Próximos Viajes",
      viajes
    });
  }

module.exports = paginaViajes