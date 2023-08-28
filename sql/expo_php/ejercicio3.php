<?php
//* <----- Clase ----->
    class Estudiante {
        //? Atributos
        private $nombre;
        private $edad;
        private $asignaturas = array();

        //? <--- Método constructor --->
        public function __construct($nombre, $edad) {
            $this->nombre = $nombre;
            $this->edad = $edad;
        }

        //? <--- Método para agregar asignatura en un Array[] --->
        public function agregarAsignatura($asignatura) {
            $this->asignaturas[] = $asignatura;
        }

        public function mostrarAsignaturas() {
            return $this->asignaturas;
        }
        
        public function getNombre() {
            return $this->nombre;
        }

        public function getEdad() {
            return $this->edad;
        }
    }
?>