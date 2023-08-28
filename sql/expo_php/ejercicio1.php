<?php
//* <----- Clase ----->
    class Persona {
        //? Atributos de la clase
        private $nombre;
        private $edad;
        private $genero;

        //? Método constructor
        public function __construct($nombre, $edad, $genero) {
            $this->nombre = $nombre;
            $this->edad = $edad;
            $this->genero = $genero;
        }

        //? Funciones Getters & Setters
        public function getNombre() {
            return $this->nombre;
        }

        public function setNombre($nombre) {
            $this->nombre = $nombre;
        }

        public function getEdad() {
            return $this->edad;
        }

        public function setEdad($edad) {
            $this->edad = $edad;
        }

        public function getGenero() {
            return $this->genero;
        }

        public function setGenero($genero) {
            $this->genero = $genero;
        }
    }

//* <----- Instancia ----->
    $persona = new Persona("Juan Diego", 20, "Masculino");
    echo "Nombre: " . $persona->getNombre() . ", Edad: " . $persona->getEdad() . ", Género: " . $persona->getGenero();
    // Nombre: Juan Diego, Edad: 20, Género: Masculino
?>