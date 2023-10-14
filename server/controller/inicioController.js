const Viaje = require('../models/Viaje')
const Testimonio = require('../models/Testimoniales')

const paginaInicio = async (req, res) =>{

    const promiseDB = []
    promiseDB.push( Viaje.findAll({limit: 3} ))
    promiseDB.push( Testimonio.findAll({limit: 3}))

    try {
        const resultado = await Promise.all( promiseDB )
    
        res.render('inicio', {
            pagina:'Inicio',
            clase: 'home',
            viajes: resultado[0],
            testimoniales: resultado[1]
        })
    }catch(error){
        console.log(error)
    }
}

module.exports = paginaInicio
