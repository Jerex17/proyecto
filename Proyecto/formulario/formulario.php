<?php
$conn = mysqli_connect("localhost", "root", "", "formulario");

if (!$conn) {
    die("Conexión fallida: " . mysqli_connect_error());
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $Nombre = $_POST['Nombre'];
    $Apellido = $_POST['Apellido'];
    $Fechadenacimiento = $_POST['Fechadenacimiento'];
    $Edad = $_POST['Edad'];
    $Estado_civil = $_POST['Estado_civil'];
    $Correo = $_POST['Correo'];
    $Telefono = $_POST['Telefono'];
    $Direccion = $_POST['Direccion'];
    $Sexo = $_POST['Sexo'];

   
    $sql_VERF = "SELECT * FROM registros WHERE Nombre = '$Nombre'";
    $result = mysqli_query($conn, $sql_VERF);

    if (mysqli_num_rows($result) > 0) {
        echo "El registro ya existe tiguere";
    } else {
      
        $sql = "INSERT INTO registros (Nombre, Apellido, `Fechadenacimiento`, Edad, Estado_civil, Correo, Telefono, Direccion, Sexo) 
                VALUES ('$Nombre', '$Apellido', '$Fechadenacimiento', '$Edad', '$Estado_civil', '$Correo', '$Telefono', '$Direccion', '$Sexo')";

        if (mysqli_query($conn, $sql)) {
            echo "Cachechevere Fundita";
        } else {
            echo "Fritolays: " . mysqli_error($conn);
        }
    }
}

$conn->close();
?>
