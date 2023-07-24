//* Referencias HTML
//? ---------- Botones ----------
const pauseBtn = document.querySelector('.pause');
const playBtn = document.querySelector('.play');
const stopBtn = document.querySelector('.stop');

//? ---------- Time ----------
const hoursTime = document.querySelector('.hours');
const minutesTime = document.querySelector('.minutes');
const secondsTime = document.querySelector('.seconds');
const hundredthsTime = document.querySelector('.hundredths');

let centesimas = 0;
let segundos = 0;
let minutos = 0;
let horas = 0;

const start = () => {
	control = setInterval(cronometro, 10);
	playBtn.disabled = true;
	playBtn.classList.add('disabled');
	
	pauseBtn.disabled = false;
	pauseBtn.classList.remove('disabled');
	
	stopBtn.disabled = false;
	stopBtn.classList.remove('disabled');
};
const pause = () => {
	clearInterval(control);
	pauseBtn.disabled = true;
	pauseBtn.classList.add('disabled');
	
	playBtn.disabled = false;
	playBtn.classList.remove('disabled');
};
const restart = () => {
	clearInterval(control);
	centesimas = 0,
	segundos = 0,
	minutos = 0,
	horas = 0;
	hoursTime.innerHTML = '00';
	minutesTime.innerHTML = ':00';
	secondsTime.innerHTML = ':00';
	hundredthsTime.innerHTML = ':00';
	playBtn.disabled = false;
	playBtn.classList.remove('disabled');

	pauseBtn.disabled = true;
	pauseBtn.classList.add('disabled');
	
	stopBtn.disabled = true;
	stopBtn.classList.add('disabled');
};
const cronometro = () => {
	if (centesimas < 99) {
		centesimas++;
		if (centesimas < 10) {
			centesimas = '0' + centesimas;
		}
		hundredthsTime.innerHTML = ':' + centesimas;
	}
	if (centesimas == 99) {
		centesimas = -1;
	}
	if (centesimas == 0) {
		segundos++;
		if (segundos < 10) {
			segundos = '0' + segundos;
		}
		secondsTime.innerHTML = ':' + segundos;
	}
	if (segundos == 59) {
		segundos = -1;
	}
	if (centesimas == 0 && segundos == 0) {
		minutos++;
		if (minutos < 10) {
			minutos = '0' + minutos;
		}
		minutesTime.innerHTML = ':' + minutos;
	}
	if (minutos == 59) {
		minutos = -1;
	}
	if (centesimas == 0 && segundos == 0 && minutos == 0) {
		horas++;
		if (horas < 10) {
			horas = '0' + horas;
		}
		hoursTime.innerHTML = horas;
	}
};
