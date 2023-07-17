// Referencias HTML
const input = document.getElementsByClassName('input');
const sendBtn = document.querySelector('.button');

const verify = () => {
    for (let i = 0; i < input.length; i++) {
        if (input[i].value == '') {
            alert(`Tienes un espacio vació, revisa ${input[i].placeholder}`)
        }
        console.log(input[i].value);
        
    }
};


sendBtn.addEventListener('click', () => {
    verify();
});