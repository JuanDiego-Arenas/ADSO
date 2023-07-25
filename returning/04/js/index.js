const menu = document.querySelector('.menu');
const nav = document.querySelector('.nav');

const ocultarMenu = () => {
	if(nav.style.display == 'none'){

        nav.style.display = 'block';
    } else {
        nav.style.display = 'none';

    }
};

menu.addEventListener('click', ocultarMenu);
