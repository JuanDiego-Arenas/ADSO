const express = require('express');
const multiparty = require('connect-multiparty');
const userController = require('../controllers/user.controller.js');
const mdAuth = require('../middlewares/authenticated.js');

const mdUpload = multiparty({ uploadDir: './src/uploads/avatar' });
const api = express.Router();

api.get('/user/me', [mdAuth.asureAuth], userController.getMe);
api.get('/users', [mdAuth.asureAuth], userController.getUsers);
api.post('/user', [mdAuth.asureAuth, mdUpload], userController.createUser);
api.patch('/user/:id', [mdAuth.asureAuth, mdUpload], userController.updateUser);
api.delete('/user/:id', [mdAuth.asureAuth], userController.deleteUser);

module.exports = api;
