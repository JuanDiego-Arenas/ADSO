const express = require('express');
const AuthController = require('../controllers/auth.controller.js');

const router = express.Router();

router.post('/auth/register', AuthController.register);

module.exports = router;