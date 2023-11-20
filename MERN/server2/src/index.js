const mongoose = require('mongoose');
const { DB_HOST, URI, API_VERSION, IP_SERVER } = require('./constants.js');
const app = require('./app');

const PORT = process.env.PORT || 3000;

mongoose.set('strictQuery', false);

mongoose.connect(URI, error => {
	if (error) throw error;
	app.listen(PORT, () => {
		console.log('###################');
		console.log('## MERN API REST ##');
		console.log('###################');
		console.log('###################');
		console.log(`http://${IP_SERVER}:${PORT}/api/${API_VERSION}`);
	});
});
