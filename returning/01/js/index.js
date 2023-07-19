// Referencias HTML
const inputs = document.querySelectorAll('.form input');
const sendBtn = document.querySelector('.button');

const expresiones = {
	user: /^[a-zA-ZÀ-ÿ\s]{1,40}$/, // Letras y espacios, puede llevar acentos
	password: /^.{4,20}$/, // de 4 a 20 dígitos
	email: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
	phone: /^\d{7,14}$/, // de 7 a 14 números
};

const verifyForm = (e) => {
    switch (e.target.name) {
        case user:
            if(expresiones.user.test(e.target.value)){

            } else {
                document
            }
            break;
    
        case email:
            break;

        case phone:
            break;

        case password:
            break;

        case password2:
            break;
    }
};

const verify = () => {
	for (let i = 0; i < inputs.length; i++) {
		if (inputs[i].value == '') {
			alert(`Tienes un espacio vació, revisa ${inputs[i].placeholder}`);
		}
		console.log(inputs[i].value);
	}
};

sendBtn.addEventListener('click', () => {
	// verify();
});
