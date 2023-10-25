const User = require('../models/user.model.js');
const bcrypt = require('bcryptjs');
const jwt = require('../utils/jwt.js');

const register = (req, res) => {
	try {
		const { firstName, lastName, email, password } = req.body;
		if (!email) res.status(400).send({ msg: 'El email es necesario' });
		if (!password) res.status(400).send({ msg: 'La contraseña es necesaria' });

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

		user.save((error, userStore) => {
			if (error) {
				res.status(400).send({ msg: 'Error al crear el usuario' });
			} else {
				res.status(200).send({ userStore: userStore });
			}
		});

		console.log(password);
		console.log(hashPassword);
		console.log(user);
		// res.status(201).send({ msg: 'Funcionó Perfectamente!!!' });
	} catch (error) {
		res.status(500).send({ msg: error });
	}
};

const login = (req, res) => {
	const { email, password } = req.body;
	if (!email) res.status(400).send({ msg: 'El Email es obligatorio' });
	if (!password) res.status(400).send({ msg: 'La Contraseña es obligatoria' });

	const emailLowerCase = email.toLowerCase();

	User.findOne({ email: emailLowerCase }, (error, userStore) => {
		if (error) {
			res.status(500).send({ msg: 'Error del servidor' });
		} else {
			bcrypt.compare(password, userStore.password, (bcryptError, check) => {
				if (bcryptError) {
					res.status(500).send({ msg: 'Error del servidor' });
				} else if (!check) {
					res.status(400).send({
						msg: 'Usuario o Contraseña incorrectos',
					});
				} else if (!userStore.active) {
					res.status(401).send({
						msg: 'Usuario no autorizado o inactivo',
					});
				} else {
					res.status(200).send({
						access: jwt.createAccessToken(userStore),
						refresh: jwt.createRefreshToken(userStore),
					});
				}
			});
		}
	});
};

const refreshAccessToken = (req, res) => {
	const { token } = req.body;

	if (!token) res.status(400).send({ msg: 'Error, token requerido' });

	const { user_id } = jwt.decoded(token);

	User.findOne({ _id: user_id }, (error, userStorage) => {
		if (error) {
			res.status(500).send({ msg: 'Error del servidor' });
		} else {
			res.status(200).send({
				accessToken: jwt.createAccessToken(userStorage),
			});
		}
	});
};

module.exports = {
	register,
	login,
	refreshAccessToken,
};
