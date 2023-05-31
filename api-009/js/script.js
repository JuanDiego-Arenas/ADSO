const containerTxt = document.getElementsByClassName('container-palabra');
const myInput = document.getElementById('input');
const textoPrueba = document.getElementById('prueba');

myInput.addEventListener('keyup', event => {
	if (event.key === 'Enter' && myInput.value !== '') {
		textoPrueba.style.display = 'none';
        // containerTxt.style.display = 'flex';

		const palabra = document.createElement('h2');
		palabra.classList.add('palabra');
        containerTxt[0].appendChild(palabra);
        palabra.innerText = `Word: ${null}`;
	} else {
        containerTxt.style.display = 'none';
		textoPrueba.style.display = 'block';
		textoPrueba.innerText =
			"Digita una palabra y presiona 'Enter' para obtener los resultado";
	}
});
