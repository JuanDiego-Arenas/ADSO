// // ---------------------------------------------------------

// function suma(num1, num2) {
// 	return console.log('La suma de', num1, 'y', num2, 'es:', num1 + num2);
// }

// suma(5, 6);

// //---------------------------------------------------------

// function str (strings) {
// 	return console.log(strings.length);
// }

// str('Hola')

// // ---------------------------------------------------------

// function maxNumber(arr) {
// 	return console.log(Math.max(...arr));
// }

// let array = [0, 2, 4, 5, 1, 3];

// maxNumber(array);

// function maxNum(arr) {
// 	let max = arr[0];
// 	for (let i = 1; i < arr.length; i++) {
// 		if (arr[i] > max) {
// 			max = arr[i];
// 		}
// 	}
// 	return max;
// }

// const array = [4, 10000];
// console.log(maxNum(array));

// // ---------------------------------------------------------

// function upper(str) {
// 	return str.toUpperCase();
// }

// console.log(upper('hola'));

// // ---------------------------------------------------------

// function array(objet) {
// 	return Object.keys(objet);
// }

// let objeto = {
// 	nombre: 'Juan',
// 	edad: 20,
// };

// console.log(array(objeto));

// // ---------------------------------------------------------

function order(arr) {
	return arr.sort((a, b) => a - b);
};

let nums = [7, 2, 10, 1, 5, 6, 3, 4, 11, 9, 8];
console.log(order(nums));
