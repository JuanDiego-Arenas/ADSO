const user = {
	nombre: 'Oscar',
	edad: 23
}

const infoUser = (user) => {
	const {nombre, edad} = user;
	return `<h1>Hola ${nombre}</h1>`
};

document.body.innerHTML = infoUser(user);
