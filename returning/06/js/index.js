const btnLeft = document.querySelector('.btn-left');
const btnRight = document.querySelector('.btn-right');
const botones = document.querySelector('.btn');
const slider = document.querySelector('.slider');

let imgMuestra = ['001', '002', '003', '004', '005', '006'];
let contador = 0;

const style = () => {
    slider.style.backgroundPosition= 'center';
    slider.style.backgroundRepeat= 'no-repeat';
    slider.style.backgroundAttachment = 'fixed';
    slider.style.backgroundSize = 'cover';
};
style();

const derecha = () => {
	contador++;
	if (contador > imgMuestra.length - 1) {
		contador = 0;
		console.log(contador);
	}
	slider.style.background = `url(img/${imgMuestra[contador]}.jpg)`;
	style();
};

const izquierda = () => {
	contador--;
	if (contador < 0) {
		contador = 5;
	}
	slider.style.background = `url(img/${imgMuestra[contador]}.jpg)`;
	style();
};

btnRight.addEventListener('click', derecha);
btnLeft.addEventListener('click', izquierda);