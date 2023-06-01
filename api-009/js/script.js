const myInput = document.getElementById('input');
const esperaTxt = document.getElementById('texto');
const result = document.getElementById('resultado');

const getResultado = async () => {
	let wordInp = myInput.value;

	result.innerHTML = `
	<h2 class="loanding">
		Cargando Resultados...
	</h2>`;
	let fetchUrl = `https://api.dictionaryapi.dev/api/v2/entries/en/${wordInp}`;
	let data = await fetch(fetchUrl).then(res => res.json());

	
	result.innerHTML = `
	<div class="word">
		<div class="text-word">
			<h2>Word:  ${data[0].word}</h2>
			<span>${data[0].meanings[0].partOfSpeech} /${data[0].phonetics[1].text}/</span>
		</div>
		<div id="sound">
			<i class="fa-solid fa-volume-high"></i>
		</div>
	</div>
	`;
	
	const audioEl = document.createElement('audio');
	audioEl.src = `${data[0].phonetics[0].audio}`;
	const btnAudio = document.getElementById('sound')
	btnAudio.addEventListener('click', () => {
		audioEl.play();
		console.log('Hola');
	});
};

myInput.addEventListener('keyup', event => {
	if (event.key === 'Enter' && myInput.value !== '') {
		esperaTxt.style.display = 'none';
		// containerTxt.style.display = 'flex';
		getResultado();
	}
});
