const nodemailer = require('nodemailer');

const transporter = nodemailer.createTransport({
  service: 'Gmail',
  secure:false,
  auth: {
    user: process.env.EMAIL,
    pass: process.env.EMAIL_PASSWORD,
  },
});

module.exports = {
  send: () => {
    const options = {
      from: process.env.EMAIL,
      to: process.env.EMAIL_TO,
      subject:'Activity created succesfully',
      text: 'A new Activity has been succesfully created',
    };

    return transporter.sendMail(options);
  },
};