const User = require('../models/user.model.js');
const bcrypt = require('bcryptjs');

const register = (req, res) => {
	const { firstName, lastName, email, password } = req.body;
	if (!email) res.status(400).send({ msg: 'El email es necesario' });
	if (!password) res.status(400).send({ msg: 'La contraseña es necesaria' });

	const newUser = new User({
		firstName,
		lastName,
		email: email.toLowerCase(),
		password,
		role: 'User',
		active: false,
	});

	const salt = bcrypt.genSaltSync(10);
	const hashPassword = bcrypt.hashSync(password, salt)

	console.log(password);
	console.log(hashPassword);
	console.log(newUser);
	res.status(200).send({ msg: 'Funcionó Perfectamente!!!' });
};

module.exports = {
	register,
};
