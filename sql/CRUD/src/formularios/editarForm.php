<!doctype html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Editar Producto</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>

<body>
    <h1 class="text-center" style="background-color: black; color:white; border-radius: 5px;">EDITAR PRODUCTOS</h1>
    <br>
    <form class="container" action="../crud/editarDatos.php" method="POST">
        
        <?php
            include ('../config/conexion.php');

            $sql = "SELECT * FROM productos WHERE id_producto =".$_GET['id'];
            $resultado = $conexion->query($sql);

            $row = $resultado->fetch_assoc();
        ?>

        <input type="Hidden" class="form-control" name="id" value="<?php echo $row['id_producto']; ?>">

        <!-- Nombre -->
        <div class="mb-3">
            <label class="form-label">Nombre</label>
            <input type="text" class="form-control" name="nombre" value="<?php echo $row['nombre']; ?>">
        </div>

        <!-- Descripcion -->
        <div class="mb-3">
            <label class="form-label">Descripcion</label>
            <input type="text" class="form-control" name="descripcion" value="<?php echo $row['descripcion']; ?>">
        </div>

        <!-- Precio -->
        <div class="mb-3">
            <label class="form-label">Precio</label>
            <input type="text" class="form-control" name="precio" value="<?php echo $row['precio']; ?>">
        </div>

        <!-- Marcas -->
        <label>Marcas</label>
        <select class="form-select mb-3" aria-label="Default select example" name="marca">
            <option selected disabled>--Seleccione marcas--</option>
            <?php
                include ("../config/conexion.php");

                $sql3 = "SELECT * FROM marcas WHERE id=".$row['id_marca'];
                $resultado3 = $conexion->query($sql3);

                $row3 = $resultado3->fetch_assoc();

                echo "<option selected value='".$row3['id']."'>".$row3['nombre_marca']."</option>";

                $sql4 = "SELECT * FROM Marcas";
                $resultado4 = $conexion->query($sql4);

                while ($Fila = $resultado4->fetch_array()) {
                    echo "<option value='".$Fila['id']."'>".$Fila['nombre_marca']."</option>";
                }
            ?>   
        </select>

        <!-- Categorias -->
        <label>Categorias</label>
        <select class="form-select mb-3" aria-label="Default select example" name="categoria">
            <option selected disabled>--Seleccione Categorias--</option>
            <?php
                include ("../config/conexion.php");

                $sql1 = "SELECT * FROM categorias WHERE id=".$row['id_categoria'];
                $resultado1 = $conexion->query($sql1);

                $row1 = $resultado1->fetch_assoc();

                echo "<option selected value='".$row1['id']."'>".$row1['nombre_categoria']."</option>";

                $sql2 = "SELECT * FROM categorias";
                $resultado2 = $conexion->query($sql2);

                while ($Fila = $resultado2->fetch_array()) {
                    echo "<option value='".$Fila['id']."'>".$Fila['nombre_categoria']."</option>";
                }
            ?>   
        </select>        
        
        <div class="text-center">
            <button type="submit" class="btn btn-danger">Editar</button>
            <a href="../Index.php" class="btn btn-dark">Regresar</a>
        </div>

    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>