<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nomina de Empleados</title>
    <link rel="stylesheet" href="style15.css">
</head>
<body>

<h2>NOMINA DE EMPLEADOS</h2>

<?php
$mensaje = "";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $conn = new mysqli("localhost", "root", "", "N_empleados");
    if ($conn->connect_error) {
        die("CONEXIÓN FALLIDA: " . $conn->connect_error);
    }

    $nombre = $conn->real_escape_string($_POST['nombre']);
    $apellido = $conn->real_escape_string($_POST['apellido']);
    $cedula = $conn->real_escape_string($_POST['cedula']);
    $posicion = $conn->real_escape_string($_POST['posicion']);
    $sueldo_bruto = floatval($_POST['sueldo_bruto']);

    $plan_descuento = isset($_POST['plan_descuento']) ? $_POST['plan_descuento'] : 'basico';

    switch ($plan_descuento) {
        case 'avanzado':
            $seguro_vida = $sueldo_bruto * 0.03;
            $seguro_pensiones = $sueldo_bruto * 0.04;
            $seguro_familiar = $sueldo_bruto * 0.03;
            $plan_odontologico = $sueldo_bruto * 0.02;
            $retiro_complementario = $sueldo_bruto * 0.03;
            $descuentos_funerarios = $sueldo_bruto * 0.015;
            break;
        case 'premium':
            $seguro_vida = $sueldo_bruto * 0.04;
            $seguro_pensiones = $sueldo_bruto * 0.05;
            $seguro_familiar = $sueldo_bruto * 0.04;
            $plan_odontologico = $sueldo_bruto * 0.025;
            $retiro_complementario = $sueldo_bruto * 0.04;
            $descuentos_funerarios = $sueldo_bruto * 0.02;
            break;
        case 'basico':
        default:
            $seguro_vida = $sueldo_bruto * 0.02;
            $seguro_pensiones = $sueldo_bruto * 0.0287;
            $seguro_familiar = $sueldo_bruto * 0.02;
            $plan_odontologico = $sueldo_bruto * 0.01;
            $retiro_complementario = $sueldo_bruto * 0.02;
            $descuentos_funerarios = $sueldo_bruto * 0.01;
            break;
    }

    $ganancia_anual = $sueldo_bruto * 12;
    $isr = 0;
    if ($ganancia_anual > 867123.01) {
        $isr = 79776.00 + 0.25 * ($ganancia_anual - 867123.01);
    } elseif ($ganancia_anual > 624329.01) {
        $isr = 31216.00 + 0.20 * ($ganancia_anual - 624329.01);
    } elseif ($ganancia_anual > 416220.01) {
        $isr = 0.15 * ($ganancia_anual - 416220.01);
    }

    $isr_mensual = $isr / 12;

    $total_descuentos = $seguro_vida + $seguro_pensiones + $plan_odontologico +
                        $seguro_familiar + $descuentos_funerarios + $retiro_complementario +
                        $isr_mensual;

    $valor_incentivo = 0;

    if (isset($_POST['incentivos']) && is_array($_POST['incentivos'])) {
        foreach ($_POST['incentivos'] as $incentivo) {
            if ($incentivo == "1% por Formación") {
                $valor_incentivo += $sueldo_bruto * 0.01;
            } elseif ($incentivo == "2% por Desempeño") {
                $valor_incentivo += $sueldo_bruto * 0.02;
            } elseif ($incentivo == "3% por Años de Servicio") {
                $valor_incentivo += $sueldo_bruto * 0.03;
            }
        }
    }

    $sueldo_neto = $sueldo_bruto - $total_descuentos + $valor_incentivo;

    $sql = "INSERT INTO N_empleados (nombre, apellido, cedula, posicion, sueldo_bruto, incentivo,
             seguro_vida, seguro_pensiones, plan_odontologico, seguro_familiar,
             descuentos_funerarios, retiro_complementario, descuento_total, sueldo_neto)
             VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ssssdddddddddd", $nombre, $apellido, $cedula, $posicion, $sueldo_bruto,
                       $valor_incentivo, $seguro_vida, $seguro_pensiones, $plan_odontologico,
                       $seguro_familiar, $descuentos_funerarios, $retiro_complementario,
                       $total_descuentos, $sueldo_neto);

    if ($stmt->execute()) {
        $mensaje = "Empleado registrado bomba.";
    } else {
        $mensaje = "Error al registrar el empleado: " . $conn->error;
    }

    $stmt->close();
    $conn->close();
}
?>

