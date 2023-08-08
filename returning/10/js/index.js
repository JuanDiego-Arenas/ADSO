// Variables para almacenar el estado del juego
const cards = document.querySelectorAll('.main figure');
const startButton = document.getElementById('startButton');
const message = document.getElementById('message');
let blockClick = true;

// Tiempo de memorización 2 segundos
// setTimeout(() => {
// 	cards.forEach(element => {
// 		element.classList.remove('opened');
// 	});
//     enableClicks();
// }, 2000);

// Función para voltear las cartas al hacer clic
const openedCard = event => {
	if (blockClick || event.currentTarget.classList.contains('opened')) return;
	event.currentTarget.classList.add('opened');
	validateCards();
};

// Función para validar las cartas volteadas
const validateCards = () => {
	const cartasVolteadas = document.querySelectorAll('.opened');
	if (cartasVolteadas.length === 2) {
		blockClick = true;
		setTimeout(verifyCards, 850);
	}
};

// Función para verificar si las cartas coinciden
const verifyCards = () => {
	const cartasVolteadas = document.querySelectorAll('.opened');
	const primeraCarta = cartasVolteadas[0];
	const segundaCarta = cartasVolteadas[1];

	if (
		primeraCarta.querySelector('.front-image img').src ===
		segundaCarta.querySelector('.front-image img').src
	) {
		primeraCarta.removeEventListener('click', openedCard);
		segundaCarta.removeEventListener('click', openedCard);
		if (todasCartasVolteadas()) {
			message.textContent = '¡Felicidades, has ganado!';
			setTimeout(reiniciarJuego, 4000);
		}
	} else {
		setTimeout(() => {
			cartasVolteadas.forEach(carta => carta.classList.remove('opened'));
		}, 300);
	}
	blockClick = false;
};

// Función para comprobar si todas las cartas ya fueron volteadas
const todasCartasVolteadas = () => {
	return document.querySelectorAll('.main figure:not(.opened)').length === 0;
};

// Función para habilitar los clicks en las cartas después del tiempo de memorización
const enableClicks = () => {
	blockClick = false;
	console.log('clicks habilitados');
};

// Función para reiniciar el juego
const reiniciarJuego = () => {
	cards.forEach(carta => carta.addEventListener('click', openedCard));
	cards.forEach(carta => carta.classList.remove('opened'));
	message.textContent = '';
	blockClick = true;
	setTimeout(enableClicks, 2000); // Tiempo de memorización antes de habilitar clicks
};

// Evento del botón de inicio del juego
startButton.addEventListener('click', reiniciarJuego);
