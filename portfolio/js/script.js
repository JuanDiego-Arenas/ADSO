// Función ocultar o mostrar el menu
let menuVisible = false;
function mostrarOcultarMenu() {
	if (menuVisible) {
		document.getElementById('nav').classList = '';
		menuVisible = false;
	} else {
		document.getElementById('nav').classList = 'responsive';
		menuVisible = true;
	}
}

// Ocultar el menú
function seleccionar() {
	document.getElementById('nav').classList = '';
	menuVisible = false;
}

// Animaciones de Skills
function efectoHabilidades() {
	var skills = document.getElementById('skills');
	var distancia_skills =
		window.innerHeight - skills.getBoundingClientRect().top;
	if (distancia_skills >= 300) {
		let habilidades = document.getElementsByClassName('progreso');
		habilidades[0].classList.add('javascript');
		habilidades[1].classList.add('node');
		habilidades[2].classList.add('mongodb');
		habilidades[3].classList.add('git');
		habilidades[4].classList.add('htmlcss');
		habilidades[5].classList.add('react');
		habilidades[6].classList.add('communication');
		habilidades[7].classList.add('team');
		habilidades[8].classList.add('creative');
		habilidades[9].classList.add('dedication');
		habilidades[10].classList.add('project');
		console.log('Hola Mundo!!');
	}
}

// Detectamos el scrolling
window.onscroll = function () {
	efectoHabilidades();
};
