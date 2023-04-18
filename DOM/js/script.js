const redColor = document.querySelector('.red');
const blackColor = document.querySelector('.black');
const imgCard = document.querySelector('.product-img');
const feedbackBtn = document.querySelector('.feedback');
const grayColor = document.getElementsByClassName('green');
const cartButton = document.getElementById('button');
const itemTag = document.getElementsByTagName('h3')[0];
const iconRed = document.querySelector('.fa-gas-pump');
const textBattery = document.querySelector('.text-fuel');

redColor.addEventListener('click', () => {
	cartButton.style.background = 'red';
	itemTag.style.backgroundColor = '#ff0000';
	textBattery.innerText = 'Batería AA: 50m/1000mAh';
	iconRed.setAttribute('class', 'fa-solid fa-battery-half');
	imgCard.style.backgroundImage =
		'url("https://http2.mlstatic.com/D_NQ_NP_716051-MLM52548580348_112022-V.jpg")';
});

grayColor[0].addEventListener('click', () => {
	cartButton.style.background = '#2d572c';
	itemTag.style.backgroundColor = '#2d572c';
    textBattery.innerText = 'Fusión nuclear:';
	iconRed.setAttribute('class', 'fa-brands fa-react fa-spin');
	imgCard.style.backgroundImage =
		'url("https://i.pinimg.com/736x/22/60/40/226040597e216598c4be575f4c6f80ce.jpg")';
});
