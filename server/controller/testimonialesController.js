const Testimonial = require('../models/Testimoniales')

const paginaTestimoniales = async (req, res) => {
  try{
    const testimoniales = await Testimonial.findAll()
    res.render("testimoniales", {
      pagina: "Testimoniales",
      testimoniales
    });
  }catch(error){
    console.log(error)
  }
}

module.exports = paginaTestimoniales
