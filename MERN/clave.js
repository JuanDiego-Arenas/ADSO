const crypto = require('crypto');

// Generar una clave secreta aleatoria de 64 bytes (512 bits)
const generateSecretKey = () => {
	return crypto.randomBytes(64).toString('hex');
};

const secret = crypto.randomBytes(32).toString('hex');
console.log(secret);

// console.log(generateSecretKey());
