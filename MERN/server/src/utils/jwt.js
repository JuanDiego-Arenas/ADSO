const jwt = require('jsonwebtoken');
const { JWT_SECRET_KEY } = require('../constants.js');

const createAccessToken = user => {
	const expirationToken = new Date();
	expirationToken.setHours(expirationToken.getHours() + 3);

	const payload = {
		token_type: 'access',
		user_id: user._id,
		iat: Date.now(),
		exp: expirationToken.getTime(),
	};

	// console.log('JWT_SECRET_KEY:', JWT_SECRET_KEY);
	return jwt.sign(payload, JWT_SECRET_KEY);
};

const createRefreshToken = user => {
	const expirationToken = new Date();
	expirationToken.setMonth(expirationToken.getMonth() + 1);

	const payload = {
		token_type: 'refresh',
		user_id: user._id,
		iat: Date.now(),
		exp: expirationToken.getTime(),
	};

	return jwt.sign(payload, JWT_SECRET_KEY);
};

const decoded = token => {
	return jwt.decode(token, JWT_SECRET_KEY, true);
};

module.exports = {
	createAccessToken,
	createRefreshToken,
	decoded,
};
