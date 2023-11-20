const Menu = require('../models/menu.model.js');

const createMenu = async (req, res) => {
	const menu = new Menu(req.body);

	menu.save((error, menuStored) => {
		if (error) {
			res.status(400).send({ msg: 'Error al crear el menu (╯°□°）╯︵ ┻━┻' });
		} else {
			res.status(200).send(menuStored);
		}
	});
};

const getMenus = async (req, res) => {
	const { active } = req.query;

	let response = null;

	if (active === undefined) {
		response = await Menu.find().sort({ order: 'asc' });
	} else {
		response = await Menu.find({ active }).sort({ order: 'asc' });
	}

	if (!response) {
		res
			.status(400)
			.send({ msg: 'No se ha encontrado ningún menu (╯°□°）╯︵ ┻━┻' });
	} else {
		res.status(200).send(response);
	}
};

const updateMenu = async (req, res) => {
	const { id } = req.params;
	const menuData = req.body;

	Menu.findByIdAndUpdate({ _id: id }, menuData, error => {
		if (error) {
			res
				.status(400)
				.send({ msg: 'Error al actualizar el menu (╯°□°）╯︵ ┻━┻' });
		} else {
			res.status(200).send({ msg: 'Actualización correcta (●^◡^●)' });
		}
	});
};

const deleteMenu = async (req, res) => {
	const { id } = req.params;
	Menu.findByIdAndDelete(id, error => {
		if (error) {
			res.status(400).send({ msg: 'Error al eliminar el menu' });
		} else {
			res.status(200).send({ msg: 'Menu eliminado correctamente ' });
		}
	});
};

module.exports = {
	createMenu,
	getMenus,
	updateMenu,
	deleteMenu,
};
