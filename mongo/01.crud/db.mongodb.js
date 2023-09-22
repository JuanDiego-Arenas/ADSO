use('crud');

db.createCollection('usuarios');
db.createCollection('materias');
db.createCollection('notas');

db.usuarios.insertMany([
    {
        "nombre": "Juan Diego Arenas",
        "edad": "21",
        "correo": "arenas@saga.dev",
        "telefono": "3433223443"
    },
    {
        "nombre": "Mariana Cadena",
        "edad": "21",
        "correo": "macadegu@saga.co",
        "telefono": "78758932"
    },
    {
        "nombre": "Jimmy Lombana",
        "edad": "40",
        "correo": "lombanar@saga.in",
        "telefono": "492870092"
    },
    {
        "nombre": "Hector Toledo",
        "edad": "39",
        "correo": "hdtoledo@saga.in",
        "telefono": "1902576923"
    },
    {
        "nombre": "Juan Fernando",
        "edad": "20",
        "correo": "juanfergg@saga.dev",
        "telefono": "689475893"
    }
]);

db.materias.insertMany([
    {
        "nombreMateria": "Programación",
        "duración": "6 meses"
    },
    {
        "nombreMateria": "Base de Datos",
        "duración": "4 meses"
    },
    {
        "nombreMateria": "Ingles",
        "duración": "5 meses"
    },
    {
        "nombreMateria": "Documentación",
        "duración": "1 meses"
    },
    {
        "nombreMateria": "Inteligencia Artificial",
        "duración": "6 meses"
    }
])

db.notas.insertMany([
    {
        "materia": "Inteligencia Artificial",
        "nota": 5,
        "instructor": "Eliana Lozano"
    },
    {
        "materia": "Programación",
        "nota": 5,
        "instructor": "Hector Toledo"
    },
    {
        "materia": "Ingles",
        "nota": 4.5,
        "instructor": "Andres Felipe"
    },
    {
        "materia": "Base de datos",
        "nota": 4.5,
        "instructor": "Jimmy Lombana"
    },
    {
        "materia": "Documentación",
        "nota": 3.5,
        "instructor": "Pedro Rodriguez"
    }
])