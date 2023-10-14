const Viaje = require('../models/Viaje')

const paginaDetalleViaje = async (req,res)=>{
    const { slug } = req.params
    try {
        const viaje = await Viaje.findOne({ where : { slug }})

        res.render('viaje', {
            pagina: "Información del Viaje",
            viaje
        })
    }catch(error){
        console.log(error)
    }
}

module.exports = paginaDetalleViaje