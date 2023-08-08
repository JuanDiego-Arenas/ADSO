const cartas = document.querySelectorAll('.carta');
const startButton = document.getElementById('startButton');
const message = document.getElementById('message');

let bloquearClicks = true;
let cartasVolteadas = 0;
let primeraCarta = null;
let segundaCarta = null;

// Función para voltear las cartas al hacer clic
const voltearCarta = event => {
	if (
		bloquearClicks ||
		event.currentTarget.classList.contains('abierta') ||
		cartasVolteadas === 2
	) {
		return;
	}

	event.currentTarget.classList.add('abierta');
	cartasVolteadas++;

	if (!primeraCarta) {
		primeraCarta = event.currentTarget;
	} else {
		segundaCarta = event.currentTarget;
		verificarCoincidencia();
	}
};

// Función para reiniciar la jugada
const reiniciarJugada = () => {
	cartasVolteadas = 0;
	primeraCarta = null;
	segundaCarta = null;
	bloquearClicks = false;
};

// Función para verificar si las cartas coinciden
const verificarCoincidencia = () => {
	if (
		primeraCarta.querySelector('.front-image img').src ===
		segundaCarta.querySelector('.front-image img').src
	) {
		primeraCarta.removeEventListener('click', voltearCarta);
		segundaCarta.removeEventListener('click', voltearCarta);
		if (todasCartasVolteadas()) {
			message.textContent = '¡Felicidades, has ganado!';
			setTimeout(reiniciarJuego, 3000);
		}
	} else {
		bloquearClicks = true;
		setTimeout(voltearVolver, 1000);
	}
};

// Función para comprobar si todas las cartas ya fueron volteadas
const todasCartasVolteadas = () => {
	return document.querySelectorAll('.carta:not(.abierta)').length === 0;
};

// Función para voltear las cartas que no coinciden
const voltearVolver = () => {
	primeraCarta.classList.remove('abierta');
	segundaCarta.classList.remove('abierta');
	reiniciarJugada();
};

// Función para habilitar los clicks en las cartas después del tiempo de memorización
const habilitarClicks = () => {
	bloquearClicks = false;
};

// Función para reiniciar el juego
const reiniciarJuego = () => {
	cartas.forEach(carta => carta.addEventListener('click', voltearCarta));
	cartas.forEach(carta => carta.classList.remove('abierta'));
	message.textContent = '';
	bloquearClicks = true;
	setTimeout(habilitarClicks, 2000); // Tiempo de memorización antes de habilitar clicks
};

// Evento del botón de inicio del juego
startButton.addEventListener('click', reiniciarJuego);

// Agregar evento click a cada carta utilizando una función de flecha
cartas.forEach(carta => carta.addEventListener('click', voltearCarta));
