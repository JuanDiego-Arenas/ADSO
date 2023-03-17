// 1. Crear una función que tome un array de números y devuelva un array con solo los números pares.
console.log('// 1.');
const par1 = (array1) => {
    const pares = [];
    for (let i = 0; i < array1.length; i++) {
        if (array1[i] % 2 == 0) {
            pares.push(array1[i]);
        }
    }
    return pares;
};

console.log(par1([1, 2, 3, 4, 5, 6]));

// 2. Crear una función que tome un objeto y devuelva un array de sus valores.
console.log('// 2.');
const arr2 = (objet2) => {
    return Object.values(objet2);
};
console.log(
    arr2({
        name: 'Juan',
        age: '20',
        country: 'Colombia',
    })
);

// 3. Crear una función que tome un array de strings y devuelva un objeto que tenga como claves cada una de las palabras y como valor la cantidad de veces que aparece esa palabra
// en el array.
console.log('// 3.');
const objetoString = (array3) => {
    let arr3 = [];
    return Object.keys(array3).forEach;
};

console.log(objetoString(['nombre', 'clave']));

// 4. Crear una función que tome un array de objetos y devuelva un array con solo los objetos
// que tengan una propiedad específica.
// console.log('// 4.');

// 5. Crear una función que tome un array de strings y devuelva un array con las mismas
// palabras, pero en orden alfabético.
// console.log('// 5.');

// 6. Crear una función que tome dos objetos y devuelva un objeto con las propiedades de
// ambos objetos.
// console.log('// 6.');

// 7. Crear una función que tome un array de números y devuelva la suma de todos los
// números.
// console.log('// 7.');

// 8. Crear una función que tome un array de números y devuelva un array con los mismos
// números, pero multiplicados por un valor dado.
// console.log('// 8.');

// 9. Crear una función que tome una cadena de texto y devuelva la misma cadena en orden
// inverso.
// console.log('// 9.');

// 10. Crear una función que tome un objeto y devuelva un array de sus claves.
// console.log('// 10.');
