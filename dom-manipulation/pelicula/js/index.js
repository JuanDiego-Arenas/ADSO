const parrafo = document.querySelector('.datos');
const actor = document.querySelector('.actor');
const newElement = document.createElement('li');

const mostrarDatos = () => {
	const films = {
		nombre: 'Oppenheimer',
		actores: [
			'Cillian Murphy: J. Robert Oppenheimer',
			'Emily Blunt: Katherine "Kitty" Oppenheimer',
			'Matt Damon: Gen. Leslie Groves Jr.',
			'Robert Downey Jr.: Lewis Strauss',
		],
	};

	// console.log(films.actores[1]);
	const actores = () => {
		for (let i = 0; i < films.actores.length; i++) {
			// actor.appendChild(newElement);
			newElement.textContent = films.actores[i];
		}
	};

	return (parrafo.createElement = `
        <h1>Pelicula: <strong>${films.nombre}</strong></h1>
        <ul>
			${console.log(actores())}
        </ul>
    `);
};

mostrarDatos();

// ${films.actores.forEach(element => {
//     console.log(element);
// 	actor.appendChild(newE)
//     newE.textContent = element
// })}
