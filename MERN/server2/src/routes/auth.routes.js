const express = require('express');
const AuthController = require('../controllers/auth.controller.js');

const router = express.Router();

router.post('/auth/register', AuthController.register);
router.post('/auth/login', AuthController.login);
router.post('/auth/refresh_access_token', AuthController.refreshAccessToken);

module.exports = router;
