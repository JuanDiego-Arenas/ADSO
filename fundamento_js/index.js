// ---------------------------------------------------------

function suma1(num1, num2) {
	return console.log('La suma de', num1, 'y', num2, 'es:', num1 + num2);
}

suma1(5, 6);

//---------------------------------------------------------

function str2 (strings2) {
	return console.log(strings2.length);
}

str2('Hola')

// ---------------------------------------------------------

function maxNumber3(arr3) {
	return console.log(Math.max(...arr3));
}

let array3 = [0, 2, 4, 5, 1, 3];

maxNumber3(array3);

function maxNum3(arr3) {
	let max3 = arr3[0];
	for (let i = 1; i < arr3.length; i++) {
		if (arr3[i] > max3) {
			max3 = arr3[i];
		}
	}
	return max3;
}

array3 = [4, 10000];
console.log(maxNum3(array3));

// // ---------------------------------------------------------

function upper4(str4) {
	return str4.toUpperCase();
}

console.log(upper4('hola'));

// // ---------------------------------------------------------

function array5(objet5) {
	return Object.keys(objet5);
}

let objeto5 = {
	nombre: 'Juan',
	edad: 20,
};

console.log(array5(objeto5));

// // ---------------------------------------------------------

function order(arr6) {
	return arr6.sort((a, b) => a - b);
};

let num6 = [7, 2, 10, 1, 5, 6, 3, 4, 11, 9, 8];
console.log(order(num6));

// // ---------------------------------------------------------

function days7 (date71, date72) {
	const diff7 = new Date(date72).getTime() - new Date(date71).getTime();
	
	return diff7 / (1000 * 60 * 60 * 24);
};

console.log(days7('2023-03-14', '2023-03-15'));

// // ---------------------------------------------------------

function length8 (arr8) {
	return arr8.map(str => str.length);
}

let arr8 = ['Yo', 'estudio', 'ADSO', 'en', 'el', 'SENA']
console.log(length8(arr8));
console.log(arr8);

// // ---------------------------------------------------------

// let objet9 = {
// 	nombre: 'Juan',
// 	edad: '20',
// }

// function invertir (objet9) {
// 	const miObjet = {
// 		nombre: objet9.nombre.split("").reverse().join(""),
// 		edad: objet9.edad.split("").reverse().join("")
// 	}
// 	return miObjet
// }

// console.log(invertir(objet9))

// console.log(Object.keys);

// // ---------------------------------------------------------

function par10 (num10) {
	for (let i = 0; i < num10.length; i++) {
		const element = num10[i];
		return element;
	}
}

console.log(par10(8));


function arrayNum(maxNum){
	let miarray = []

	for (let i = 1; i <= maxNum; i++){
		miarray.push(i)
	}
	return miarray
}

console.log(arrayNum(5))

// // ---------------------------------------------------------

function upper11 (arr11) {
	return arr11.map(str => str.length);
}

let text = ['Yo', 'estudio', 'ADSO', 'en', 'el', 'SENA']
console.log(length8(text));
console.log(arr8);