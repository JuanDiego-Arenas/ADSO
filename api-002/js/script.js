const inputEl = document.querySelector('#nombre-pais');
const searchBtnEl = document.querySelector('.btnBusqueda');
const result = document.querySelector('.resultado');

const getResults = async () => {
    
    let countryName = inputEl.value;
    try {
        result.innerHTML = `<h2 class="loanding">Cargando Resultados...</h2>`;
        let fetchUrl = `https://restcountries.com/v3.1/name/${countryName}?fullText=true`;
        let data = await fetch(fetchUrl).then((res) => res.json());

        result.innerHTML = `
        <img src="${data[0].flags.svg}" class="flag-img">
        <h2>${data[0].name.common}</h2>
        <div class="wrapper">
            <div class="data-wrapper">
                <h4>Capital:</h4>
                <span>${data[0].capital[0]}</span>
            </div>
        </div>
        <div class="wrapper">
            <div class="data-wrapper">
                <h4>Población:</h4>
                <span>${data[0].population}</span>
            </div>
        </div>
        <div class="wrapper">
            <div class="data-wrapper">
                <h4>Moneda:</h4>
                <span>${data[0].currencies[Object.keys(data[0].currencies)].name}</span>
            </div>
        </div>
        <div class="wrapper">
            <div class="data-wrapper">
                <h4>Capital:</h4>
                <span>${data[0].capital[0]}</span>
            </div>
        </div>
        <div class="wrapper">
            <div class="data-wrapper">
                <h4>Capital:</h4>
                <span>${data[0].capital[0]}</span>
            </div>
        </div>
        `
    } catch (error) {
        
    }
}