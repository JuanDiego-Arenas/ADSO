const mongoose = require('mongoose');
const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const { API_VERSION } = require('./constants.js');

const app = express();

// Importación de rutas
const authRoutes = require('./routes/auth.routes.js');

// Configurar body Parse
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

// Configurar carpeta estáticos
app.use(express.static('./src/uploads'));

// Configurar Headers HTTP - CROS
app.use(cors());

// Configurar Rutas
app.use(`/api/${API_VERSION}`, authRoutes);

module.exports = app;