<form action="" method="POST">
    <label for="nombre">Nombre:</label>
    <input type="text" id="nombre" name="nombre" required><br><br>

    <label for="apellido">Apellido:</label>
    <input type="text" id="apellido" name="apellido" required><br><br>

    <label for="cedula">Cédula:</label>
    <input type="text" id="cedula" name="cedula" required><br><br>

    <label for="posicion">Posición:</label>
    <input type="text" id="posicion" name="posicion" required><br><br>

    <label for="sueldo_bruto">Sueldo Bruto $:</label>
    <input type="number" id="sueldo_bruto" name="sueldo_bruto" required><br><br>

    <label>Incentivos:</label>
    <div class="incentivos-container">
        <input type="checkbox" name="incentivos[]" value="1% por Formación"> 1% por Formación<br>
        <input type="checkbox" name="incentivos[]" value="2% por Desempeño"> 2% por Desempeño<br>
        <input type="checkbox" name="incentivos[]" value="3% por Años de Servicio"> 3% por Años de Servicio<br><br>
    </div>

    <label>Plan de Descuento:</label>
    <div class="plan-container">
        <div class="plan-box" id="plan_basico">
            <p class="precio">BASICO</p>
            <div class="caracteristicas">
                <ul>
                    <li>Seguro de vida básico al 2% del sueldo bruto.</li><br>
                    <li>Descuento en pensiones del 2.87% del sueldo bruto.</li><br>
                    <li>Plan odontológico con un costo del 1% del sueldo bruto.</li><br>
                    <li>Seguridad familiar con un costo del 2% del sueldo bruto.</li><br>
                    <li>Retiro complementario con un costo del 2% del sueldo bruto.</li><br>
                </ul>
            </div>
            <button type="button" onclick="selectPlan('plan_basico')">Elegir</button>
        </div>
        <div class="plan-box" id="plan_avanzado">
            <p class="precio">AVANZADO</p>
            <div class="caracteristicas">
                <ul>
                    <li>Seguro de vida mejorado al 3% del sueldo bruto.</li><br>
                    <li>Descuento en pensiones del 4% del sueldo bruto.</li><br>
                    <li>Plan odontológico con un costo del 2% del sueldo bruto.</li><br>
                    <li>Seguridad familiar con un costo del 3% del sueldo bruto.</li><br>
                    <li>Retiro complementario con un costo del 3% del sueldo bruto.</li><br>
                </ul>
            </div>
            <button type="button" onclick="selectPlan('plan_avanzado')">Elegir</button>
        </div>
        <div class="plan-box" id="plan_premium">
            <p class="precio">PREMIUM</p>
            <div class="caracteristicas">
                <ul>
                    <li>Seguro de vida premium al 4% del sueldo bruto.</li><br>
                    <li>Descuento en pensiones del 5% del sueldo bruto.</li><br>
                    <li>Plan odontológico con un costo del 2.5% del sueldo bruto.</li><br>
                    <li>Seguridad familiar con un costo del 4% del sueldo bruto.</li><br>
                    <li>Retiro complementario con un costo del 4% del sueldo bruto.</li><br>
                </ul>
            </div>
            <button type="button" onclick="selectPlan('plan_premium')">Elegir</button>
        </div>
    </div>
    <div class="esta">
        <input type="hidden" name="plan_descuento" id="selected_plan" value="">
        <input type="submit" value="Registrar Empleado"><br><br>
        <input type="reset" value="Limpiar"><br><br>
        <a href="ver_nomina.php">
            <button type="button">Visualizar Nómina</button>
        </a>
    </div>
</form>

<?php if (!empty($mensaje)) : ?>
    <script>
        alert("<?php echo $mensaje; ?>");
    </script>
<?php endif; ?>

<script>
    function selectPlan(planId) {
        const previousSelected = document.querySelector('.plan-box.selected');
        if (previousSelected) {
            previousSelected.classList.remove('selected');
        }

        const selectedPlan = document.getElementById(planId);
        selectedPlan.classList.add('selected');
        document.getElementById('selected_plan').value = planId;
    }
</script>

</body>
</html>
