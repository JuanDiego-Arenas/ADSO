const User = require('../models/user.model.js');
const bcrypt = require('bcryptjs');
const jwt = require('../utils/jwt.js');

const register = (req, res) => {
	try {
		const { firstName, lastName, email, password } = req.body;
		if (!email) res.status(400).send({ msg: 'El email es necesario' });
		if (!password)
			res.status(400).send({ msg: 'La contraseña es necesaria' });

		const user = new User({
			firstName,
			lastName,
			email: email.toLowerCase(),
			password,
			role: 'User',
			active: false,
		});

		const salt = bcrypt.genSaltSync(10);
		const hashPassword = bcrypt.hashSync(password, salt);

		user.password = hashPassword;

		user.save((error, userStorage) => {
			if (error) {
				res.status(400).send({ msg: 'Error al crear el usuario' });
			} else {
				res.status(200).send({ userStorage });
			}
		});

		console.log(password);
		console.log(hashPassword);
		console.log(user);
		// res.status(200).send({ msg: 'Funcionó Perfectamente!!!' });
	} catch (error) {
		res.status(500).send({ msg: error });
	}
};

const login = (req, res) => {
	const { email, password } = req.body;
	if (!email) res.status(400).send({ msg: 'El Email es obligatorio' });
	if (!password)
		res.status(400).send({ msg: 'La Contraseña es obligatoria' });

	const emailLowerCase = email.toLowerCase();

	User.findOne({ email: emailLowerCase }, (error, userStorage) => {
		if (error) {
			res.status(500).send({ msg: 'Error del servidor' });
		} else {
			console.log('password: ', password);
			console.log(userStorage);
		}
	});
};

module.exports = {
	register,
	login,
};
