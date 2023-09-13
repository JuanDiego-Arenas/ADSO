<?php
    include_once('../config/conexion.php');

    $id = $_POST['id'];
    $nombre = $_POST['nombre'];
    $descripcion = $_POST['descripcion'];
    $precio = $_POST['precio'];
    $marcas = $_POST['marca'];
    $categoria = $_POST['categoria'];

    $sql = 'UPDATE productos SET nombre="'.$nombre.'", descripcion="'.$descripcion.'",precio="'.$precio.'", id_marca="'.$marcas.'", id_categoria="'.$categoria.'" WHERE id_producto="'.$id.'"';

    if ($resultado = $conexion->query($sql)) {
        header('location:../index.php');
    }
?>