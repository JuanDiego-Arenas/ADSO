<?php
//* <----- Clase ----->
    class CuentaBancaria {
        //? Atributo
        private $saldo;

        //? Método Constructor
        public function __construct($saldoInicial = 0) {
            $this->saldo = $saldoInicial;
        }

        //? Getter
        public function getSaldo() {
            return $this->saldo;
        }

        //? Función o método para depositar dinero
        public function depositar($monto) {
            if ($monto > 0) {
                $this->saldo += $monto;
                return true;
                echo "\nSaldo después de depositar ($500) : $" . $cuenta->getSaldo();
            } else {
                return false;
            }
        }

        //? Método para retirar dinero
        public function retirar($monto) {

            //* Si el monto está en el rango del salario se puede retirar 
            if ($monto > 0 && $monto <= $this->saldo) {
                $this->saldo -= $monto;
                return true;
                echo "\nSaldo después de retirar ($200) : $" . $cuenta->getSaldo() . "\n";
                echo "\e[1;31m Database is stopped...🔥🔴";
            } else {
                //! De lo contrario le dará error
                // echo "\nSaldo insuficiente ⚠️\n";
                return false;
            }
        }
    }

//* <----- Instancia ----->
    $cuenta = new CuentaBancaria(1000);
    echo "Saldo actual: $" . $cuenta->getSaldo() . "\n";  // Muestra el saldo inicial

    $cuenta->depositar(500);
    // echo "\nSaldo después de depositar ($500) : $" . $cuenta->getSaldo();

    $cuenta->retirar(200);
    // echo "\nSaldo después de retirar ($200) : $" . $cuenta->getSaldo() . "\n";
?>