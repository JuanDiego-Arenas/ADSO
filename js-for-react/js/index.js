const saludo = () => {
	return 'Hello Word!!!';
};

const user = {
	nombre: 'Jimmy',
	apellido: 'Lombana',
	edad: 30,
	direccion: {
		pais: 'Colombia',
		departamento: 'Huila',
		ciudad: 'Garzon',
	},
	amigos: ['Morocho', 'Karol', 'Polo'],
	active: true,
	enviarMail: function () {
		return 'Enviando Correo...';
	},
};


console.log(user.enviarMail());