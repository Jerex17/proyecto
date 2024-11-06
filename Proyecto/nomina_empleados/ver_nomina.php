<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nómina</title>
    <link rel="stylesheet" href="style15.css">
</head>
<body>

<h2>Nómina</h2>

<table border="2">
<thead>
    <tr>
        <th>Nombre</th>
        <th>Apellido</th>
        <th>Cédula</th>
        <th>Posición</th>
        <th>Sueldo Bruto $</th>
        <th>Incentivo $</th>
        <th>Seguro Vida $</th>
        <th>Seguro Pensiones $</th>
        <th>Plan Odontológico $</th>
        <th>Seguro Familiar $</th>
        <th>Descuentos Funerarios $</th>
        <th>Retiro Complementario $</th>
        <th>Total Descuentos $</th>
        <th>Sueldo Neto $</th>
    </tr>
</thead>
    <tbody>
        <?php
      
      $conn = new mysqli("localhost", "root", "", "N_empleados");

    
      if ($conn->connect_error) {
          die("Conexión fallida: " . $conn->connect_error);
      }
  
      
      $sql = "SELECT * FROM N_empleados";
        $result = $conn->query($sql);

        
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row["nombre"] . "</td>";
                echo "<td>" . $row["apellido"] . "</td>";
                echo "<td>" . $row["cedula"] . "</td>";
                echo "<td>" . $row["posicion"] . "</td>";
                echo "<td>" . number_format($row["sueldo_bruto"], 2) . "</td>";
                echo "<td>" . $row["incentivo"] . "</td>";
                echo "<td>" . number_format($row["seguro_vida"], 2) . "</td>";
                echo "<td>" . number_format($row["seguro_pensiones"], 2) . "</td>";
                echo "<td>" . number_format($row["plan_odontologico"], 2) . "</td>";
                echo "<td>" . number_format($row["seguro_familiar"], 2) . "</td>";
                echo "<td>" . number_format($row["descuentos_funerarios"], 2) . "</td>";
                echo "<td>" . number_format($row["retiro_complementario"], 2) . "</td>";
                echo "<td>" . number_format($row["descuento_total"], 2) . "</td>";
                echo "<td>" . number_format($row["sueldo_neto"], 2) . "</td>";
                echo "</tr>";
            }
            
        } else {
            echo "<tr><td colspan='8'>No hay registros de empleados</td></tr>";
        }

       
        $conn->close();
        ?>
    </tbody>
</table>

<div class="btn-container">
<a href="guardar_empleado.php" class="btn-regresar">Volver al formulario de registro</a>
</div>

</body>
</html>
