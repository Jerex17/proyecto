<!DOCTYPE html>
<html>
<head>
    <title>Ver Productos</title>
<link rel="stylesheet" href="styleproducto.css">
</head>
<body>
    <h2>Productos</h2>

    <?php
    $conexion = new mysqli("localhost", "root", "", "tienda1");

    if ($conexion->connect_error) {
        die("Conexión fallida: " . $conexion->connect_error);
    }

    $mensaje_confirmacion = '';

    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['nombre']) && isset($_POST['cantidad_vender'])) {
        $nombre = $_POST['nombre'];
        $cantidad_vender = $_POST['cantidad_vender'];

        $sql = "SELECT cantidad FROM productos WHERE nombre='$nombre'";
        $resultado = $conexion->query($sql);
        $row = $resultado->fetch_assoc();
        $cantidad_actual = $row['cantidad'];

        if ($cantidad_actual > 0) {
            if ($cantidad_vender <= $cantidad_actual) {
                $nueva_cantidad = $cantidad_actual - $cantidad_vender;

                $sql_actualizar = "UPDATE productos SET cantidad='$nueva_cantidad' WHERE nombre='$nombre'";

                if ($conexion->query($sql_actualizar) === TRUE) {
                    if ($nueva_cantidad == 0) {
                        $sql_eliminar = "DELETE FROM productos WHERE nombre='$nombre'";
                        $conexion->query($sql_eliminar);
                        $mensaje_confirmacion = "Compra exitosa. El producto '$nombre' ha sido eliminado debido a que no quedan unidades.";
                    } else {
                        $mensaje_confirmacion = "Compra exitosa. Quedan $nueva_cantidad unidades del producto '$nombre'.";
                    }
                } else {
                    $mensaje_confirmacion = "Error al actualizar el producto: " . $conexion->error;
                }
            } else {
                $mensaje_confirmacion = "No puedes comprar $cantidad_vender unidades. Solo hay $cantidad_actual unidades disponibles.";
            }
        } else {
            $mensaje_confirmacion = "No hay suficiente stock para realizar la compra del producto '$nombre'.";
        }
    }

    if ($mensaje_confirmacion != '') {
        echo "<p><strong>$mensaje_confirmacion</strong></p>";
    }

    $sql = "SELECT nombre, precio, itbis, cantidad FROM productos";
    $resultado = $conexion->query($sql);

    if ($resultado->num_rows > 0) {
        echo "<table border='1'>
            <tr>
                <th>Nombre</th>
                <th>Precio</th>
                <th>ITBIS</th>
                <th>Cantidad Disponible</th>
                <th>Comprar</th>
            </tr>";

        while($row = $resultado->fetch_assoc()) {
            echo "<tr>
                <td>" . $row['nombre'] . "</td>
                <td>" . $row['precio'] . "</td>
                <td>" . $row['itbis'] . "</td>
                <td>" . $row['cantidad'] . "</td>
                <td>
                    <form method='post'>
                        <input type='hidden' name='nombre' value='" . $row['nombre'] . "'>
                        <input type='number' name='cantidad_vender' placeholder='Cantidad' required>
                        <input type='submit' value='Comprar'>
                    </form>
                </td>
            </tr>";
        }
        echo "</table>";
    } else {
        echo "No hay productos registrados.";
    }

    $conexion->close();
    ?>


</body>
</html>
