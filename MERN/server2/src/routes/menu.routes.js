const express = require('express');
const MenuController = require('../controllers/menu.controller.js');
const mdAuth = require('../middlewares/authenticated.js');

const router = express.Router();

router.post('/menu', [mdAuth.asureAuth], MenuController.createMenu);
router.get('/menu', MenuController.getMenus);
router.patch('/menu/:id', [mdAuth.asureAuth], MenuController.updateMenu);
router.delete('/menu/:id', [mdAuth.asureAuth], MenuController.deleteMenu);

module.exports = router;
