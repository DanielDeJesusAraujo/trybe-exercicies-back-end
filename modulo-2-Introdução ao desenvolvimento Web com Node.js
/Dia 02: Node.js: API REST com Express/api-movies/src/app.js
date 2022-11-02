const express = require('express')

const app = express();

app.use(express.json()); // PARA RECEBER JSON NO BODY DA REQUEST

module.exports = app;