<?php
include ("../Config/Conexion.php");

$nombre = $_POST['Nombre'];
$descripcion = $_POST['Descripcion'];
$precio = $_POST['Precio'];
$categoria = $_POST['categoria_in'];
$marca = $_POST['marca_in'];

$sql = 'INSERT INTO productos(nombre, descripcion, precio, id_categoria, id_marca)
            VALUES("'.$nombre.'","'.$descripcion.'","'.$precio.'","'.$categoria.'","'.$marca.'")';


$resultado = mysqli_query($conexion, $sql);

if ($resultado === TRUE) {
    header("location:../Index.php");
} else {
    echo "Datos NO insertados";
}

?>