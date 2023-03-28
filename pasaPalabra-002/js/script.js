// Total de preguntas del juego

const TOTAL_PREGUNTAS = 10;

// Creamos las letras de la A a la J

const container = document.querySelector('.container');
console.log(container);
for (let i = 1; i <= TOTAL_PREGUNTAS; i++) {
    const circle = document.createElement('div');
    circle.classList.add('circle');
    circle.textContent = String.fromCharCode(i + 96);
    circle.id = String.fromCharCode(i + 96);
    container.appendChild(circle);

    const angel = ((i - 1) / TOTAL_PREGUNTAS) * Math.PI * 2 - (Math.PI / 2);
    const x = Math.round(95 + 120 * Math.cos(angel));
    const y = Math.round(95 + 120 * Math.sin(angel));
    circle.style.left = `${x}px`;
    circle.style.top = `${y}px`
}

let comenzar = document.getElementById('comenzar');
comenzar.addEventListener('click', () => {
    document.getElementById('pantalla-inicial').style.display = 'none';
    document.getElementById('pantalla-juego').style.display = 'block';
});


let salir = document.getElementById('salir');
salir.addEventListener('click', () => {
    document.getElementById('pantalla-inicial').style.display = 'block';
    document.getElementById('pantalla-juego').style.display = 'none';
});