// Referencias HTML
const inputs = document.querySelectorAll('.form input');
const sendBtn = document.querySelector('.button');

const verify = () => {
    for (let i = 0; i < inputs.length; i++) {
        if (inputs[i].value == '') {
            alert(`Tienes un espacio vació, revisa ${inputs[i].placeholder}`)
        }
        console.log(inputs[i].value);
        
    }
};


sendBtn.addEventListener('click', () => {
    // verify();
});