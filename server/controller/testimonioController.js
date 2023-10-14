const Testimonial = require('../models/Testimoniales')

const guardarTestimonio = async (req, res ) =>{

    // console.log(req.body)

    const { nombre, correo, mensaje } = req.body

    // VALIDAR
    const errores = []

    if(nombre.trim() === ''){
        errores.push({ mensaje: 'El nombre está vacío.' })
    }
    if(correo.trim() === ''){
        errores.push({ mensaje: "El correo está vacío." })
    }
    if(mensaje.trim() === ''){
        errores.push({ mensaje: "El mensaje está vacío."})
    }

    console.log(errores)

    // MOSTRAR VISTA CON ERRORES
    if(errores.length > 0){

        // CONSULTAR TESTIMONIALES EXISTENTES
        const testimoniales = await Testimonial.findAll()

        res.render('testimoniales', {
            pagina: 'Testimoniales',
            errores,
            nombre,
            correo,
            mensaje,
            testimoniales
        })
    } else {
        // ALMACENAR EN LA BD
        try {
            await Testimonial.create ({
                nombre,
                correo,
                mensaje
            })
            // TERMINAR LA ACCION DE ALMACENAMIENTO
            res.redirect('/testimoniales')
        }catch(error){
            console.log(error)
        }

    }
    
}

module.exports = guardarTestimonio
