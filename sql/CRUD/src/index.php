<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index php</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link href="https://unpkg.com/vanilla-datatables@latest/dist/vanilladataTables.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="./css/style.css">
</head>
<body>
    <br>
    <section class="productos">
        <div class="container">
            <h1 class="text-center h1-productos">Listado de Productos</h1>
        </div>
    </section>
    <br>
    <section class="tablas">
        <div class="container">
            <table class="table table-bordered" id="tabla">
                <thead class="table-dark">
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Descripción</th>
                        <th scope="col">Precio</th>
                        <th scope="col">Marca</th>
                        <th scope="col">Categoria</th>
                        <th scope="col">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        require("config/conexion.php");

                        $sql = $conexion->query('SELECT * FROM productos
                            INNER JOIN categorias ON productos.id_categoria = categorias.id
                            INNER JOIN marcas ON productos.id_marca = marcas.id');

                        while($resultado = $sql->fetch_assoc()) {
                    ?>
                            <tr>
                                <th scope="row"><?php echo $resultado ['id_producto']?></th>
                                <th scope="row"><?php echo $resultado ['nombre']?></th>
                                <th scope="row"><?php echo $resultado ['descripcion']?></th>
                                <th scope="row"><?php echo $resultado ['precio']?></th>
                                <th scope="row"><?php echo $resultado ['nombre_marca']?></th>
                                <th scope="row"><?php echo $resultado ['nombre_categoria']?></th>
                                <th>
                                    <a href="formularios/editarForm.php?id=<?php echo $resultado['id_producto']?>" class="btn btn-warning"><i class="fa-regular fa-pen-to-square"></i></a>
                                    <a href="crud/eliminarDatos.php?id=<?php echo $resultado['id_producto']?>" class="btn btn-danger"><i class="fa-regular fa-trash-can"></i></a>
                                </th>
                            </tr>

                    <?php

                        }
                    ?>
                </tbody>
            </table>
            <div class="container">
                <a href="formularios/agregarForm.php" class="btn btn-success"><i class="fa-solid fa-circle-plus"></i>  Agregar Productos</a>
            </div>
        </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/a5634d85fb.js" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/vanilla-datatables@latest/dist/vanilladataTables.min.js" type="text/javascript"></script>
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script>
        let tabla = document.querySelector('#tabla');
        let datatable = new DataTable(tabla);
    </script>

</body>
</html>