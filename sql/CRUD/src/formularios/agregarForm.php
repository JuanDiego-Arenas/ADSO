<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar producto</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

</head>
<body>

    <h1 class="bg-black p-2 text-white text-center">Agregar Producto</h1>
    <br>
    <div class="container">
        <form action="../crud/insertarDatos.php" method="POST">

        <!-- Nombre -->
            <div class="mb-3">
                <label class="form-label">Nombre</label>
                <input type="text" class="form-control" name="Nombre">
            </div>

        <!-- Descripción -->
            <div class="mb-3">
                <label class="form-label">Descripción</label>
                <input type="text" class="form-control" name="Descripcion">
            </div>

        <!-- Precio -->
            <div class="mb-3">
                <label class="form-label">Precio</label>
                <input type="text" class="form-control" name="Precio">
            </div>

        <!-- Marca -->
            <label for="">Marca|</label>
            <select name="marca_in" class="form-select mb-3">
                <option select disable>--Seleccionar Marca--</option>
                <?php
                    include('../config/conexion.php');

                    $sql = $conexion->query("SELECT * FROM marcas");
                    while ($resultado = $sql->fetch_assoc()) {
                        echo "<option value='".$resultado['id']."'>".$resultado['nombre_marca']."</option>";
                    }
                ?>
            </select>

        <!-- Categoria -->
            <label for="">Categoria</label>
            <select name="categoria_in" class="form-select mb-3">
                <option select disable>--Seleccionar Categoria--</option>
                <?php
                    include('../config/conexion.php');

                    $sql = $conexion->query("SELECT * FROM categorias");
                    while ($resultado = $sql->fetch_assoc()) {
                        echo "<option value='".$resultado['id']."'>".$resultado['nombre_categoria']."</option>";
                    }
                ?>
            </select>

        <!-- Botones -->
            <div class="text-center">
                <button type="submit" class="btn btn-danger">Agregar</button>
                <a href="../index.php" class="btn btn-dark">Regresar</a>
            </div>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>+

</body>
</html>