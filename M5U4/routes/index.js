var express = require('express');
var router = express.Router();
var novedadesModel = require('../models/novedadesModel');
var nodemailer = require('nodemailer');
var cloudinary = require('cloudinary').v2;

/* GET home page. */
router.get('/', async function (req, res, next) {

  var novedades = await novedadesModel.getNovedades();

  novedades = novedades.splice(0, 5);
  novedades = novedades.map(novedad => {
    if (novedad.img_id) {
      const imagen = cloudinary.url(novedad.img_id, {
        width: 460,
        crop: 'fill'
      });
      return {
        ...novedad,
        imagen
      }
    } else {
      return {
        ...novedad,
        imagen: '/images/noimage.jpg'
      }
    }
  });

  res.render('index', {
    novedades
  });
});


module.exports = router;

router.post('/', async (req, res, next) => {
  var email = req.body.email;
  var nombre = req.body.nombre;

  var obj = {
    to: 'jsebifranco2017@gmail.com',
    subject: 'Contacto desde la Web', 
    html: `${nombre} se contacto a través de la web y quiere más información a este correo : ${email}`};

  var transport = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  });

  var info = await transport.sendMail(obj);

  res.render('index', {
    message: 'Mensaje enviado correctamente'
  });
});
